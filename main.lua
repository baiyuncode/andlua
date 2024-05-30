require "import"
import "android.app.*"
import "android.os.*"
import "android.graphics.*"
import "android.graphics.drawable.*"
import"q.rorbin.badgeview.*"
import "android.widget.*"
import "android.view.*"
import "android.support.v4.widget.*"
import "android.graphics.Typeface"
import "java.io.File"
import "android.view.animation.Animation"
import "android.support.v4.widget.*"
import "android.animation.ObjectAnimator"
import "android.animation.AnimatorSet"
import "android.view.animation.DecelerateInterpolator"
import "android.view.animation.RotateAnimation"
import "android.view.animation.TranslateAnimation"
import "android.view.animation.AnimationSet"
import "android.view.animation.Animation"
import "android.view.animation.AnimationUtils"
import "android.view.animation.LayoutAnimationController"
import "android.view.animation.Animation$AnimationListener"
import "android.graphics.*"
import "mods.SnackerBar"
import "android.widget.ArrayAdapter"
import "android.widget.LinearLayout"
import "android.widget.TextView"
import "android.view.animation.Animation"
import "android.view.animation.TranslateAnimation"
import "android.view.animation.AnimationSet"
import "android.content.Context"
import "android.content.Intent"
import "java.io.File"
import "android.widget.ListView"
import "android.app.AlertDialog"
import "android.text.Html"
import "android.graphics.Color"
import "com.tencent.connect.*"
import "com.tencent.connect.common.*"
import "mods.andlua"
import "com.tencent.tauth.*"
import "http"
import "bin"
import "mods.lay"
AppId="101488083"

lj=File("/sdcard/AndLua").isDirectory()
if lj==false then
  File("/sdcard/AndLua/").mkdir()
end

lj=File("/sdcard/AndLua/project").isDirectory()
if lj==false then
  File("/sdcard/AndLua/project/").mkdirs()
end

lj=File("/sdcard/AndLua/bin").isDirectory()
if lj==false then
  File("/sdcard/AndLua/bin/").mkdirs()
end
 
lj=File("/sdcard/AndLua/cache").isDirectory()
if lj==false then
  File("/sdcard/AndLua/cache/").mkdirs()
end

lj=File("/sdcard/AndLua/backup").isDirectory()
if lj==false then
  File("/sdcard/AndLua/backup/").mkdirs()
end

lj=File("/sdcard/AndLua/download").isDirectory()
if lj==false then
  File("/sdcard/AndLua/download/").mkdirs()
end

lj=File("/sdcard/AndLua/backups").isDirectory()
if lj==false then
  File("/sdcard/AndLua/backups/").mkdirs()
end

lj=File("/sdcard/AndLua/ext").isDirectory()
if lj==false then
  File("/sdcard/AndLua/ext/").mkdirs()
end

lj=File("/sdcard/AndLua/keys").isDirectory()
if lj==false then
  File("/sdcard/AndLua/keys/").mkdirs()
end

lj=File("/sdcard/AndLua/lualibs").isDirectory()
if lj==false then
  File("/sdcard/AndLua/lualibs/").mkdirs()
end

lj=File("/sdcard/AndLua/solibs").isDirectory()
if lj==false then
  File("/sdcard/AndLua/solibs/").mkdirs()
end

lj=File("/sdcard/AndLua/notes").isDirectory()
if lj==false then
  File("/sdcard/AndLua/notes/").mkdirs()
end

lj=File(activity.getLuaDir().."/plugin").isDirectory()
if lj==false then
  File(activity.getLuaDir().."/plugin/").mkdirs()
end

--Cleardata(true)

function GetFilelastTime(path)
  f = File(path);
  cal = Calendar.getInstance();
  time = f.lastModified()
  cal.setTimeInMillis(time);
  return cal.getTime().toLocaleString()
end

lj=File(io.open(activity.getLuaDir().."/res/set210.LY"):read("*a")).isDirectory()
if lj then
  items={}
  f=File(io.open(activity.getLuaDir().."/res/set210.LY"):read("*a"))
  ls=luajava.astable(f.listFiles() or String{})
  table.sort(ls,function(a,b)
    return (a.isDirectory()~=b.isDirectory() and a.isDirectory()) or ((a.isDirectory()==b.isDirectory()) and a.Name<b.Name)
  end)
  for n=1,#ls do
    if File(tostring(ls[n])).isFile() then
      table.insert(items,ls[n])
    end
  end

  app_lua_Folder=tostring(File(activity.getLuaDir()).getParentFile()).."/app_lua/"

  for index,content in pairs(items) do
    if File(app_lua_Folder..tostring(File(tostring(content)).getName())).isFile()==false then
      LuaUtil.copyDir(tostring(content),app_lua_Folder..tostring(File(tostring(content)).getName()))
     else
      if GetFilelastTime(tostring(content))!=GetFilelastTime(app_lua_Folder..tostring(File(tostring(content)).getName())) then
        LuaUtil.copyDir(tostring(content),app_lua_Folder..tostring(File(tostring(content)).getName()))
      end
    end
  end

end

lj=File(io.open(activity.getLuaDir().."/res/set215.LY"):read("*a")).isDirectory()
if lj then
  items={}
  f=File(io.open(activity.getLuaDir().."/res/set215.LY"):read("*a"))
  ls=luajava.astable(f.listFiles() or String{})
  table.sort(ls,function(a,b)
    return (a.isDirectory()~=b.isDirectory() and a.isDirectory()) or ((a.isDirectory()==b.isDirectory()) and a.Name<b.Name)
  end)
  for n=1,#ls do
    if File(tostring(ls[n])).isFile() then
      table.insert(items,ls[n])
    end
  end

  app_so_Folder=tostring(File(activity.getLuaDir()).getParentFile()).."/app_lib/"

  for index,content in pairs(items) do
    if File(app_so_Folder..tostring(File(tostring(content)).getName())).isFile()==false then
      LuaUtil.copyDir(tostring(content),app_so_Folder..tostring(File(tostring(content)).getName()))
     else
      if GetFilelastTime(tostring(content))!=GetFilelastTime(app_so_Folder..tostring(File(tostring(content)).getName())) then
        LuaUtil.copyDir(tostring(content),app_so_Folder..tostring(File(tostring(content)).getName()))
      end
    end
  end

end

