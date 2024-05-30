require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "mods.SnackerBar"
import "android.content.Intent"
import "android.net.Uri"
import "java.net.URLDecoder"
import "java.io.File"
import "android.content.Intent"
import "android.content.Intent"
import "android.net.Uri"
import "java.net.URLDecoder"
import "android.content.*"
import "android.view.inputmethod.InputMethodManager"
import "console"
import "android.view.*"
import "android.graphics.Typeface"
import "java.io.File"
import "android.view.animation.*"
import "android.view.animation.Animation"
import "android.graphics.*"
import "mods.andlua"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.Color"
import "android.support.v4.widget.*"
require "permission"
import "autotheme"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
import "android.graphics.drawable.ColorDrawable"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "mods.andlua"
import "mods.SnackerBar"

layout1 = {
  LinearLayout,
  layout_width = "fill",
  layout_height = "fill",
  orientation = "vertical",
  {
    YLListView,
    id = "list",
    layout_width = "-1",
    layout_height = "-1",
    fastScrollEnabled = true,
    DividerHeight = 0,
  },
  {
    TextView,
    id = "lj",
    layout_width = "0",
    layout_height = "0",
    text = "/sdcard/",
  },
};

lb = {
  LinearLayout,
  orientation = "vertical",
  {
    RelativeLayout,
    layout_marginTop = "3dp",
    layout_width = "match_parent",
    {
      ImageView,
      layout_width = "42dp",
      layout_marginBottom = "5dp",
      ColorFilter = tointeger(bjzt()),
      layout_marginTop = "5dp",
      id = "icon",
      layout_marginLeft = "15dp",
      layout_height = "42dp",
    },
    {
      TextView,
      singleLine = "true",
      layout_alignTop = "icon",
      layout_toRightOf = "icon",
      ellipsize = "end",
      id = "name",
      layout_marginTop = "3dp",
      layout_marginRight = "15dp",
      textColor = TitleColor,
      layout_marginLeft = "15dp",
      layout_width = "match_parent",
    },
    {
      TextView,
      layout_width = "match_parent",
      layout_marginTop = "2dp",
      layout_below = "name",
      id = "hint",
      textSize = "12sp",
      textColor = TitleColor1,
      layout_marginRight = "15dp",
      layout_toRightOf = "icon",
      layout_marginLeft = "15dp",
    },
  },
};

ztt()
ztl()

activity.setContentView(loadlayout(layout1))

function GetFilelastTime(path)
  f = File(path);
  cal = Calendar.getInstance();
  time = f.lastModified()
  cal.setTimeInMillis(time);
  return cal.getTime().toLocaleString()
end

adp = LuaAdapter(activity, lb)
list.setAdapter(adp)

function show(f)
  adp = LuaAdapter(activity, lb)
  list.setAdapter(adp)
  ls = luajava.astable(f.listFiles() or String {})
  table.sort(ls, function(a, b)
    return (a.isDirectory() ~= b.isDirectory() and a.isDirectory()) or
    ((a.isDirectory() == b.isDirectory()) and a.Name < b.Name)
  end)
  adp.add { icon = "res/ic_folder.png", name = "../", hint = getLS("L_Return_to_the_superior_directory") }
  if #ls ~= 0 then
    for n = 1, #ls do
      if File(tostring(ls[n])).isFile() then
        adp.add { icon = "res/file_96x96.png", name = ls[n].Name, hint = GetFilelastTime(tostring(ls[n])) }
      else
        adp.add { icon = "res/ic_folder.png", name = ls[n].Name, hint = GetFilelastTime(tostring(ls[n])) }
      end
    end
  end
end

task(100, function()
  show(File(lj.Text))
end)

list.onItemClick = function(p, v, i, s)
  l = v.Tag.name.Text
  if l == "../" then
    if lj.Text ~= "/sdcard/" then
      lj.setText(tostring(File(lj.Text).getParentFile()) .. "/")
      bt1.setText(lj.Text)
      task(10, function()
        show(File(lj.Text))
      end)
    end
  else
    if File(lj.Text .. l).isFile() then
      if Ftype ~= "folder" then
        if Ftype == "file" then
          activity.result({ lj.Text .. l })
        else
          if string.sub(lj.Text .. l, -String(Ftype).length(), -1) == Ftype then
            if Ftype == "AP" then
              io.open(tostring(activity.getLuaDir() .. "/res/LastPath_AP"), "w"):write(tostring(lj.Text)):close()
              activity.result({ "", lj.Text .. l, "安装插件" })
            elseif Ftype == "alp" then
              io.open(tostring(activity.getLuaDir() .. "/res/LastPath_alp"), "w"):write(tostring(lj.Text)):close()
              activity.result({ lj.Text .. l, "", "导入工程" })
            else
              io.open(tostring(activity.getLuaDir() .. "/res/LastPath_Any"), "w"):write(tostring(lj.Text)):close()
              activity.result({ lj.Text .. l })
            end
          else
            if Ftype == "*" and old == true then
              io.open(tostring(activity.getLuaDir() .. "/res/LastPath_Any"), "w"):write(tostring(lj.Text)):close()
              activity.result({ lj.Text .. l, l, "导入资源" })
            elseif Ftype == "*" then
              io.open(tostring(activity.getLuaDir() .. "/res/LastPath_Any"), "w"):write(tostring(lj.Text)):close()
              activity.result({ lj.Text .. l })
            end
          end
        end
      end
    else
      lj.setText(lj.Text .. l .. "/")
      bt1.setText(lj.Text)
      task(10, function()
        show(File(lj.Text))
      end)
    end
  end
