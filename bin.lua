require "import"
import "android.net.Uri"
import "java.io.File"
import "android.widget.Toast"
import "java.util.zip.CheckedInputStream"
import "java.io.FileInputStream"
import "android.content.Intent"
import "java.security.Signer"
import "java.util.ArrayList"
import "java.io.FileOutputStream"
import "java.io.BufferedOutputStream"
import "java.util.zip.ZipInputStream"
import "java.io.BufferedInputStream"
import "android.app.ProgressDialog"
import "java.util.zip.CheckedOutputStream"
import "java.util.zip.Adler32"
import "mods.SnackerBar"
import "mods.andlua"
import "android.content.FileProvider"
import "java.io.File"
import "android.content.*"
import "android.net.*"
import "java.io.File"
import "android.app.*"
import "android.os.*"

local bin_dlg, error_dlg
local function update(s)
  bin_dlg.setMessage(s)
end

local function callback(s)
  bin_dlg.hide()
  bin_dlg.Message = ""
  if not s:find(getLS("L_Successful")) then
    error_dlg.Message = s
    error_dlg.show()
  end
end

local function create_bin_dlg()
  if bin_dlg then
    return
  end
  bin_dlg = ProgressDialog(activity);
  bin_dlg.setTitle(getLS("L_Are_packaged"));
  bin_dlg.setMax(100);
end

local function create_error_dlg()
  if error_dlg then
    return
  end
  error_dlg = AlertDialogBuilder(activity)
  error_dlg.Title = getLS("L_Error")
  error_dlg.setPositiveButton(getLS("L_Determine"), nil)
end