function NewProject0(a)
  a=string.gsub(a,"/external_files","")
  ProFile=activity.getLuaDir().."/plugin/"
  b=math.random(11111111,88888888)
  c=activity.getLuaDir().."/res/"..b..".lua"
  DeFile(a,c,"init.lua")
  import ("res."..b)
  os.remove(c)
  ConText=getLS("L_The_name_of_the").."："..tostring(PluginName).."\n"..getLS("L_Version").."："..tostring(Edition).."\n"..getLS("L_The_author").."："..tostring(Author).."\n"..getLS("L_Since_the_launch").."："..tostring(AutoStart).."\n"..getLS("L_The_path").."："..tostring(a)
  AlertDialog.Builder(this)
  .setTitle(getLS("L_Installing_a_plugin"))
  .setMessage(ConText)
  .setPositiveButton(getLS("L_The_installation"),{onClick=function(v)
      if File(ProFile..tostring(PluginName)).exists() then
        AlertDialog.Builder(this)
        .setTitle(getLS("L_Prompt"))
        .setMessage(getLS("L_Installation_plugin_already_exists"))
        .setPositiveButton(getLS("L_Cover"),{onClick=function(v)
            if ZipUtil.unzip(a,ProFile..tostring(PluginName).."/") then
              SnackerBar.build()
              :msg(getLS("L_Successful_installation"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
             else
              SnackerBar.build()
              :msg(getLS("L_Installation_failed"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
            end
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .show()
       else
        if ZipUtil.unzip(a,ProFile..tostring(PluginName).."/") then
          SnackerBar.build()
          :msg(getLS("L_Successful_installation"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
         else
          SnackerBar.build()
          :msg(getLS("L_Installation_failed"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
        end
      end
    end})
  .setNegativeButton(getLS("L_Cancel"),nil)
  .show()
end

function onNewIntent(intent)
  local uri=intent.getData()
  if uri and uri.getPath():find("%.alp$") then
    NewProject(tostring(uri.getPath()))
   elseif uri and uri.getPath():find("%.lua") or uri.getPath():find("%.txt") or uri.getPath():find("%.java") then
    activity.newActivity("main26",{getLS("L_Check_the_file"),io.open(tostring(uri.getPath())):read("*a")})
   elseif uri and uri.getPath():find("%.AP") then
    NewProject0(tostring(uri.getPath()))
  end
end

function Run_Code(code)
  loadstring(code)()
end

function onResume_Function()
  if File("/sdcard/AndLua/plugin.url").isFile()==true then
    if File(tostring(io.open("/sdcard/AndLua/plugin.url"):read("*a"))).isFile()==true then
      if pcall(NewProject0,tostring(io.open("/sdcard/AndLua/plugin.url"):read("*a"))) then
       else
        SnackerBar.build()
        :msg(getLS("L_Plugin_error"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
      end
    end
  end
  io.open("/sdcard/AndLua/plugin.url","w"):write(""):close()

  if File("/sdcard/AndLua/run.lua").isFile()==true then
    if pcall(Run_Code,tostring(io.open("/sdcard/AndLua/run.lua"):read("*a"))) then
     else
      SnackerBar.build()
      :msg(getLS("L_Program_error"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
    end
  end
  io.open("/sdcard/AndLua/run.lua","w"):write(""):close()

end

function ReplaceFileString(path,str1,str2)
  if path then
    path=tostring(path)
    text=io.open(path):read("*a")
    io.open(path,"w+"):write(tostring(text:gsub(str1,str2))):close()
   else
    return false
  end
end

function writeFile(path,text)
  import "java.io.File"
  f=File(tostring(File(tostring(path)).getParentFile())).mkdirs()
  io.open(tostring(path),"w"):write(tostring(text)):close()
end

java_text=[===[

public class Main
{
  public static void main(String[] args)
  {

  }
}]===]

function xj()
  TemplatePath=activity.getLuaDir().."/Template/"
  TemplatePathItem={}
  TemplatePathls=File(TemplatePath).listFiles()
  if TemplatePathls~=nil then
    TemplatePathls=luajava.astable(File(TemplatePath).listFiles())
    table.sort(TemplatePathls,function(a,b)
      return (a.isDirectory()~=b.isDirectory() and a.isDirectory()) or ((a.isDirectory()==b.isDirectory()) and a.Name<b.Name)
    end)
   else
    TemplatePathls={}
  end
  for TemplatePathIndex,TemplatePathC in ipairs(TemplatePathls) do
    if TemplatePathC.isDirectory() then
      table.insert(TemplatePathItem,TemplatePathC.Name)
    end
  end

  AlertDialog.Builder(this)
  .setTitle(getLS("L_Please_select_a_template"))
  .setItems(TemplatePathItem,{onClick=function(l,v)
      InputLayout={
        LinearLayout;
        orientation="vertical";
        Focusable=true,
        FocusableInTouchMode=true,
        {
          TextView;
          id="Prompt",
          textSize="13sp",
          layout_marginTop="10dp";
          layout_width="-1";
          layout_gravity="center",
          text=getLS("L_The_name_of_the")..":";
          layout_marginLeft="10dp";
          layout_marginRight="10dp";
        };
        {
          EditText;
          layout_width="-1";
          layout_gravity="center",
          layout_marginLeft="10dp";
          layout_marginRight="10dp";
          id="edit";
          text="HelloWorld";
          singleLine=true
        };
        {
          TextView;
          id="Prompt",
          textSize="13sp",
          layout_marginLeft="10dp";
          layout_marginRight="10dp";
          layout_width="-1";
          layout_gravity="center",
          text=getLS("L_The_package_name")..":";
        };
        {
          EditText;
          layout_marginLeft="10dp";
          layout_marginRight="10dp";
          layout_width="-1";
          layout_gravity="center",
          id="edit1";
          text="com.andlua.demo";
          singleLine=true
        };
      };
      tc=AlertDialog.Builder(this)
      .setTitle(getLS("L_New_construction").." ["..TemplatePathItem[v+1].."]")
      .setView(loadlayout(InputLayout))
      .setPositiveButton(getLS("L_Create"),{onClick=function(v1)
          hb="/sdcard/AndLua/project/"..tostring(edit.Text)
          if File(hb).isDirectory() then
            SnackerBar.build()
            :msg(getLS("L_The_project_name_already_exists"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           else
            if File("/sdcard/AndLua/project/"..edit.Text).mkdirs() then
              LuaUtil.copyDir(activity.getLuaDir().."/Template/"..TemplatePathItem[v+1],"/sdcard/AndLua/project/"..edit.Text.."/")
              ReplaceFileString("/sdcard/AndLua/project/"..edit.Text.."/main.lua","%$AppName%$",edit.Text)
              ReplaceFileString("/sdcard/AndLua/project/"..edit.Text.."/main.lua","%$PackageName%$",edit1.Text)
              ReplaceFileString("/sdcard/AndLua/project/"..edit.Text.."/init.lua","%$AppName%$",edit.Text)
              ReplaceFileString("/sdcard/AndLua/project/"..edit.Text.."/init.lua","%$PackageName%$",edit1.Text)

              if TemplatePathItem[v+1]=="LuaJava" then
                javaFile="/sdcard/AndLua/project/"..edit.Text.."/java/src/"..string.gsub(edit1.Text,"%.","/").."/Main.java"
                File("/sdcard/AndLua/project/"..edit.Text.."/java/build/bin/classes/").mkdirs()
                File("/sdcard/AndLua/project/"..edit.Text.."/java/jar/").mkdirs()
                writeFile(javaFile,"package "..edit1.Text..";".."\n"..java_text)
              end

              SnackerBar.build()
              :msg(getLS("L_Creating_a_successful"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
              thread(sxgg)
              task(200,function()
                if TemplatePathItem[v+1]=="LuaJava" then
                  activity.newActivity("main1",{"/sdcard/AndLua/project/"..edit.Text,javaFile})
                 else
                  activity.newActivity("main1",{"/sdcard/AndLua/project/"..edit.Text})
                end
              end)
             else
              SnackerBar.build()
              :msg(getLS("L_Create_a_failure"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
            end
          end
        end})
      .setNegativeButton(getLS("L_Cancel"),nil)
      .setNeutralButton(getLS("L_Random"),nil)
      .show()
      tem=true
      dialog=tc.create()
      dialog.getButton(AlertDialog.BUTTON_NEUTRAL).setOnClickListener(View.OnClickListener
      {onClick=function()
          ml=tostring(math.random(1111,9999))
          edit.Text="MyApp"..ml
          edit1.Text="com.mycompany."..string.lower("MyApp"..ml)
        end})
      thread(NewProject1,tem,nub)
      edit.addTextChangedListener{
        onTextChanged=function(s)
          hb="/sdcard/AndLua/project/"..tostring(edit.Text)
          if File(hb).isDirectory() then
            tc.getButton(tc.BUTTON_POSITIVE).setEnabled(false)
           else
            tc.getButton(tc.BUTTON_POSITIVE).setEnabled(true)
          end
        end
      }
    end})
  .show()
end

tem=true
nub=1
ProjectN="HelloWold"

function NewProject1(tem,nub)
  require "import"
  import "java.io.File"
  if tem then
    if File("/sdcard/AndLua/project/MyApp"..tostring(nub)).isDirectory() then
      call("again")
     else
      call("again1","MyApp"..tostring(nub))
    end
  end
end

function again()
  nub=nub+1
  thread(NewProject1,tem,nub)
end

function again1(ProjectN)
  tem=false
  task(1,function()
    edit.setText(ProjectN)
    edit1.setText("com.mycompany."..string.lower(ProjectN))
    Typew(edit)
  end)
end

function dd1()
  wgc2.setVisibility(View.GONE)
end

function dd2(mz5,dx6,icon,id33,uid333,Price1)
  adp5.add{__type=2,wb=mz5,wb2=dx6,ttx=icon,id3=id33,id33=uid333,txx=string.gsub(Price1,"免费下载",getLS("L_As_a_free_download"))}
end

cbbb=0

function dd22(mz,mz1,mz2,mz3,icon,icon1,icon2,icon3,i1,i2,i3,i4,d1,d2,d3,d4)
  if cbbb==0 then
    cbbb=1
    adp5.add{__type=1,CTT1={onClick=function()
          Codde(i1,d1)
        end},CTT2={onClick=function()
          Codde(i2,d2)
        end},CTT3={onClick=function()
          Codde(i3,d3)
        end},CTT4={onClick=function()
          Codde(i4,d4)
        end},cntext1=mz,cnicon1=icon,cntext2=mz1,cnicon2=icon1,cntext3=mz2,cnicon3=icon2,cntext4=mz3,cnicon4=icon3}
  end
end

function dd3()
  wgc2.setVisibility(View.VISIBLE)
end

function dd4()
  task(500,function()
    sxlist2.setRefreshing(false);
    page2=0
    dd1()
  end)
end

function Codde(id3,id33)
  activity.newActivity("main12",{id3,id33})
end

function sxym(i)
  require "import"
  import "http"
  import "java.io.File"
  ui1=activity.getLuaDir().."/res/uid1.LY"
  ui2=activity.getLuaDir().."/res/uid2.LY"
  ui3=activity.getLuaDir().."/res/uid4.LY"
  uid1=io.open(ui1):read("*a")
  uid2=io.open(ui2):read("*a")
  uid3=io.open(ui3):read("*a")
  sjb=os.date("%H%M")
  sjn="155785"
  sjv=sjb*sjn
  sid=tointeger(sjv)
  Http.post("https://ly250.cn/andlua/ym.php","uid1="..uid1.."&uid2="..uid2.."&uid3="..uid3.."&sid="..sid.."&page="..i,function(a1,bj,c,d)
    sid1=bj:match('%["ret"] = "(.-)%";')
    if sid1=="ok" then
      call("dd1")
      dx5=bj:gmatch('%["dx"] = "(.-)%";')
      iconn=bj:gmatch('%["icon"] = "(.-)%";')
      uids3=bj:gmatch('%["uid3"] = "(.-)%";')
      id3=bj:gmatch('%["id"] = "(.-)%";')
      Price1=bj:gmatch('%["Price"] = "(.-)%";')

      name61=bj:match('%["name1"] = "(.-)%";')
      icon61=bj:match('%["icon1"] = "(.-)%";')
      DD1=bj:match('%["uid31"] = "(.-)%";')
      II1=bj:match('%["id1"] = "(.-)%";')

      name62=bj:match('%["name2"] = "(.-)%";')
      icon62=bj:match('%["icon2"] = "(.-)%";')
      DD2=bj:match('%["uid32"] = "(.-)%";')
      II2=bj:match('%["id2"] = "(.-)%";')

      name63=bj:match('%["name3"] = "(.-)%";')
      icon63=bj:match('%["icon3"] = "(.-)%";')
      DD3=bj:match('%["uid33"] = "(.-)%";')
      II3=bj:match('%["id3"] = "(.-)%";')

      name64=bj:match('%["name4"] = "(.-)%";')
      icon64=bj:match('%["icon4"] = "(.-)%";')
      DD4=bj:match('%["uid34"] = "(.-)%";')
      II4=bj:match('%["id4"] = "(.-)%";')


      call("dd22",name61,name62,name63,name64,icon61,icon62,icon63,icon64,II1,II2,II3,II4,DD1,DD2,DD3,DD4)

      for mz5 in bj:gmatch('%["name"] = "(.-)%";') do
        uid333=uids3()
        id33=id3()
        dx6=dx5()
        icon=iconn()
        Price=Price1()
        if Price=="0" then
          Price="免费下载"
         else
          Price="￥"..Price
        end
        call("dd2",mz5,dx6,icon,id33,uid333,Price)
      end
     else
    end
    call("dd4")
  end)
end

function dp4(bt4,nr3,tx3,nc2,sj2,lll1,hfl1,ud3,ud4)
  adp4.add{tzbt={Text=Html.fromHtml(bt4)},tznr=nr3,tztx={src=tx3,transitionName="tx1io",onClick=function(v)
        intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
        intent.putExtra("uidd1",ud3);
        path=activity.getLuaDir().."/main15.lua"
        intent.setData(Uri.parse("file://"..path));
        activity.startActivity(intent,ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
      end,},tznc=nc2,tzrq=sj2,lll=lll1,hfl=hfl1,uidd3=ud3,uidd4=ud4}
end

function dp5(a)
  if a=="0" then
    wgc1.setVisibility(View.GONE)
   else
    wgc2.setVisibility(View.VISIBLE)
  end
end

function dp6()
  task(500,function()
    sxlist111.setRefreshing(false);
    page1=0
  end)
end

function mainym()
  main={
    DrawerLayout;
    id="Drawer";
    backgroundColor=AndLuaB;
    layout_width="fill";
    layout_height="fill";
    {
      LinearLayout;
      orientation="vertical";
      layout_width="fill";
      layout_height="fill";
      {
        LinearLayout;
        id="status_bar";
        layout_height="0";
        elevation="0dp";
        layout_width="fill";
      };
      {
        LinearLayout;
        backgroundColor=AndLuaB1;
        layout_height="56dp";
        orientation="horizontal";
        layout_width="fill";
        id="yyy";
        {
          LinearLayout;
          layout_marginLeft="1dp";
          layout_marginTop="2px";
          id="Sideslip";
          gravity="center";
          layout_width="55dp";
          layout_height="-1";
          {
            RelativeLayout;
            layout_width="-1";
            layout_height="-1";
            {
              CircleImageView;
              layout_centerInParent="true";
              layout_width="30dp";
              id="tx8";
              src="res/tx.png";
              layout_height="30dp";
            };
            {
              TextView;
              id="xxt";
              layout_alignParentRight="true";
              layout_marginBottom="8dp";
              layout_marginRight="3dp";
              layout_alignParentBottom="true";
              layout_width="fill";
            };
          };
        };
        {
          LinearLayout;
          orientation="vertical";
          gravity="center";
          layout_weight="1";
          layout_marginLeft="5dp";
          layout_height="fill";
          {
            CardView;
            backgroundColor=AndLuaB2;
            layout_width="match_parent";
            elevation="0dp";
            id="search",
            layout_height="30dp";
            radius="18dp";
            {
              LinearLayout;
              layout_width="fill";
              layout_height="fill";
              gravity="center";
              orientation="horizontal";
              {
                ImageView;
                layout_height="14dp";
                colorFilter=0xff757575;
                layout_width="14dp";
                layout_marginLeft="10dp";
                src="res/B10.png";
              };
              {
                TextView;
                layout_width="fill";
                layout_marginLeft="8dp";
                Text=getLS("search");
                textColor=0xff757575;
              };
            };
          };
        };
        {
          LinearLayout;
          id="menu12";
          gravity="center";
          layout_marginLeft="2dp";
          layout_width="45dp";
          layout_height="-1";
          {
            ImageView;
            layout_width="20dp";
            colorFilter=0xff757575;
            src="res/C9.png";
            layout_height="20dp";
          };
        };
        {
          LinearLayout;
          id="menu13";
          gravity="center";
          layout_width="45dp";
          layout_marginRight="5dp";
          layout_height="-1";
          {
            ImageView;
            layout_width="25dp";
            colorFilter=0xff757575;
            src="res/ic_dots_vertical.png";
            layout_height="25dp";
          };
        };
      };
      {
        PageView;
        id="huadong";
        backgroundColor=AndLuaB;
        layout_marginLeft="5dp";
        layout_marginRight="5dp";
        layout_marginTop="5dp";
        layout_marginBottom="5dp";
        layout_weight="1";
        pages={
          {
            LinearLayout;
            layout_width="fill";
            layout_height="fill";
            {
              RelativeLayout;
              layout_width="fill";
              backgroundColor=AndLuaB;
              layout_height="fill";
              {
                TextView;
                textSize="15sp";
                layout_centerInParent="true";
                text=getLS("not_project");
                textColor=TitleColor,
                id="wgc";
              };
              {
                SwipeRefreshLayout,
                id="sxlist",
                {
                  ListView;
                  id="list";
                  VerticalScrollBarEnabled=false;
                  layout_width="-1";
                  layout_height="-1";
                  DividerHeight=0
                };
              };
            };
          };
          {
            RelativeLayout;
            layout_height="fill";
            id="ViewNight_lay1";
            layout_width="fill";
            {
              ProgressBar;
              layout_centerInParent="true";
              id="wgc1";
            };
            {
              SwipeRefreshLayout,
              id="sxlist111",
              {
                YLListView;
                id="list1";
                VerticalScrollBarEnabled=false;
                layout_width="-1";
                layout_height="-1";
                DividerHeight=0
              };
            };
          };
          {
            RelativeLayout;
            layout_height="fill";
            id="ViewNight_lay2";
            layout_width="fill";
            {
              ProgressBar;
              layout_centerInParent="true";
              id="wgc2";
            };
            {
              TextView;
              textSize="0sp";
              text="0";
              id="up1";
              textColor="0x00ffffff";
              layout_height="0dp";
              layout_width="0dp";
            };
            {
              TextView;
              textSize="0sp";
              text="0";
              id="up2";
              textColor="0x00ffffff";
              layout_height="0dp";
              layout_width="0dp";
            };
            {
              SwipeRefreshLayout,
              id="sxlist2",
              {
                YLListView;
                id="list2";
                VerticalScrollBarEnabled=false;
                layout_width="-1";
                layout_height="-1";
                DividerHeight=0
              };
            };
          };
          {
            LinearLayout;
            backgroundColor=AndLuaB;
            orientation="vertical";
            layout_height="fill";
            layout_width="fill";
            {
              RelativeLayout;
              layout_height="-1";
              layout_width="-1";
              {
                CardView;
                layout_width="-1";
                backgroundColor=AndLuaB1,
                radius=AndLuaR;
                id="snsh";
                layout_margin="5dp";
                layout_height="20%h";
                elevation="0dp";
                {
                  RelativeLayout;
                  layout_width="-1";
                  layout_height="20%h";
                  {
                    CardView;
                    backgroundColor=AndLuaB1,
                    radius="28dp";
                    id="tx341";
                    elevation="10dp";
                    layout_centerVertical="true";
                    layout_width="56dp";
                    layout_marginLeft="25dp";
                    layout_height="56dp";
                    {
                      CircleImageView;
                      layout_width="-1";
                      src="res/tx.png";
                      layout_height="-1";
                      transitionName="tx1io",
                      id="tx34";
                    };
                  };
                  {
                    TextView;
                    layout_centerVertical="true";
                    layout_height="2dp";
                    layout_width="0dp";
                    id="jies1";
                  };
                  {
                    TextView;
                    text=getLS("sign");
                    textSize="17sp";
                    layout_marginLeft="15dp";
                    layout_above="jies1";
                    layout_toRightOf="tx341";
                    textColor=TitleColor;
                    id="nc3";
                  };
                  {
                    TextView;
                    layout_below="jies1";
                    text=getLS("sign1");
                    textSize="11sp";
                    layout_marginLeft="15dp";
                    layout_toRightOf="tx341";
                    textColor=TitleColor1;
                  };
                  {
                    ImageView;
                    layout_centerVertical="true";
                    src="res/Metrial541.png";
                    layout_alignParentRight="true";
                    layout_height="20dp";
                    layout_width="20dp";
                    ColorFilter=0xff757575;
                    layout_marginRight="15dp";
                  };
                };
              };
              {
                CardView;
                layout_width="-1";
                backgroundColor=AndLuaB1,
                radius=AndLuaR;
                layout_below="snsh";
                layout_margin="5dp";
                id="itcj";
                elevation="0dp";
                {
                  RelativeLayout;
                  layout_height="80dp";
                  layout_width="-1";
                  {
                    RelativeLayout;
                    layout_width="-1";
                    layout_height="-1";
                    {
                      RelativeLayout;
                      layout_width="33%w";
                      layout_height="-1";
                      id="uuu";
                      {
                        TextView;
                        layout_centerVertical="true";
                        layout_height="2dp";
                        layout_width="0dp";
                        id="uu1";
                      };
                      {
                        TextView;
                        layout_centerHorizontal="true";
                        text=getLS("post");
                        layout_below="uu1";
                        textSize="11sp";
                        textColor=TitleColor1;
                      };
                      {
                        TextView;
                        layout_centerHorizontal="true";
                        text="0";
                        Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
                        layout_above="uu1";
                        textSize="18sp";
                        textColor=TitleColor;
                        id="mytz";
                      };
                      {
                        TextView;
                        backgroundColor=AndLuaB;
                        layout_marginBottom="30dp";
                        layout_width="1px";
                        layout_alignParentRight="true";
                        layout_height="-1";
                        layout_marginTop="30dp";
                      };
                      {
                        Button;
                        layout_width="-1";
                        style="?android:attr/buttonBarButtonStyle";
                        layout_height="-1";
                        id="h5";
                        layout_margin="-20dp";
                      };
                    };
                    {
                      RelativeLayout;
                      layout_toRightOf="uuu";
                      layout_height="-1";
                      layout_width="34%w";
                      id="uu4";
                      {
                        TextView;
                        layout_centerVertical="true";
                        layout_height="2dp";
                        layout_width="0dp";
                        id="uu2";
                      };
                      {
                        TextView;
                        layout_centerHorizontal="true";
                        text=getLS("source");
                        layout_below="uu2";
                        textSize="11sp";
                        textColor=TitleColor1;
                      };
                      {
                        TextView;
                        layout_centerHorizontal="true";
                        text="0";
                        textSize="18sp";
                        layout_above="uu2";
                        Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
                        textColor=TitleColor;
                        id="myym";
                      };
                      {
                        TextView;
                        backgroundColor=AndLuaB;
                        layout_marginBottom="30dp";
                        layout_width="1px";
                        layout_alignParentRight="true";
                        layout_height="-1";
                        layout_marginTop="30dp";
                      };
                      {
                        Button;
                        layout_width="-1";
                        style="?android:attr/buttonBarButtonStyle";
                        layout_height="-1";
                        id="h6";
                        layout_margin="-20dp";
                      };
                    };
                    {
                      RelativeLayout;
                      layout_toRightOf="uu4";
                      layout_height="-1";
                      layout_width="33%w";
                      layout_width="-1";
                      id="uu5";
                      {
                        TextView;
                        layout_centerVertical="true";
                        layout_height="2dp";
                        layout_width="0dp";
                        id="uu3";
                      };
                      {
                        TextView;
                        layout_centerHorizontal="true";
                        text=getLS("reply");
                        layout_below="uu3";
                        textSize="11sp";
                        textColor=TitleColor1;
                      };
                      {
                        TextView;
                        layout_centerHorizontal="true";
                        text="0";
                        layout_above="uu3";
                        textSize="18sp";
                        Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
                        id="myhf";
                        textColor=TitleColor;
                      };
                      {
                        Button;
                        layout_width="-1";
                        style="?android:attr/buttonBarButtonStyle";
                        layout_height="-1";
                        id="h7";
                        layout_margin="-20dp";
                      };
                    };
                  };
                };
              };
              {
                CardView;
                layout_width="-1";
                backgroundColor=AndLuaB1,
                radius=AndLuaR;
                layout_below="itcj";
                layout_margin="5dp";
                elevation="0dp";
                {
                  YLListView;
                  layout_width="-1";
                  VerticalScrollBarEnabled=false;
                  id="grlb";
                  DividerHeight=0
                };
              };
            };
          };
        };
      };
      {
        LinearLayout;
        layout_height="56dp";
        backgroundColor=AndLuaB1;
        layout_width="match_parent";
        Elevation="0dp";
        {
          LinearLayout;
          orientation="horizontal";
          layout_height="56dp";
          layout_width="-1";
          gravity="center|left";
          BackgroundColor=AndLuaB1;
          elevation="0dp";
          {
            LinearLayout;
            orientation="vertical";
            layout_height="-1";
            layout_width="-1";
            id="dl1";
            gravity="center";
            layout_weight="1";
            {
              ImageView;
              layout_height="20dp";
              layout_width="20dp";
              src="res/B3.png";
              PivotX="12dp";
              PivotY="24dp";
            };
            {
              TextView;
              textSize="12sp";
              text=getLS("project");
              layout_marginTop="2dp";
              layout_width="wrap";
            };
          };
          {
            LinearLayout;
            orientation="vertical";
            layout_height="-1";
            layout_width="-1";
            id="dl2";
            gravity="center";
            layout_weight="1";
            {
              ImageView;
              layout_height="20dp";
              layout_width="20dp";
              src="res/B4.png";
              PivotX="12dp";
              PivotY="24dp";
            };
            {
              TextView;
              textSize="12sp";
              text=getLS("forum");
              layout_marginTop="2dp";
            };
          };
          {
            LinearLayout;
            orientation="vertical";
            layout_height="-1";
            layout_width="-1";
            id="butt";
            gravity="center";
            layout_weight="1";
            {
              CardView;
              layout_width="36dp";
              backgroundColor=tonumber(bjzt());
              elevation="0dp";
              id="button";
              layout_height="36dp";
              radius="18dp";
              {
                LinearLayout;
                orientation="vertical";
                layout_height="-1";
                layout_width="-1";
                gravity="center";
                {
                  ImageView;
                  layout_height="25dp";
                  layout_width="25dp";
                  src="res/B7.png";
                  ColorFilter=0xffffffff;
                  PivotX="12dp";
                  PivotY="24dp";
                };
              };
            };
          };
          {
            LinearLayout;
            orientation="vertical";
            layout_height="-1";
            layout_width="-1";
            id="dl3";
            gravity="center";
            layout_weight="1";
            {
              ImageView;
              layout_height="20dp";
              layout_width="20dp";
              src="res/B5.png";
              PivotX="12dp";
              PivotY="24dp";
            };
            {
              TextView;
              textSize="12sp";
              text=getLS("share");
              layout_marginTop="2dp";
            };
          };
          {
            LinearLayout;
            orientation="vertical";
            layout_height="-1";
            layout_width="-1";
            id="dl4";
            gravity="center";
            layout_weight="1";
            {
              ImageView;
              layout_height="20dp";
              layout_width="20dp";
              src="res/B6.png";
              PivotX="12dp";
              PivotY="24dp";
            };
            {
              TextView;
              textSize="12sp";
              text=getLS("my");
              layout_marginTop="2dp";
            };
          };
        };
      };
    };
  };
end

os.remove(activity.getLuaDir().."/theme")

page=1
page11=1

function onResult(name,...)
  ah,vu,aal=...
  if aal=="更新主题" then
    if File(activity.getLuaDir().."/theme").isFile() then
      os.remove(activity.getLuaDir().."/theme")
      activity.recreate()
    end
   elseif aal=="导入工程" then
    NewProject(tostring(ah))
   elseif aal=="注销" then
    activity.finish()
    activity.newActivity("main")
   elseif aal=="安装插件" then
    NewProject0(vu)
   elseif aal=="刷新消息" then
    hqxx()
   elseif aal=="9" then
    lkn=ah
    hha=activity.getLuaDir().."/res/log.ly"
    hhb=io.open(hha):read("*a")
    idhh=hhb:match("【@@"..lkn.."/main.lua@@】★【§(.-)§】")
    if idhh==nil then
     else
      css="【@@"..lkn.."/main.lua@@】★【§"..idhh.."§】"
      hhc=string.gsub(hhb,css,"")
      io.open(hha,"w"):write(hhc):close()
    end
    InputLayout8={
      LinearLayout;
      orientation="vertical";
      Focusable=true,
      FocusableInTouchMode=true,
      {
        TextView;
        id="Prompt",
        textSize="15sp",
        layout_marginTop="10dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        text=getLS("L_Program_crashes");
      };
      {
        EditText;
        hint=getLS("L_Please_enter_a_new_folder_name");
        layout_marginTop="5dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        id="edit";
      };
    };

    AlertDialog.Builder(this)
    .setTitle(getLS("L_Prompt"))
    .setView(loadlayout(InputLayout8))
    .setPositiveButton(getLS("L_Modify_the"),{onClick=function(v)
        if File(tostring(File(ah).getParentFile()).."/"..edit.Text).isDirectory()==true then
          SnackerBar.build()
          :msg(getLS("L_The_folder_is"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
         else
          if os.rename(ah,tostring(File(ah).getParentFile()).."/"..edit.Text)==true then
            SnackerBar.build()
            :msg(getLS("L_Modify_the_success"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           else
            SnackerBar.build()
            :msg(getLS("L_Modify_the_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end
          thread(sxgg)
        end
      end})
    .setNegativeButton(getLS("L_Cancel"),nil)
    .show()
    edit.Text=File(ah).getName()
    Typew(edit)
   elseif ah=="注销" then
    activity.recreate()
   else
    SnackerBar.build()
    :msg(ah)
    :actionText(getLS("L_OK"))
    :action(function()
    end)
    :show()
  end
end

function gxlbb(ggh,bbt,bh,bmh,g,ggg)
  adp3.add{tb=ggh,bt=bbt,bb=string.gsub(bh,"版本",getLS("L_Version")),bmb=string.gsub(bmh,"包名",getLS("L_The_package_name")),gcv=g,gcwj=ggg}
end

function sjj()
  sxlist.setRefreshing(true);
  adp3=LuaAdapter(activity,lap)
end

function szlb(hkqq)
  if hkqq=="0" then
    wgc.setVisibility(View.VISIBLE)
    list.setAdapter(adp3)
   else
    wgc.setVisibility(View.GONE)
    list.setAdapter(adp3)
  end
  sxlist.setRefreshing(false);
end

function ddd()
  adp3.clear()
end

function Slide(a)
  w=activity.width
  position1=0
  frx,p,v,fx,frx1=0,0,0,0,0
  a.setOnTouchListener(View.OnTouchListener{
    onTouch=function(v,event)
      if event.Action==event.ACTION_DOWN then
        position1=0
        frx=event.x
        fx=event.x
       elseif event.Action==event.ACTION_MOVE then
        position=v.pointToPosition(event.getX(),event.getY())
        if position1==0 then
          position2=position
          position1=1
        end
        frx=event.rawX
        frx1=tointeger(event.x)
        v.getChildAt(position2-v.getFirstVisiblePosition()).alpha=1-math.abs(v.getChildAt(position2-v.getFirstVisiblePosition()).translationX)/w
        v.getChildAt(position2-v.getFirstVisiblePosition()).translationX=frx-fx
       elseif event.Action==event.ACTION_UP then
        if frx1/2>=fx/2+200 then
          adp.remove(position2)
          v.getChildAt(position2-v.getFirstVisiblePosition()).translationX=0
          v.getChildAt(position2-v.getFirstVisiblePosition()).alpha=1
         else
          v.getChildAt(position2-v.getFirstVisiblePosition()).alpha=1
          v.getChildAt(position2-v.getFirstVisiblePosition()).translationX=0
        end
        fx=0
      end
      return false
    end})
end

function sxgg()
  require "import"
  import "java.io.File"
  call("sjj")
  function show(f)
    dir=f
    call("ddd")
    ls=luajava.astable(f.listFiles() or String{})
    table.sort(ls,function(a,b)
      return (a.isDirectory()~=b.isDirectory() and a.isDirectory()) or ((a.isDirectory()==b.isDirectory()) and a.Name<b.Name)
    end)
    if #ls==0 then
      hkqq="0"
     else
      hkqq="1"
      for n=1,#ls do
        bbm=ls[n].Name
        pdd1=("/sdcard/AndLua/project/"..ls[n].Name)
        pdd=("/sdcard/AndLua/project/"..ls[n].Name.."/main.lua")
        file,err=io.open(pdd)
        if err==nil then
          ggh=("/sdcard/AndLua/project/"..ls[n].Name.."/icon.png")
          if File(ggh).isFile() then
           else
            ggh=activity.getLuaDir().."/icon.png"
          end
          gg=tostring("/sdcard/AndLua/project/"..ls[n].Name.."/init.lua")
          g=("/sdcard/AndLua/project/"..ls[n].Name)
          ggg=ls[n].Name
          if File(gg).isFile()==true then
            wj=tostring(io.open(gg):read("*a"))
            bbt=tostring(wj:match('%appname="(.-)"'))
            bh="版本: "..tostring(wj:match('%appver="(.-)"'))
            bmh="包名: "..tostring(wj:match('%kagename="(.-)"'))
            call("gxlbb",ggh,bbt,bh,bmh,g,ggg)
          end
         else
        end
      end
    end
  end
  show(File("/sdcard/AndLua/project/"))
  call("szlb",hkqq)
end

function ccc()
  bw(tx34,0x5FFFFFFF)
  bw(Sideslip,0x5FFFFFFF)
  bw(menu12,0x5FFFFFFF)
  bw(menu13,0x5FFFFFFF)

  search.onClick=function()
    activity.newActivity("main53")
  end

  menu13.onClick=function()
    pop1.show()
  end

  menu12.onClick=function()
    dialog5= ProgressDialog(this)
    dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
    dialog5.setCancelable(true)
    dialog5.show()
    Chat1=0
    Chat2={}
    Chat3={}
    Chat4={}
    Chat5={}
    uguid()
    Http.post("https://ly250.cn/andlua/Chat1.php","uid3="..uid3.."&sid="..sid(),function(a1,b,c,d)
      sid1=b:match('%["ret"] = "(.-)%";')
      if sid1=="ok" then
        sub=b:match('%["sub"] = "(.-)%";')
        if sub=="1" then
          ltsid=b:match('%["id"] = "(.-)%";')
          ltsnc=b:match('%["name"] = "(.-)%";')
          ltsgg=b:match('%["text"] = "(.-)%";')
          state=b:match('%["state"] = "(.-)%";')
          activity.newActivity("main54",{ltsid,ltsnc,ltsgg,state})
         else
          state=b:gmatch('%["state"] = "(.-)%";')
          ltsnc=b:gmatch('%["name"] = "(.-)%";')
          ltsgg=b:gmatch('%["text"] = "(.-)%";')
          for ltsid in b:gmatch('%["id"] = "(.-)%";') do
            Chat1=Chat1+1
            Chat5[Chat1]=ltsnc()
            Chat2[Chat1]=ltsid
            Chat3[Chat1]=ltsgg()
            Chat4[Chat1]=state()
          end
          PtionShow(Chat5)
          PtionList.onItemClick=function(l,v,p,i)
            Context=v.Tag.PtionTitle.Text
            activity.newActivity("main54",{Chat2[p+1],Context,Chat3[p+1],Chat4[p+1]})
            PtionView.hide()
          end
        end
       else
        SnackerBar.build()
        :msg(getLS("L_For_failure"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
      end
      dialog5.hide()
    end)
  end

  Sideslip.onClick=function()
  end

  tx8.onClick=function(v)
    u3=activity.getLuaDir().."/res/uid3.LY"
    u9=io.open(u3):read("*a")
    if u9=="true" then
      uguid()
      if uid3=="" then
        activity.newActivity("main5")
       else
        intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
        intent.putExtra("uidd1",uid3);
        path=activity.getLuaDir().."/main15.lua"
        intent.setData(Uri.parse("file://"..path));
        activity.startActivity(intent,ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
        --activity.newActivity("main16",{uid3})
      end
     else
      activity.newActivity("main5")
    end
  end
  tx34.onClick=function(v)
    u3=activity.getLuaDir().."/res/uid3.LY"
    u9=io.open(u3):read("*a")
    uguid()
    if u9=="true" then
      if uid3=="" then
        activity.newActivity("main5")
       else
        activity.newActivity("main15",{uid3})
      end
     else
      activity.newActivity("main5")
    end
  end
  snsh.onClick=function(v)
    u3=activity.getLuaDir().."/res/uid3.LY"
    u9=io.open(u3):read("*a")
    uguid()
    if u9=="true" then
      if uid3=="" then
        activity.newActivity("main5")
       else
        activity.newActivity("main15",{uid3})
      end
     else
      activity.newActivity("main5")
    end
  end

end

function fg11()
  itemc={
    LinearLayout;
    layout_width="fill";
    layout_height="fill";
    orientation="vertical";
    {
      RelativeLayout;
      gravity="center";
      layout_width="fill";
      layout_height="50dp";
      {
        ImageView;
        layout_height="25dp";
        id="srcf";
        layout_width="25dp";
        layout_marginLeft="15dp";
        layout_centerVertical="true";
        --ColorFilter="#ff737373";
      };
      {
        TextView;
        id="srct";
        layout_toRightOf="srcf";
        layout_marginLeft="10dp";
        layout_centerVertical="true";
        textColor=TitleColor;
      };
      {
        ImageView;
        layout_centerVertical="true";
        src="res/Metrial541.png";
        layout_alignParentRight="true";
        layout_height="20dp";
        layout_width="20dp";
        ColorFilter=0xff757575;
        layout_marginRight="15dp";
      };
    };
  };

  datas={}
  aw={getLS("wallet"),getLS("message"),getLS("download"),getLS("L_Backup_management"),getLS("L_The_tutorial_manual"),getLS("L_Tool_set"),getLS("L_Browsing_history"),getLS("L_API_interface"),getLS("L_The_software_Settings"),getLS("L_About_the_software"),getLS("L_Auxiliary_tool")}
  aic={"res/A1.png","res/A2.png","res/A3.png","res/A4.png","res/A9.png","res/A10.png","res/A6.png","res/A5.png","res/A7.png","res/A8.png","res/A13.png"}
  for nj=1,#aw do
    table.insert(datas,{srct=aw[nj],srcf=aic[nj]})
  end
  adp=LuaAdapter(activity,datas,itemc)
  grlb.Adapter=adp
  datas={}

  grlb.onItemClick=function(l,v,p,i)
    if v.Tag.srct.Text==getLS("wallet") then
      uguid()
      activity.newActivity("main20",{uid3})
     elseif v.Tag.srct.Text==getLS("message") then
      activity.newActivity("main21",{uid3})
     elseif v.Tag.srct.Text==getLS("download") then
      activity.newActivity("main22",{uid3})
     elseif v.Tag.srct.Text==getLS("L_Backup_management") then
      activity.newActivity("main39")
     elseif v.Tag.srct.Text==getLS("L_Browsing_history") then
      activity.newActivity("main23")
     elseif v.Tag.srct.Text==getLS("L_The_color_reference") then
      activity.newActivity("main48")
     elseif v.Tag.srct.Text==getLS("L_Material_warehouse") then
      activity.newActivity("main47")
     elseif v.Tag.srct.Text==getLS("L_The_software_Settings") then
      activity.newActivity("main24")
     elseif v.Tag.srct.Text==getLS("L_API_interface") then
      activity.newActivity("main37")
     elseif v.Tag.srct.Text==getLS("L_Auxiliary_tool") then
      import "android.content.Intent"
      import "android.net.Uri"
      items={}
      table.insert(items,"[APP]  AndLua+ Pro")
      table.insert(items,"[APP]  AndLua++")
      table.insert(items,"[APP]  AndLua+手册")
      table.insert(items,"[APP]  文本编辑器")
      table.insert(items,"[APP]  插件便携安装器")
      table.insert(items,"[网站]  云笔记")
      table.insert(items,"[网站]  小阳API")
      AlertDialog.Builder(this)
      .setTitle(getLS("L_Auxiliary_tool"))
      .setItems(items,{onClick=function(l,v)
          if v==0 then
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse("http://ly250.cn/download/AndLua+ Pro_1.0.apk"))
            activity.startActivity(viewIntent)
           elseif v==1 then
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse("http://ly250.cn/download/AndLua++_1.0.apk"))
            activity.startActivity(viewIntent)
           elseif v==2 then
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse("http://ly250.cn/download/AndLua+手册_1.0.apk"))
            activity.startActivity(viewIntent)
           elseif v==3 then
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse("https://www.coolapk.com/apk/com.texteditor.alone"))
            activity.startActivity(viewIntent)
           elseif v==4 then
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse("http://ly250.cn/download/插件便携安装器_1.0.apk"))
            activity.startActivity(viewIntent)
           elseif v==5 then
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse("http://ly250.cn/ybj/"))
            activity.startActivity(viewIntent)
           elseif v==6 then
            viewIntent = Intent("android.intent.action.VIEW",Uri.parse("http://ly250.cn/xyapi/"))
            activity.startActivity(viewIntent)
          end
        end})
      .show()
     elseif v.Tag.srct.Text==getLS("L_The_tutorial_manual") then
      activity.newActivity("main25")
      --[[
      mainpt={ "函数手册", "中文函数" }

      PtionShow(mainpt)

      PtionList.onItemClick=function(p,v,i,s)
        PtionView.hide()
        Context=v.Tag.PtionTitle.Text
        if Context=="函数手册" then
          activity.newActivity("main25")
         elseif Context=="中文函数" then
          activity.newActivity("main31")
        end
      end]]
     elseif v.Tag.srct.Text==getLS("L_Tool_set") then
      activity.newActivity("main52")
     elseif v.Tag.srct.Text==getLS("L_About_the_software") then
      activity.newActivity("main38")
     else
    end
  end

  list1.onItemClick=function(l,v,p,i)
    wj=activity.getLuaDir().."/res/uid5.LY"
    uo=io.open(wj):read("*a")
    an=string.gsub(v.Tag.tzbt.Text,"                      ","")
    an1=v.Tag.uidd3.Text
    an2=v.Tag.uidd4.Text
    an3=os.date("%Y-%m-%d %H:%M")
    uh=uo.."\n".."#$2826587025【"..an.."】2826587025$#".."\n".."#$2826587025〖"..an1.."〗2826587025$#".."\n".."#$2826587025［"..an2.."］2826587025$#".."\n".."#$2826587025｛"..an3.."｝2826587025$#"
    io.open(wj,"w"):write(uh):close()
    activity.newActivity("main8",{v.Tag.uidd3.Text,v.Tag.uidd4.Text})
  end

  list2.onItemClick=function(l,v,p,i)
    if v.Tag.hhwwp.Text=="1" then
      activity.newActivity("main12",{v.Tag.id3.Text,v.Tag.id33.Text})
    end
  end
  uguid()
  h5.onClick=function()
    activity.newActivity("main17",{uid3,"1"})
  end
  h6.onClick=function()
    activity.newActivity("main18",{uid3,"1"})
  end
  h7.onClick=function()
    activity.newActivity("main19",{uid3,"1"})
  end

  cs=0
  function onKeyDown(c,event)
    if c==4 then
      if Drawer.isDrawerOpen(3) then
        Drawer.closeDrawer(3)
       else
        if cs+2 > tonumber(os.time()) then
          activity.finish()
         else
          SnackerBar.build()
          :msg(getLS("L_Another_press_return_key_to_exit"))
          :actionText(getLS("L_Exit"))
          :action(function()
            activity.finish()
          end)
          :show()
          cs=tonumber(os.time())
        end
        return true
      end
    end
    return true
  end

end

animationSet=AnimationSet(true)

translate=TranslateAnimation(1000,0,0,0)
translate.setDuration(300)
translate.setRepeatCount(0)
translate.setRepeatMode(Animation.REVERSE)
animationSet.addAnimation(translate)

translate1=TranslateAnimation(0,1000,0,0)
translate1.setDuration(330)
translate1.setRepeatCount(0)
translate1.setRepeatMode(Animation.REVERSE)
animationSet.addAnimation(translate1)

function Show(id)
  local kidt=id.getChildAt(0)
  local kidw=id.getChildAt(1)
  animatorSet = AnimatorSet()
  local tscaleX = ObjectAnimator.ofFloat(kidt, "scaleX", {kidt.scaleX, 1.0})
  local tscaleY = ObjectAnimator.ofFloat(kidt, "scaleY", {kidt.scaleY, 1.0})
  local wscaleX = ObjectAnimator.ofFloat(kidw, "scaleX", {kidw.scaleX, 1.0})
  local wscaleY = ObjectAnimator.ofFloat(kidw, "scaleY", {kidw.scaleY, 1.0})
  animatorSet.setDuration(256)
  animatorSet.setInterpolator(DecelerateInterpolator());
  animatorSet.play(tscaleX).with(tscaleY).with(wscaleX).with(wscaleY)
  animatorSet.start();
end

function Hide(id)
  local gkidt=id.getChildAt(0)
  local gkidw=id.getChildAt(1)
  ganimatorSet = AnimatorSet()
  local gtscaleX = ObjectAnimator.ofFloat(gkidt, "scaleX", {gkidt.scaleX, 0.9})
  local gtscaleY = ObjectAnimator.ofFloat(gkidt, "scaleY", {gkidt.scaleY, 0.9})
  local gwscaleX = ObjectAnimator.ofFloat(gkidw, "scaleX", {gkidw.scaleX, 0.9})
  local gwscaleY = ObjectAnimator.ofFloat(gkidw, "scaleY", {gkidw.scaleY, 0.9})
  ganimatorSet.setDuration(256)
  ganimatorSet.setInterpolator(DecelerateInterpolator());
  ganimatorSet.play(gtscaleX).with(gtscaleY).with(gwscaleX).with(gwscaleY)
  ganimatorSet.start();
end


function cdaa()
  pop1=PopupMenu(activity,menu12)
  menu3=pop1.Menu
  menu3.add(getLS("L_Import_the_project")).onMenuItemClick=function(a)
    activity.newActivity("file",{"alp"})
  end
  menu3.add(getLS("L_New_construction")).onMenuItemClick=function(a)
    xj()
  end
end

function P1()
  huadong.showPage(0)
  Show(dl1)
  Hide(dl2)
  Hide(dl3)
  Hide(dl4)
  dl1.getChildAt(0).setColorFilter(tonumber(bjzt()))
  dl2.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl3.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl4.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl1.getChildAt(1).setTextColor(tonumber(bjzt()))
  dl2.getChildAt(1).setTextColor(0xffb6bdc5)
  dl3.getChildAt(1).setTextColor(0xffb6bdc5)
  dl4.getChildAt(1).setTextColor(0xffb6bdc5)
end

function P2()
  huadong.showPage(1)
  Show(dl2)
  Hide(dl1)
  Hide(dl3)
  Hide(dl4)
  dl2.getChildAt(0).setColorFilter(tonumber(bjzt()))
  dl1.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl3.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl4.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl2.getChildAt(1).setTextColor(tonumber(bjzt()))
  dl1.getChildAt(1).setTextColor(0xffb6bdc5)
  dl3.getChildAt(1).setTextColor(0xffb6bdc5)
  dl4.getChildAt(1).setTextColor(0xffb6bdc5)
end

function P3
  huadong.showPage(2)
  Show(dl3)
  Hide(dl1)
  Hide(dl2)
  Hide(dl4)
  dl3.getChildAt(0).setColorFilter(tonumber(bjzt()))
  dl2.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl1.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl4.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl3.getChildAt(1).setTextColor(tonumber(bjzt()))
  dl2.getChildAt(1).setTextColor(0xffb6bdc5)
  dl1.getChildAt(1).setTextColor(0xffb6bdc5)
  dl4.getChildAt(1).setTextColor(0xffb6bdc5)
end

function P4()
  huadong.showPage(3)
  Show(dl4)
  Hide(dl1)
  Hide(dl3)
  Hide(dl2)
  dl4.getChildAt(0).setColorFilter(tonumber(bjzt()))
  dl2.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl3.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl1.getChildAt(0).setColorFilter(0xffb6bdc5)
  dl4.getChildAt(1).setTextColor(tonumber(bjzt()))
  dl2.getChildAt(1).setTextColor(0xffb6bdc5)
  dl3.getChildAt(1).setTextColor(0xffb6bdc5)
  dl1.getChildAt(1).setTextColor(0xffb6bdc5)
end

function hd()
  huadong.setOnPageChangeListener(PageView.OnPageChangeListener{
    onPageScrolled=function(a,b,c)
      if c==0 then
        if a==0 then
          P1()
         elseif a==1 then
          P2()
          if up1.Text=="0" then
            thread(sxtz,page)
          end
          up1.setText("1")
         elseif a==2 then
          P3()
          if up2.Text=="0" then
            thread(sxym,page11)
          end
          up2.setText("1")
         elseif a==3 then
          P4()
        end
      end
    end})
end

mainym()
activity.ActionBar.hide()
activity.setContentView(loadlayout(main))

ViewNight(ViewNight_lay1)
ViewNight(ViewNight_lay2)

adp3=LuaAdapter(activity,lap)
list.setAdapter(adp3)
ccc()
hd()
ztl()

dl1.onClick=function()
  P1()
end

dl2.onClick=function()
  P2()
end

dl3.onClick=function()
  P3()
end

dl4.onClick=function()
  P4()
  if ai==3 then
    uguid()
    if uid3~="" then
      Http.post("https://ly250.cn/andlua/myxx.php","uid1="..uid1.."&uid2="..uid2.."&sid="..sid(),function(a1,b,c,d)
        sid1=b:match('%["ret"] = "(.-)%";')
        if sid1=="4" then
          SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
         elseif sid1=="ok" then
          tx=b:match('%["tx"] = "(.-)%";')
          hfa=b:match('%["myhf"] = "(.-)%";')
          ta=b:match('%["myt"] = "(.-)%";')
          yma=b:match('%["myym"] = "(.-)%";')
          nc1=b:match('%["nc"] = "(.-)%";')
          gxqm1=b:match('%["gxqm"] = "(.-)%";')
          nc3.setText(nc1)
          myhf.setText(hfa)
          mytz.setText(ta)
          myym.setText(yma)
          tx8.setImageBitmap(loadbitmap(tx))
          tx34.setImageBitmap(loadbitmap(tx))
          u3=activity.getLuaDir().."/res/uid3.LY"
          io.open(u3,"w"):write("true"):close()
         elseif sid=="1" then
         else
        end
      end)
    end
  end
  ai=3
end

bw(dl1,0x5FFFFFFF)
bw(dl2,0x5FFFFFFF)
bw(dl3,0x5FFFFFFF)
bw(dl4,0x5FFFFFFF)
bw(butt,0x5FFFFFFF)

function sxtz(i)
  require "import"
  import "http"
  import "android.os.Build"
  import "java.io.File"
  import "com.mycompany.myapp.Time"
  import "mods.andlua"
  uguid()
  Http.post("https://ly250.cn/andlua/tz.php","uid1="..uid1.."&uid2="..uid2.."&sid="..sid().."&page="..i,function(a1,b,c,d)
    sid1=b:match('%["ret"] = "(.-)%";')
    if sid1=="ok" then
      nr2=b:gmatch('%["text"] = "(.-)%";')
      uid33=b:gmatch('%["uid3"] = "(.-)%";')
      uid44=b:gmatch('%["uid4"] = "(.-)%";')
      tx2=b:gmatch('%["src"] = "(.-)%";')
      nc1=b:gmatch('%["name"] = "(.-)%";')
      sj1=b:gmatch('%["time"] = "(.-)%";')
      lll=b:gmatch('%["lll"] = "(.-)%";')
      hfl=b:gmatch('%["hfl"] = "(.-)%";')
      bq=b:gmatch('%["bq"] = "(.-)%";')
      for bt2 in b:gmatch('%["title"] = "(.-)%";') do
        nr3=nr2()
        tx3=tx2()
        nc2=nc1()
        ud3=uid33()
        bq1=bq()
        ud4=uid44()
        sj2=Time.getTimeRange(sj1()..":00")
        lll1=lll()
        hfl1=hfl()
        bt4="<font color='".."#"..tostring(tostring(bjzt1()):match("0xFF(.+)")).."".."'>"..bq1.."&nbsp;".."</font><font color='"..TitleColor.."'>"..bt2.."</font>";
        call("dp4",bt4,nr3,tx3,nc2,sj2,lll1,hfl1,ud3,ud4)
      end
      call("dp5","0")
     else
      call("dp5","1")
    end
    call("dp6")
  end)
end

butt.onClick=function()
  xj()
end

sxlist111.setColorSchemeColors({tonumber(bjzt())});
sxlist111.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener{onRefresh=function()
    up1.setText("1")
    page=1
    page1=0
    adp4=LuaAdapter(activity,tzlb)
    list1.setAdapter(adp4)
    thread(sxtz,page)
  end})
sxlist2.setColorSchemeColors({tonumber(bjzt())});
sxlist2.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener{onRefresh=function()
    up2.setText("1")
    page11=1
    page2=0
    cbbb=0
    data2={}
    adp5=LuaMultiAdapter(activity,data2,ymlb)
    list2.setAdapter(adp5)
    thread(sxym,page11)
  end})

--[[

sxlist8.setColorSchemeColors({tonumber(bjzt())});
sxlist8.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener{onRefresh=function()
  end})]]

fg11()

cdaa()

page1=0
page2=0
adp4=LuaAdapter(activity,tzlb)
list1.setAdapter(adp4)
data2={}
adp5=LuaMultiAdapter(activity,data2,ymlb)
list2.setAdapter(adp5)
--adp8=LuaAdapter(activity,ymlb)
--list8.setAdapter(adp8)

list1.setOnScrollListener{
  onScrollStateChanged=function(l,s)
    if list1.getLastVisiblePosition()==list1.getCount()-1 then
      if page1==0 then
        page1=1
        page=page+1
        sxlist111.setRefreshing(true);
        thread(sxtz,page)
      end
    end
  end}

list2.setOnScrollListener{
  onScrollStateChanged=function(l,s)
    if list2.getLastVisiblePosition()==list2.getCount()-1 then
      if page2==0 then
        page2=1
        page11=page11+1
        sxlist2.setRefreshing(true);
        thread(sxym,page11)
      end
    end
  end}

menu3.add(getLS("L_Post")).onMenuItemClick=function(a)
  activity.newActivity("main7")
end
menu3.add(getLS("L_Upload_the_source_code")).onMenuItemClick=function(a)
  LoadSignin(function()
    activity.newActivity("main10")
  end)
end
menu3.add(getLS("L_Installing_a_plugin")).onMenuItemClick=function(a)
  activity.newActivity("file",{"AP"})
end

sxlist.setColorSchemeColors({tonumber(bjzt())});
sxlist.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener{onRefresh=function()
    thread(sxgg)
  end})

task(1,function()
  thread(sxgg)
end)

GChome(list,1)

fwc=true

function onResume(name,...)
  fwc=true
  onResume_Function()
end

list.onItemClick=function(l,v,p,i)
  if File(v.Tag.gcv.Text).isDirectory() then
    if fwc==true then
      fwc=false
      activity.newActivity("main1",{v.Tag.gcv.Text})
    end
   else
    SnackerBar.build()
    :msg(getLS("L_Engineering_does_not_exist"))
    :actionText(getLS("L_OK"))
    :action(function()
    end)
    :show()
  end
end

jcgx()

ql=QBadgeView(activity).bindTarget(xxt)

function hqxx()
  wj=activity.getLuaDir().."/res/set2.LY"
  hj=io.open(wj):read("*a")
  if hj=="true" then
    task(500,function()
      Http.post("https://ly250.cn/andlua/xxx.php","&uid3="..uid3.."&sid="..sid(),function(a1,b,c,d)
        sid2=b:match('%["ret"] = "(.-)%";')
        if sid2=="ok" then
          sl=b:match('%["xx"] = "(.-)%";')
          if sl=="0" then
            ql.setVisibility(View.GONE)
           else
            ql.setBadgeNumber(0)
            ql.setBadgeText(sl)
            ql.setBadgeTextSize(25,false)
            ql.setBadgeTextColor(0xffFFFFFF)
            ql.setExactMode(false)
            ql.setGravityOffset(0,false)
            ql.setBadgeBackgroundColor(0xfff74c31)
            ql.setShowShadow(false)
            ql.setVisibility(View.VISIBLE)
          end
         else
        end
      end)
    end)
   else
  end
end

u3=activity.getLuaDir().."/res/uid3.LY"
io.open(u3,"w"):write("false"):close()
u6=activity.getLuaDir().."/res/set6.LY"
u8=io.open(u6):read("*a")
if u8=="true" then

  mTencent=Tencent.createInstance(AppId,this)
  mIUiListener=IUiListener({
    onComplete=function(p1)
      if (null == p1) then
        return
      end
      jsonResponse = p1;
      if (null ~= jsonResponse and jsonResponse.length()==0) then
        return;
      end
    end
  })

  if(mTencent.checkSessionValid(AppId)) then
    jsonObject = mTencent.loadSession(AppId);
    mTencent.initSessionCache(jsonObject);
    a=tostring(jsonObject)
    sid3=a:match('%"openid":"(.-)%","')
    Http.post("https://ly250.cn/andlua/admin.php","openid="..sid3.."&sid="..sid(),function(a1,b,c,d)
      sid2=b:match('%["ret"] = "(.-)%";')
      if sid2=="0" then
        activity.newActivity("main6",{sid3})
       elseif sid2=="1" then
        SnackerBar.build()
        :msg(getLS("L_Automatic_login_failed"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
        u3=activity.getLuaDir().."/res/uid3.LY"
        io.open(u3,"w"):write("false"):close()
       elseif sid2=="true" then
        uid1=b:match('%["uid1"] = "(.-)%";')
        uid2=b:match('%["uid2"] = "(.-)%";')
        uid3=b:match('%["uid3"] = "(.-)%";')
        u1=activity.getLuaDir().."/res/uid1.LY"
        u2=activity.getLuaDir().."/res/uid2.LY"
        u3=activity.getLuaDir().."/res/uid3.LY"
        u4=activity.getLuaDir().."/res/uid4.LY"
        io.open(u4,"w"):write(uid3):close()
        io.open(u1,"w"):write(uid1):close()
        io.open(u2,"w"):write(uid2):close()
        io.open(u3,"w"):write("true"):close()
        uguid()
        task(500,function()
          Http.post("https://ly250.cn/andlua/myxx.php","uid1="..uid1.."&uid2="..uid2.."&sid="..sid(),function(a1,b,c,d)
            sid1=b:match('%["ret"] = "(.-)%";')
            if sid1=="4" then
              SnackerBar.build()
              :msg(getLS("L_Identity_expired"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
              u3=activity.getLuaDir().."/res/uid3.LY"
              io.open(u3,"w"):write("false"):close()
             elseif sid1=="ok" then
              tx=b:match('%["tx"] = "(.-)%";')
              hfa=b:match('%["myhf"] = "(.-)%";')
              ta=b:match('%["myt"] = "(.-)%";')
              yma=b:match('%["myym"] = "(.-)%";')
              nc1=b:match('%["nc"] = "(.-)%";')
              gxqm1=b:match('%["gxqm"] = "(.-)%";')
              adm=b:match('%["admin"] = "(.-)%";')
              sing=b:match('%["sing"] = "(.-)%";')
              if sing=="true" then
                u4=activity.getLuaDir().."/res/set202.LY"
                io.open(u4,"w"):write("true"):close()
               else
                u4=activity.getLuaDir().."/res/set202.LY"
                io.open(u4,"w"):write("false"):close()
              end
              if adm=="true" then
                SnackerBar.build()
                :msg(getLS("L_The_administrator_welcome_back"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
                u4=activity.getLuaDir().."/res/admin"
                io.open(u4,"w"):write("true"):close()
               else
                u4=activity.getLuaDir().."/res/admin"
                io.open(u4,"w"):write("false"):close()
                SnackerBar.build()
                :msg(getLS("L_Welcome_back"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
              end
              nc3.setText(nc1)
              myhf.setText(hfa)
              mytz.setText(ta)
              myym.setText(yma)
              tx8.setImageBitmap(loadbitmap(tx))
              tx34.setImageBitmap(loadbitmap(tx))
              hqxx()
             elseif sid=="1" then
             else
            end
          end)
        end)
       elseif sid2=="false" then
        SnackerBar.build()
        :msg(getLS("L_Automatic_login_failed"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
        u3=activity.getLuaDir().."/res/uid3.LY"
        io.open(u3,"w"):write("false"):close()
       else
      end
    end)

   else
    SnackerBar.build()
    :msg(getLS("L_Log_back_in"))
    :actionText(getLS("L_OK"))
    :action(function()
    end)
    :show()
    u3=activity.getLuaDir().."/res/uid3.LY"
    io.open(u3,"w"):write("false"):close()
  end

  function onActivityResult( requestCode, resultCode, data)
    if requestCode == Constants.REQUEST_LOGIN or requestCode == Constants.REQUEST_APPBAR then
      Tencent.onActivityResultData(requestCode,resultCode,data,mIUiListener);
    end
  end
 else
end

packageManager = activity.getPackageManager()
packInfo = packageManager.getPackageInfo(activity.getPackageName(),0)
version = packInfo.versionName

wjjjj1=activity.getLuaDir().."/res/jz1"
hjjjj1=io.open(wjjjj1):read("*a")
if hjjjj1=="0" then
  AlertDialog.Builder(this)
  .setTitle("软件使用许可协议")
  .setMessage([[
本软件许可使用协议（以下称"本协议"）由您与AndLua+官方（以下称“我们”）共同签署。

在使用“ AndLua+ ”软件（以下称许可软件）之前，请您仔细阅读本协议，特别是免除或者限制责任的条款、法律适用和争议解决条款。免除或者限制责任的条款将以粗体标识，您需要重点阅读。如您对协议有任何疑问，可向客服咨询。如果您同意接受本协议条款和条件的约束，您可下载安装使用许可软件。

由于互联网高速发展，您与我们签署的本协议列明的条款并不能完整罗列并覆盖您与我们所有权利与义务，现有的约定也不能保证完全符合未来发展的需求。因此，AndLua+开发软件平台《法律声明及隐私权政策》、AndLua+开发软件平台规则均为本协议的补充协议，与本协议不可分割且具有同等法律效力。如您使用许可软件，视为您同意上述补充协议。如您注册或登录AndLua+开发软件账户，针对您在使用AndLua+开发软件平台服务过程中与我们的权利义务，您与我们可适用《AndLua+开发软件平台服务协议》。

我们如修改本协议或其补充协议，协议条款修改后，请您仔细阅读并接受修改后的协议后再继续使用许可软件。

 

一、 定义

1.  许可软件：是指由我们开发的，供您从下载平台下载，并仅限在相应系统手持移动终端中安装、使用的软件系统。

2.  AndLua+开发软件服务：由陵阳开发者为您提供的服务。您可以通过许可软件在手持移动终端使用AndLua+开发软件服务。

 

二、 授权范围

1.  由于软件适配平台及终端限制，您理解您仅可在获授权的系统平台及终端使用许可软件，如您将许可软件安装在其他终端设备上（包括台式电脑、手提电脑、或授权终端外的其他手持移动终端、电视机及机顶盒等），可能会对您硬件或软件功能造成损害。

2.  您应该理解许可软件仅可用于非商业目的，您不可为商业运营目的安装、使用、运行许可软件。

3.  我们会对许可软件及其相关功能不时进行变更、升级、修改或转移，并会在许可软件系统中开发新的功能或其它服务。上述新的功能、软件服务如无独立协议的，您仍可取得相应功能或服务的授权，并可适用本协议。

 

三、 使用规范

1.  您应该规范使用许可软件，以下方式是违反使用规范的：

1)  从事违反法律法规政策、破坏公序良俗、损害公共利益的行为。

2)  对许可软件及其中的相关信息擅自出租、出借、复制、修改、链接、转载、汇编、发表、出版、建立镜像站点，借助许可软件发展与之有关的衍生产品、插件、外挂等。

3)  通过非由我们及其关联工作室或者个人开发、授权或认可的第三方兼容软件、系统登录或使用许可软件，或针对许可软件使用非我们及其关联工作室或者个人开发、授权或认证的插件和外挂。

4)  删除许可软件及其他副本上关于版权的信息、内容。修改、删除或避开应用产品中我们为保护知识产权而设置的任何技术措施。

5)  未经我们的书面同意，擅自将许可软件出租、出借或再许可给第三方使用，或在获得许可软件的升级版本的许可使用后，同时使用多个版本的许可使用版本，或分开转让。

6)  复制、反汇编、修改许可软件或其任何部分或制造其衍生作品；对许可软件或者许可软件运行过程中释放在终端中的任何数据及许可软件运行过程中终端与服务器端的交互数据进行复制、修改、挂接运行或创作任何衍生作品，包括使用插件、外挂或非经授权的第三方工具/服务接入许可软件和相关系统等形式。

7)  进行任何危害信息网络安全的行为，包括使用许可软件时以任何方式损坏或破坏许可软件或使其不能运行或超负荷或干扰第三方对许可软件的使用；未经允许进入他人计算机系统并删除、修改、增加存储信息；故意传播恶意程序或病毒以及其他破坏、干扰正常网络信息服务的行为。

8)  利用许可软件发表、传送、传播、储存侵害他人知识产权、商业秘密权等合法权利的内容，或从事欺诈、盗用他人账户、资金等违法犯罪活动。

9)  通过修改或伪造许可软件运行中的指令、数据、数据包，增加、删减、变动许可软件的功能或运行效果，及/或将具有上述用途的软件通过信息网络向公众传播或者运营。

10) 其他以任何不合法的方式、为任何不合法的目的、或以任何与本协议不一致的方式使用许可软件。

2.  您理解并同意

1)  我们会对您是否涉嫌违反上述使用规范做出认定，并根据认定结果中止、终止对您的使用许可或采取其他依约可采取的限制措施。

2)  对于您使用许可软件时发布的涉嫌违法或涉嫌侵犯他人合法权利或违反本协议的信息，我们会直接予以删除。

3)  对于您违反上述使用规范的行为对任意第三方造成损害的，您需要以自己的名义独立承担法律责任，并应确保我们免于因此产生损失或增加费用。

4)  如您违反有关法律或者本协议之规定，使我们遭受任何损失，或受到任何第三方的索赔，或受到任何行政管理部门的处罚，您应当赔偿我们因此造成的损失及（或）发生的费用，包括合理的律师费用、调查取证费用。

 

四、 第三方软件或服务

1.  许可软件可能使用或包含了由第三方提供的软件或服务（以下称该等服务），该等服务是为了向您提供便利而设置，是取得该第三方的合法授权的。

2.  由于第三方为其软件或服务的提供者，您使用该等服务时，应另行与该第三方达成服务协议，支付相应费用并承担可能的风险。您应理解我们并无权在本协议中授予您使用该等服务的任何权利，也无权对该等服务提供任何形式的保证。我们无法对该等服务提供客户支持，如果您需要获取支持，您可直接与该第三方联系。因您使用该等服务引发的任何纠纷，您可直接与该第三方协商解决。

3.  您理解许可软件仅在当前使用或包含该等服务，我们无法保证许可软件将会永久地使用或包含该等服务，也无法保证将来不会使用或包含该第三方的同类型或不同类型的软件或服务或其他第三方的软件或服务，一旦我们在许可软件中使用或包含前述软件或服务，相应的软件或服务同样适用本条约定。

4.  您理解第三方需要与我们进行您的信息交互以便更好地为您提供服务，您同意在使用许可软件时如使用该等服务的，您授权我们依据《法律声明及隐私权政策》将您使用许可软件的信息传递给该第三方，或从该第三方获取您注册或使用该等服务时提供或产生的信息。如果您不希望第三方获取您的信息的，您可停止使用该等服务.

5.  您同意，如果该第三方确认您违反了您与其之间关于使用该等服务的协议约定停止对您提供该等服务并要求我们处理的，由于停止该等服务可能会影响您继续使用许可软件，我们可能会中止、终止对你的使用许可或采取其他我们可对您采取的限制措施。

 

五、 隐私政策与数据

保护您的个人信息对我们很重要。我们制定了《法律声明及隐私权政策》对知识产权归属及保护、您的信息收集、使用、共享、存储、保护等方面关系您切身利益的内容进行了重要披露。我们建议您完整地阅读《法律声明及隐私权政策》（点击查看 ），以帮助您更好的保护您的个人信息。

 

六、 特别授权

您对您的个人信息依法拥有权利，并且可以通过查阅《法律声明及隐私权政策》了解我们对您的个人信息的保护及处理方式。对您提供的除个人信息外的信息，为了向您提供您使用的各项服务，并维护、改进这些服务，及优化我们的服务质量等用途，对于您提交的文字、图片和视频等受知识产权保护的内容，您同意授予我们排他的、可转让、可分发次级许可、无使用费的全球性许可，用于我们及我们关联公司使用、复制、修订、改写、发布、翻译、分发、执行和展示您提交的资料数据或制作派生作品。

 

七、 无担保和责任限制

1.  除法律法规有明确规定外，我们将尽最大努力确保许可软件及其所涉及的技术及信息安全、有效、准确、可靠，但受限于现有技术，您理解我们不能对此进行担保。

2.  您理解，对于不可抗力及第三方原因导致的您的直接或间接损失，我们无法承担责任。

3.  由于您因下述任一情况所引起或与此有关的人身伤害或附带的、间接的损害赔偿，包括但不限于利润损失、资料损失、业务中断的损害赔偿或其它商业损害赔偿或损失，需由您自行承担：

1)  使用或未能使用许可软件；

2)  第三方未经批准的使用许可软件或更改您的数据；

3)  使用许可软件进行的行为产生的费用及损失；

4)  您对许可软件的误解；

5)  非因我们的原因而引起的与许可软件有关的其它损失。

4.  非经我们或我们授权开发并正式发布的其它任何由许可软件衍生的软件均属非法，下载、安装、使用此类软件，可能导致不可预知的风险，由此产生的法律责任与纠纷与我们无关，我们有权中止、终止使用许可和/或其他一切服务。

5.  您与其他使用许可软件的用户之间通过许可软件进行时，因您受误导或欺骗而导致或可能导致的任何心理、生理上的伤害以及经济上的损失，均应由过错方依法承担所有责任。

 

八、 知识产权

1.  我们拥有许可软件的著作权、商业秘密以及其他相关的知识产权，包括与许可软件有关的各种文档资料。

2.  许可软件的相关标识属于我们及我们的关联工作室或者个人的知识产权，并受到相关法律法规的保护。未经我们明确授权，您不得复制、模仿、使用或发布上述标识，也不得修改或删除应用产品中体现我们及其关联工作室的任何标识或身份信息。

3.  未经我们及我们的关联工作室或者个人事先书面同意，您不得为任何营利性或非营利性的目的自行实施、利用、转让或许可任何第三方实施、利用、转让上述知识产权。

 

九、 协议终止和违约责任

1.  您应理解按授权范围使用许可软件、尊重软件及软件包含内容的知识产权、按规范使用软件、按本协议约定履行义务是您获取我们授权使用软件的前提，如您严重违反本协议，我们将终止使用许可。

2.  您对软件的使用有赖于我们关联工作室为您提供的配套服务，您违反与我们或我们关联工作室的条款、协议、规则、通告等相关规定，而被上述任一网站终止提供服务的，可能导致您无法正常使用许可软件，我们有权终止使用许可。

3． 您理解出于维护平台秩序及保护消费者权益的目的，如果您向我们及（或）我们的关联工作室作出任何形式的承诺，且相关公司已确认您违反了该承诺并通知我们依据您与其相关约定进行处理的，则我们可按您的承诺或协议约定的方式对您的使用许可及其他我们可控制的权益采取限制措施，包括中止或终止对您的使用许可。

4.  一旦您违反本协议或与我们签订的其他协议的约定，我们可通知我们关联工作室或者个人，要求其对您的权益采取限制措施，包括要求关联公司中止、终止对您提供部分或全部服务，且在其经营或实际控制的网站依法公示您的违约情况。

5.  许可软件由您自下载平台下载取得，您需要遵守下载平台、系统平台、终端厂商对您使用许可软件方式与限制的约定，如果上述第三方确认您违反该约定需要我们处理的，我们可能会因第三方要求终止对您的使用许可。

6.  在本使用许可终止时，您应停止对许可软件的使用行为, 并销毁许可软件的全部副本。

7.  如您违反本协议规定的条款，给我们或其他用户造成损失，您必须承担全部的赔偿责任。如我们承担了上述责任，则您同意赔偿我们的相关支出和损失，包括合理的律师费用。

 

十、 管辖法律和可分割性

1.  本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，如无相关法律规定的，则应参照通用国际商业惯例和（或）行业惯例。

2.  本协议由您与我们于我们服务器所在地签署。因本协议产生或与本协议有关的争议，您可与我们以友好协商的方式予以解决或提交有管辖权的人民法院予以裁决。

3.  本协议任何条款被有管辖权的人民法院裁定为无效，不应影响其他条款或其任何部分的效力，您与我们仍应善意履行。

 

十一、   其他

1.  我们可能根据业务调整而变更向您提供软件服务的主体，变更后的主体与您共同履行本协议并向您提供服务，以上变更不会影响您本协议项下的权益。发生争议时，您可根据您具体使用的服务及对您权益产生影响的具体行为对象确定与您履约的主体及争议相对方。

2.  本协议的所有标题仅仅是为了醒目及阅读方便，本身并没有实际涵义，不能作为解释本协议涵义的依据。]])
  .setPositiveButton(getLS("L_Agree_to_continue"),{onClick=function(v)
      AlertDialog.Builder(this)
      .setTitle("隐私政策")
      .setMessage([[我们尊重和保护用户的隐私。本隐私政策将告诉您我们如何收集和使用有关您的信息，以及我们如何保护这些信息的安全。

您成为用户前务必仔细阅读本隐私条款并同意所有隐私条款。本隐私政策条款在您注册成为AndLua+用户后立即生效，并对您及AndLua+产生约束力。

一、我们可能收集的用户信息

我们提供服务时，可能会收集、储存和使用下列与您有关的信息。如果您不提供相关信息，可能无法注册成为我们的用户或无法享受我们提供的某些服务，或者无法达到相关服务拟达到的效果。

1、您提供的信息

•您在注册账户或使用我们的服务时，向我们提供的相关个人信息，例如电话号码、性别、出生日期等。

•您通过我们的服务向其他方提供的共享信息，以及您使用我们的服务时所储存的信息。

2、其他方分享的您的信息

•其他方使用我们的服务时所提供有关您的共享信息。

3、我们获取的您的信息

您使用服务时我们可能收集如下信息：

•日志信息，指您使用我们的服务时，系统可能通过cookies、web beacon或其他方式自动采集的技术信息，包括：设备或软件信息，例如您的移动设备、网页浏览器或用于接入我们服务的其他程序所提供的配置信息、您的IP地址和移动设备所用的版本和设备识别码；以及您在使用我们服务时要求提供的其他信息和内容详情。

•位置信息，指您开启设备定位功能并使用我们基于位置提供的相关服务时，收集的有关您位置的信息。您可以通过关闭定位功能，停止对您的地理位置信息的收集。

•交易信息，指我们对您在AndLua+平台上形成的交易数据信息进行分析并形成用户信用数据库。

二、我们可能如何使用用户信息

•在我们提供服务时，用于身份验证、客户服务、安全防范、诈骗监测、存档和备份用途，确保我们向您提供的产品和服务的安全性；

•帮助我们设计新服务，改善我们现有服务；

•使我们更加了解您如何接入和使用我们的服务，从而针对性地回应您的个性化需求；

•软件认证或管理软件升级；

•让您参与有关我们产品和服务的调查。

为了让您有更好的体验、改善我们的服务或您同意的其他用途，在符合相关法律法规的前提下，我们可能将通过某一项服务所收集的信息，以汇集信息或者个性化的方式，用于我们的其他服务。例如，在您使用我们的一项服务时所收集的信息，可能在另一服务中用于向您提供特定内容，或向您展示与您相关的、非普遍推送的信息。如果我们在相关服务中提供了相应选项，您也可以授权我们将该服务所提供和储存的信息用于我们的其他服务。

三、我们可能与第三方共享的用户信息

在下列情况下，我们可能会共享您的个人信息：

•其他注册用户就您在AndLua+活动中的违约行为发起诉讼程序时，我们将应该等注册用户的请求向该等注册用户披露您的用户信息；

•应行政、司法部门的要求向该等机构提供您的用户信息；

•您通过AndLua+平台向第三方合作机构申请相关产品服务时，我们将根据您的授权向第三方提供您的用户信息；

•我们以及我们的关联公司，可能将您的个人信息与我们的关联公司、合作伙伴及第三方服务供应商、承包商及代理（例如代表我们发出短信或推送通知的通讯服务提供商、为我们提供位置数据的地图服务供应商）分享（他们可能并非位于您所在的法域），为了我们向您提供或改善我们的服务；

•随着我们业务的持续发展，我们以及我们的关联公司有可能进行合并、收购、资产转让或类似的交易，您的个人信息有可能作为此类交易的一部分而被转移；

•依据法律要求必须向第三方提供您的用户信息的情形；

四、我们如何保护用户信息

我们使用各种安全技术和程序，以防信息的丢失、不当使用、未经授权阅览或披露。但请您理解，由于技术的限制以及可能存在的各种恶意手段，在互联网行业，即便竭尽所能加强安全措施，也不可能始终保证信息百分之百的安全。您需要了解，您接入我们的服务所用的系统和通讯网络，有可能因我们可控范围外的因素而出现问题。

五、隐私政策的修改

由于法律法规的变更，以及为了与互联网的新发展和可能的发展趋势保持同步，我们可能会不定时修改本政策。因此，我们保留自行决定实施此类修改的权利，如该等修订造成您在本《隐私政策》下权利的实质减少，我们将在修订生效前通过在主页上显著位置提示或向您推送通知或以其他方式通知您。在该种情况下，若您继续使用我们的服务，即表示同意受经修订的本《隐私政策》的约束。]])
      .setPositiveButton(getLS("L_Agree_to_continue"),{onClick=function(v)
          io.open(wjjjj1,"w"):write("1"):close()
          wjjjj=activity.getLuaDir().."/res/jz"
          hjjjj=io.open(wjjjj):read("*a")
          if hjjjj=="0" then
            AlertDialog.Builder(this)
            .setTitle("AndLua+ "..version)
            .setMessage(getLS("L_AndLuaPlus_About"))
            .setPositiveButton(getLS("L_Donation"),{onClick=function(v)
                layout={
                  LinearLayout;
                  orientation="vertical";
                  {
                    ImageView;
                    scaleType="fitXY";
                    layout_width="match_parent";
                    src="res/donation.png",
                  };
                };

                AlertDialog.Builder(this)
                .setTitle(getLS("L_Giving_the_author"))
                .setMessage(getLS("L_Donation_0"))
                .setPositiveButton(getLS("L_Pay_treasure"),{onClick=function(v)
                    import "android.content.Intent"
                    import "android.net.Uri"
                    viewIntent = Intent("android.intent.action.VIEW",Uri.parse("https://qr.alipay.com/fkx00937fkhctswypmwirb2?t=1582042047438"))
                    activity.startActivity(viewIntent)
                  end})
                .setNeutralButton(getLS("L_The_next_time_a_certain"),nil)
                .setNegativeButton(getLS("L_Donation_1"),{onClick=function(v)
                    AlertDialog.Builder(activity)
                    .setView(loadlayout(layout))
                    .show()
                  end})
                .show()
                io.open(wjjjj,"w"):write("1"):close()
              end})
            .show()
          end
        end})
      .setNegativeButton(getLS("L_Exit"),{onClick=function()
          activity.finish()
        end})
      .setCancelable(false)
      .show()
    end})
  .setNegativeButton(getLS("L_Exit"),{onClick=function()
      activity.finish()
    end})
  .setCancelable(false)
  .show()
end