end

btl = {
  LinearLayout,
  layout_height = "55dp",
  elevation = "1dp",
  layout_width = "fill",
  orientation = "horizontal",
  {
    LinearLayout,
    layout_marginLeft = "-15dp",
    layout_width = "55dp",
    layout_height = "55dp",
    id = "Sideslip",
    gravity = "center",
    {
      ImageView,
      layout_height = "25dp",
      src = "res/off.png",
      layout_width = "28dp",
      colorFilter = tonumber(bjzt()),
    },
  },
  {
    LinearLayout,
    layout_height = "fill",
    layout_weight = "1",
    orientation = "vertical",
    {
      TextView,
      layout_marginTop = "5dp",
      textColor = tonumber(bjzt()),
      id = "bt",
      textSize = "18sp",
      singleLine = true,
    },
    {
      MarText,
      text = "/sdcard/",
      textColor = tonumber(bjzt()),
      id = "bt1",
      textSize = "15sp",
      singleLine = true,
      ellipsize = "marquee",
      focusableInTouchMode = true,
      focusable = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    layout_height = "55dp",
    id = "menu1",
    visibility = 8,
    gravity = "center",
    {
      ImageView,
      layout_height = "22dp",
      src = "res/Metrial50.png",
      layout_width = "25dp",
      colorFilter = tonumber(bjzt()),
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    layout_height = "55dp",
    id = "More",
    layout_marginRight = "-15dp",
    gravity = "center",
    {
      ImageView,
      layout_height = "-1",
      src = "res/ic_dots_vertical.png",
      layout_width = "25dp",
      colorFilter = tonumber(bjzt()),
    },
  },
};

activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)

bw(Sideslip, 0x5FFFFFFF)
bw(menu1, 0x5FFFFFFF)
bw(More, 0x5FFFFFFF)

Sideslip.onClick = function()
  activity.finish()
end

menu1.onClick = function()
  activity.result({ lj.Text })
end

pop = PopupMenu(activity, More)
menu = pop.Menu
menu.add(getLS("L_Download_system")).onMenuItemClick = function(a)
  local path = "/sdcard/Download/"
  lj.setText(path)
  bt1.setText(path)
  show(File(path))
end
menu.add(getLS("L_QQ_download")).onMenuItemClick = function(a)
  local path = "/storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/"
  lj.setText(path)
  bt1.setText(path)
  show(File(path))
end
menu.add(getLS("L_WeChat_download")).onMenuItemClick = function(a)
  local path = "/storage/emulated/0/tencent/MicroMsg/Download/"
  lj.setText(path)
  bt1.setText(path)
  show(File(path))
end
menu.add("AndLua+").onMenuItemClick = function(a)
  local path = "/sdcard/AndLua/"
  lj.setText(path)
  bt1.setText(path)
  show(File(path))
end
menu.add(getLS("L_Internal_storage")).onMenuItemClick = function(a)
  local path = "/sdcard/"
  lj.setText(path)
  bt1.setText(path)
  show(File(path))
end

More.onClick = function()
  pop.show()
  return true
end

Ftype, path, old = ...

if old == nil then
  old = false
end

if path == nil then
  if Ftype == "alp" then
    path = io.open(tostring(activity.getLuaDir() .. "/res/LastPath_alp")):read("*a")
  elseif Ftype == "AP" then
    path = io.open(tostring(activity.getLuaDir() .. "/res/LastPath_AP")):read("*a")
  else
    path = io.open(tostring(activity.getLuaDir() .. "/res/LastPath_Any")):read("*a")
  end
end

if File(tostring(path)).isDirectory() then
  lj.setText(path)
  bt1.Text = path
else
  lj.setText("/sdcard/")
  bt1.Text = "/sdcard/"
end

if Ftype == "folder" then
  bt.Text = getLS("L_Select_the_folder")
  menu1.visibility = 0;
elseif Ftype == "alp" then
  bt.Text = getLS("L_Choose_engineering") .. "(*.alp)"
elseif Ftype == "AP" then
  bt.Text = getLS("L_Select_the_plugin") .. "(*.AP)";
else
  bt.Text = getLS("L_Select_the_file") .. "(*." .. Ftype .. ")";
end