local function binapk(luapath, apkpath)
  require "import"
  import "console"
  import "java.io.*"
  import "mao.res.*"
  import "apksigner.*"
  import "mods.andlua"
  import "android.content.FileProvider"
  import "java.io.File"
  import "android.content.*"
  import "android.net.*"
  import "java.io.FileInputStream"
  import "java.util.zip.*"
  import "java.io.File"
  import "android.app.*"
  import "android.os.*"

  BinDex = false

  BinDexOpen = io.open(activity.getLuaDir() .. "/res/set220.LY"):read("*a")
  if BinDexOpen == "true" then
    BinDex = true
  end

  if BinDex then
    DEXcache = "/sdcard/AndLua/cache/" .. tostring(math.random(1000000000000, 999999999999999)) .. "/"
    File(DEXcache .. "java/build/bin/classes/").mkdirs()
    File(DEXcache .. "java/src/com/andlua/").mkdirs()
    File(DEXcache).mkdirs()
  end

  local b = byte[2 ^ 16]
  local function copy(input, output)
    LuaUtil.copyFile(input, output)
    input.close()
    --[[local l=input.read(b)
      while l>1 do
        output.write(b,0,l)
        l=input.read(b)
      end]]
  end

  local function copy2(input, output)
    LuaUtil.copyFile(input, output)
  end

  local temp = File(apkpath).getParentFile();
  if (not temp.exists()) then
    if (not temp.mkdirs()) then
      error("create file " .. temp.getName() .. " fail");
    end
  end

  local tmp = luajava.luadir .. "/tmp.apk"
  local info = activity.getApplicationInfo()
  local ver = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionName
  local code = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionCode

  app_lib_Folder = tostring(File(activity.getLuaDir()).getParentFile()) .. "/app_lib/"

  --local zip=ZipFile(info.publicSourceDir)
  if BinDex then
    zipFile = File(activity.getLuaDir() .. "/res/frame")
  else
    zipFile = File(info.publicSourceDir)
  end

  local fis = FileInputStream(zipFile);
  --local checksum = CheckedInputStream(fis, Adler32());
  local zis = ZipInputStream(BufferedInputStream(fis));

  local fot = FileOutputStream(tmp)
  local out = ZipOutputStream(BufferedOutputStream(fot))

  local f = File(luapath)
  local errbuffer = {}
  local replace = {}
  local checked = {}
  local lualib = {}
  local md5s = {}
  local compilation = {}
  local libs = File(activity.ApplicationInfo.nativeLibraryDir).list()
  libs = luajava.astable(libs)
  for k, v in ipairs(libs) do
    --libs[k]="lib/armeabi/"..libs[k]
    replace[v] = true
  end

  local mdp = activity.Application.MdDir
  local function getmodule(dir)
    local mds = File(activity.Application.MdDir .. dir).listFiles()
    mds = luajava.astable(mds)
    for k, v in ipairs(mds) do
      if mds[k].isDirectory() then
        getmodule(dir .. mds[k].Name .. "/")
      else
        mds[k] = "lua" .. dir .. mds[k].Name
        replace[mds[k]] = true
      end
    end
  end

  getmodule("/")

  local function checklib(path)
    if checked[path] then
      return
    end
    local cp, lp
    checked[path] = true
    local f = io.open(path)
    local s = f:read("*a")
    f:close()
    for m, n in s:gmatch("require *%(? *\"([%w_]+)%.?([%w_]*)") do
      cp = string.format("lib%s.so", m)
      if n ~= "" then
        lp = string.format("lua/%s/%s.lua", m, n)
        m = m .. '/' .. n
      else
        lp = string.format("lua/%s.lua", m)
      end

      pcall(function()
        if File(app_lib_Folder .. cp).exists() then
          local entry = ZipEntry("lib/armeabi-v7a/" .. cp)
          out.putNextEntry(entry)
          replace["lib/armeabi-v7a/" .. cp] = true
          copy(FileInputStream(app_lib_Folder .. cp), out)
          table.insert(md5s, LuaUtil.getFileMD5(app_lib_Folder .. cp))
        end
      end)

      if replace[cp] then
        replace[cp] = false
      end
      if replace[lp] then
        checklib(mdp .. "/" .. m .. ".lua")
        replace[lp] = false
        lualib[lp] = mdp .. "/" .. m .. ".lua"
      end
    end
    for m, n in s:gmatch("import *%(? *\"([%w_]+)%.?([%w_]*)") do
      cp = string.format("lib%s.so", m)
      if n ~= "" then
        lp = string.format("lua/%s/%s.lua", m, n)
        m = m .. '/' .. n
      else
        lp = string.format("lua/%s.lua", m)
      end

      pcall(function()
        if File(app_lib_Folder .. cp).exists() then
          local entry = ZipEntry("lib/armeabi-v7a/" .. cp)
          out.putNextEntry(entry)
          replace["lib/armeabi-v7a/" .. cp] = true
          copy(FileInputStream(app_lib_Folder .. cp), out)
          table.insert(md5s, LuaUtil.getFileMD5(app_lib_Folder .. cp))
        end
      end)

      if replace[cp] then
        replace[cp] = false
      end
      if replace[lp] then
        checklib(mdp .. "/" .. m .. ".lua")
        replace[lp] = false
        lualib[lp] = mdp .. "/" .. m .. ".lua"
      end
    end
  end

  replace["libluajava.so"] = false

  dofile(luapath .. "init.lua")
  if skip_compilation then
    for k, v in ipairs(skip_compilation) do
      compilation[k] = v
    end
  end

  project_path = luapath

  function is_include(value, tab)
    for k, v in ipairs(tab) do
      if project_path .. v == value then
        return true
      end
    end
    return false
  end

  import "Aes"

  function encrypt(str, key)
    return Aes.encrypt(str, key)
  end

  local function addDir(out, dir, f)
    local entry = ZipEntry("assets/" .. dir)
    out.putNextEntry(entry)
    local ls = f.listFiles()
    for n = 0, #ls - 1 do
      local name = ls[n].getName()
      wj = activity.getLuaDir() .. "/res/set211.LY"
      hj = io.open(wj):read("*a")
      if hj == "true" then
        if name:find("%.apk$") or name:find("%.luac$") or name:find("^%.") then
        elseif name:find("%.lua$") then
          checklib(luapath .. dir .. name)
          Compile_TRUR = true
          if ! is_include(tostring(luapath .. dir .. name), compilation) then
            this.update(getLS("L_Are_compiling") .. " " .. name .. "...");

            if BinDex then
              key = String(name).length() * 282658702528265
              io.open(DEXcache .. "java/src/com/andlua/" .. "andlua_" .. tostring(name:match("(.+)%.")) .. ".java", "w")
                  :write("package com.andlua;\n\npublic class andlua_" ..
                    tostring(name:match("(.+)%.")) ..
                    "\n{\n	String code = \"" ..
                    string.gsub(
                      encrypt(
                        tostring(string.gsub(
                          string.gsub(io.open(luapath .. dir .. name):read("*a"), [["]], [['...'...'...']]),
                          [[ ]], [["..."..."..."]])), tostring(string.sub(key, 1, 8) .. string.sub(key, -8, -1))), "\n",
                      "") ..
                    "\";\n}"):close()
              path = ""
            else
              path, err = console.build(luapath .. dir .. name) --编译
            end
          else
            path = luapath .. dir .. name
            Compile_TRUR = false
          end

          if BinDex == false then
            if path then
              if replace["assets/" .. dir .. name] then
                table.insert(errbuffer, dir .. name .. "/.aly")
              end
              local entry = ZipEntry("assets/" .. dir .. name)
              out.putNextEntry(entry)

              replace["assets/" .. dir .. name] = true
              copy(FileInputStream(File(path)), out)
              table.insert(md5s, LuaUtil.getFileMD5(path))
              if Compile_TRUR then
                os.remove(path)
              end
            else
              table.insert(errbuffer, err)
            end
          end
        elseif name:find("%.aly$") then
          Compile_TRUR = true
          if ! is_include(tostring(luapath .. dir .. name), compilation) then
            this.update(getLS("L_Are_compiling") .. " " .. name .. "...");
            if BinDex then
              key = String(name).length() * 282658702528265
              io.open(DEXcache .. "java/src/com/andlua/" .. "andlua_" .. tostring(name:match("(.+)%.")) .. ".java", "w")
                  :write("package com.andlua;\n\npublic class andlua_" ..
                    tostring(name:match("(.+)%.")) ..
                    "\n{\n	String code = \"" ..
                    string.gsub(
                      encrypt(
                        tostring(string.gsub(
                          string.gsub(name:match("(.+)%.") .. " = " .. io.open(luapath .. dir .. name):read("*a"), [["]],
                            [['...'...'...']]), [[ ]], [["..."..."..."]])), tostring(string.sub(key, 1, 8) ..
                          string.sub(key, -8, -1))), "\n", "") .. "\";\n}"):close()
              path = ""
            else
              path, err = console.build_aly(luapath .. dir .. name)
            end
            name = name:gsub("aly$", "lua")
          else
            path = luapath .. dir .. name
            Compile_TRUR = false
            name = name:gsub("aly$", "aly")
          end
          if BinDex == false then
            if path then
              if replace["assets/" .. dir .. name] then
                table.insert(errbuffer, dir .. name .. "/.aly")
              end
              local entry = ZipEntry("assets/" .. dir .. name)
              out.putNextEntry(entry)

              replace["assets/" .. dir .. name] = true
              copy(FileInputStream(File(path)), out)
              table.insert(md5s, LuaUtil.getFileMD5(path))
              if Compile_TRUR then
                os.remove(path)
              end
            else
              table.insert(errbuffer, err)
            end
          end
        elseif ls[n].isDirectory() then
          addDir(out, dir .. name .. "/", ls[n])
        else
          local entry = ZipEntry("assets/" .. dir .. name)
          out.putNextEntry(entry)
          replace["assets/" .. dir .. name] = true
          copy(FileInputStream(ls[n]), out)
          table.insert(md5s, LuaUtil.getFileMD5(ls[n]))
        end
      else --
        if name:find("%.apk$") or name:find("%.luac$") or name:find("^%.") then
        elseif name:find("%.lua$") then
          checklib(luapath .. dir .. name)
          local path = luapath .. dir .. name
          if path then
            if replace["assets/" .. dir .. name] then
              table.insert(errbuffer, dir .. name .. "/.aly")
            end
            local entry = ZipEntry("assets/" .. dir .. name)
            out.putNextEntry(entry)

            replace["assets/" .. dir .. name] = true
            copy(FileInputStream(File(path)), out)
            table.insert(md5s, LuaUtil.getFileMD5(path))
          else
            table.insert(errbuffer, err)
          end
        elseif name:find("%.aly$") then
          local path = luapath .. dir .. name
          if path then
            name = name:gsub("aly$", "aly")
            if replace["assets/" .. dir .. name] then
              table.insert(errbuffer, dir .. name .. "/.aly")
            end
            local entry = ZipEntry("assets/" .. dir .. name)
            out.putNextEntry(entry)

            replace["assets/" .. dir .. name] = true
            copy(FileInputStream(File(path)), out)
            table.insert(md5s, LuaUtil.getFileMD5(path))
          else
            table.insert(errbuffer, err)
          end
        elseif ls[n].isDirectory() then
          addDir(out, dir .. name .. "/", ls[n])
        else
          local entry = ZipEntry("assets/" .. dir .. name)
          out.putNextEntry(entry)
          replace["assets/" .. dir .. name] = true
          copy(FileInputStream(ls[n]), out)
          table.insert(md5s, LuaUtil.getFileMD5(ls[n]))
        end
      end
    end
  end

  this.update(getLS("L_Are_compiling"));
  if f.isDirectory() then
    require "permission"
    if user_permission then
      for k, v in ipairs(user_permission) do
        user_permission[v] = true
      end
    end

    local ss, ee = pcall(addDir, out, "", f)
    if not ss then
      table.insert(errbuffer, ee)
    end
    --print(ee,dump(errbuffer),dump(replace))

    local wel = File(luapath .. "icon.png")
    if wel.exists() then
      local entry = ZipEntry("res/drawable/icon.png")
      out.putNextEntry(entry)
      replace["res/drawable/icon.png"] = true
      copy(FileInputStream(wel), out)
    end
    local wel = File(luapath .. "welcome.png")
    if wel.exists() then
      local entry = ZipEntry("res/drawable/welcome.png")
      out.putNextEntry(entry)
      replace["res/drawable/welcome.png"] = true
      copy(FileInputStream(wel), out)
    end
  else
    return "error"
  end

  --print(dump(lualib))
  for name, v in pairs(lualib) do
    if BinDex then
      path = v
    else
      path, err = console.build(v)
    end
    if path then
      local entry = ZipEntry(name)
      out.putNextEntry(entry)
      copy(FileInputStream(File(path)), out)
      table.insert(md5s, LuaUtil.getFileMD5(path))
      if BinDex == false then
        os.remove(path)
      end
    else
      table.insert(errbuffer, err)
    end
  end

  function touint32(i)
    local code = string.format("%08x", i)
    local uint = {}
    for n in code:gmatch("..") do
      table.insert(uint, 1, string.char(tonumber(n, 16)))
    end
    return table.concat(uint)
  end

  this.update(getLS("L_Are_packaged"));
  local entry = zis.getNextEntry();
  while entry do
    local name = entry.getName()
    local lib = name:match("([^/]+%.so)$")
    if replace[name] then
    elseif lib and replace[lib] then
    elseif name:find("^assets/") then
    elseif name:find("^lua/") then
    elseif name:find("META%-INF") then
    else
      local entry = ZipEntry(name)
      out.putNextEntry(entry)
      if entry.getName() == "AndroidManifest.xml" then
        if path_pattern and #path_pattern > 1 then
          path_pattern = ".*\\\\." .. path_pattern:match("%w+$")
        end
        local list = ArrayList()
        local xml = AXmlDecoder.read(list, zis)
        if BinDex then
          req = {
            ["AndLua+"] = appname,
            ["1.0"] = appver,
            [".*"] = "",
            ["com.andlua"] = packagename,
            ["andlua"] = appname,
          }
        else
          req = {
            [activity.getPackageName()] = packagename,
            [info.nonLocalizedLabel] = appname,
            [ver] = appver,
            [".*"] = "",
            ["com.andlua"] = packagename,
            ["andlua"] = appname,
          }
        end

        for n = 0, list.size() - 1 do
          local v = list.get(n)
          if req[v] then
            list.set(n, req[v])
          elseif user_permission then
            local p = v:match("%.permission%.([%w_]+)$")
            if p and (not user_permission[p]) then
              list.set(n, "android.permission.UNKNOWN")
            end
          end
        end
        local pt = activity.getLuaPath(".tmp")
        local fo = FileOutputStream(pt)
        xml.write(list, fo)
        local code = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionCode
        fo.close()
        local f = io.open(pt)
        local s = f:read("a")
        f:close()
        packageManager = activity.getPackageManager()
        packInfo = packageManager.getPackageInfo(activity.getPackageName(), 0)
        version = packInfo.versionCode
        if BinDex then
          s = string.gsub(s, touint32(1000), touint32(tointeger(appcode) or 1), tointeger(version))
          s = string.gsub(s, touint32(18), touint32(tointeger(appsdk) or 18), 1)
        else
          s = string.gsub(s, touint32(code), touint32(tointeger(appcode) or 1), tointeger(version))
          s = string.gsub(s, touint32(21), touint32(tointeger(appsdk) or 21), 1)
        end

        local f = io.open(pt, "w")
        f:write(s)
        f:close()
        local fi = FileInputStream(pt)
        copy(fi, out)
        os.remove(pt)
      elseif not entry.isDirectory() then
        copy2(zis, out)
      end
    end
    entry = zis.getNextEntry()
  end
  out.setComment(table.concat(md5s))
  --print(table.concat(md5s,"/n"))
  zis.close();
  out.closeEntry()
  out.close()

  function PackDex()
    import "com.duy.dx.command.dexer.Main"

    local commands3 = {
      "--verbose",
      "--num-threads=" .. Runtime.getRuntime().availableProcessors(),
      "--output=" .. dexPath, classesPath, jarsPath
    }

    local arguments = Main.Arguments()
    arguments.parse(commands3)

    local code = Main.run(arguments)
    if code ~= 0 then
      return false
    end

    return true
  end

  function CompileJava()
    import "java.io.PrintWriter"
    import "java.io.ByteArrayOutputStream"
    import "org.eclipse.jdt.internal.compiler.batch.Main"

    local baos1 = ByteArrayOutputStream() -- 编译信息
    local baos2 = ByteArrayOutputStream() -- 错误信息
    local main = Main(PrintWriter(baos1), PrintWriter(baos2), false, nil, nil)

    local command = StringBuffer()
    local result = main.compile(
      "-verbose -nowarn -proc:none -extdirs " ..
      jarsPath ..
      " -classpath " .. androidJar .. " " .. javaPath ..
      " " .. jarsPath .. " -source 1.7 -target 1.7 -time -g -d " .. classesPath, PrintWriter("/sdcard/AndLua/log"),
      PrintWriter("/sdcard/AndLua/error"))

    local s1 = baos1.toString()
    local s2 = baos2.toString()

    if not result then
      return false
    end

    return true
  end

  function MergeDex()
    import "com.mythoi.developerApp.build.DexUtil"
    local dexList = ArrayList();
    dexList.add(dexPath);
    dexList.add(apkpath00 .. "classes_andlua.dex");
    DexUtil.mergeDex(dexList, apkpath00 .. "classes.dex");
    return true
  end

  if File(luapath .. "java/").isDirectory() then
    localPath = luapath
    jarsPath = localPath .. "java/jar/"
    javaPath = localPath .. "java/src/"
    classesPath = localPath .. "java/build/bin/classes/"
    androidJar = activity.getLuaDir() .. "/res/" .. "Android.jar"
    dexPath = classesPath .. "classes.dex"

    if File(jarsPath).isDirectory() == false then
      File(jarsPath).mkdirs()
    end
    this.update(getLS("L_Being_compiled_Java"));
    if not CompileJava() then
      this.update(getLS("L_compiled_Java_Error"))
      return tostring(io.open("/sdcard/AndLua/error"):read("*a"))
    end

    this.update(getLS("L_Being_Bin_Java"));
    if not PackDex() then
      this.update(getLS("L_compiled_Dex_Error"))
      return getLS("L_compiled_Dex_Error")
    end
    this.update(getLS("L_Being_Merge_Java"));
  else
  end

  if not BinDex then
    import "java.io.File"
    apkpath0 = tmp
    apkpath00 = tostring(File(apkpath0).getParentFile()) .. "/" .. string.sub(File(apkpath0).getName(), 1, -5) .. "/"
    decompression = ZipUtil.unzip(apkpath0, apkpath00)

    if not decompression then
      os.execute("rm -r " .. tmp)
      return "Installation package error!"
    end

    os.remove(apkpath00 .. "classes.dex")
    LuaUtil.rmDir(File(apkpath00 .. "org/"))
    LuaUtil.rmDir(File(apkpath00 .. "assets/java/"))

    wj = activity.getLuaDir() .. "/res/set203.LY"
    hj = io.open(wj):read("*a")
    if hj == "true" then
      if File(luapath .. "java/").isDirectory() then
        LuaUtil.copyDir(activity.getLuaDir() .. "/res/dex.zip", apkpath00 .. "classes_andlua.dex")
      else
        LuaUtil.copyDir(activity.getLuaDir() .. "/res/dex.zip", apkpath00 .. "classes.dex")
      end
    else
      if File(luapath .. "java/").isDirectory() then
        LuaUtil.copyDir(activity.getLuaDir() .. "/res/dex_full.zip", apkpath00 .. "classes_andlua.dex")
      else
        LuaUtil.copyDir(activity.getLuaDir() .. "/res/dex_full.zip", apkpath00 .. "classes.dex")
      end
    end

    if File(luapath .. "java/").isDirectory() then
      if not MergeDex() then
        this.update(getLS("L_Being_Merge_Java_Error"));
        return getLS("L_Being_Merge_Java_Error")
      end
      os.remove(apkpath00 .. "classes_andlua.dex")
    end

    ZipUtil.zip(apkpath00, tostring(File(apkpath0).getParentFile()))
    os.rename(string.sub(apkpath00, 1, -2) .. ".zip", apkpath0)
    os.execute("rm -r " .. apkpath00)
  end

  if BinDex then
    import "java.io.PrintWriter"
    import "java.io.ByteArrayOutputStream"
    import "org.eclipse.jdt.internal.compiler.batch.Main"
    local main = Main(nil, nil, false, nil, nil)
    local command = StringBuffer()
    local result = main.compile(
      "-verbose -nowarn -proc:none" ..
      " -classpath " ..
      activity.getLuaDir() ..
      "/res/Android.jar " ..
      DEXcache .. "java/src/ -source 1.7 -target 1.7 -time -g -d " .. DEXcache .. "java/build/bin/classes/",
      PrintWriter("/sdcard/AndLua/log"), PrintWriter("/sdcard/AndLua/error"))
    if not result then
      this.update("Error!")
      return "Error!"
    end

    import "com.duy.dx.command.dexer.Main"
    local commands3 = {
      "--verbose",
      "--num-threads=" .. Runtime.getRuntime().availableProcessors(),
      "--output=" .. DEXcache .. "java/build/bin/classes/classes.dex", DEXcache .. "java/build/bin/classes/"
    }
    local arguments = Main.Arguments()
    arguments.parse(commands3)
    local code = Main.run(arguments)
    if code ~= 0 then
      this.update("Error!")
      return "Error!"
    end
  end

  if BinDex then
    import "java.io.File"
    apkpath0 = tmp
    apkpath00 = tostring(File(apkpath0).getParentFile()) .. "/" .. string.sub(File(apkpath0).getName(), 1, -5) .. "/"
    decompression = ZipUtil.unzip(apkpath0, apkpath00)

    if not decompression then
      os.execute("rm -r " .. tmp)
      return "Installation package error!"
    end

    import "com.mythoi.developerApp.build.DexUtil"
    local dexList = ArrayList();
    dexList.add(DEXcache .. "java/build/bin/classes/classes.dex");
    dexList.add(apkpath00 .. "classes.dex");
    if File(luapath .. "java/").isDirectory() then
      dexList.add(dexPath);
      LuaUtil.rmDir(File(apkpath00 .. "assets/java/"))
    end
    DexUtil.mergeDex(dexList, apkpath00 .. "classes.dex");

    ZipUtil.zip(apkpath00, tostring(File(apkpath0).getParentFile()))
    os.rename(string.sub(apkpath00, 1, -2) .. ".zip", apkpath0)
    os.execute("rm -r " .. apkpath00)
    LuaUtil.rmDir(File(DEXcache))
  end

  qm = tostring(io.open(activity.getLuaDir() .. "/res/jks"):read("*a"))
  if qm == getLS("L_The_default") then
    if #errbuffer == 0 then
      this.update(getLS("L_Is_the_signature") .. "(" .. getLS("L_The_default") .. ")...");
      Signer.sign(tmp, apkpath)
      os.remove(tmp)
      this.update(getLS("L_About_to_open") .. "...");
      if Build.VERSION.SDK_INT <= 23 then
        import "android.content.Intent"
        import "android.net.Uri"
        intent = Intent(Intent.ACTION_VIEW)
        intent.setDataAndType(Uri.parse("file://" .. apkpath), "application/vnd.android.package-archive")
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        activity.startActivity(intent)
      else
        wj = activity.getLuaDir() .. "/res/set207.LY"
        hj = io.open(wj):read("*a")
        if hj == "true" then
          intent = Intent(Intent.ACTION_VIEW);
          apkUri = FileProvider.getUriForFile(activity, "com.AndLua.LY", File(apkpath));
          intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
          intent.setDataAndType(apkUri, "application/vnd.android.package-archive");
          activity.startActivity(intent);
        else
          activity.installApk(apkpath)
        end
      end
      return getLS("L_Packaging_success") .. ":" .. apkpath
    else
      os.remove(tmp)
      this.update(getLS("L_Packaging_error") .. ":\n " .. table.concat(errbuffer, "\n"));
      return getLS("L_Packaging_error") .. ":\n " .. table.concat(errbuffer, "\n")
    end
  else
    this.update(getLS("L_Is_the_signature") .. "(" .. qm .. ")...");
    function signApk(qm, apk, apk1, pass, pass1, alias)
      import "kellinwood.security.zipsigner.ZipSigner"
      import "java.security.KeyStore"
      import "kellinwood.security.zipsigner.optional.KeyStoreFileManager"
      import "kellinwood.security.zipsigner.optional.CustomKeySigner"
      local sign = ZipSigner()
      CustomKeySigner.signZip(sign, "/sdcard/AndLua/keys/" .. qm .. ".jks", String(pass).toCharArray(), alias,
        String(pass1).toCharArray(), "SHA1withRSA", apk, apk1)
    end

    import "java.io.File"
    if File("/sdcard/AndLua/keys/" .. qm .. ".config").isFile() == false then
      return getLS("L_Packaged_wrong_password_error_or_the_private_sign_does_not_exist")
    end
    confi = tostring(io.open("/sdcard/AndLua/keys/" .. qm .. ".config"):read("*a"))
    pass = tostring(confi:match('%Password="(.-)"'))
    alias = tostring(confi:match('%lias="(.-)"'))
    pass1 = tostring(confi:match('%liasPassword="(.-)"'))
    if pass == "nil" or alias == "nil" or pass1 == "nil" or confi == "" then
      return getLS("L_Packaged_wrong_password_error_or_the_private_sign_does_not_exist")
    end

    local status, err = pcall(signApk, qm, tmp, apkpath, pass, pass1, alias)
    if err == nil then
      os.remove(tmp)
      this.update(getLS("L_About_to_open") .. "...")
      if Build.VERSION.SDK_INT <= 23 then
        import "android.content.Intent"
        import "android.net.Uri"
        intent = Intent(Intent.ACTION_VIEW)
        intent.setDataAndType(Uri.parse("file://" .. apkpath), "application/vnd.android.package-archive")
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        activity.startActivity(intent)
      else
        wj = activity.getLuaDir() .. "/res/set207.LY"
        hj = io.open(wj):read("*a")
        if hj == "true" then
          intent = Intent(Intent.ACTION_VIEW);
          apkUri = FileProvider.getUriForFile(activity, "com.AndLua.LY", File(apkpath));
          intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
          intent.setDataAndType(apkUri, "application/vnd.android.package-archive");
          activity.startActivity(intent);
        else
          activity.installApk(apkpath)
        end
      end
      return getLS("L_Packaging_success") .. ": " .. apkpath
    else
      os.remove(tmp)
      os.remove(apkpath)
      this.update(getLS("L_Packaged_wrong_password_error_or_the_private_sign_does_not_exist"))
      return getLS("L_Packaged_wrong_password_error_or_the_private_sign_does_not_exist")
    end
  end
end

local function bin(path)
  local p = {}
  local e, s = pcall(loadfile(path .. "init.lua", "bt", p))
  if e then
    create_error_dlg()
    create_bin_dlg()
    bin_dlg.show()
    activity.newTask(binapk, update, callback).execute { path, "/sdcard/AndLua/bin/" ..
    p.appname .. "_" .. p.appver .. ".apk" }
  else
    SnackerBar.build()
        :msg(getLS("L_Project_profile_error") .. "." .. s)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  end
end
return bin
