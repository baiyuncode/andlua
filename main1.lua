require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "mods.SnackerBar"
import "android.content.*"
import"android.view.inputmethod.InputMethodManager"
import "console"
import "android.view.*"
import "android.graphics.Typeface"
import "java.io.File"
import "bin"
import "android.view.animation.*"
import "android.view.animation.Animation"
import "android.graphics.*"
import "mods.andlua"
import "android.text.SpannableString"
import "mods.color1"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.Color"
import "android.support.v4.widget.*"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
import "android.widget.ArrayAdapter"
import "android.widget.LinearLayout"
import "android.widget.TextView"
import "java.io.File"
import "android.widget.ListView"
import "android.app.AlertDialog"
ztt()
import "mods.mod1"

lj,javaFile=...

RemoveDrawerLayoutOP=false
PluginAutoLimit=false
Plugin={}

function RemoveDrawerLayout()
  RemoveDrawerLayoutOP=true
end

function getProjectFile()
  return tostring(lj6.Text)
end

function getProjectPath()
  return tostring(lj)
end

function getProjectName()
  local wjh888=io.open(lj.."/init.lua"):read("*a")
  return tostring(wjh888:match('%appname="(.-)"'))
end

function getProjectVer()
  local wjh888=io.open(lj.."/init.lua"):read("*a")
  return tostring(wjh888:match('%appver="(.-)"'))
end

function getProjectCode()
  local wjh888=io.open(lj.."/init.lua"):read("*a")
  return tostring(wjh888:match('%appcode="(.-)"'))
end

function getProjectSDK()
  local wjh888=io.open(lj.."/init.lua"):read("*a")
  return tostring(wjh888:match('%appsdk="(.-)"'))
end

function getProjectPackageName()
  local wjh888=io.open(lj.."/init.lua"):read("*a")
  return tostring(wjh888:match('%agename="(.-)"'))
end

function openLuaFile(file)
  uyy(tostring(file))
end

function setImageButton1(file,a)
  if a==true then
    Suspension3S.setColorFilter(tonumber(bjzt()))
   else
    Suspension3S.setColorFilter(0x00000000)
  end
  Suspension3S.setImageBitmap(loadbitmap(file))
end

function setImageButton2(file,a)
  if a==true then
    Suspension13S.setColorFilter(tonumber(bjzt()))
   else
    Suspension13S.setColorFilter(0x00000000)
  end
  Suspension13S.setImageBitmap(loadbitmap(file))
end

function setImageTopButton1(file,a)
  if a==true then
    menu16661.setColorFilter(tonumber(bjzt()))
   else
    menu16661.setColorFilter(0x00000000)
  end
  menu16661.setImageBitmap(loadbitmap(file))
end

function setImageTopButton2(file,a)
  if a==true then
    hhh.setColorFilter(tonumber(bjzt()))
   else
    hhh.setColorFilter(0x00000000)
  end
  hhh.setImageBitmap(loadbitmap(file))
end

function setImageTopButton3(file,a)
  if a==true then
    menu16663.setColorFilter(tonumber(bjzt()))
   else
    menu16663.setColorFilter(0x00000000)
  end
  menu16663.setImageBitmap(loadbitmap(file))
end

function setImageTopButton4(file,a)
  if a==true then
    menu16664.setColorFilter(tonumber(bjzt()))
   else
    menu16664.setColorFilter(0x00000000)
  end
  menu16664.setImageBitmap(loadbitmap(file))
end

function setImageTopButton5(file,a)
  if a==true then
    menu16665.setColorFilter(tonumber(bjzt()))
   else
    menu16665.setColorFilter(0x00000000)
  end
  menu16665.setImageBitmap(loadbitmap(file))
end

function setImageTopButton6(file,a)
  if a==true then
    menu16666.setColorFilter(tonumber(bjzt()))
   else
    menu16666.setColorFilter(0x00000000)
  end
  menu16666.setImageBitmap(loadbitmap(file))
end

function setClickButton1(fun)
  if type(fun)=="function" then
    Suspension3.onClick=fun
  end
end

function setClickButton2(fun)
  if type(fun)=="function" then
    Suspension13.onClick=fun
  end
end

function setLongClickButton1(fun)
  if type(fun)=="function" then
    Suspension3.onLongClick=fun
  end
end

function setLongClickButton2(fun)
  if type(fun)=="function" then
    Suspension13.onLongClick=fun
  end
end

function setClickTopButton1(fun)
  if type(fun)=="function" then
    Sideslip.onClick=fun
  end
end

function setClickTopButton2(fun)
  if type(fun)=="function" then
    c3.onClick=fun
  end
end

function setClickTopButton3(fun)
  if type(fun)=="function" then
    c2.onClick=fun
  end
end

function setClickTopButton4(fun)
  if type(fun)=="function" then
    c1.onClick=fun
  end
end

function setClickTopButton5(fun)
  if type(fun)=="function" then
    c21.onClick=fun
  end
end

function setClickTopButton6(fun)
  if type(fun)=="function" then
    menu1.onClick=fun
  end
end

function setLongClickTopButton1(fun)
  if type(fun)=="function" then
    Sideslip.onLongClick=fun
  end
end

function setLongClickTopButton2(fun)
  if type(fun)=="function" then
    c3.onLongClick=fun
  end
end

function setLongClickTopButton3(fun)
  if type(fun)=="function" then
    c2.onLongClick=fun
  end
end

function setLongClickTopButton4(fun)
  if type(fun)=="function" then
    c1.onLongClick=fun
  end
end

function setLongClickTopButton5(fun)
  if type(fun)=="function" then
    c21.onLongClick=fun
  end
end

function setLongClickTopButton6(fun)
  if type(fun)=="function" then
    menu1.onLongClick=fun
  end
end

function hideTopButton1()
  Sideslip.setVisibility(View.GONE)
end

function hideTopButton2()
  c3.setVisibility(View.GONE)
end

function hideTopButton3()
  c2.setVisibility(View.GONE)
end

function hideTopButton4()
  c1.setVisibility(View.GONE)
end

function hideTopButton5()
  c21.setVisibility(View.GONE)
end

function hideTopButton6()
  menu1.setVisibility(View.GONE)
end

function hideFunctionBar()
  bql1.setVisibility(View.GONE)
end

function hideLabelBar()
  bql.setVisibility(View.GONE)
end

function hideSymbolBar()
  dhl.setVisibility(View.GONE)
end

function addPluginView(VIEW)
  add8888.addView(loadlayout(VIEW))
end

function PluginImport(plugin,name)
  import ("plugin."..plugin.."."..name)
end

function hideButton1()
  Suspension2.setVisibility(View.INVISIBLE)
end

function hideButton2()
  Suspension12.setVisibility(View.INVISIBLE)
end

function CompileFile(file)
  local CompileF,str=console.build(file)
  if CompileF then
    return true
   else
    return false
  end
end

function getPluginPath(name)
  return tostring(activity.getLuaDir().."/plugin/"..name)
end

function openLeftDrawer()
  Drawer.openDrawer(3)
end

function closeLeftDrawer()
  Drawer.closeDrawer(3)
end

function openRightDrawer()
  Drawer.openDrawer(you)
end

function closeRightDrawer()
  Drawer.closeDrawer(you)
end

function getThemeColor()
  array=activity.getTheme().obtainStyledAttributes({android.R.attr.colorBackground,android.R.attr.textColorPrimary,android.R.attr.colorPrimary,android.R.attr.colorPrimaryDark,android.R.attr.colorAccent,});
  colorBackground=array.getColor(0, 0xFF00FF);
  textColorPrimary=array.getColor(1, 0xFF00FF);
  colorPrimary=array.getColor(2, 0xFF00FF);
  colorPrimaryDark=array.getColor(3, 0xFF00FF);
  colorAccent=array.getColor(4, 0xFF00FF);
  return tostring("0x"..tostring(string.upper(Integer.toHexString(colorPrimary))))
end

item8={
  LinearLayout;
  gravity="center";
  layout_width="55dp";
  backgroundColor=tonumber(qys("BackgroundColor"));
  layout_height="55dp";
  {
    CardView;
    radius=AndLuaR;
    CardElevation="0dp";
    layout_width="53dp";
    backgroundColor=ColorDark("#"..string.sub(qys("BackgroundColor"),3,-1)),
    layout_height="53dp";
    {
      LinearLayout;
      gravity="center";
      orientation="vertical";
      layout_width="fill";
      layout_height="fill";
      {
        ImageView;
        id="img";
        layout_width="22dp";
        layout_height="22dp";
        layout_marginBottom="3dp";
        scaleType="fitXY";
      };
      {
        TextView;
        id="bt";
        textColor=TitleColor1,
        textSize="11sp";
        singleLine=true,
        ellipsize="end";
      };
    };
  };
};


function Plugin0()
  data8={}
  adp8=LuaAdapter(activity,data8,item8)
  grid8.Adapter=adp8
  Plug={}
  n1=1
  f=File(activity.getLuaDir().."/plugin")
  ls=luajava.astable(f.listFiles() or String{})
  table.sort(ls,function(a,b)
    return (a.isDirectory()~=b.isDirectory() and a.isDirectory()) or ((a.isDirectory()==b.isDirectory()) and a.Name<b.Name)
  end)
  for n=1,#ls do
    if File(tostring(ls[n])).isFile() then
     else
      app={}
      Puid=ls[n].Name
      loadfile(activity.getLuaDir().."/plugin/"..Puid.."/init.lua","bt",app)()
      adp8.add{img=activity.getLuaDir().."/plugin/"..Puid.."/icon.png",bt=tostring(app.PluginName)}
      Plug[n1]=Puid
      n1=n1+1
      if app.AutoStart==true then
        if PluginAutoLimit==false then
          local LuaCode=io.open(activity.getLuaDir().."/plugin/"..Puid.."/main.lua"):read("*a")
          function RunLuaCode()
            loadstring(LuaCode)()
          end
          if pcall(RunLuaCode) then
           else
            AlertDialog.Builder(this)
            .setTitle(getLS("L_Prompt"))
            .setMessage("【"..tostring(app.PluginName).."】"..getLS("L_Plugin_run_error"))
            .setPositiveButton(getLS("L_OK"),nil)
            .show()
          end
        end
      end
    end
  end
  PluginAutoLimit=true
end

function RefreshPluginList()
  Plugin0()
end

Hide_Button_Height="134dp"
Hide_Button_Height1="10dp"
Hide_Button_ID="Suspension6"
Hide_Button_Hide="1"
Hide_Button_TRUE=nil

wjff=activity.getLuaDir().."/res/set119.LY"
hjff=io.open(wjff):read("*a")
if hjff=="false" then
  Hide_Button_Height="50dp"
  Hide_Button_Hide=true
end

wjff=activity.getLuaDir().."/res/set213.LY"
hjff=io.open(wjff):read("*a")
if hjff=="false" then
  Hide_Button_ID="Suspension12"
  if Hide_Button_Hide==true then
    Hide_Button_Hide="0"
  end
 else
  Hide_Button_Hide="2"
  if Hide_Button_Hide==true then
    Hide_Button_TRUE=true
    Hide_Button_ID="Suspension6"
  end
end

if Hide_Button_Hide=="0" then
  Hide_Button_ID=nil
  Hide_Button_Height1="50dp"
  Hide_Button_TRUE=true
 elseif Hide_Button_Hide==true then
  Hide_Button_ID="Suspension12"
end

main6={
  DrawerLayout;
  layout_height="fill";
  backgroundColor=tonumber(qys("BackgroundColor")),
  layout_width="fill";
  id="Drawer";
  {
    LinearLayout;
    layout_height="fill";
    layout_width="fill";
    backgroundColor=tonumber(qys("BackgroundColor")),
    {
      RelativeLayout;
      layout_height="fill";
      layout_width="fill";
      id="add8888";
      {
        RelativeLayout;
        layout_width="-1";
        layout_height="-1";
        {
          RelativeLayout;
          layout_height="40dp";
          id="ssl";
          layout_width="match_parent";
          {
            ImageView;
            layout_width="35dp";
            layout_height="35dp";
            layout_alignParentRight="true";
            id="shang1";
            layout_marginRight="5dp";
            layout_height="match_parent";
            src="res/Metrial539.png";
            ColorFilter=TitleColor1;
          };
          {
            EditText;
            hint=getLS("L_Search_character_1");
            layout_marginLeft="8dp";
            textSize="15sp";
            layout_toLeftOf="shang1";
            textColor=TitleColor,
            background="0";
            id="ssneir";
            layout_width="match_parent";
          };
        };
        {
          RelativeLayout;
          layout_height="25dp";
          layout_width="fill";
          id="bql1";
          layout_below="ssl";
          backgroundColor=tonumber(qys("BackgroundColor")),
          {
            HorizontalScrollView;
            layout_height="-1";
            layout_width="-1";
            horizontalScrollBarEnabled=false;
            {
              LinearLayout;
              layout_height="-1";
              layout_width="-1";
              id="fhhk1";
              orientation="horizontal";
            };
          };
        };
        {
          RelativeLayout;
          layout_width="-1";
          id="dhl0";
          backgroundColor="0xffE71D36",
          {
            TextView;
            textSize="13sp";
            id="bccn";
            textColor=0xffffffff;
            gravity="center|left";
            layout_margin="3dp";
            ellipsize="end",
            layout_width="-1";
            text="No mistakes!";
            singleLine="true";
          };
        };
        {
          RelativeLayout;
          layout_height="28dp";
          layout_width="fill";
          id="bql";
          layout_below="bql1";
          backgroundColor=tonumber(qys("BackgroundColor")),
          {
            HorizontalScrollView;
            layout_height="-1";
            layout_width="-1";
            horizontalScrollBarEnabled=false;
            {
              LinearLayout;
              layout_height="-1";
              layout_width="-1";
              id="fhhk";
              orientation="horizontal";
            };
          };
        };
        {
          RelativeLayout;
          layout_width="-1";
          layout_alignParentBottom="true";
          layout_height="40dp";
          elevation="5dp";
          id="dhl";
          backgroundColor=tonumber(qys("BackgroundColor")),
          {
            TextView;
            textColor=bjzt();
            text="API";
            gravity="center";
            id="java_api";
            textSize="14sp";
            Visibility=8,
            layout_height="-1";
            layout_alignParentRight="true";
            layout_width="40dp";
          };
          {
            TextView;
            id="java_api_";
            Visibility=8,
            textSize="0sp";
            layout_height="-1";
            layout_width="1";
            layout_toLeftOf="java_api";
            backgroundColor="0x80000000",
            layout_marginTop="8dp",
            layout_marginBottom="8dp",
          };
          {
            HorizontalScrollView;
            layout_height="-1";
            layout_toLeftOf="java_api_";
            layout_width="-1";
            horizontalScrollBarEnabled=false;
            {
              LinearLayout;
              layout_height="-1";
              layout_width="-1";
              id="fhhh";
            };
          };
        };
        {
          LuaEditor;
          layout_height="-1";
          layout_width="-1";
          id="LuaEditor";
          layout_below="bql";
          layout_above="dhl";
        };
        {
          LuaEditor;
          id="LuaEditor1";
          focusable=false,
          focusableInTouchMode=false,
          layout_height="0";
          layout_width="0";
        };
        {
          CardView;
          layout_width="fill";
          backgroundColor=tonumber(bjzt());
          layout_marginRight="50dp";
          layout_marginLeft="50dp";
          layout_marginBottom="10dp";
          CardElevation="0dp";
          layout_above="dhl";
          id="Suspension8";
          radius="18dp";
          {
            CardView;
            layout_margin="2",
            layout_width="fill";
            backgroundColor=tonumber(qys("BackgroundColor"));
            layout_height="fill";
            radius="18dp";
            {
              SeekBar;
              layout_width="fill";
              id="drag_SeekBar";
              layout_marginBottom="7dp",
              layout_marginTop="7dp",
            };
          };
        };
        {
          CardView;
          layout_width="65dp";
          backgroundColor=tonumber(bjzt());
          layout_marginRight="-20dp";
          layout_marginBottom="50dp";
          CardElevation="0dp";
          layout_alignParentRight="true";
          layout_alignParentBottom="true";
          layout_height="32dp";
          id="Suspension2";
          radius="16dp";
          {
            CardView;
            layout_margin="2",
            layout_width="fill";
            backgroundColor=tonumber(qys("BackgroundColor"));
            layout_height="fill";
            radius="16dp";
            {
              LinearLayout;
              layout_width="74dp";
              style="?android:attr/buttonBarButtonStyle";
              layout_gravity="center";
              layout_height="74dp";
              id="Suspension3";
              {
                ImageView;
                layout_width="19dp";
                layout_gravity="center";
                ColorFilter=tonumber(bjzt());
                layout_height="19dp";
                id="Suspension3S",
                layout_marginRight="12dp";
                src="res/Metrial351.png";
              };
            };
          },
        };
        {
          CardView;
          layout_width="65dp";
          backgroundColor=tonumber(bjzt());
          layout_marginRight="-20dp";
          layout_marginBottom="10dp";
          CardElevation="0dp";
          layout_above="Suspension2";
          layout_height="32dp";
          layout_alignParentRight="true";
          id="Suspension12";
          radius="16dp";
          {
            CardView;
            layout_margin="2",
            layout_width="fill";
            backgroundColor=tonumber(qys("BackgroundColor"));
            layout_height="fill";
            radius="16dp";
            {
              LinearLayout;
              layout_width="74dp";
              style="?android:attr/buttonBarButtonStyle";
              layout_gravity="center";
              layout_height="74dp";
              id="Suspension13";
              {
                ImageView;
                layout_width="19dp";
                layout_gravity="center";
                ColorFilter=tonumber(bjzt());
                layout_height="19dp";
                src="res/Metrial48.png";
                layout_marginRight="12dp";
                id="Suspension13S";
              };
            };
          };
        };
        {
          CardView;
          layout_width="65dp";
          backgroundColor=tonumber(bjzt());
          layout_marginRight="-20dp";
          layout_marginBottom=Hide_Button_Height;
          CardElevation="0dp";
          --layout_above="Suspension12";
          layout_alignParentBottom="true";
          layout_height="32dp";
          layout_alignParentRight="true";
          id="Suspension6";
          radius="16dp";
          {
            CardView;
            layout_margin="2",
            layout_width="fill";
            backgroundColor=tonumber(qys("BackgroundColor"));
            layout_height="fill";
            radius="16dp";
            {
              LinearLayout;
              layout_width="74dp";
              style="?android:attr/buttonBarButtonStyle";
              layout_gravity="center";
              layout_height="74dp";
              id="Suspension66";
              {
                ImageView;
                layout_width="17dp";
                layout_gravity="center";
                ColorFilter=tonumber(bjzt());
                layout_height="17dp";
                src="res/Metrial30.png";
                id="Suspension666";
                layout_marginRight="13dp";
              };
            };
          };
        };
        {
          CardView;
          layout_width="65dp";
          backgroundColor=tonumber(bjzt());
          layout_marginRight="-20dp";
          layout_marginBottom=Hide_Button_Height1;
          CardElevation="0dp";
          layout_above=Hide_Button_ID;
          layout_alignParentBottom=Hide_Button_TRUE;
          layout_height="32dp";
          layout_alignParentRight="true";
          id="Suspension7";
          radius="16dp";
          {
            CardView;
            layout_margin="2",
            layout_width="fill";
            backgroundColor=tonumber(qys("BackgroundColor"));
            layout_height="fill";
            radius="16dp";
            id="Suspension71";
            {
              LinearLayout;
              layout_width="74dp";
              style="?android:attr/buttonBarButtonStyle";
              layout_gravity="center";
              layout_height="74dp";
              id="Suspension77";
              {
                TextView;
                layout_gravity="center";
                textColor=tonumber(bjzt());
                id="Suspension777";
                textSize="12sp";
                layout_marginRight="13dp";
              };
            };
          };
        };
        {
          CardView;
          layout_width="65dp";
          backgroundColor=tonumber(bjzt());
          layout_marginLeft="-20dp";
          layout_marginBottom="50dp";
          CardElevation="0dp";
          layout_alignParentBottom="true";
          layout_height="32dp";
          id="Suspension4";
          radius="16dp";
          {
            CardView;
            layout_margin="2",
            layout_width="fill";
            backgroundColor=tonumber(qys("BackgroundColor"));
            layout_height="fill";
            radius="16dp";
            {
              LinearLayout;
              layout_width="74dp";
              style="?android:attr/buttonBarButtonStyle";
              layout_gravity="center";
              layout_height="74dp";
              id="Suspension5";
              {
                ImageView;
                layout_width="18dp";
                layout_gravity="center";
                ColorFilter=tonumber(bjzt());
                layout_height="18dp";
                src="res/Metrial367.png";
                id="Suspension14S";
                layout_marginLeft="13dp";
              };
            },
          };
        };
      };
      {
        TextView;
        id="lj6";
        layout_height="0dp";
        layout_width="0dp";
      };
      {
        TextView;
        id="lj7";
        layout_height="0dp";
        layout_width="0dp";
      };
      {
        TextView;
        id="main";
        layout_height="0dp";
        layout_width="0dp";
      };
      {
        TextView;
        id="wjj";
        layout_height="0dp";
        layout_width="0dp";
      };
    };
  };

  {
    LinearLayout;
    layout_width="fill";
    layout_height="fill";
    layout_gravity="start";
    orientation="vertical";
    backgroundColor=tonumber(qys("BackgroundColor")),
    {
      RelativeLayout;
      layout_height="fill";
      layout_width="fill";
      id="DrawerLayout888";
    };
    {
      RelativeLayout;
      layout_height="fill";
      layout_width="fill";
      id="DrawerLayout_0";
      {
        PageView;
        id="huadong5";
        Visibility=GONE;
        pages={
          {
            RelativeLayout;
            layout_height="fill";
            layout_width="fill";
            {
              RelativeLayout;
              layout_height="fill";
              layout_width="fill";
              id="DrawerLayout_2";
              Visibility=0,
              {
                LinearLayout;
                layout_width="fill";
                layout_height="fill";
                orientation="vertical";
                backgroundColor=ColorDark("#"..string.sub(qys("BackgroundColor"),3,-1)),
                {
                  LinearLayout;
                  layout_weight="1";
                  layout_height="110dp";
                  layout_marginLeft="10dp";
                  layout_marginTop="10dp";
                  layout_marginRight="10dp";
                  layout_marginBottom="10dp";
                  orientation="vertical";
                  layout_width="-1";
                  gravity="center";
                  {
                    CardView;
                    backgroundColor=tonumber(qys("BackgroundColor")),
                    layout_width="match_parent";
                    elevation="0dp";
                    layout_height="-1";
                    radius=AndLuaR;
                    {
                      LinearLayout;
                      layout_width="fill";
                      layout_height="fill";
                      gravity="center";
                      orientation="horizontal";
                      {
                        EditText;
                        layout_width="fill";
                        layout_marginLeft="8dp";
                        background="0",
                        textSize="16sp",
                        id="list_notes_e",
                        hint=getLS("L_Search_the_note");
                        singleLine=true,
                        textColor=TitleColor,
                      };
                    };
                  };
                };
                {
                  YLListView;
                  id="list_notes";
                  layout_weight="1",
                  VerticalScrollBarEnabled=false;
                  layout_width="-1";
                  layout_height="-1";
                  DividerHeight=0;
                };
              },

              {
                CardView;
                layout_width="50dp";
                backgroundColor=tostring(bjzt());
                layout_margin="16dp";
                CardElevation="4dp";
                layout_alignParentRight="true";
                layout_alignParentBottom="true";
                Visibility=0;
                layout_height="50dp";
                radius="25dp";
                {
                  LinearLayout;
                  layout_width="74dp";
                  style="?android:attr/buttonBarButtonStyle";
                  id="new_note";
                  layout_gravity="center";
                  layout_height="74dp";
                  {
                    ImageView;
                    layout_width="24dp";
                    layout_gravity="center";
                    ColorFilter="#FFFFFF";
                    layout_height="24dp";
                    src="res/Metrial362.png";
                  };
                };
              };

            };
            {
              RelativeLayout;
              layout_height="fill";
              layout_width="fill";
              id="DrawerLayout_1";
              {
                LinearLayout;
                layout_width="fill";
                layout_height="fill";
                orientation="vertical";
                backgroundColor=ColorDark("#"..string.sub(qys("BackgroundColor"),3,-1)),
                {
                  LinearLayout;
                  layout_weight="1";
                  layout_height="110dp";
                  layout_marginLeft="10dp";
                  layout_marginTop="10dp";
                  layout_marginRight="10dp";
                  layout_marginBottom="10dp";
                  orientation="vertical";
                  layout_width="-1";
                  gravity="center";
                  {
                    CardView;
                    backgroundColor=tonumber(qys("BackgroundColor")),
                    layout_width="match_parent";
                    elevation="0dp";
                    id="search",
                    layout_height="-1";
                    radius=AndLuaR;
                    {
                      LinearLayout;
                      layout_width="fill";
                      layout_height="fill";
                      gravity="center";
                      orientation="horizontal";
                      {
                        EditText;
                        layout_width="fill";
                        layout_marginLeft="8dp";
                        background="0",
                        textSize="16sp",
                        id="gjc",
                        hint=getLS("L_Search_the_tutorial");
                        singleLine=true,
                        textColor=TitleColor,
                      };
                    };
                  };
                };
                {
                  YLListView;
                  id="list";
                  layout_weight="1",
                  VerticalScrollBarEnabled=false;
                  layout_width="-1";
                  layout_height="-1";
                  DividerHeight=0;
                };
              },
            };
          },
          {
            LinearLayout;
            layout_width="fill";
            layout_height="fill";
            {
              RelativeLayout;
              layout_height="match_parent";
              layout_width="match_parent";
              backgroundColor=tonumber(qys("BackgroundColor")),
              {
                RelativeLayout;
                layout_height="45dp";
                elevation="1dp";
                backgroundColor=tonumber(qys("BackgroundColor")),
                layout_width="match_parent";
                id="jj55";
                {
                  TextView;
                  layout_centerInParent="true";
                  textSize="16sp";
                  textColor=TitleColor,
                  singleLine=true;
                  id="lua2";
                  layout_marginLeft="5dp";
                  layout_marginRight="5dp";
                  ellipsize="end";
                  text=getLS("L_The_tutorial_manual");
                };
              };
              {
                LuaEditor;
                id="lua1";
                backgroundColor=tonumber(qys("BackgroundColor")),
                layout_height="match_parent";
                layout_width="match_parent";
                layout_below="jj55";
                WordWrap=true;
                TextSize="14sp";
              };
            };
          };
        }
      };
    };
  };
  {
    LinearLayout;
    layout_width="match_parent";
    layout_gravity="right";
    id="you";
    backgroundColor=tonumber(qys("BackgroundColor")),
    layout_height="match_parent";
    {
      RelativeLayout;
      layout_width="fill";
      layout_height="fill";
      {
        RelativeLayout;
        layout_width="fill";
        id="dilan";
        layout_alignParentBottom="true";
        layout_height="50dp";
        {
          RelativeLayout;
          layout_width="match_parent";
          layout_height="match_parent";
          {
            RelativeLayout;
            layout_height="match_parent";
            layout_width="50%w";
            id="zuo1";
            {
              ImageView;
              layout_centerHorizontal="true";
              layout_width="20dp";
              id="dibu1";
              layout_height="20dp";
              src="res/Metrial58.png";
              layout_marginTop="6dp";
              ColorFilter=TitleColor1;
            };
            {
              TextView;
              text=getLS("L_Exit");
              layout_centerHorizontal="true";
              textColor=TitleColor,
              layout_marginTop="3dp";
              textSize="13sp";
              layout_below="dibu1";
            };
            {
              Button;
              layout_height="match_parent";
              layout_margin="-20dp";
              layout_width="match_parent";
              id="tui1";
              style="?android:attr/buttonBarButtonStyle";
            };
          };
          {
            RelativeLayout;
            layout_height="match_parent";
            layout_toRightOf="zuo1";
            layout_width="50%w";
            {
              ImageView;
              layout_centerHorizontal="true";
              layout_width="20dp";
              id="dibu2";
              layout_height="20dp";
              src="res/Metrial146.png";
              layout_marginTop="6dp";
              ColorFilter=TitleColor1;
            };
            {
              TextView;
              text=getLS("L_Set_up_the");
              layout_centerHorizontal="true";
              textColor=TitleColor,
              layout_marginTop="3dp";
              textSize="13sp";
              layout_below="dibu2";
            };
            {
              Button;
              layout_height="match_parent";
              layout_margin="-20dp";
              id="tui2";
              layout_width="match_parent";
              style="?android:attr/buttonBarButtonStyle";
            };
          };
        };
      };
      {
        RelativeLayout;
        layout_width="fill";
        layout_above="dilan";
        layout_height="fill";
        {
          ScrollView;
          {
            RelativeLayout;
            layout_width="-1";
            layout_height="-1";
            {
              RelativeLayout;
              id="gnn";
              {
                RelativeLayout;
                id="gnn1";
                layout_width="match_parent";
                layout_height="50dp";
                {
                  TextView;
                  layout_marginLeft="15dp";
                  text=getLS("L_Commonly_used_functions");
                  layout_centerVertical="true";
                  textColor=TitleColor,
                  textSize="15sp";
                };
                {
                  ImageView;
                  layout_height="25dp";
                  layout_alignParentRight="true";
                  scaleType="fitXY";
                  layout_centerVertical="true";
                  layout_width="25dp";
                  src="res/Metrial539.png";
                  id="srr1";
                  ColorFilter=TitleColor1;
                  layout_marginRight="15dp";
                };
                {
                  Button;
                  layout_height="match_parent";
                  layout_margin="-20dp";
                  id="che1";
                  layout_width="match_parent";
                  style="?android:attr/buttonBarButtonStyle";
                };
              };
              {
                RelativeLayout;
                layout_below="gnn1";
                id="gnnn2";
                layout_width="match_parent";
                {
                  CustomGridView;
                  numColumns=4;
                  verticalSpacing="15dp";
                  gravity="center";
                  id="grid1";
                  horizontalSpacing="0dp";
                  layout_width="fill";
                };
              };
              {
                RelativeLayout;
                layout_height="50dp";
                layout_below="gnnn2";
                id="gnn2";
                layout_width="match_parent";
                {
                  TextView;
                  layout_marginLeft="15dp";
                  text=getLS("L_Code");
                  layout_centerVertical="true";
                  textColor=TitleColor,
                  textSize="15sp";
                };
                {
                  ImageView;
                  layout_height="25dp";
                  layout_alignParentRight="true";
                  scaleType="fitXY";
                  layout_centerVertical="true";
                  id="srr2";
                  layout_width="25dp";
                  src="res/Metrial539.png";
                  ColorFilter=TitleColor1;
                  layout_marginRight="15dp";
                };
                {
                  Button;
                  layout_height="match_parent";
                  layout_margin="-20dp";
                  layout_width="match_parent";
                  id="che2";
                  style="?android:attr/buttonBarButtonStyle";
                };
              };
              {
                RelativeLayout;
                layout_below="gnn2";
                id="gnnn2";
                layout_width="match_parent";
                {
                  CustomGridView;
                  numColumns=4;
                  verticalSpacing="15dp";
                  gravity="center";
                  id="grid2";
                  horizontalSpacing="0dp";
                  layout_width="fill";
                };
              };
              {
                RelativeLayout;
                layout_height="50dp";
                layout_below="gnnn2";
                id="gnn4";
                layout_width="match_parent";
                {
                  TextView;
                  layout_marginLeft="15dp";
                  text=getLS("L_Engineering");
                  layout_centerVertical="true";
                  textColor=TitleColor,
                  textSize="15sp";
                };
                {
                  ImageView;
                  layout_height="25dp";
                  layout_alignParentRight="true";
                  scaleType="fitXY";
                  layout_centerVertical="true";
                  layout_width="25dp";
                  src="res/Metrial539.png";
                  ColorFilter=TitleColor1;
                  id="srr4";
                  layout_marginRight="15dp";
                };
                {
                  Button;
                  layout_height="match_parent";
                  layout_margin="-20dp";
                  id="che3";
                  layout_width="match_parent";
                  style="?android:attr/buttonBarButtonStyle";
                };
              };
              {
                RelativeLayout;
                layout_below="gnn4";
                id="gnnn3";
                layout_width="match_parent";
                {
                  CustomGridView;
                  numColumns=4;
                  verticalSpacing="15dp";
                  gravity="center";
                  id="grid3";
                  horizontalSpacing="0dp";
                  layout_width="fill";
                };
              };
              {
                RelativeLayout;
                layout_height="50dp";
                layout_below="gnnn3";
                id="gnn6";
                layout_width="match_parent";
                {
                  TextView;
                  layout_marginLeft="15dp";
                  text=getLS("L_Manual");
                  layout_centerVertical="true";
                  textColor=TitleColor,
                  textSize="15sp";
                };
                {
                  ImageView;
                  layout_height="25dp";
                  layout_alignParentRight="true";
                  scaleType="fitXY";
                  layout_centerVertical="true";
                  layout_width="25dp";
                  src="res/Metrial539.png";
                  id="srr6";
                  ColorFilter=TitleColor1;
                  layout_marginRight="15dp";
                };
                {
                  Button;
                  layout_height="match_parent";
                  layout_margin="-20dp";
                  layout_width="match_parent";
                  id="che4";
                  style="?android:attr/buttonBarButtonStyle";
                };
              };
              {
                RelativeLayout;
                layout_below="gnn6";
                id="gnnn6";
                layout_width="match_parent";
                {
                  CustomGridView;
                  numColumns=4;
                  verticalSpacing="15dp";
                  gravity="center";
                  id="grid6";
                  horizontalSpacing="0dp";
                  layout_width="fill";
                };
              };
              {
                RelativeLayout;
                layout_height="50dp";
                layout_below="gnnn6";
                id="gnn7";
                layout_width="match_parent";
                {
                  TextView;
                  layout_marginLeft="15dp";
                  text=getLS("L_Tool");
                  layout_centerVertical="true";
                  textColor=TitleColor,
                  textSize="15sp";
                };
                {
                  ImageView;
                  layout_height="25dp";
                  layout_alignParentRight="true";
                  scaleType="fitXY";
                  layout_centerVertical="true";
                  layout_width="25dp";
                  src="res/Metrial539.png";
                  ColorFilter=TitleColor1;
                  layout_marginRight="15dp";
                  id="srr7";
                };
                {
                  Button;
                  layout_height="match_parent";
                  layout_margin="-20dp";
                  layout_width="match_parent";
                  id="che5";
                  style="?android:attr/buttonBarButtonStyle";
                };
              };
              {
                RelativeLayout;
                layout_below="gnn7";
                id="gnnn7";
                layout_width="match_parent";
                {
                  CustomGridView;
                  numColumns=4;
                  verticalSpacing="15dp";
                  gravity="center";
                  VerticalScrollBarEnabled=false;
                  overScrollMode=2;
                  id="grid7";
                  horizontalSpacing="0dp";
                  layout_width="fill";
                };
              };
              {
                RelativeLayout;
                layout_height="50dp";
                layout_below="gnnn7";
                id="gnn8";
                layout_width="match_parent";
                {
                  TextView;
                  layout_marginLeft="15dp";
                  text=getLS("L_The_plugin");
                  layout_centerVertical="true";
                  textColor=TitleColor,
                  textSize="15sp";
                };
                {
                  ImageView;
                  layout_height="25dp";
                  layout_alignParentRight="true";
                  scaleType="fitXY";
                  layout_centerVertical="true";
                  layout_width="25dp";
                  src="res/Metrial539.png";
                  ColorFilter=TitleColor1;
                  layout_marginRight="15dp";
                  id="srr8";
                };
                {
                  Button;
                  layout_height="match_parent";
                  layout_margin="-20dp";
                  layout_width="match_parent";
                  id="che8";
                  style="?android:attr/buttonBarButtonStyle";
                };
              };
              {
                RelativeLayout;
                layout_below="gnn8";
                id="gnnn8";
                layout_width="match_parent";
                {
                  CustomGridView;
                  numColumns=4;
                  verticalSpacing="15dp";
                  gravity="center";
                  VerticalScrollBarEnabled=false;
                  overScrollMode=2;
                  id="grid8";
                  horizontalSpacing="0dp";
                  layout_width="fill";
                };
              };
            };
          };
        };
      };
    };
  };
};

function MainP()
  function jzgc()
    ztt()
    main1ym()
    activity.setContentView(loadlayout(main6))

    ViewNight(Drawer)

    grid8.Visibility=8
    data8={}
    adp8=LuaAdapter(activity,data8,item8)
    grid8.Adapter=adp8

    function addPluginDrawerView(VIEW)
      DrawerLayout888.addView(loadlayout(VIEW))
    end

    Plugin0()

    if RemoveDrawerLayoutOP==false then
      huadong5.setVisibility(View.VISIBLE)
      DrawerLayout888.setVisibility(View.GONE)
    end


    activity.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);

    ztl(tonumber(qys("BackgroundColor")))

    function beif(amm)
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
          layout_marginLeft="10dp",
          layout_marginRight="10dp",
          layout_width="match_parent";
          layout_gravity="center",
          textColor=tonumber(bjzt());
          text=getLS("L_The_file_name");
        };
        {
          EditText;
          layout_marginTop="5dp";
          layout_marginLeft="10dp",
          layout_marginRight="10dp",
          layout_width="match_parent";
          layout_gravity="center",
          id="edit";
          textSize="15sp",
        };
      };
      tc=AlertDialog.Builder(this)
      .setTitle(getLS("L_Backup_project"))
      .setView(loadlayout(InputLayout))
      .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
          thread(backup7,lj,edit.Text)
        end})
      .setNegativeButton(getLS("L_Cancel"),nil)
      if amm!=true then
        tc.show()
        sjc=os.date("%Y%m%d%H%M%S")
        wjg=btt.."_"..sjc
        edit.setText(wjg)
        Typew1(edit)
        edit.addTextChangedListener{
          onTextChanged=function(s)
            hb="/sdcard/AndLua/backup/"..tostring(edit.Text)..".alp"
            if edit.Text=="" then
              tc.getButton(tc.BUTTON_POSITIVE).setEnabled(false)
             else
              if File(hb).isFile() then
                tc.getButton(tc.BUTTON_POSITIVE).setEnabled(false)
               else
                tc.getButton(tc.BUTTON_POSITIVE).setEnabled(true)
              end
            end
          end
        }
       else
        thread(backup7,lj,btt.."_"..os.date("%Y%m%d%H%M%S").."_"..getLS("L_Automatic_backup"))
      end
    end

    function yyt()
      activity.ActionBar.setDisplayShowCustomEnabled(true)
      activity.ActionBar.setCustomView(loadlayout(btl))
      activity.ActionBar.setBackgroundDrawable(ColorDrawable(tonumber(qys("BackgroundColor"))))
      activity.ActionBar.setElevation(0)
      bw(Sideslip,0xFFEEEEEE)
      bw(menu1,0xFFEEEEEE)
      bw(c1,0xFFEEEEEE)
      bw(c21,0xFFEEEEEE)
      bw(c2,0xFFEEEEEE)
      bw(c3,0xFFEEEEEE)

      Sideslip.onLongClick=function()
        if DrawerLayout_1.Visibility==0 then
          DrawerLayout_1.Visibility=8
          DrawerLayout_2.Visibility=0
         else
          DrawerLayout_1.Visibility=0
          DrawerLayout_2.Visibility=8
        end
        return true
      end

      Sideslip.onClick=function()
        wjml3=wjml4:match('【#@(.-)@#】')
        if File(wjml3).isFile() then
          bcc(wjml3)
          szs(wjml2,wjml3,LuaEditor.getCaretPosition())
         else
        end
        if Drawer.isDrawerOpen(3) then
          Drawer.closeDrawer(3)
         else
          Drawer.openDrawer(3)
        end
      end
      c1.onClick=function()
        LuaEditor.undo()
      end
      c21.onClick=function()
        LuaEditor.redo()
      end
      c2.onClick=function()

        wjml3=wjml4:match('【#@(.-)@#】')
        if File(wjml3).isFile() then
          bcc(wjml3)
          szs(wjml2,wjml3,LuaEditor.getCaretPosition())
         else
        end

        if File(lj.."/java/").isDirectory() then
          bin(lj.."/")
         else
          wj=activity.getLuaDir().."/res/set218.LY"
          hj=io.open(wj):read("*a")
          if hj=="true" then
            luapath=lj6.Text
            local src=LuaEditor.getText()
            src=src.toString()
            if luapath:find("%.aly$") then
              src="return "..src
            end
            local _,data=loadstring(src)
            if data then
              local _,_,line,data=data:find(".(%d+).(.+)")
              LuaEditor.gotoLine(tonumber(line))
              SnackerBar.build()
              :msg(getLS("L_The_first")..line..getLS("L_Line")..data)
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
              return true
             elseif b then
              activity.newActivity(gwj())
             else
              activity.newActivity(gwj())
            end
           else
            activity.newActivity(gwj())
          end
        end
      end

      AndTitle.onClick=function()
        io.open(lj6.Text,"w"):write(LuaEditor.Text):close()
        activity.newActivity("main4",{lj})
      end

      AndTitle.onLongClick=function()
        activity.newActivity("logcat",{lj})
      end

      AndSubTitle.onClick=function()
        dkk()
      end

      AndSubTitle.onLongClick=function()
        xjjj()
        return true
      end

      c1.onLongClick=function()
        wjff=activity.getLuaDir().."/res/set119.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension2.Visibility=8
          Suspension12.Visibility=8
        end
        wjff=activity.getLuaDir().."/res/set213.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension6.Visibility=8
        end
        wjff=activity.getLuaDir().."/res/set209.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension4.Visibility=8
        end
        return true
      end

      c21.onLongClick=function()
        wjff=activity.getLuaDir().."/res/set209.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension4.Visibility=0
        end
        wjff=activity.getLuaDir().."/res/set119.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension2.Visibility=0
          Suspension12.Visibility=0
        end
        wjff=activity.getLuaDir().."/res/set213.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension6.Visibility=0
        end
        return true
      end

      c2.onLongClick=function()
        if type(onBin)=="function" then
          onBin()
         else
          bin(lj.."/")
        end
        return true
      end

      wds={"left","top","right","bottom","start","center","end","middle","marquee","vertical","horizontal","wrap_content","match_parent","true","false","matrix","fitXY","fitStart","fitCenter","fitEnd","center","centerCrop","centerInside","layout_above","layout_alignBaseline","layout_alignBottom","layout_alignEnd","layout_alignLeft","layout_alignParentBottom","layout_alignParentEnd","layout_alignParentLeft","layout_alignParentRight","layout_alignParentStart","layout_alignParentTop","layout_alignRight","layout_alignStart","layout_alignTop","layout_alignWithParentIfMissing","layout_below","layout_centerHorizontal","layout_centerInParent","layout_centerVertical","layout_toEndOf","layout_toLeftOf","layout_toRightOf","layout_toStartOf","id","orientation","columnCount","rowCount","layout_width","layout_height","layout_gravity","backgroundColor","background","gravity","visibility","alpha","layout_margin","layout_marginLeft","layout_marginTop","layout_marginRight","layout_marginBottom","padding","paddingLeft","paddingTop","paddingRight","paddingButtom","Ration","RationX","RationY","CardElevation","radius","text","hint","textColor","hintTextColor","textSize","singleLine","error","maxLines","maxEms","maxHeight","maxWidth","minWidth","src","scaleType"}

      import "android.content.*"
      c3.onLongClick=function()
        items={}
        for index,content in pairs(wds) do
          table.insert(items,content)
        end

        AlertDialog.Builder(this)
        .setTitle(getLS("L_The_layout_properties"))
        .setItems(items,{onClick=function(l,v)
            activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(items[v+1])
            SnackerBar.build()
            :msg(getLS("L_Has_been_copied_to_the_clipboard"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end})
        .show()
        return true
      end

      c3.onClick=function()
        wjml3=wjml4:match('【#@(.-)@#】')
        if File(wjml3).isFile() then
          bcc(wjml3)
          szs(wjml2,wjml3,LuaEditor.getCaretPosition())
         else
        end
        by=string.sub(sslj(),-4,-1)
        if by==".aly" then
          wj11=activity.getLuaDir().."/res/set7.LY"
          hj11=io.open(wj11):read("*a")
          wj23=activity.getLuaDir().."/res/set8.LY"
          hj23=io.open(wj23):read("*a")
          wj232=activity.getLuaDir().."/res/set9.LY"
          hj232=io.open(wj232):read("*a")
          activity.newActivity("main45",{glj(),sslj(),hj11,hj23,hj232})
         else
          wj11=activity.getLuaDir().."/res/set7.LY"
          hj11=io.open(wj11):read("*a")
          wj23=activity.getLuaDir().."/res/set8.LY"
          hj23=io.open(wj23):read("*a")
          wj232=activity.getLuaDir().."/res/set9.LY"
          hj232=io.open(wj232):read("*a")
          activity.newActivity("main56",{glj(),"",hj11,hj23,hj232})
        end
      end
      sxbt()
    end

    function sslj()
      return lj6.Text
    end

    function szlj(a)
      lj6.setText(a)
    end

    function szflj(a)
      lj7.setText(a)
    end

    wj=activity.getLuaDir().."/res/set204.LY"
    SaveExceptions=io.open(wj):read("*a")

    function bcc(a)
      if SaveExceptions=="true" then
        if LuaEditor.Text!="" then
          io.open(a,"w"):write(LuaEditor.Text):close()
         else
          AlertDialog.Builder(this)
          .setTitle(getLS("L_Prompt"))
          .setMessage(getLS("L_Detect_your_current_file").."["..a.."]"..getLS("L_Save_the_code_is_empty"))
          .setPositiveButton(getLS("L_Save"),{onClick=function(v)
              io.open(a,"w"):write(""):close()
            end})
          .setNegativeButton(getLS("L_Cancel"),nil)
          .show()
        end
       else
        io.open(a,"w"):write(LuaEditor.Text):close()
      end
    end

    function glj()
      return lj.."/"
    end

    function gwj()
      return glj().."main.lua"
    end

    function luawb(a)
      LuaEditor.setText(a)
    end

    function hqlua()
      return LuaEditor.Text
    end

    function ljnr(a)
      if a==nil then
        return io.open(gwj()):read("*a")
       else
        return io.open(a):read("*a")
      end
    end

    function sxbt()
      wjh=io.open(lj.."/init.lua"):read("*a")
      btt=wjh:match('%appname="(.-)"')
      AndTitle.setText(btt)
      AndSubTitle.setText(lj)
    end

    function szmr(a,b,c)
      yy1=[==[【#@]==]..b..[==[@#】]==]
      yy2=[==[【#@]==]..c..[==[@#】]==]
      yy3=io.open(a):read("*a")
      yy4=string.gsub(yy3,yy1,yy2)
      io.open(a,"w"):write(yy4):close()
    end

    function szs(a,b,c)
      wjml4=io.open(wjml2):read("*a")
      yy11=[==[【@@]==]..b..[==[@@】#]==]
      yy33=io.open(a):read("*a")
      yy22=yy33:match(yy11..'(.-)#')
      yy44=[==[【@@]==]..b..[==[@@】#]==]..yy22.."#"
      yy45=[==[【@@]==]..b..[==[@@】#]==]..c.."#"
      yy46=string.gsub(yy33,yy44,yy45)
      io.open(a,"w"):write(yy46):close()
    end

    yyt()

    function ggg(v)
      lj6.setText(lj.."/"..v.Text)
      lj7.setText(tostring(File(lj.."/"..v.Text).getParentFile()).."/")
      uuj=string.sub(tostring(lj.."/"..v.Text),-4,-1)
      wjml4=io.open(wjml2):read("*a")
      sxbt()
      wjml3=wjml4:match('【#@(.-)@#】')
      if File(wjml3).isFile() then
        bcc(wjml3)
        szs(wjml2,wjml3,LuaEditor.getCaretPosition())
       else
      end
      szmr(wjml2,wjml3,lj.."/"..v.Text)
      wjml4=io.open(wjml2):read("*a")
      if File(lj.."/"..v.Text).isFile() then
        luawb(ljnr(lj.."/"..v.Text))
        local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
        if AUTOF=="true" then
          LuaEditor.format()
        end
        wm2=wjml4:match("【@@"..lj.."/"..v.Text.."@@】#(.-)#§")
        wm3=wjml4:match("【@@"..lj.."/"..v.Text.."@@】#"..wm2.."#§(.-)§")
        LuaEditor.setSelection(tonumber(wm2))
        for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
          wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
          wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
          if wjm3==wm3 then
            jaj=_G[wjm3]
            jaj.backgroundColor=tonumber(bjzt())
            jaj1=_G["T1"..wjm3]
            jaj1.setTextColor(tonumber(bjzt()))
           else
            jaj=_G[wjm3]
            jaj.backgroundColor=0x00FFFFFF
            jaj1=_G["T1"..wjm3]
            jaj1.setTextColor(TitleColor1)
          end
        end
       else
        SnackerBar.build()
        :msg(getLS("L_The_file_does_not_exist"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
        wm12=wjml4:match("【@@"..lj.."/"..v.Text.."@@】#(.-)#§")
        wm13=wjml4:match("【@@"..lj.."/"..v.Text.."@@】#"..wm12.."#§(.-)§")
        ja=_G["T"..wm13]
        yy4=[==[【@@]==]..lj.."/"..v.Text..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
        yy5=io.open(wjml2):read("*a")
        yy6=string.gsub(yy5,yy4,"")
        io.open(wjml2,"w"):write(yy6):close()
        fhhk.removeView(ja)
        wjml4=io.open(wjml2):read("*a")
        luawb(ljnr(lj.."/main.lua"))
        lj6.setText(lj.."/main.lua")
        lj7.setText(tostring(File(lj.."/main.lua").getParentFile()).."/")
        uuj=string.sub(tostring(lj.."/main.lua"),-4,-1)
        wm2=wjml4:match("【@@"..lj.."/main.lua".."@@】#(.-)#§")
        wm3=wjml4:match("【@@"..lj.."/main.lua".."@@】#"..wm2.."#§(.-)§")
        LuaEditor.setSelection(tonumber(wm2))
        for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
          wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
          wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
          if wjm3==wm3 then
            jaj=_G[wjm3]
            jaj.backgroundColor=tonumber(bjzt())
            jaj1=_G["T1"..wjm3]
            jaj1.setTextColor(tonumber(bjzt()))
           else
            jaj=_G[wjm3]
            jaj.backgroundColor=0x00FFFFFF
            jaj1=_G["T1"..wjm3]
            jaj1.setTextColor(TitleColor1)
          end
        end
      end
    end

    function ccc(v)
      wjml3=wjml4:match('【#@(.-)@#】')
      if File(wjml3).isFile() then
        bcc(wjml3)
        szs(wjml2,wjml3,LuaEditor.getCaretPosition())
       else
      end
      pll=v.Text
      if pll=="main.lua" then
        pop6=PopupMenu(activity,v)
        menu6=pop6.Menu
        menu6.add(getLS("L_Copy_the_name")).onMenuItemClick=function(a)
          import "android.content.*"
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(pll)
        end
        menu6.add(getLS("L_Copy_path")).onMenuItemClick=function(a)
          import "android.content.*"
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(lj.."/"..pll)
        end
        menu6.add(getLS("L_Copy_the_file")).onMenuItemClick=function(a)
          luam=tostring(io.open(lj.."/"..pll):read("*a"))
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
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              text=getLS("L_Enter_the_new_file_name");
            };
            {
              EditText;
              layout_marginTop="5dp";
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              id="edit";
              textSize="16sp",
            };
          };

          AlertDialog.Builder(this)
          .setTitle(getLS("L_Copy_the_file"))
          .setView(loadlayout(InputLayout))
          .setPositiveButton(getLS("L_Copy"),{onClick=function(v)
              if File(lj7.Text..edit.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(lj7.Text..edit.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Copy_success"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                  io.open(lj7.Text..edit.Text,"w"):write(luawz):close()
                  uyy(tostring(lj7.Text..edit.Text))
                  LuaEditor.setText(luam)
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Copy_the_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
            end})
          .setNegativeButton(getLS("L_Cancel"),nil)
          .show()
          edit.setText(pll)
          Typew(edit)
        end
        menu6.add(getLS("L_Close_the_other")).onMenuItemClick=function(a)
          uyy(gwj())
          for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
            wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
            wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
            if wjm3=="ly1" then
             else
              fhhk.removeView(_G["T"..wjm3])
            end
          end
          aaww1="【#@"..gwj().."@#】"
          aaww2="【@@"..gwj().."@@】#0#§ly1§"
          aaww3=aaww1.."\n"..aaww2
          io.open(wjml2,"w"):write(aaww3):close()
        end
        pop6.show()
       elseif pll=="init.lua" then
        pop6=PopupMenu(activity,v)
        menu6=pop6.Menu
        menu6.add(getLS("L_A_closing_tag")).onMenuItemClick=function(a)
          if lj.."/"..pll==lj6.Text then
            v.getParent().removeView(v)
            lj6.setText(lj.."/".."main.lua")
            lj7.setText(tostring(File(lj.."/main.lua").getParentFile()).."/")

            wjml4=io.open(wjml2):read("*a")
            sxbt()
            wjml3=wjml4:match('【#@(.-)@#】')
            if File(wjml3).isFile() then
              bcc(wjml3)
              szs(wjml2,wjml3,LuaEditor.getCaretPosition())
             else
            end
            szmr(wjml2,wjml3,lj.."/main.lua")
            wjml4=io.open(wjml2):read("*a")
            luawb(ljnr(lj.."/main.lua"))
            local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
            if AUTOF=="true" then
              LuaEditor.format()
            end
            wm2=wjml4:match("【@@"..lj.."/main.lua".."@@】#(.-)#§")
            wm3=wjml4:match("【@@"..lj.."/main.lua".."@@】#"..wm2.."#§(.-)§")
            LuaEditor.setSelection(tonumber(wm2))
            for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
              wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
              wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
              if wjm3==wm3 then
                jaj=_G[wjm3]
                jaj.backgroundColor=tonumber(bjzt())
                jaj1=_G["T1"..wjm3]
                jaj1.setTextColor(tonumber(bjzt()))
               else
                jaj=_G[wjm3]
                jaj.backgroundColor=0x00FFFFFF
                jaj1=_G["T1"..wjm3]
                jaj1.setTextColor(TitleColor1)
              end
            end
           else
            v.getParent().removeView(v)
          end
          wm12=wjml4:match("【@@"..lj.."/"..pll.."@@】#(.-)#§")
          wm13=wjml4:match("【@@"..lj.."/"..pll.."@@】#"..wm12.."#§(.-)§")
          ja=_G["T"..wm13]
          yy4=[==[【@@]==]..lj.."/"..pll..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
          yy5=io.open(wjml2):read("*a")
          yy6=string.gsub(yy5,yy4,"")
          io.open(wjml2,"w"):write(yy6):close()
          wjml4=io.open(wjml2):read("*a")
        end
        menu6.add(getLS("L_Copy_the_name")).onMenuItemClick=function(a)
          import "android.content.*"
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(pll)
        end
        menu6.add(getLS("L_Copy_path")).onMenuItemClick=function(a)
          import "android.content.*"
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(lj.."/"..pll)
        end
        menu6.add(getLS("L_Copy_the_file")).onMenuItemClick=function(a)
          luam=tostring(io.open(lj.."/"..pll):read("*a"))
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
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              text=getLS("L_Enter_the_new_file_name");
            };
            {
              EditText;
              layout_marginTop="5dp";
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              id="edit";
              textSize="16sp",
            };
          };

          AlertDialog.Builder(this)
          .setTitle(getLS("L_Copy_the_file"))
          .setView(loadlayout(InputLayout))
          .setPositiveButton(getLS("L_Copy"),{onClick=function(v)
              if File(lj7.Text..edit.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(lj7.Text..edit.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Copy_success"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                  io.open(lj7.Text..edit.Text,"w"):write(luawz):close()
                  uyy(tostring(lj7.Text..edit.Text))
                  LuaEditor.setText(luam)
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Copy_the_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
            end})
          .setNegativeButton(getLS("L_Cancel"),nil)
          .show()
          edit.setText(pll)
          Typew(edit)
        end
        pop6.show()
       else
        pop6=PopupMenu(activity,v)
        menu6=pop6.Menu
        menu6.add(getLS("L_A_closing_tag")).onMenuItemClick=function(a)
          if lj.."/"..pll==lj6.Text then
            v.getParent().removeView(v)
            lj6.setText(lj.."/".."main.lua")
            lj7.setText(tostring(File(lj.."/main.lua").getParentFile()).."/")

            wjml4=io.open(wjml2):read("*a")
            sxbt()
            wjml3=wjml4:match('【#@(.-)@#】')
            if File(wjml3).isFile() then
              bcc(wjml3)
              szs(wjml2,wjml3,LuaEditor.getCaretPosition())
             else
            end
            szmr(wjml2,wjml3,lj.."/main.lua")
            wjml4=io.open(wjml2):read("*a")
            luawb(ljnr(lj.."/main.lua"))
            local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
            if AUTOF=="true" then
              LuaEditor.format()
            end
            wm2=wjml4:match("【@@"..lj.."/main.lua".."@@】#(.-)#§")
            wm3=wjml4:match("【@@"..lj.."/main.lua".."@@】#"..wm2.."#§(.-)§")
            LuaEditor.setSelection(tonumber(wm2))
            for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
              wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
              wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
              if wjm3==wm3 then
                jaj=_G[wjm3]
                jaj.backgroundColor=tonumber(bjzt())
                jaj1=_G["T1"..wjm3]
                jaj1.setTextColor(tonumber(bjzt()))
               else
                jaj=_G[wjm3]
                jaj.backgroundColor=0x00FFFFFF
                jaj1=_G["T1"..wjm3]
                jaj1.setTextColor(TitleColor1)
              end
            end
           else
            v.getParent().removeView(v)
          end
          wm12=wjml4:match("【@@"..lj.."/"..pll.."@@】#(.-)#§")
          wm13=wjml4:match("【@@"..lj.."/"..pll.."@@】#"..wm12.."#§(.-)§")
          ja=_G["T"..wm13]
          yy4=[==[【@@]==]..lj.."/"..pll..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
          yy5=io.open(wjml2):read("*a")
          yy6=string.gsub(yy5,yy4,"")
          io.open(wjml2,"w"):write(yy6):close()
          wjml4=io.open(wjml2):read("*a")
        end
        menu6.add(getLS("L_Rename_the_file")).onMenuItemClick=function(a)
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
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              text=getLS("L_Enter_the_new_file_name");
            };
            {
              EditText;
              layout_marginTop="5dp";
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              id="edit";
              textSize="16sp",
            };
          };

          AlertDialog.Builder(this)
          .setTitle(getLS("L_Rename_the_file"))
          .setView(loadlayout(InputLayout))
          .setPositiveButton(getLS("L_Modify_the"),{onClick=function(v)
              if lj.."/"..pll==lj6.Text then
                if edit.Text==pll then
                 else
                  if File(lj.."/"..edit.Text).isFile() then
                    SnackerBar.build()
                    :msg(getLS("L_The_file_name_to_repeat"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                   else
                    if File(lj.."/"..pll).renameTo(File(lj.."/"..edit.Text)) then
                      lj6.setText(lj.."/"..edit.Text)
                      lj7.setText(tostring(File(lj.."/main.lua").getParentFile()).."/")
                      wjml4=io.open(wjml2):read("*a")
                      sxbt()
                      wjml3=wjml4:match('【#@(.-)@#】')
                      if File(wjml3).isFile() then
                        bcc(wjml3)
                        szs(wjml2,wjml3,LuaEditor.getCaretPosition())
                       else
                      end
                      szmr(wjml2,wjml3,lj..edit.Text)
                      wjml4=io.open(wjml2):read("*a")
                      luawb(ljnr(lj.."/"..edit.Text))
                      local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
                      if AUTOF=="true" then
                        LuaEditor.format()
                      end
                      wm12=wjml4:match("【@@"..lj.."/"..pll.."@@】#(.-)#§")
                      wm13=wjml4:match("【@@"..lj.."/"..pll.."@@】#"..wm12.."#§(.-)§")
                      ja=_G["T"..wm13]
                      yy4=[==[【@@]==]..lj.."/"..edit.Text..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
                      yyy6=[==[【@@]==]..lj.."/"..pll..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
                      yy5=io.open(wjml2):read("*a")
                      yy6=string.gsub(yy5,yyy6,yy4)
                      io.open(wjml2,"w"):write(yy6):close()
                      wjml4=io.open(wjml2):read("*a")
                      wm2=wjml4:match("【@@"..lj.."/"..edit.Text.."@@】#(.-)#§")
                      wm3=wjml4:match("【@@"..lj.."/"..edit.Text.."@@】#"..wm2.."#§(.-)§")
                      LuaEditor.setSelection(tonumber(wm2))
                      for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
                        wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
                        wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
                        if wjm3==wm3 then
                          jaj=_G["T1"..wjm3]
                          jaj.setText(edit.Text)
                         else
                          jaj=_G[wjm3]
                        end
                      end
                      SnackerBar.build()
                      :msg(getLS("L_Rename_the_success"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                     else
                      SnackerBar.build()
                      :msg(getLS("L_Rename_the_failure"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                    end
                  end
                end
               else
                if edit.Text==pll then
                 else
                  if File(lj.."/"..edit.Text).isFile() then
                    SnackerBar.build()
                    :msg(getLS("L_The_file_name_to_repeat"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                   else
                    if File(lj.."/"..pll).renameTo(File(lj.."/"..edit.Text)) then
                      wjml4=io.open(wjml2):read("*a")
                      sxbt()
                      wjml3=wjml4:match('【#@(.-)@#】')
                      if File(wjml3).isFile() then
                        bcc(wjml3)
                        szs(wjml2,wjml3,LuaEditor.getCaretPosition())
                       else
                      end
                      wjml4=io.open(wjml2):read("*a")
                      local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
                      if AUTOF=="true" then
                        LuaEditor.format()
                      end
                      wm12=wjml4:match("【@@"..lj.."/"..pll.."@@】#(.-)#§")
                      wm13=wjml4:match("【@@"..lj.."/"..pll.."@@】#"..wm12.."#§(.-)§")
                      ja=_G["T"..wm13]
                      yy4=[==[【@@]==]..lj.."/"..edit.Text..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
                      yyy6=[==[【@@]==]..lj.."/"..pll..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
                      yy5=io.open(wjml2):read("*a")
                      yy6=string.gsub(yy5,yyy6,yy4)
                      io.open(wjml2,"w"):write(yy6):close()
                      wjml4=io.open(wjml2):read("*a")
                      wm2=wjml4:match("【@@"..lj.."/"..edit.Text.."@@】#(.-)#§")
                      wm3=wjml4:match("【@@"..lj.."/"..edit.Text.."@@】#"..wm2.."#§(.-)§")
                      LuaEditor.setSelection(tonumber(wm2))
                      for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
                        wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
                        wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
                        if wjm3==wm3 then
                          jaj=_G["T1"..wjm3]
                          jaj.setText(edit.Text)
                         else
                          jaj=_G[wjm3]
                        end
                      end
                      SnackerBar.build()
                      :msg(getLS("L_Rename_the_success"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                     else
                      SnackerBar.build()
                      :msg(getLS("L_Rename_the_failure"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                    end
                  end
                end
              end
            end})
          .setNegativeButton(getLS("L_Cancel"),nil)
          .show()
          edit.setText(pll)
          Typew(edit)
        end
        menu6.add(getLS("L_Delete_the_file")).onMenuItemClick=function(a)
          AlertDialog.Builder(this).setTitle(getLS("L_Prompt"))
          .setMessage(getLS("L_Sure_to_delete"))
          .setPositiveButton(getLS("L_Determine"),{onClick=function()
              if File(lj.."/"..pll).delete() then
                if lj.."/"..pll==lj6.Text then
                  v.getParent().removeView(v)
                  lj6.setText(lj.."/".."main.lua")
                  lj7.setText(tostring(File(lj.."/main.lua").getParentFile()).."/")

                  wjml4=io.open(wjml2):read("*a")
                  sxbt()
                  wjml3=wjml4:match('【#@(.-)@#】')
                  if File(wjml3).isFile() then
                    bcc(wjml3)
                    szs(wjml2,wjml3,LuaEditor.getCaretPosition())
                   else
                  end
                  szmr(wjml2,wjml3,lj.."/main.lua")
                  wjml4=io.open(wjml2):read("*a")
                  luawb(ljnr(lj.."/main.lua"))
                  local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
                  if AUTOF=="true" then
                    LuaEditor.format()
                  end
                  wm2=wjml4:match("【@@"..lj.."/main.lua".."@@】#(.-)#§")
                  wm3=wjml4:match("【@@"..lj.."/main.lua".."@@】#"..wm2.."#§(.-)§")
                  LuaEditor.setSelection(tonumber(wm2))
                  for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
                    wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
                    wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
                    if wjm3==wm3 then
                      jaj=_G[wjm3]
                      jaj.backgroundColor=tonumber(bjzt())
                      jaj1=_G["T1"..wjm3]
                      jaj1.setTextColor(tonumber(bjzt()))
                     else
                      jaj=_G[wjm3]
                      jaj.backgroundColor=0x00FFFFFF
                      jaj1=_G["T1"..wjm3]
                      jaj1.setTextColor(TitleColor1)
                    end
                  end
                 else
                  v.getParent().removeView(v)
                end
                wm12=wjml4:match("【@@"..lj.."/"..pll.."@@】#(.-)#§")
                wm13=wjml4:match("【@@"..lj.."/"..pll.."@@】#"..wm12.."#§(.-)§")
                ja=_G["T"..wm13]
                yy4=[==[【@@]==]..lj.."/"..pll..[==[@@】]==].."#"..wm12.."#§"..wm13.."§"
                yy5=io.open(wjml2):read("*a")
                yy6=string.gsub(yy5,yy4,"")
                io.open(wjml2,"w"):write(yy6):close()
                wjml4=io.open(wjml2):read("*a")
                SnackerBar.build()
                :msg(getLS("L_Delete_the_success"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                SnackerBar.build()
                :msg(getLS("L_Delete_failed"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
              end
            end})
          .setNegativeButton(getLS("L_Cancel"),nil)
          .show();
        end
        menu6.add(getLS("L_Copy_the_name")).onMenuItemClick=function(a)
          import "android.content.*"
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(pll)
        end
        menu6.add(getLS("L_Copy_path")).onMenuItemClick=function(a)
          import "android.content.*"
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(lj.."/"..pll)
        end
        menu6.add(getLS("L_Copy_the_file")).onMenuItemClick=function(a)
          luam=tostring(io.open(lj.."/"..pll):read("*a"))
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
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              text=getLS("L_Enter_the_new_file_name");
            };
            {
              EditText;
              layout_marginTop="5dp";
              layout_marginLeft="10dp",
              layout_marginRight="10dp",
              layout_width="match_parent";
              layout_gravity="center",
              id="edit";
              textSize="16sp",
            };
          };

          AlertDialog.Builder(this)
          .setTitle(getLS("L_Copy_the_file"))
          .setView(loadlayout(InputLayout))
          .setPositiveButton(getLS("L_Copy"),{onClick=function(v)
              if File(lj7.Text..edit.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(lj7.Text..edit.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Copy_success"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                  io.open(lj7.Text..edit.Text,"w"):write(luawz):close()
                  uyy(tostring(lj7.Text..edit.Text))
                  LuaEditor.setText(luam)
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Copy_the_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
            end})
          .setNegativeButton(getLS("L_Cancel"),nil)
          .show()
          edit.setText(pll)
          Typew(edit)
        end
        pop6.show()
      end
    end

    function uuu(a)
      for wjmm in wjml4:gmatch('【@@(.-)@@】') do
        wjmm2=wjml4:match("【@@"..wjmm.."@@】#(.-)#§")
        wjmm3=wjml4:match("【@@"..wjmm.."@@】#"..wjmm2.."#§(.-)§")
        if File(wjmm).isFile() then
          wjmm1=wjmm:match(lj.."/(.+)")
          if a=="0" then
            if wjmm==lj.."/main.lua" then
              button={
                RelativeLayout;
                layout_width="match_parent";
                layout_height="28dp";
                id="T"..wjmm3,
                {
                  LinearLayout;
                  layout_width="match_parent";
                  orientation="vertical";
                  layout_height="match_parent";
                  {
                    TextView;
                    layout_gravity="center";
                    layout_width="match_parent";
                    layout_weight="1";
                    layout_marginLeft="5dp";
                    layout_marginRight="5dp";
                    gravity="center";
                    id="T1"..wjmm3,
                    ellipsize="middle";
                    maxEms="10";
                    singleLine=true;
                    TextColor=tonumber(bjzt());
                    text=wjmm1,
                    layout_height="match_parent";
                    onClick=function(v)
                      ggg(v)
                      return true
                    end,
                  };
                  {
                    TextView;
                    id=wjmm3,
                    layout_width="match_parent";
                    backgroundColor=tonumber(bjzt());
                    layout_height="2dp";
                  };
                };
              };
             else
              button=
              {
                RelativeLayout;
                layout_width="match_parent";
                id="T"..wjmm3,
                layout_height="28dp";
                {
                  LinearLayout;
                  layout_width="match_parent";
                  orientation="vertical";
                  layout_height="match_parent";
                  {
                    TextView;
                    layout_gravity="center";
                    layout_width="match_parent";
                    layout_weight="1";
                    layout_marginLeft="5dp";
                    layout_marginRight="5dp";
                    gravity="center";
                    id="T1"..wjmm3,
                    ellipsize="middle";
                    maxEms="10";
                    singleLine=true;
                    textColor=TitleColor1,
                    text=wjmm1,
                    layout_height="match_parent";
                    onClick=function(v)
                      ggg(v)
                      return true
                    end,
                  };
                  {
                    TextView;
                    id=wjmm3,
                    layout_width="match_parent";
                    backgroundColor=0X00FFFFFF;
                    layout_height="2dp";
                  };
                };
              };

            end
           else
            if wjmm==wjml3 then
              button=
              {
                RelativeLayout;
                id="T"..wjmm3,
                layout_width="match_parent";
                layout_height="28dp";
                {
                  LinearLayout;
                  layout_width="match_parent";
                  orientation="vertical";
                  layout_height="match_parent";
                  {
                    TextView;
                    layout_gravity="center";
                    layout_width="match_parent";
                    layout_weight="1";
                    layout_marginLeft="5dp";
                    layout_marginRight="5dp";
                    ellipsize="middle";
                    maxEms="10";
                    singleLine=true;
                    gravity="center";
                    id="T1"..wjmm3,
                    text=wjmm1,
                    TextColor=tonumber(bjzt());
                    layout_height="match_parent";
                    onClick=function(v)
                      ggg(v)
                      return true
                    end,
                  };
                  {
                    TextView;
                    id=wjmm3,
                    layout_width="match_parent";
                    backgroundColor=tonumber(bjzt());
                    layout_height="2dp";
                  };
                };
              };

             else
              button=
              {
                RelativeLayout;
                layout_width="match_parent";
                layout_height="28dp";
                id="T"..wjmm3,
                {
                  LinearLayout;
                  layout_width="match_parent";
                  orientation="vertical";
                  layout_height="match_parent";
                  {
                    TextView;
                    layout_gravity="center";
                    layout_width="match_parent";
                    layout_weight="1";
                    layout_marginLeft="5dp";
                    layout_marginRight="5dp";
                    gravity="center";
                    ellipsize="middle";
                    maxEms="10";
                    singleLine=true;
                    id="T1"..wjmm3,
                    textColor=TitleColor1,
                    text=wjmm1,
                    layout_height="match_parent";
                    onClick=function(v)
                      ggg(v)
                      return true
                    end,
                  };
                  {
                    TextView;
                    id=wjmm3,
                    layout_width="match_parent";
                    backgroundColor=0X00FFFFFF;
                    layout_height="2dp";
                  };
                };
              };
            end
          end
          m=loadlayout(button)
          fhhk.addView(m)
          bw(_G["T1"..wjmm3])
          _G["T1"..wjmm3].onLongClick=function(v)
            ccc(v)
            return true
          end;

         else
          yy4=[==[【@@]==]..wjmm..[==[@@】]==].."#"..wjmm2.."#§"..wjmm3.."§"
          yy5=io.open(wjml2):read("*a")
          yy6=string.gsub(yy5,yy4,"")
          io.open(wjml2,"w"):write(yy6):close()
          wjml4=io.open(wjml2):read("*a")
        end
      end
    end

    function getml()
      mllwj=activity.getLuaDir().."/res/log.ly"
      jqe=[==[【@@]==]..gwj()..[==[@@】]==]
      wjml=ljnr(mllwj):match(jqe..'(.-)【§')
      if wjml=="★" then
        wjml1=ljnr(mllwj):match(jqe..'★【§(.-)§】')
        wjml2=activity.getLuaDir().."/log/"..wjml1..".ly"
        wjml4=io.open(wjml2):read("*a")
        wjml3=wjml4:match('【#@(.-)@#】')
        if File(wjml3).isFile() then
          luawb(ljnr(wjml3))
          lj6.setText(wjml3)
          lj7.setText(tostring(File(wjml3).getParentFile()).."/")
          wjml5=wjml4:match('【@@'..wjml3..'@@】#(.-)#')
          LuaEditor.setSelection(tonumber(wjml5))
          uuu("1")
          task(50,function()
            uuj=string.sub(tostring(wjml3),-4,-1)

          end)
         else
          luawb(ljnr())
          lj6.setText(lj.."/main.lua")
          lj7.setText(tostring(File(lj.."/main.lua").getParentFile()).."/")
          szmr(wjml2,wjml3,gwj())
          wjml5=wjml4:match('【@@'..gwj()..'@@】#(.-)#')
          LuaEditor.setSelection(tonumber(wjml5))
          wjml4=io.open(wjml2):read("*a")
          uuu("0")
        end
       else

        ddd1=tostring(math.random(10000000,999999999999999))
        dd1="【@@"..gwj().."@@】★【§"..ddd1.."§】"
        dd2=io.open(mllwj):read("*a")
        dd3=dd2.."\n"..dd1
        io.open(mllwj,"w"):write(dd3):close()
        mllwj1=activity.getLuaDir().."/log/"..ddd1..".ly"

        AJK2=""

        function fileget(a)
          AJK=luajava.astable(File(a).listFiles())
          for AJK1=1,#AJK do
            if File(tostring(AJK[AJK1])).isFile() then
              uuj6=string.sub(tostring(AJK[AJK1]),-4,-1)
              if uuj6==".lua" or uuj6==".aly" or uuj6==".txt" then
                if tostring(File(tostring(AJK[AJK1])).getName())=="main.lua" then
                 else
                  AJK2=AJK2.."\n".."【@@"..tostring(AJK[AJK1]).."@@】#0#§ly"..tostring(tointeger(AJK1*56)).."§"
                end
              end
             else
              --fileget(tostring(AJK[AJK1]))
            end
          end
        end

        fileget(glj())

        ww1="【#@"..gwj().."@#】"
        ww2="【@@"..gwj().."@@】#0#§ly1§"..AJK2

        if javaFile!=nil then
          ww2=ww2.."\n【@@"..javaFile.."@@】#0#§ly888§"
        end

        ww3=ww1.."\n"..ww2
        io.open(mllwj1,"w"):write(ww3):close()
        mllwj=activity.getLuaDir().."/res/log.ly"
        jqe=[==[【@@]==]..gwj()..[==[@@】]==]
        wjml=ljnr(mllwj):match(jqe..'(.-)【§')
        wjml1=ljnr(mllwj):match(jqe..'★【§(.-)§】')
        wjml2=activity.getLuaDir().."/log/"..wjml1..".ly"
        wjml4=io.open(wjml2):read("*a")
        wjml3=wjml4:match('【#@(.-)@#】')
        if File(wjml3).isFile() then
          luawb(ljnr(wjml3))
          lj6.setText(wjml3)
          lj7.setText(tostring(File(wjml3).getParentFile()).."/")
          wjml5=wjml4:match('【@@'..wjml3..'@@】#(.-)#')
          LuaEditor.setSelection(tonumber(wjml5))
          uuu("1")
          task(50,function()
            uuj=string.sub(tostring(wjml3),-4,-1)
          end)
         else
          luawb(ljnr())
          lj6.setText(lj.."/main.lua")
          lj7.setText(tostring(File(lj.."/main.lua").getParentFile()).."/")
          szmr(wjml2,wjml3,gwj())
          wjml5=wjml4:match('【@@'..gwj()..'@@】#(.-)#')
          LuaEditor.setSelection(tonumber(wjml5))
          wjml4=io.open(wjml2):read("*a")
          uuu("0")
        end

      end
    end

    getml()

    sxbt()
    bss(LuaEditor)

    if RemoveDrawerLayoutOP==false then
      bss(lua1)
    end


    function onStop()
      wjml3=wjml4:match('【#@(.-)@#】')
      if File(wjml3).isFile() then
        bcc(wjml3)
        szs(wjml2,wjml3,LuaEditor.getCaretPosition())
       else
      end
    end

    LuaEditor.onSelectionChanged=function(b)
    end

    Suspension7.setVisibility(View.GONE)
    Suspension8.setVisibility(View.GONE)

    LuaEditor.OnSelectionChangedListener=function(status,Start,End)
      if status == true then

        wjff=activity.getLuaDir().."/res/set119.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension2.Visibility=0
          Suspension12.Visibility=0
        end

        wjff=activity.getLuaDir().."/res/set213.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension6.Visibility=0
        end

        Suspension7.setVisibility(View.GONE)
        Suspension8.setVisibility(View.GONE)

        wjff=activity.getLuaDir().."/res/set216.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          if LuaEditor.getSelectedText()=="false"
            Suspension7.setVisibility(View.VISIBLE)
            Suspension777.Text="true"
           elseif LuaEditor.getSelectedText()=="true"
            Suspension777.Text="false"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="vertical"
            Suspension777.Text="horizontal"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="horizontal"
            Suspension777.Text="vertical"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="require"
            Suspension777.Text="import"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="import"
            Suspension777.Text="require"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="onClick"
            Suspension777.Text="Long"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="onLongClick"
            Suspension777.Text="Click"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="fill"
            Suspension777.Text="-2"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="match_parent"
            Suspension777.Text="-2"
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="wrap_content"
            Suspension777.Text="fill"
            Suspension7.setVisibility(View.VISIBLE)
           elseif String(LuaEditor.getSelectedText()).length()==10 and string.sub(string.upper(LuaEditor.getSelectedText()),1,2)=="0X"
            Suspension777.Text=""
            Suspension71.BackgroundColor=tonumber(LuaEditor.getSelectedText())
            Suspension7.setVisibility(View.VISIBLE)
           elseif LuaEditor.getSelectedText()=="0"
            drag_SeekBar.Max=100
            drag_SeekBar.Progress=0
            Suspension777.Text="0"
            Suspension7.setVisibility(View.VISIBLE)
            Suspension8.setVisibility(View.VISIBLE)
           elseif tointeger(LuaEditor.getSelectedText())!=nil
            if tointeger(LuaEditor.getSelectedText())-1==-1 then
              drag_SeekBar.Max=100
             else
              drag_SeekBar.Max=tointeger(LuaEditor.getSelectedText())*10
            end
            drag_SeekBar.Progress=tointeger(LuaEditor.getSelectedText())
            Suspension777.Text=LuaEditor.getSelectedText()
            Suspension7.setVisibility(View.VISIBLE)
            Suspension8.setVisibility(View.VISIBLE)
           elseif string.sub(LuaEditor.getSelectedText(),-2,-1)=="dp" or string.sub(LuaEditor.getSelectedText(),-2,-1)=="sp"
            if tointeger(string.sub(LuaEditor.getSelectedText(),1,-3)) != nil
              if tointeger(string.sub(LuaEditor.getSelectedText(),1,-3))-1==-1 then
                drag_SeekBar.Max=100
               else
                drag_SeekBar.Max=tointeger(string.sub(LuaEditor.getSelectedText(),1,-3))*10
              end
              drag_SeekBar.Progress=tointeger(string.sub(LuaEditor.getSelectedText(),1,-3))
              Suspension8.setVisibility(View.VISIBLE)
              Suspension777.Text=LuaEditor.getSelectedText()
              Suspension7.setVisibility(View.VISIBLE)
            end
           elseif String(LuaEditor.getSelectedText()).length()==6
            if LuaEditor.getSelectionStart()-1 ~= -1 then
              LuaEditor.setSelection(LuaEditor.getSelectionStart()-1,7)
              if string.sub(LuaEditor.getSelectedText(),1,1)=="#"
                Suspension777.Text=""
                Suspension71.BackgroundColor=tonumber("0XFF"..string.sub(LuaEditor.getSelectedText(),2,-1))
                Suspension7.setVisibility(View.VISIBLE)
               else
                LuaEditor.setSelection(LuaEditor.getSelectionStart()+1,6)
              end
            end
          end
        end

        if type(LuaEditorMonitor1)=="function" then
          LuaEditorMonitor1()
        end
        local Str = String(LuaEditor.Text)
        local content = Str.substring(Start,End)
        activity.ActionBar.setDisplayShowCustomEnabled(true)
        activity.ActionBar.setCustomView(loadlayout(jql))
        activity.ActionBar.setBackgroundDrawable(ColorDrawable(tonumber(qys("BackgroundColor"))))
        activity.ActionBar.setElevation(0)
        bw(c3m,0xFFEEEEEE)
        bw(c2m,0xFFEEEEEE)
        bw(menu1mm,0xFFEEEEEE)
        bw(Sideslipm,0xFFEEEEEE)
        bw(c1m,0xFFEEEEEE)
        c3m.onClick=function()
          LuaEditor.selectAll()
        end
        c2m.onClick=function()
          LuaEditor.cut()
        end
        c1m.onClick=function()
          LuaEditor.copy()
        end
        menu1mm.onClick=function()
          LuaEditor.paste()
        end
        Sideslipm.onClick=function()
          LuaEditor.selectText(false);
          sxbt()
          yyt()
          menu1.onClick=function()
            wjml3=wjml4:match('【#@(.-)@#】')
            if File(wjml3).isFile() then
              bcc(wjml3)
              szs(wjml2,wjml3,LuaEditor.getCaretPosition())
             else
            end
            if Drawer.isDrawerOpen(you) then
              Drawer.closeDrawer(you)
             else
              Drawer.openDrawer(you)
            end
          end

          menu1.onLongClick=function()
            if grid1.Visibility==0 then
              grid2.Visibility=8
              grid3.Visibility=8
              grid6.Visibility=8
              grid7.Visibility=8
              grid1.Visibility=8
              grid8.Visibility=8
              srr1.setRotationX(0)
              srr8.setRotationX(0)
              srr7.setRotationX(0)
              srr6.setRotationX(0)
              srr4.setRotationX(0)
              srr2.setRotationX(0)
             else
              grid2.Visibility=0
              grid3.Visibility=0
              grid6.Visibility=0
              grid7.Visibility=0
              grid1.Visibility=0
              grid8.Visibility=0
              srr1.setRotationX(180)
              srr8.setRotationX(180)
              srr7.setRotationX(180)
              srr6.setRotationX(180)
              srr4.setRotationX(180)
              srr2.setRotationX(180)
            end
            return true
          end
        end
       else

        wjff=activity.getLuaDir().."/res/set216.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="true" then
          Suspension7.setVisibility(View.GONE)
          Suspension8.setVisibility(View.GONE)
          Suspension71.BackgroundColor=tonumber(qys("BackgroundColor"));
        end

        if type(LuaEditorMonitor2)=="function" then
          LuaEditorMonitor2()
        end

        yyt()
        sxbt()

        menu1.onLongClick=function()
          if grid1.Visibility==0 then
            grid2.Visibility=8
            grid3.Visibility=8
            grid6.Visibility=8
            grid7.Visibility=8
            grid1.Visibility=8
            grid8.Visibility=8
            srr1.setRotationX(0)
            srr8.setRotationX(0)
            srr7.setRotationX(0)
            srr6.setRotationX(0)
            srr4.setRotationX(0)
            srr2.setRotationX(0)
           else
            grid2.Visibility=0
            grid3.Visibility=0
            grid6.Visibility=0
            grid7.Visibility=0
            grid1.Visibility=0
            grid8.Visibility=0
            srr1.setRotationX(180)
            srr8.setRotationX(180)
            srr7.setRotationX(180)
            srr6.setRotationX(180)
            srr4.setRotationX(180)
            srr2.setRotationX(180)
          end
          return true
        end

        menu1.onClick=function()
          wjml3=wjml4:match('【#@(.-)@#】')
          if File(wjml3).isFile() then
            bcc(wjml3)
            szs(wjml2,wjml3,LuaEditor.getCaretPosition())
           else
          end
          if Drawer.isDrawerOpen(you) then
            Drawer.closeDrawer(you)
           else
            Drawer.openDrawer(you)
          end
        end
      end
    end

    if RemoveDrawerLayoutOP==false then
      lua1.OnSelectionChangedListener=function(status,Start,End)
        if status == true then
          if type(LuaEditorMonitor3)=="function" then
            LuaEditorMonitor3()
          end
          huadong5.scrollEnabled=false
          local Str = String(lua1.Text)
          local content = Str.substring(Start,End)
          activity.ActionBar.setDisplayShowCustomEnabled(true)
          activity.ActionBar.setCustomView(loadlayout(jql))
          activity.ActionBar.setBackgroundDrawable(ColorDrawable(tonumber(qys("BackgroundColor"))))
          activity.ActionBar.setElevation(0)
          bw(c3m,0xFFEEEEEE)
          bw(c2m,0xFFEEEEEE)
          bw(menu1mm,0xFFEEEEEE)
          bw(Sideslipm,0xFFEEEEEE)
          bw(c1m,0xFFEEEEEE)
          c3m.onClick=function()
            lua1.selectAll()
          end
          c2m.onClick=function()
            lua1.cut()
          end
          c1m.onClick=function()
            lua1.copy()
          end
          menu1mm.onClick=function()
            lua1.paste()
          end
          Sideslipm.onClick=function()
            LuaEditor.selectText(false);
            sxbt()
            yyt()

            menu1.onLongClick=function()
              if grid1.Visibility==0 then
                grid2.Visibility=8
                grid3.Visibility=8
                grid6.Visibility=8
                grid7.Visibility=8
                grid1.Visibility=8
                grid8.Visibility=8
                srr1.setRotationX(0)
                srr8.setRotationX(0)
                srr7.setRotationX(0)
                srr6.setRotationX(0)
                srr4.setRotationX(0)
                srr2.setRotationX(0)
               else
                grid2.Visibility=0
                grid3.Visibility=0
                grid6.Visibility=0
                grid7.Visibility=0
                grid1.Visibility=0
                grid8.Visibility=0
                srr1.setRotationX(180)
                srr8.setRotationX(180)
                srr7.setRotationX(180)
                srr6.setRotationX(180)
                srr4.setRotationX(180)
                srr2.setRotationX(180)
              end
              return true
            end

            menu1.onClick=function()
              wjml3=wjml4:match('【#@(.-)@#】')
              if File(wjml3).isFile() then
                bcc(wjml3)
                szs(wjml2,wjml3,LuaEditor.getCaretPosition())
               else
              end
              if Drawer.isDrawerOpen(you) then
                Drawer.closeDrawer(you)
               else
                Drawer.openDrawer(you)
              end
            end
          end
         else
          if type(LuaEditorMonitor4)=="function" then
            LuaEditorMonitor4()
          end
          if RemoveDrawerLayoutOP==false then
            huadong5.scrollEnabled=true
          end

          yyt()
          sxbt()

          menu1.onLongClick=function()
            if grid1.Visibility==0 then
              grid2.Visibility=8
              grid3.Visibility=8
              grid6.Visibility=8
              grid7.Visibility=8
              grid1.Visibility=8
              grid8.Visibility=8
              srr1.setRotationX(0)
              srr8.setRotationX(0)
              srr7.setRotationX(0)
              srr6.setRotationX(0)
              srr4.setRotationX(0)
              srr2.setRotationX(0)
             else
              grid2.Visibility=0
              grid3.Visibility=0
              grid6.Visibility=0
              grid7.Visibility=0
              grid1.Visibility=0
              grid8.Visibility=0
              srr1.setRotationX(180)
              srr8.setRotationX(180)
              srr7.setRotationX(180)
              srr6.setRotationX(180)
              srr4.setRotationX(180)
              srr2.setRotationX(180)
            end
            return true
          end

          menu1.onClick=function()
            wjml3=wjml4:match('【#@(.-)@#】')
            if File(wjml3).isFile() then
              bcc(wjml3)
              szs(wjml2,wjml3,LuaEditor.getCaretPosition())
             else
            end
            if Drawer.isDrawerOpen(you) then
              Drawer.closeDrawer(you)
             else
              Drawer.openDrawer(you)
            end
          end
        end
      end
    end

    bqq(LuaEditor)
    bss(LuaEditor)

    u3=activity.getLuaDir().."/res/set5.LY"
    fyy=io.open(u3):read("*a")
    for fha1 in fyy:gmatch('(.-) ') do
      uoo=math.random(0,10000000)
      uio="aa"..uoo
      if fha1=="Fun" then
        button={
          TextView;
          textColor=bjzt();
          text=fha1;
          gravity="center";
          id=uio;
          textSize="14sp";
          layout_height="-1";
          layout_width="45dp";
        };
       else
        button={
          TextView;
          textColor=bjzt();
          text=fha1;
          gravity="center";
          id=uio;
          textSize="14sp";
          layout_height="-1";
          layout_width="40dp";
        };
      end
      m=loadlayout(button)
      fhhh.addView(m)
      function m.onClick(v)
        n=v.Text
        if n=="Fun" then
          LuaEditor.paste("function")
         elseif n=="↹" then
          LuaEditor.paste("	")
         elseif n=="(" then
          LuaEditor.paste("(")
          --LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="←" then
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="→" then
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()+1))
         elseif n=="\"" then
          LuaEditor.paste("\"")
          --LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="[" then
          LuaEditor.paste("[")
          --LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="{" then
          LuaEditor.paste("{")
          --LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="'" then
          LuaEditor.paste("'")
          --LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         else
          if type(onBottomSymbol)=="function" then
            onBottomSymbol(tostring(n))
           else
            LuaEditor.paste(n)
          end
        end
      end

      function m.onLongClick(v)
        n=v.Text
        if n=="Fun" then
          LuaEditor.paste("function")
         elseif n=="↹" then
          LuaEditor.paste("		")
         elseif n=="(" then
          LuaEditor.paste("()")
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="←" then
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-2))
         elseif n=="→" then
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()+2))
         elseif n=="\"" then
          LuaEditor.paste("\"\"")
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="[" then
          LuaEditor.paste("[]")
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="{" then
          LuaEditor.paste("{}")
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="=" then
          LuaEditor.paste("==")
         elseif n=="." then
          LuaEditor.paste("..")
         elseif n=="," then
          LuaEditor.paste(",,")
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         elseif n=="-" then
          LuaEditor.paste("--")
         elseif n=="<" then
          LuaEditor.paste("<=")
         elseif n==">" then
          LuaEditor.paste(">=")
         elseif n=="~" then
          LuaEditor.paste("~=")
         elseif n=="!" then
          LuaEditor.paste("!=")
         elseif n=="'" then
          LuaEditor.paste("''")
          LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
         else
          if type(onLongBottomSymbol)=="function" then
            onLongBottomSymbol(tostring(n))
           else
            LuaEditor.paste(n..n)
          end
        end
        return true
      end
      bw(m)
    end

    function onResult(name,...)
      wjh=io.open(lj.."/init.lua"):read("*a")
      btt=wjh:match('%appname="(.-)"')
      AndTitle.setText(btt)
      a,b,c=...
      if c=="0" then
        SnackerBar.build()
        :msg(a)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
        if lj6.Text==lj.."/init.lua" then
          LuaEditor.setText(b)
          local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
          if AUTOF=="true" then
            LuaEditor.format()
          end
          io.open(lj.."/init.lua","w"):write(b):close()
         else
          io.open(lj.."/init.lua","w"):write(b):close()
        end
       elseif c=="1" then
        LuaEditor.selectAll()
        LuaEditor.paste(b)
        local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
        if AUTOF=="true" then
          LuaEditor.format()
        end
        SnackerBar.build()
        :msg(a)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif c=="10" then
        LuaEditor.paste(b)
        local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
        if AUTOF=="true" then
          LuaEditor.format()
        end
        SnackerBar.build()
        :msg(a)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif c=="2" then
        SnackerBar.build()
        :msg(a)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif c=="更新主题" then

        wjff=activity.getLuaDir().."/res/set119.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="false" then
          Suspension2.Visibility=8
          Suspension12.Visibility=8
          Suspension7.Visibility=8
         else
          Suspension2.Visibility=0
          Suspension12.Visibility=0
          Suspension7.Visibility=0
        end

        wjff=activity.getLuaDir().."/res/set213.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="false" then
          Suspension6.Visibility=8
         else
          Suspension6.Visibility=0
        end

        wjff=activity.getLuaDir().."/res/set209.LY"
        hjff=io.open(wjff):read("*a")
        if hjff=="false" then
          Suspension4.Visibility=8
         else
          Suspension4.Visibility=0
        end

        if File(activity.getLuaDir().."/theme").isFile() then
          os.remove(activity.getLuaDir().."/theme")
          activity.recreate()
        end
       elseif c=="导入资源" then
        AlertDialog.Builder(this)
        .setTitle(getLS("L_Import_the_resource_1"))
        .setMessage(getLS("L_The_name_of_the").."："..b.."\n"..getLS("L_The_size_of_the").."："..GetFileSize(a).."\n"..getLS("L_The_path").."："..a)
        .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
            if File(lj7.Text..b).isFile() then
              AlertDialog.Builder(this)
              .setTitle(getLS("L_Import_the_resource_1"))
              .setMessage(getLS("L_The_resource_has_been_in_existence"))
              .setPositiveButton(getLS("L_Cover"),{onClick=function(v)
                  if LuaUtil.copyDir(a,lj7.Text..b) then
                    SnackerBar.build()
                    :msg(getLS("L_Import_success"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                   else
                    SnackerBar.build()
                    :msg(getLS("L_Import_failure"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                  end
                end})
              .setNegativeButton(getLS("L_Cancel"),nil)
              .show()
             else
              if LuaUtil.copyDir(a,lj7.Text..b) then
                SnackerBar.build()
                :msg(getLS("L_Import_success"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                SnackerBar.build()
                :msg(getLS("L_Import_failure"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
              end
            end
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .show()
       elseif c=="注销" then
        activity.recreate()
       else
        SnackerBar.build()
        :msg(c)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
      end
      sxbt()
      wj=activity.getLuaDir().."/res/set121.LY"
      hj=io.open(wj):read("*a")
      if hj=="true" then
        bql1.setVisibility(View.VISIBLE)
       else
        bql1.setVisibility(View.GONE)
      end
    end

    function dkk()
      local PluginPath="res1"
      local PluginLayout={
        LinearLayout;
        layout_width="fill";
        layout_height="fill";
        backgroundColor=DialogColor;
        orientation="vertical";
        {
          TextView;
          layout_width="fill";
          textSize="14sp";
          paddingTop="8dp";
          paddingLeft="24dp";
          paddingRight="24dp";
          paddingBottom="8dp";
          Text="sdcard";
          textColor=TitleColor,
          id="PluginCP";
        };
        {
          ListView;
          layout_width="match_parent";
          DividerHeight=0;
          layout_height="match_parent";
          id="PluginList";
        };
      };

      local PluginItem={
        LinearLayout;
        layout_height="-2";
        layout_width="-1";
        Gravity="left|center";
        paddingTop="12dp";
        paddingLeft="24dp";
        paddingRight="24dp";
        paddingBottom="12dp";
        {
          ImageView;
          layout_height="24dp";
          layout_width="24dp";
          id="PluginImgae";
          colorFilter=TitleColor;
        };
        {
          TextView;
          layout_width="-1";
          layout_marginLeft="16dp";
          layout_height="-2";
          textSize="14sp";
          textColor=TitleColor,
          Text="sdcard";
          id="PluginFile";
        };
      };

      function PluginOpenFile(file)
        PluginCP.Text=file
        local PluginAdp=LuaAdapter(activity,PluginItem)
        PluginList.setAdapter(PluginAdp)
        PluginAdp.add{PluginFile="../",PluginImgae={src=PluginPath.."/re.png"}}
        ls=File(file).listFiles()
        if ls~=nil then
          ls=luajava.astable(File(file).listFiles())
          table.sort(ls,function(a,b)
            return (a.isDirectory()~=b.isDirectory() and a.isDirectory()) or ((a.isDirectory()==b.isDirectory()) and a.Name<b.Name)
          end)
         else
          ls={}
        end
        for index,content in ipairs(ls) do
          if content.isDirectory() then
            PluginAdp.add{PluginFile=tostring(content.Name).."/",PluginImgae={src=PluginPath.."/folder.png"}}
           else
            if content.isFile() then
              if content.Name:find("%.alp$") then
                PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/box.png"}}
               else
                if content.Name:find("%.apk$") then
                  PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/android.png"}}
                 else
                  if content.Name:find("%.txt$") or content.Name:find("%.bat$") or content.Name:find("%.lua$") or content.Name:find("%.aly$") or content.Name:find("%.java") then
                    PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/zfile.png"}}
                   else
                    if content.Name:find("%.mp3$") or content.Name:find("%.ogg$") then
                      PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/music.png"}}
                     else
                      if content.Name:find("%.img$") or content.Name:find("%.png$") or content.Name:find("%.jpg$") then
                        PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/image.png"}}
                       else
                        if content.Name:find("%.ppt$") then
                          PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/ppt.png"}}
                         else
                          if content.Name:find("%.word$") then
                            PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/word.png"}}
                           else
                            if content.Name:find("%.pdf$") then
                              PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/pdf.png"}}
                             else
                              PluginAdp.add{PluginFile=tostring(content.Name),PluginImgae={src=PluginPath.."/file.png"}}
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end

      function PluginRun()
        local PluginDialog=AlertDialog.Builder(this)
        .setTitle(getLS("L_Open_the_file"))
        .setView(loadlayout(PluginLayout))
        .show()
        PluginOpenFile(lj7.Text)
        PluginList.onItemClick=function(l,v,p,s)
          if v.Tag.PluginFile.Text=="../" then
            if PluginCP.Text~=getProjectPath().."/" and PluginCP.Text~=getProjectPath() then
              lj7.Text=tostring(File(PluginCP.Text).getParentFile()).."/"
              PluginOpenFile(lj7.Text)
            end
           else
            if File(PluginCP.Text..v.Tag.PluginFile.Text).isDirectory()==true then
              lj7.Text=PluginCP.Text..v.Tag.PluginFile.Text
              PluginOpenFile(lj7.Text)
             else
              if v.Tag.PluginFile.Text:find("%.lua$") or v.Tag.PluginFile.Text:find("%.aly$") or v.Tag.PluginFile.Text:find("%.txt$") or v.Tag.PluginFile.Text:find("%.java") then
                jj88=io.open(tostring(PluginCP.Text..v.Tag.PluginFile.Text)):read("*a")

                if string.byte(jj88)==0x1b then
                  SnackerBar.build()
                  :msg(getLS("L_The_file_has_been_compiled"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                 else
                  openLuaFile(PluginCP.Text..v.Tag.PluginFile.Text)
                end
               elseif v.Tag.PluginFile.Text:find("%.img$") or v.Tag.PluginFile.Text:find("%.png$") or v.Tag.PluginFile.Text:find("%.jpg$") then
                activity.newActivity("main28",{PluginCP.Text..v.Tag.PluginFile.Text})
               else
                AlertDialog.Builder(this)
                .setTitle(getLS("L_Prompt"))
                .setMessage(getLS("L_Temporary_does_not_support_open_the_file"))
                .setPositiveButton(getLS("L_Open_the"),{onClick=function(v1)
                    openLuaFile(PluginCP.Text..v.Tag.PluginFile.Text)
                  end})
                .setNegativeButton(getLS("L_Cancel"),nil)
                .show()
              end
              PluginDialog.hide()
            end
          end
        end
        PluginList.onItemLongClick=function(p,v,i,s)
          if v.Tag.PluginFile.Text=="../" or PluginCP.Text..v.Tag.PluginFile.Text==glj().."main.lua" or PluginCP.Text..v.Tag.PluginFile.Text==glj().."init.lua" then
            return true
           else
            if File(PluginCP.Text..v.Tag.PluginFile.Text).isFile() then
              AlertDialog.Builder(this)
              .setTitle(getLS("L_Delete_the_file"))
              .setMessage(getLS("L_Sure_to_delete_5").." "..PluginCP.Text..v.Tag.PluginFile.Text.." "..getLS("L_The_file_5"))
              .setPositiveButton(getLS("L_Determine"),{onClick=function(v9)
                  if os.remove(PluginCP.Text..v.Tag.PluginFile.Text) then
                    SnackerBar.build()
                    :msg(getLS("L_Delete_the_success"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                   else
                    SnackerBar.build()
                    :msg(getLS("L_Delete_failed"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                  end
                  PluginOpenFile(lj7.Text)
                end})
              .setNegativeButton(getLS("L_Cancel"),nil)
              .setNeutralButton(getLS("L_Rename"),{onClick=function()
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
                      layout_marginLeft="10dp",
                      layout_marginRight="10dp",
                      layout_width="match_parent";
                      layout_gravity="center",
                      text=getLS("L_Enter_a_new_file_name");
                    };
                    {
                      EditText;
                      layout_marginTop="5dp";
                      layout_marginLeft="10dp",
                      layout_marginRight="10dp",
                      layout_width="match_parent";
                      layout_gravity="center",
                      id="edit";
                      textSize="16sp",
                    };
                  };

                  AlertDialog.Builder(this)
                  .setTitle(getLS("L_Rename_the_file"))
                  .setView(loadlayout(InputLayout))
                  .setPositiveButton(getLS("L_Rename"),{onClick=function(v1)
                      if os.execute("mv "..PluginCP.Text..v.Tag.PluginFile.Text.." "..PluginCP.Text.."/"..edit.Text)==true then
                        SnackerBar.build()
                        :msg(getLS("L_Rename_the_success"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                       else
                        SnackerBar.build()
                        :msg(getLS("L_Rename_the_failure"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                      end
                      PluginOpenFile(lj7.Text)
                    end})
                  .setNegativeButton(getLS("L_Cancel"),nil)
                  .show()
                  edit.Text=v.Tag.PluginFile.Text
                  Typew(edit)
                end})
              .show()
             else
              AlertDialog.Builder(this)
              .setTitle(getLS("L_Delete_the_folder"))
              .setMessage(getLS("L_Sure_to_delete_1").." "..PluginCP.Text..v.Tag.PluginFile.Text.." "..getLS("L_Folder_1"))
              .setPositiveButton(getLS("L_Determine"),{onClick=function(v9)
                  if os.execute("rm -r "..PluginCP.Text..v.Tag.PluginFile.Text) then
                    SnackerBar.build()
                    :msg(getLS("L_Delete_the_success"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                   else
                    SnackerBar.build()
                    :msg(getLS("L_Delete_failed"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                  end
                  PluginOpenFile(lj7.Text)
                end})
              .setNegativeButton(getLS("L_Cancel"),nil)
              .setNeutralButton(getLS("L_Rename"),{onClick=function()
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
                      layout_marginLeft="10dp",
                      layout_marginRight="10dp",
                      layout_width="match_parent";
                      layout_gravity="center",
                      text=getLS("L_Type_a_new_folder_name");
                    };
                    {
                      EditText;
                      layout_marginTop="5dp";
                      layout_marginLeft="10dp",
                      layout_marginRight="10dp",
                      layout_width="match_parent";
                      layout_gravity="center",
                      id="edit";
                      textSize="16sp",
                    };
                  };

                  AlertDialog.Builder(this)
                  .setTitle(getLS("L_Rename_the_folder"))
                  .setView(loadlayout(InputLayout))
                  .setPositiveButton(getLS("L_Rename"),{onClick=function(v1)
                      if os.execute("mv "..PluginCP.Text..v.Tag.PluginFile.Text.." "..PluginCP.Text.."/"..edit.Text)==true then
                        SnackerBar.build()
                        :msg(getLS("L_Rename_the_success"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                       else
                        SnackerBar.build()
                        :msg(getLS("L_Rename_the_failure"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                      end
                      PluginOpenFile(lj7.Text)
                    end})
                  .setNegativeButton(getLS("L_Cancel"),nil)
                  .show()
                  edit.Text=string.sub(v.Tag.PluginFile.Text,1,-2)
                  Typew(edit)
                end})
              .show()
            end
          end
          return true
        end
      end
      PluginRun()
    end

    function uyy(a)
      iio=a:match(lj.."/(.+)")
      iii="ly"..tostring(math.random("100000","9999999999"))
      if a==lj6.Text then
       else
        wjml4=io.open(wjml2):read("*a")
        if wjml4:find(a) then
          lj6.setText(a)
          lj7.setText(tostring(File(a).getParentFile()).."/")
          wjml4=io.open(wjml2):read("*a")
          sxbt()
          wjml3=wjml4:match('【#@(.-)@#】')
          if File(wjml3).isFile() then
            bcc(wjml3)
            szs(wjml2,wjml3,LuaEditor.getCaretPosition())
           else
          end
          szmr(wjml2,wjml3,a)
          wjml4=io.open(wjml2):read("*a")
          luawb(ljnr(a))
          local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
          if AUTOF=="true" then
            LuaEditor.format()
          end
          wm2=wjml4:match("【@@"..a.."@@】#(.-)#§")
          wm3=wjml4:match("【@@"..a.."@@】#"..wm2.."#§(.-)§")
          LuaEditor.setSelection(tonumber(wm2))
          for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
            wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
            wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
            if wjm3==wm3 then
              jaj=_G[wjm3]
              jaj.backgroundColor=tonumber(bjzt())
              jaj1=_G["T1"..wjm3]
              jaj1.setTextColor(tonumber(bjzt()))
             else
              jaj=_G[wjm3]
              jaj.backgroundColor=0x00FFFFFF
              jaj1=_G["T1"..wjm3]
              jaj1.setTextColor(TitleColor1)
            end
          end
         else
          wjml4=io.open(wjml2):read("*a")
          for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
            wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
            wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
            jaj=_G[wjm3]
            jaj.backgroundColor=0x00FFFFFF
            jaj1=_G["T1"..wjm3]
            jaj1.setTextColor(TitleColor1)
          end
          button=
          {
            RelativeLayout;
            layout_width="match_parent";
            layout_height="28dp";
            id="T"..iii,
            {
              LinearLayout;
              layout_width="match_parent";
              orientation="vertical";
              layout_height="match_parent";
              {
                TextView;
                layout_gravity="center";
                layout_width="match_parent";
                layout_weight="1";
                ellipsize="middle";
                maxEms="10";
                singleLine=true;
                layout_marginLeft="5dp";
                layout_marginRight="5dp";
                gravity="center";
                id="T1"..iii,
                text=iio,
                TextColor=tonumber(bjzt());
                layout_height="match_parent";
                onClick=function(v)
                  ggg(v)
                  return true
                end,
              };
              {
                TextView;
                id=iii,
                layout_width="match_parent";
                backgroundColor=tonumber(bjzt());
                layout_height="2dp";
              };
            };
          };
          m=loadlayout(button)
          fhhk.addView(m)
          bw(_G["T1"..iii])
          _G["T1"..iii].onLongClick=function(v)
            ccc(v)
            return true
          end

          wjml4=io.open(wjml2):read("*a")
          ww2="【@@"..a.."@@】#0#§"..iii.."§"
          ww3=wjml4.."\n"..ww2
          wjml4=io.open(wjml2):read("*a")
          io.open(wjml2,"w"):write(ww3):close()
          lj6.setText(a)
          lj7.setText(tostring(File(a).getParentFile()).."/")
          wjml4=io.open(wjml2):read("*a")
          sxbt()
          wjml3=wjml4:match('【#@(.-)@#】')
          if File(wjml3).isFile() then
            bcc(wjml3)
            szs(wjml2,wjml3,LuaEditor.getCaretPosition())
           else
          end
          szmr(wjml2,wjml3,a)
          wjml4=io.open(wjml2):read("*a")
          luawb(ljnr(a))
          local AUTOF=io.open(activity.getLuaDir().."/res/set212.LY"):read("*a")
          if AUTOF=="true" then
            LuaEditor.format()
          end
          wm2=wjml4:match("【@@"..a.."@@】#(.-)#§")
          wm3=wjml4:match("【@@"..a.."@@】#"..wm2.."#§(.-)§")
          LuaEditor.setSelection(tonumber(wm2))
        end
      end
    end

    jc()

    l1={
      RelativeLayout;
      layout_width="-1";
      layout_height="-1";
      backgroundColor=ColorDark("#"..string.sub(qys("BackgroundColor"),3,-1)),
      {
        CardView;
        layout_width="-1";
        backgroundColor=tonumber(qys("BackgroundColor"));
        elevation="0dp";
        layout_marginLeft="10dp";
        layout_marginBottom="10dp";
        layout_marginRight="10dp";
        radius=AndLuaR;
        {
          RelativeLayout;
          layout_width="-2";
          layout_height="-2";
          {
            TextView;
            layout_marginRight="15dp";
            singleLine=true;
            layout_marginTop="8dp";
            textSize="16sp";
            textColor=TitleColor,
            ellipsize="end";
            id="btm";
            layout_marginLeft="8dp";
          };
          {
            TextView;
            layout_width="-1";
            background="#dddddd";
            layout_below="btm";
            layout_marginTop="0dp";
            id="trt";
            layout_height="0";
          };
          {
            TextView;
            MaxLines="2";
            textSize="14sp";
            layout_marginRight="8dp";
            layout_marginTop="0dp";
            layout_below="trt";
            ellipsize="end";
            MaxLines=3,
            id="n";
            layout_marginBottom="8dp";
            layout_marginLeft="8dp";
            textColor=TitleColor1,
          };
        };
      };
    };

    dmbjk={
      RelativeLayout;
      layout_width="-1";
      layout_height="-2";
      {
        RelativeLayout;
        id="ahhk";
        layout_width="-1";
        layout_height="40dp";
        {
          TextView;
          layout_centerInParent="true";
          textSize="18sp";
          id="jjll";
          singleLine=true;
          textColor=TitleColor,
        };
      };
      {
        LuaEditor;
        layout_width="-1";
        layout_margin="5dp";
        id="lua1";
        layout_below="ahhk";
        layout_height="-2";
      };
    };

    function g1()
      adp3=LuaAdapter(activity,l1)
    end

    function g2(pa,jkk)
      adp3.add{btm=pa,n=jkk}
    end

    function g3()
      if RemoveDrawerLayoutOP==false then
        list.setAdapter(adp3)
      end
    end

    function g1_note()
      adp_note=LuaAdapter(activity,l1)
    end

    function g2_note(pa,jkk)
      adp_note.add{btm=pa,n=jkk}
    end

    function g3_note()
      if RemoveDrawerLayoutOP==false then
        list_notes.setAdapter(adp_note)
      end
    end

    function sxj(scnr,text)
      require "import"
      call("g1")
      jk=scnr:gmatch('》》\n《《(.-)》》\n')
      for pa in scnr:gmatch('《《(.-)》》\n《《') do
        jkk=jk()
        if pa:find(tostring(text)) or jkk:find(tostring(text)) then
          call("g2",pa,jkk)
        end
      end
      call("g3")
    end
    jc()
    thread(sxj,scnr,"")

    function getNotes(text)
      require "import"
      import "java.io.File"

      call("g1_note")

      local f=File("/sdcard/AndLua/notes/")
      ls=luajava.astable(f.listFiles() or String{})
      table.sort(ls,function(a,b)
        return (a.isDirectory()~=b.isDirectory() and a.isDirectory()) or ((a.isDirectory()==b.isDirectory()) and a.Name<b.Name)
      end)

      if #ls==0 then
       else
        for n=1,#ls do
          if ls[n].isFile() then
            local title=ls[n].Name
            local context=io.open(tostring(ls[n])):read("*a")
            if title:find(tostring(text)) or context:find(tostring(text)) then
              call("g2_note",title,context)
            end
          end
        end
      end
      call("g3_note")
    end

    thread(getNotes,"")

    if RemoveDrawerLayoutOP==false then
      list.onItemClick=function(l,v,p,i)
        huadong5.showPage(1)
        lua1.Text=v.Tag.n.Text
        lua2.Text=v.Tag.btm.Text
      end
      list_notes.onItemClick=function(l,v,p,i)
        huadong5.showPage(1)
        lua1.Text=v.Tag.n.Text
        lua2.Text=v.Tag.btm.Text
      end

      list.onItemLongClick=function(p,v,i,s)
        activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(v.Tag.n.Text)
        SnackerBar.build()
        :msg(getLS("L_Has_been_copied_to_the_clipboard"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
        return true
      end

      list_notes.onItemLongClick=function(p,v,i,s)
        AlertDialog.Builder(this)
        .setTitle(getLS("L_New_notes"))
        .setView(loadlayout(new_notes_Layout))
        .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
            if New_title.Text~="" then
              io.open("/sdcard/AndLua/notes/"..New_title.Text,"w"):write(New_text.Text):close()
              thread(getNotes,"")
            end
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .setNeutralButton(getLS("L_Delete"),{onClick=function()
            os.remove("/sdcard/AndLua/notes/"..v.Tag.btm.Text)
            thread(getNotes,"")
          end})
        .show()
        Typew(New_title)
        New_title.Text=v.Tag.btm.Text
        New_text.Text=v.Tag.n.Text
        return true
      end

    end

    wjh=io.open(lj.."/init.lua"):read("*a")
    btt=wjh:match('%appname="(.-)"')
    AndTitle.setText(btt)

    if RemoveDrawerLayoutOP==false then
      gjc.addTextChangedListener{
        onTextChanged=function(s)
          thread(sxj,scnr,gjc.Text)
        end
      }

      list_notes_e.addTextChangedListener{
        onTextChanged=function(s)
          thread(getNotes,list_notes_e.Text)
        end
      }

    end

    new_notes_Layout={
      LinearLayout;
      orientation="vertical";
      Focusable=true,
      FocusableInTouchMode=true,
      {
        TextView;
        textSize="14sp",
        layout_marginTop="10dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        text=getLS("L_New_title");
      };
      {
        EditText;
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        id="New_title";
      };
      {
        TextView;
        textSize="14sp",
        layout_marginTop="10dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        text=getLS("L_New_text");
      };
      {
        EditText;
        textSize="14sp",
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        id="New_text";
      };
    };

    if RemoveDrawerLayoutOP==false then
      new_note.onClick=function()
        AlertDialog.Builder(this)
        .setTitle(getLS("L_New_notes"))
        .setView(loadlayout(new_notes_Layout))
        .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
            if New_title.Text~="" then
              io.open("/sdcard/AndLua/notes/"..New_title.Text,"w"):write(New_text.Text):close()
              thread(getNotes,"")
            end
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .show()
        Typew(New_title)
        return true
      end

      Drawer.setDrawerListener(DrawerLayout.DrawerListener{
        onDrawerSlide=function(v,i)
          if Drawer.isDrawerOpen(you) then
           else
            if i==1.0 then
              if DrawerLayout_1.Visibility==8 then
                Typew2(list_notes_e)
               else
                Typew2(gjc)
              end
            end
          end
        end})
    end

    menu1.onLongClick=function()
      if grid1.Visibility==0 then
        grid2.Visibility=8
        grid3.Visibility=8
        grid6.Visibility=8
        grid7.Visibility=8
        grid1.Visibility=8
        grid8.Visibility=8
        srr1.setRotationX(0)
        srr8.setRotationX(0)
        srr7.setRotationX(0)
        srr6.setRotationX(0)
        srr4.setRotationX(0)
        srr2.setRotationX(0)
       else
        grid2.Visibility=0
        grid3.Visibility=0
        grid6.Visibility=0
        grid7.Visibility=0
        grid1.Visibility=0
        grid8.Visibility=0
        srr1.setRotationX(180)
        srr8.setRotationX(180)
        srr7.setRotationX(180)
        srr6.setRotationX(180)
        srr4.setRotationX(180)
        srr2.setRotationX(180)
      end
      return true
    end

    menu1.onClick=function()
      if Drawer.isDrawerOpen(you) then
        Drawer.closeDrawer(you)
       else
        Drawer.openDrawer(you)
      end
      wjml3=wjml4:match('【#@(.-)@#】')
      if File(wjml3).isFile() then
        bcc(wjml3)
        szs(wjml2,wjml3,LuaEditor.getCaretPosition())
       else
      end
    end

    function onKeyDown(e)
      local now=os.time()
      if e==4 then
        if Drawer.isDrawerOpen(3) then
          Drawer.closeDrawer(3)
         else
          if Drawer.isDrawerOpen(you) then
            Drawer.closeDrawer(you)
           else
            activity.finish()
          end
        end
      end
      return true
    end

    luawz=[===[require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"

activity.setTheme(R.AndLua1)
activity.setContentView(loadlayout(layout))]===]

    alywz=[===[{
  LinearLayout;
  layout_height="fill";
  layout_width="fill";
};]===]

    function xjjj()
      cjjl={
        LinearLayout;
        orientation="vertical";
        layout_height="fill";
        layout_width="fill";
        {
          LinearLayout;
          FocusableInTouchMode=true;
          layout_width="-1";
          backgroundColor=DialogColor;
          layout_marginLeft="10dp",
          layout_marginRight="10dp",
          layout_height="-2";
          Focusable=true;
          orientation="vertical";
          {
            TextView;
            id="Prompt",
            textSize="15sp",
            layout_marginTop="10dp";
            layout_marginLeft="10dp",
            layout_marginRight="10dp",
            layout_width="match_parent";
            layout_gravity="center",
            textColor=TitleColor,
            text="";
          };
          {
            TextView;
            id="wjlx",
            textSize="0sp",
            layout_width="0dp";
            text="lua";
            layout_height="0dp";
          };
          {
            EditText;
            textSize="16sp",
            layout_gravity="center";
            layout_marginLeft="10dp",
            layout_marginRight="10dp",
            layout_width="match_parent";
            layout_marginTop="5dp";
            textColor=TitleColor,
            id="et";
            hint=getLS("L_The_file_or_folder_name");
          };
          {
            LinearLayout;
            layout_weight="2";
            layout_width="-1";
            orientation="vertical";
            Focusable=true;
            FocusableInTouchMode=true;
            {
              RadioGroup;
              orientation="vertical";
              layout_weight="2";
              layout_width="-1";
              Focusable=true;
              id="q";
              FocusableInTouchMode=true;
              {
                RadioButton;
                id="s0";
                layout_marginTop="5dp";
                layout_gravity="center";
                text="lua";
                textSize="15sp",
                layout_marginLeft="10dp",
                layout_marginRight="10dp",
                layout_width="match_parent";
                Checked="true";
                textColor=TitleColor,
                layout_marginBottom="5dp";
              };
              {
                RadioButton;
                id="s1";
                layout_gravity="center";
                text="aly";
                textSize="15sp",
                layout_marginLeft="10dp",
                layout_marginRight="10dp",
                textColor=TitleColor,
                layout_width="match_parent";
                layout_marginBottom="5dp";
              };
              {
                RadioButton;
                id="s5";
                layout_gravity="center";
                text="java";
                textSize="15sp",
                layout_marginLeft="10dp",
                layout_marginRight="10dp",
                textColor=TitleColor,
                layout_width="match_parent";
                layout_marginBottom="5dp";
              };
              {
                RadioButton;
                id="s2";
                layout_gravity="center";
                text="txt";
                textSize="15sp",
                layout_marginLeft="10dp",
                textColor=TitleColor,
                layout_marginRight="10dp",
                layout_width="match_parent";
                layout_marginBottom="5dp";
              };
              {
                RadioButton;
                id="s3";
                textSize="15sp",
                layout_gravity="center";
                textColor=TitleColor,
                text=getLS("L_Folder");
                layout_marginLeft="10dp",
                layout_marginRight="10dp",
                layout_width="match_parent";
                layout_marginBottom="5dp";
              };
              {
                RadioButton;
                layout_marginLeft="10dp",
                layout_marginRight="10dp",
                layout_width="match_parent";
                textColor=TitleColor,
                layout_gravity="center";
                textSize="15sp";
                text="";
                id="s4";
                layout_marginBottom="10dp";
              };
            };
          };
        };
      };

      AlertDialog.Builder(this)
      .setTitle(getLS("L_The_new_file"))
      .setView(loadlayout(cjjl))
      .setPositiveButton(getLS("L_Create"),{onClick=function(v)
          if et.Text=="" then
            SnackerBar.build()
            :msg(getLS("L_File_name_cannot_be_empty"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           else
            if wjlx.Text=="lua" then
              if File(Prompt.Text..et.Text.."."..wjlx.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(Prompt.Text..et.Text.."."..wjlx.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Creating_a_successful"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                  io.open(Prompt.Text..et.Text.."."..wjlx.Text,"w"):write(luawz):close()
                  uyy(tostring(Prompt.Text..et.Text.."."..wjlx.Text))
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Create_a_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
             elseif wjlx.Text=="aly" then
              if File(Prompt.Text..et.Text.."."..wjlx.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(Prompt.Text..et.Text.."."..wjlx.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Creating_a_successful"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                  io.open(Prompt.Text..et.Text.."."..wjlx.Text,"w"):write(alywz):close()
                  uyy(tostring(Prompt.Text..et.Text.."."..wjlx.Text))
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Create_a_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
             elseif wjlx.Text=="txt" then
              if File(Prompt.Text..et.Text.."."..wjlx.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(Prompt.Text..et.Text.."."..wjlx.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Creating_a_successful"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Create_a_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
             elseif wjlx.Text=="java" then
              if File(Prompt.Text..et.Text.."."..wjlx.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(Prompt.Text..et.Text.."."..wjlx.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Creating_a_successful"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                  io.open(Prompt.Text..et.Text.."."..wjlx.Text,"w"):write("public class "..et.Text.."\n{\n}"):close()
                  uyy(tostring(Prompt.Text..et.Text.."."..wjlx.Text))
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Create_a_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
             elseif wjlx.Text=="2826587025lyy" then
              if File(Prompt.Text..et.Text).isDirectory() then
                SnackerBar.build()
                :msg(getLS("L_The_folder_name_repetition"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(Prompt.Text..et.Text).mkdirs() then
                  SnackerBar.build()
                  :msg(getLS("L_Creating_a_successful"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Create_a_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
             else
              if File(Prompt.Text..et.Text).isFile() then
                SnackerBar.build()
                :msg(getLS("L_The_file_name_to_repeat"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                if File(Prompt.Text..et.Text).createNewFile() then
                  SnackerBar.build()
                  :msg(getLS("L_Creating_a_successful"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                 else
                  SnackerBar.build()
                  :msg(getLS("L_Create_a_failure"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
                end
              end
            end
          end
        end})
      .setNegativeButton(getLS("L_Cancel"),nil)
      .show()
      Prompt.setText(lj7.Text)
      Typew(et)
      s0.onClick=function()
        wjlx.setText("lua")
      end
      s1.onClick=function()
        wjlx.setText("aly")
      end
      s2.onClick=function()
        wjlx.setText("txt")
      end
      s3.onClick=function()
        wjlx.setText("2826587025lyy")
      end
      s4.onClick=function()
        wjlx.setText("")
      end
      s5.onClick=function()
        wjlx.setText("java")
      end
    end
  end

  wj=activity.getLuaDir().."/res/set16.LY"
  wj1=activity.getLuaDir().."/res/str5"
  hj=io.open(wj):read("*a")
  if hj=="true" then
    io.open(wj1,"w"):write(lj):close()
    jzgc()
    item={
      LinearLayout;
      gravity="center";
      layout_width="55dp";
      backgroundColor=tonumber(qys("BackgroundColor"));
      layout_height="55dp";
      {
        CardView;
        radius=AndLuaR;
        CardElevation="0dp";
        layout_width="53dp";
        backgroundColor=ColorDark("#"..string.sub(qys("BackgroundColor"),3,-1)),
        layout_height="53dp";
        {
          LinearLayout;
          gravity="center";
          orientation="vertical";
          layout_width="fill";
          layout_height="fill";
          {
            ImageView;
            id="img";
            layout_width="22dp";
            layout_height="22dp";
            layout_marginBottom="1dp";
            scaleType="fitXY";
            colorFilter=TitleColor1;
          };
          {
            TextView;
            id="bt";
            textColor=TitleColor1,
            textSize="12sp";
            ellipsize="end";
          };
        };
      };
    };

    item1={
      LinearLayout;
      gravity="center";
      layout_width="55dp";
      backgroundColor=tonumber(qys("BackgroundColor")),
      layout_height="55dp";
      {
        CardView;
        radius=AndLuaR;
        CardElevation="0dp";
        layout_width="53dp";
        backgroundColor=ColorDark("#"..string.sub(qys("BackgroundColor"),3,-1)),
        layout_height="53dp";
        {
          LinearLayout;
          gravity="center";
          orientation="vertical";
          layout_width="fill";
          layout_height="fill";
          {
            ImageView;
            id="img";
            layout_width="22dp";
            layout_height="22dp";
            layout_marginBottom="3dp";
            scaleType="fitXY";
            colorFilter=TitleColor1;
          };
          {
            TextView;
            id="bt";
            TextColor=TitleColor1;
            textSize="11sp";
            ellipsize="end";
          };
        };
      };
    };

    data={}
    adp=LuaAdapter(activity,data,item)
    adp.add{img="res/Metrial352.png",bt=getLS("L_New")}
    adp.add{img="res/Metrial48.png",bt=getLS("L_Open_the")}
    adp.add{img="res/undo1.png",bt=getLS("L_Redo")}
    adp.add{img="res/Metrial205.png",bt=getLS("L_Formatting")}
    grid1.Adapter=adp

    data1={}
    adp1=LuaAdapter(activity,data1,item)
    adp1.add{img="res/Metrial363.png",bt=getLS("L_Check_the_wrong")}
    adp1.add{img="res/Metrial499.png",bt=getLS("L_Analysis_of_the")}
    adp1.add{img="res/Metrial384.png",bt=getLS("L_Save")}
    adp1.add{img="res/Metrial48.png",bt=getLS("L_Compile")}
    grid2.Adapter=adp1

    data2={}
    adp2=LuaAdapter(activity,data2,item)
    adp2.add{img="res/Metrial822.png",bt=getLS("L_Packaging")}
    adp2.add{img="res/Metrial352.png",bt=getLS("L_The_backup")}
    adp2.add{img="res/Metrial441.png",bt=getLS("L_Attribute")}
    adp2.add{img="res/Metrial100.png",bt=getLS("L_The_log")}
    adp2.add{img="res/Metrial778.png",bt=getLS("L_Navigation")}
    grid3.Adapter=adp2

    data3={}
    adp3=LuaAdapter(activity,data3,item1)
    adp3.add{img="res/Metrial322.png",bt=getLS("L_Chinese_function")}
    adp3.add{img="res/Metrial322.png",bt=getLS("L_The_tutorial_manual")}
    grid6.Adapter=adp3

    data4={}
    adp4=LuaAdapter(activity,data4,item1)
    adp4.add{img="res/Metrial491.png",bt=getLS("L_Material_warehouse")}
    adp4.add{img="res/Metrial367.png",bt=getLS("L_A_key_to_replace")}
    adp4.add{img="res/Metrial915.png",bt=getLS("L_Simulation_to_submit")}
    adp4.add{img="res/Metrial415.png",bt=getLS("L_The_color_reference")}
    adp4.add{img="res/Metrial822.png",bt=getLS("L_APK_extract")}
    adp4.add{img="res/Metrial225.png",bt=getLS("L_The_palette")}
    adp4.add{img="res/Metrial26.png",bt=getLS("L_Import_the_resource")}
    adp4.add{img="res/Metrial367.png",bt=getLS("L_Characters_to_replace")}
    adp4.add{img="res/Metrial367.png",bt=getLS("L_Search_character")}
    adp4.add{img="res/Metrial473.png",bt=getLS("L_Jump_to_specify_rows")}
    adp4.add{img="res/Metrial692.png",bt=getLS("L_Layout_of_the_assistant")}
    adp4.add{img="res/Metrial765.png",bt=getLS("L_Remove_the_label")}
    grid7.Adapter=adp4


    grid2.Visibility=8
    grid3.Visibility=8
    grid6.Visibility=8
    grid7.Visibility=8
    grid8.Visibility=8

    srr1.setRotationX(180)

    che1.onClick=function()
      if grid1.Visibility==0 then
        srr1.setRotationX(0)
        grid1.Visibility=8
       else
        srr1.setRotationX(180)
        grid1.Visibility=0
      end
    end

    che2.onClick=function()
      if grid2.Visibility==0 then
        srr2.setRotationX(0)
        grid2.Visibility=8
       else
        srr2.setRotationX(180)
        grid2.Visibility=0
      end
    end

    che3.onClick=function()
      if grid3.Visibility==0 then
        srr4.setRotationX(0)
        grid3.Visibility=8
       else
        srr4.setRotationX(180)
        grid3.Visibility=0
      end
    end

    che4.onClick=function()
      if grid6.Visibility==0 then
        srr6.setRotationX(0)
        grid6.Visibility=8
       else
        srr6.setRotationX(180)
        grid6.Visibility=0
      end
    end

    che5.onClick=function()
      if grid7.Visibility==0 then
        srr7.setRotationX(0)
        grid7.Visibility=8
       else
        srr7.setRotationX(180)
        grid7.Visibility=0
      end
    end


    che8.onClick=function()
      if grid8.Visibility==0 then
        srr8.setRotationX(0)
        grid8.Visibility=8
       else
        srr8.setRotationX(180)
        grid8.Visibility=0
      end
    end

    grid8.onItemClick=function(l,v,p,i)
      Drawer.closeDrawer(you)
      app={}
      loadfile(activity.getLuaDir().."/plugin/"..Plug[i].."/init.lua","bt",app)()
      local LuaCode=io.open(activity.getLuaDir().."/plugin/"..Plug[i].."/main.lua"):read("*a")
      function RunLuaCode()
        loadstring(LuaCode)()
      end
      if pcall(RunLuaCode) then
       else
        AlertDialog.Builder(this)
        .setTitle(getLS("L_Prompt"))
        .setMessage("【"..tostring(app.PluginName).."】"..getLS("L_Plugin_run_error"))
        .setPositiveButton(getLS("L_Determine"),nil)
        .show()
      end
    end

    grid8.onItemLongClick=function(l,v,p,i)
      AlertDialog.Builder(this)
      .setTitle(getLS("L_Unload_the_plugin"))
      .setMessage("【"..tostring(app.PluginName).."】"..getLS("L_Sure_uninstall_plugins").."？")
      .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
          if os.execute("rm -r "..activity.getLuaDir().."/plugin/"..Plug[i]) then
            SnackerBar.build()
            :msg(getLS("L_Uninstall_the_success"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           else
            SnackerBar.build()
            :msg(getLS("L_Unloading_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end
          Plugin0()
        end})
      .setNeutralButton(getLS("L_Plugin_information"),{onClick=function(v)
          bttgfss=math.random(11111111,88888888)
          hrbeeb=activity.getLuaDir().."/res/"..bttgfss..".lua"
          if LuaUtil.copyDir(activity.getLuaDir().."/plugin/"..Plug[i].."/init.lua",hrbeeb)==true then
            import ("res."..bttgfss)
            os.remove(hrbeeb)
            ConText=getLS("L_The_name_of_the").."："..tostring(PluginName).."\n"..getLS("L_Version").."："..tostring(Edition).."\n"..getLS("L_The_author").."："..tostring(Author).."\n"..getLS("L_Since_the_launch").."："..tostring(AutoStart)
            AlertDialog.Builder(this)
            .setTitle(getLS("L_Plugin_information"))
            .setMessage(ConText)
            .setPositiveButton(getLS("L_Determine"),nil)
            .show()
          end
        end})
      .setNegativeButton(getLS("L_To_view_the_document"),{onClick=function(v)
          if File(activity.getLuaDir().."/plugin/"..Plug[i].."/help.ap").isFile()==true then
            Explain=tostring(io.open(activity.getLuaDir().."/plugin/"..Plug[i].."/help.ap"):read("*a"))
           else
            Explain=getLS("L_Temporarily_no_documentation").."~"
          end
          AlertDialog.Builder(this)
          .setTitle(tostring(app.PluginName))
          .setMessage(tostring(Explain))
          .setPositiveButton(getLS("L_Determine"),nil)
          .show()
        end})
      .show()

      return true
    end

    grid1.onItemClick=function(l,v,p,i)
      Drawer.closeDrawer(you)
      if v.Tag.bt.Text==getLS("L_New") then
        xjjj()
       elseif v.Tag.bt.Text==getLS("L_Open_the") then
        dkk()
       elseif v.Tag.bt.Text==getLS("L_Redo") then
        LuaEditor.redo()
       elseif v.Tag.bt.Text==getLS("L_Formatting") then
        LuaEditor.format()
      end
    end

    grid2.onItemClick=function(l,v,p,i)
      Drawer.closeDrawer(you)
      if v.Tag.bt.Text==getLS("L_Check_the_wrong") then
        luapath=lj6.Text
        local src=LuaEditor.getText()
        src=src.toString()
        if luapath:find("%.aly$") then
          src="return "..src
        end
        local _,data=loadstring(src)
        if data then
          local _,_,line,data=data:find(".(%d+).(.+)")
          LuaEditor.gotoLine(tonumber(line))
          SnackerBar.build()
          :msg(getLS("L_The_first")..line..getLS("L_Line")..data)
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
          return true
         elseif b then
         else
          SnackerBar.build()
          :msg(getLS("L_No_mistakes_in_grammar"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
        end
       elseif v.Tag.bt.Text==getLS("L_Analysis_of_the") then
        activity.newActivity("main2",{lj.."/",lj6.Text})
       elseif v.Tag.bt.Text==getLS("L_Save") then
        io.open(lj6.Text,"w"):write(LuaEditor.Text):close()
        SnackerBar.build()
        :msg(getLS("L_The_saved"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif v.Tag.bt.Text==getLS("L_Compile") then
        jdd=lj.."/"
        ljj=lj6.Text
        local jdd,str=console.build(ljj)
        if jdd then
          SnackerBar.build()
          :msg(getLS("L_Compile_successfully")..jdd)
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
         else
          SnackerBar.build()
          :msg(getLS("L_Compile_error"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
        end
      end
    end

    backa=activity.getLuaDir().."/res/background.time"
    back2=io.open(backa):read("*a")

    bc5=activity.getLuaDir().."/res/set201.LY"
    bc6=io.open(bc5):read("*a")

    function backups9()
      task(5000,function()
        beif(true)
        backups8()
      end)
    end

    function backups8()
      task(tointeger(back2),function()
        backups9()
        SnackerBar.build()
        :msg(getLS("L_Start_backup_automatically_after_5_seconds"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
      end)
    end

    if back2!="0" then
      backups8()
    end

    bccrr=0

    function bc9()
      task(1000,function()
        dhl0.setVisibility(View.GONE)
        luapath=lj6.Text
        local src=LuaEditor.getText()
        src=src.toString()
        if luapath:find("%.aly$") then
          src="return "..src
        end
        local _,data=loadstring(src)
        if data then
          local _,_,line,data=data:find(".(%d+).(.+)")
          dhl0.setVisibility(View.VISIBLE)
          bccn.Text=getLS("L_The_first")..line..getLS("L_Line")..data
          bccrr=line
         elseif b then
         else
        end
        bc8()
      end)
    end

    function bc8()
      task(1,function()
        bc9()
      end)
    end

    dhl0.setVisibility(View.GONE)

    if bc6!="false" then
      bc8()
    end

    dhl0.onClick=function()
      LuaEditor.gotoLine(tonumber(bccrr))
    end

    dhl0.onLongClick=function()
      AlertDialog.Builder(this).setTitle(getLS("L_An_error_prompt"))
      .setMessage(bccn.Text)
      .setPositiveButton(getLS("L_Determine"),nil)
      .show();
      return true
    end

    grid3.onItemClick=function(l,v,p,i)
      Drawer.closeDrawer(you)
      if v.Tag.bt.Text==getLS("L_Packaging") then
        if type(onBin)=="function" then
          onBin()
         else
          bin(lj.."/")
        end
       elseif v.Tag.bt.Text==getLS("L_Navigation") then
        local str = LuaEditor.getText().toString()
        local fs = {}
        indexs = {}
        for s, i in str:gmatch("([%w%._]* *=? *function *[%w%._]*%b())()") do
          i = utf8.len(str, 1, i) - 1
          s = s:gsub("^ +", "")
          table.insert(fs, s)
          table.insert(indexs, i)
          fs[s] = i
        end
        AlertDialog.Builder(this)
        .setTitle(getLS("L_Navigation"))
        .setItems(fs,{onClick=function(l,v)
            LuaEditor.setSelection(indexs[v + 1])
            return true
          end})
        .show()
       elseif v.Tag.bt.Text==getLS("L_The_backup") then
        beif()
       elseif v.Tag.bt.Text==getLS("L_Attribute") then
        io.open(lj6.Text,"w"):write(LuaEditor.Text):close()
        activity.newActivity("main4",{lj})
       elseif v.Tag.bt.Text==getLS("L_The_log") then
        activity.newActivity("logcat",{lj})
      end
    end

    grid6.onItemClick=function(l,v,p,i)
      Drawer.closeDrawer(you)
      if v.Tag.bt.Text==getLS("L_Chinese_function") then
        activity.newActivity("main31")
       elseif v.Tag.bt.Text==getLS("L_The_tutorial_manual") then
        activity.newActivity("main25")
      end
    end

    function GetFileSize(path)
      import "java.io.File"
      import "android.text.format.Formatter"
      size=File(tostring(path)).length()
      Sizes=Formatter.formatFileSize(activity, size)
      return Sizes
    end

    grid7.onItemClick=function(l,v,p,i)
      Drawer.closeDrawer(you)
      if v.Tag.bt.Text==getLS("L_Material_warehouse") then
        activity.newActivity("main47")
       elseif v.Tag.bt.Text==getLS("L_Remove_the_label") then
        uyy(gwj())
        for wjm1 in wjml4:gmatch('【@@(.-)@@】') do
          wjm2=wjml4:match("【@@"..wjm1.."@@】#(.-)#§")
          wjm3=wjml4:match("【@@"..wjm1.."@@】#"..wjm2.."#§(.-)§")
          if wjm3=="ly1" then
           else
            fhhk.removeView(_G["T"..wjm3])
          end
        end
        aaww1="【#@"..gwj().."@#】"
        aaww2="【@@"..gwj().."@@】#0#§ly1§"
        aaww3=aaww1.."\n"..aaww2
        io.open(wjml2,"w"):write(aaww3):close()
       elseif v.Tag.bt.Text==getLS("L_A_key_to_replace") then
        activity.newActivity("main50")
       elseif v.Tag.bt.Text==getLS("L_Simulation_to_submit") then
        activity.newActivity("main51")
       elseif v.Tag.bt.Text==getLS("L_The_color_reference") then
        activity.newActivity("main48")
       elseif v.Tag.bt.Text==getLS("L_APK_extract") then
        activity.newActivity("main55")
       elseif v.Tag.bt.Text==getLS("L_The_palette") then
        yss(getLS("L_The_palette"),"0xFFFFFFFF")
       elseif v.Tag.bt.Text==getLS("L_Import_the_resource") then
        activity.newActivity("file",{"*",nil,true})
       elseif v.Tag.bt.Text==getLS("L_Characters_to_replace") then
        InputLayout={
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
            text=getLS("L_The_original_string")..":";
          };
          {
            EditText;
            layout_marginLeft="10dp",
            layout_marginRight="10dp",
            layout_width="match_parent";
            layout_gravity="center",
            id="edit";
            singleLine=true
          };
          {
            TextView;
            id="Prompt",
            textSize="15sp",
            layout_marginLeft="10dp",
            layout_marginRight="10dp",
            layout_width="match_parent";
            layout_gravity="center",
            text=getLS("L_The_replacement_string")..":";
          };
          {
            EditText;
            layout_marginLeft="10dp",
            layout_marginRight="10dp",
            layout_width="match_parent";
            layout_gravity="center",
            id="edit1";
            singleLine=true
          };
        };
        tc=AlertDialog.Builder(this)
        .setTitle(getLS("L_Substitution_characters"))
        .setView(loadlayout(InputLayout))
        .setPositiveButton(getLS("L_Replace"),{onClick=function(v)
            if LuaEditor.Text:find(edit.Text) then
              SnackerBar.build()
              :msg(getLS("L_Replace_the_success"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
              LuaEditor.selectAll()
              LuaEditor.paste(tostring(string.gsub(LuaEditor.Text,edit.Text,edit1.Text)))
             else
              SnackerBar.build()
              :msg(getLS("L_Without_the_characters_in_the_code"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
            end
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .show()
        Typew(edit)
       elseif v.Tag.bt.Text==getLS("L_Layout_of_the_assistant") then
        wj11=activity.getLuaDir().."/res/set7.LY"
        hj11=io.open(wj11):read("*a")
        wj23=activity.getLuaDir().."/res/set8.LY"
        hj23=io.open(wj23):read("*a")
        wj232=activity.getLuaDir().."/res/set9.LY"
        hj232=io.open(wj232):read("*a")
        activity.newActivity("main56",{glj(),"",hj11,hj23,hj232})
       elseif v.Tag.bt.Text==getLS("L_Search_character") then
        if ssl.Visibility==0 then
          ssl.Visibility=8
         else
          ssl.Visibility=0
          task(500,function()
            Typew2(ssneir)
          end)
        end
       elseif v.Tag.bt.Text==getLS("L_Jump_to_specify_rows") then
        InputLayout={
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
            text=getLS("L_The_number_of_rows")..":";
          };
          {
            EditText;
            layout_marginLeft="10dp",
            layout_marginRight="10dp",
            layout_width="match_parent";
            layout_gravity="center",
            id="edit";
            singleLine=true
          };
        };
        tc=AlertDialog.Builder(this)
        .setTitle(getLS("L_Jump_to_specify_rows"))
        .setView(loadlayout(InputLayout))
        .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
            LuaEditor.gotoLine(tonumber(edit.Text))
          end})
        .setNeutralButton(getLS("L_The_last_line"),{onClick=function(v)
            LuaEditor.gotoLine(99999999999999999999)
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .show()
        Typew(edit)
      end
    end

    bw(shang1,0xFFEEEEEE)

    shang1.onClick=function()
      LuaEditor.findNext(tostring(ssneir.Text))
    end

    ssl.Visibility=8

    tui1.onClick=function()
      activity.finish()
    end

    tui2.onClick=function()
      activity.newActivity("main24")
    end

    Suspension3.onClick=function()
      xjjj()
      return true
    end

    Suspension13.onLongClick=function()
      LuaEditor.format()
      return true
    end

    --getCaretPosition()
    --getSelectionStart()
    --getCaretRow()

    function setLine()
      LuaEditor.gotoLine(LuaEditor.getCaretRow()+1)
      local nowPosition1=LuaEditor.getCaretPosition()
      LuaEditor.gotoLine(LuaEditor.getCaretRow()+2)
      local nowPosition2=LuaEditor.getCaretPosition()
      LuaEditor.setSelection(nowPosition1,nowPosition2-nowPosition1)
    end

    function setLine1()
      LuaEditor.gotoLine(LuaEditor.getCaretRow()+1)
      local nowPosition1=LuaEditor.getCaretPosition()
      LuaEditor.gotoLine(LuaEditor.getCaretRow()+2)
      local nowPosition2=LuaEditor.getCaretPosition()
      LuaEditor.setSelection(nowPosition1,nowPosition2-nowPosition1-1)
    end

    code_pop=PopupMenu(activity,Suspension4)
    code_menu=code_pop.Menu
    code_menu.add(getLS("L_Copy_down")).onMenuItemClick=function(a)
      setLine1()
      LuaEditor.insert(LuaEditor.getSelectionEnd(),"\n"..LuaEditor.getSelectedText())
    end
    code_menu.add(getLS("L_Delete_rows")).onMenuItemClick=function(a)
      setLine()
      LuaEditor.paste("")
      LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-1))
    end
    code_menu.add(getLS("L_Shear_line")).onMenuItemClick=function(a)
      setLine1()
      LuaEditor.cut()
    end
    code_menu.add(getLS("L_Copy_the_line")).onMenuItemClick=function(a)
      setLine1()
      LuaEditor.copy()
    end
    code_menu.add(getLS("L_Select_rows")).onMenuItemClick=function(a)
      setLine1()
    end
    code_menu.add(getLS("L_Comment_lines")).onMenuItemClick=function(a)
      setLine1()
      local code = LuaEditor.getSelectedText()
      if string.sub(String(code).trim(),1,2) == "--" then
        LuaEditor.setSelection(LuaEditor.getSelectionStart() + tointeger(String(String(code).replaceAll("([ ]*).*", "$1")).length()),2)
        LuaEditor.paste("")
        LuaEditor.gotoLine(LuaEditor.getCaretRow()+2)
        local nowPosition2=LuaEditor.getCaretPosition()
        LuaEditor.setSelection(nowPosition2-1)
       else
        LuaEditor.insert(LuaEditor.getSelectionStart() + tointeger(String(String(code).replaceAll("([ ]*).*", "$1")).length()),"--")
        LuaEditor.gotoLine(LuaEditor.getCaretRow()+2)
        local nowPosition2=LuaEditor.getCaretPosition()
        LuaEditor.setSelection(nowPosition2-1)
      end
    end


    aaaa=true

    function Move(id,id2)
      local lastY=0
      local vy=0
      id.onTouch=function(v,e)
        ry=e.getRawY()
        if e.getAction() == MotionEvent.ACTION_DOWN then
          aaaa=false
          vy=ry-e.getY()
          vy2=e.getY()
          lastY=ry
         elseif e.getAction() == MotionEvent.ACTION_MOVE then
          if vy+(ry-lastY)<=activity.getHeight() then
            id2.setY(vy+(ry-lastY)-189)
            if vy+(ry-lastY)<=0 then
              id2.setY(0)
            end
          end
         elseif e.getAction() == MotionEvent.ACTION_UP then
          aaaa=true
        end
        return false
      end
    end

    --[[
    Move(Suspension5,Suspension4)
    Move(Suspension66,Suspension6)
    Move(Suspension77,Suspension7)
    Move(Suspension3,Suspension2)
    Move(Suspension13,Suspension12)
]]

    Suspension5.onClick=function()
      code_pop.show()
      return true
    end

    Suspension66.onLongClick=function()
      LuaEditor.paste()
      return true
    end

    Suspension77.onClick=function()
      if Suspension777.Text=="false"
        LuaEditor.paste("false")
       elseif Suspension777.Text=="true"
        LuaEditor.paste("true")
       elseif Suspension777.Text=="-2"
        LuaEditor.paste("-2")
       elseif Suspension777.Text=="-1"
        LuaEditor.paste("-1")
       elseif Suspension777.Text=="fill"
        LuaEditor.paste("fill")
       elseif Suspension777.Text=="vertical"
        LuaEditor.paste("vertical")
       elseif Suspension777.Text=="horizontal"
        LuaEditor.paste("horizontal")
       elseif Suspension777.Text=="import"
        LuaEditor.paste("import")
       elseif Suspension777.Text=="require"
        LuaEditor.paste("require")
       elseif Suspension777.Text=="Click"
        LuaEditor.paste("onClick")
       elseif Suspension777.Text=="Long"
        LuaEditor.paste("onLongClick")
       elseif String(LuaEditor.getSelectedText()).length()==10 and string.sub(string.upper(LuaEditor.getSelectedText()),1,2)=="0X"
        yss1(getLS("L_The_palette"),LuaEditor.getSelectedText())
       elseif String(LuaEditor.getSelectedText()).length()==7 and string.sub(LuaEditor.getSelectedText(),1,1)=="#"
        yss1(getLS("L_The_palette"),"0XFF"..string.sub(LuaEditor.getSelectedText(),2,-1),true)
       elseif tointeger(Suspension777.Text) != nil
        LuaEditor.paste(Suspension777.Text)
       elseif string.sub(Suspension777.Text,-2,-1)=="dp" or string.sub(Suspension777.Text,-2,-1)=="sp"
        LuaEditor.paste(Suspension777.Text)
      end
    end

    drag_SeekBar.setOnSeekBarChangeListener{
      onProgressChanged=function(v)
        if string.sub(LuaEditor.getSelectedText(),-2,-1)=="dp" or string.sub(LuaEditor.getSelectedText(),-2,-1)=="sp"
          Suspension777.Text=tostring(v.Progress..string.sub(LuaEditor.getSelectedText(),-2,-1))
         else
          Suspension777.Text=tostring(v.Progress)
        end
      end
    }

    local replace_InputLayout={
      LinearLayout;
      orientation="vertical";
      Focusable=true,
      FocusableInTouchMode=true,
      {
        TextView;
        textSize="15sp",
        layout_marginTop="10dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        text=getLS("L_Before_replacement_string");
      };
      {
        EditText;
        layout_marginTop="5dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        id="replace_InputLayout_edit";
      };
      {
        TextView;
        textSize="15sp",
        layout_marginTop="10dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        text=getLS("L_Replacement_string");
      };
      {
        EditText;
        layout_marginTop="5dp";
        layout_marginLeft="10dp",
        layout_marginRight="10dp",
        layout_width="match_parent";
        layout_gravity="center",
        id="replace_InputLayout_edit1";
      };
    };


    code_pop2=PopupMenu(activity,Suspension6)
    code_menu2=code_pop2.Menu
    code_menu2.add(getLS("L_To_uppercase")).onMenuItemClick=function(a)
      LuaEditor.paste(string.upper(LuaEditor.getSelectedText()))
    end
    code_menu2.add(getLS("L_Converted_to_lowercase")).onMenuItemClick=function(a)
      LuaEditor.paste(string.lower(LuaEditor.getSelectedText()))
    end
    code_menu2.add(getLS("L_Replace_the_code")).onMenuItemClick=function(a)
      AlertDialog.Builder(this)
      .setTitle(getLS("L_Replace"))
      .setView(loadlayout(replace_InputLayout))
      .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
          if LuaEditor.getSelectedText():find(replace_InputLayout_edit.Text) then
            SnackerBar.build()
            :msg(getLS("L_Replace_the_success"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
            LuaEditor.paste(tostring(string.gsub(LuaEditor.getSelectedText(),replace_InputLayout_edit.Text,replace_InputLayout_edit1.Text)))
           else
            SnackerBar.build()
            :msg(getLS("L_Without_the_characters_in_the_code"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end
        end})
      .setNegativeButton(getLS("L_Cancel"),nil)
      .show()
      Typew(replace_InputLayout_edit)
    end
    code_menu2.add(getLS("L_Formatting")).onMenuItemClick=function(a)
      LuaEditor1.Text=LuaEditor.getSelectedText()
      LuaEditor1.format()
      LuaEditor.paste(LuaEditor1.Text)
    end
    code_menu2.add(getLS("L_Preview_the_layout_table")).onMenuItemClick=function(a)
      layoutF=lj.."/temporary"..math.random(100000,999999)..".aly"
      xpcall(function()
        assert(loadstring("return "..LuaEditor.getSelectedText()))()
        io.open(layoutF,"w"):write(LuaEditor.getSelectedText()):close()
        wj11=activity.getLuaDir().."/res/set7.LY"
        hj11=io.open(wj11):read("*a")
        wj23=activity.getLuaDir().."/res/set8.LY"
        hj23=io.open(wj23):read("*a")
        wj232=activity.getLuaDir().."/res/set9.LY"
        hj232=io.open(wj232):read("*a")
        activity.newActivity("main56",{glj(),layoutF,hj11,hj23,hj232,true})
      end,
      function()
        os.remove(layoutF)
        SnackerBar.build()
        :msg(getLS("L_The_layout_error"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
      end)
    end
    code_menu2.add(getLS("L_RunCode")).onMenuItemClick=function(a)
      if pcall(function()
          loadstring(LuaEditor.getSelectedText())()
          SnackerBar.build()
          :msg(getLS("L_RunCodeS"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
        end) then
       else
        SnackerBar.build()
        :msg(getLS("L_RunCodeError"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
      end
    end


    function Two(nowPosition1)
      LuaEditor.setSelection(nowPosition1-2,2)
      local text = LuaEditor.getSelectedText()
      if text=="ck" then
        LuaEditor.paste("onClick=function()\n\n return true\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-17)
       elseif text=="pr" then
        LuaEditor.paste("print()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="sm" then
        LuaEditor.paste(":match(\"(.+)\")")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-14)
       elseif text=="sg" then
        LuaEditor.paste("string.gsub(\"\",\"\",\"\")")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-8)
       elseif text=="sf" then
        LuaEditor.paste("string.find(\"\",\"\")")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-5)
       elseif text=="ss" then
        LuaEditor.paste("string.sub(\"\",0,1)")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-6)
       elseif text=="te" then
        LuaEditor.paste("type()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="id" then
        LuaEditor.paste("id=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="la" then
        LuaEditor.paste("layout_above=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lb" then
        LuaEditor.paste("layout_below=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="or" then
        LuaEditor.paste("orientation=\"vertical\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd())
       elseif text=="lw" then
        LuaEditor.paste("layout_width=\"match_parent\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd())
       elseif text=="lh" then
        LuaEditor.paste("layout_height=\"match_parent\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd())
       elseif text=="lg" then
        LuaEditor.paste("layout_gravity=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="gr" then
        LuaEditor.paste("gravity=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="vi" then
        LuaEditor.paste("visibility=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="al" then
        LuaEditor.paste("alpha=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lm" then
        LuaEditor.paste("layout_margin=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="pa" then
        LuaEditor.paste("padding=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="pl" then
        LuaEditor.paste("paddingLeft=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="pt" then
        LuaEditor.paste("paddingTop=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="pr" then
        LuaEditor.paste("paddingRight=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="pb" then
        LuaEditor.paste("paddingButtom=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ra" then
        LuaEditor.paste("Ration=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="rx" then
        LuaEditor.paste("RationX=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ry" then
        LuaEditor.paste("RationY=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ce" then
        LuaEditor.paste("CardElevation=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="rs" then
        LuaEditor.paste("radius=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="tc" then
        LuaEditor.paste("textColor=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ts" then
        LuaEditor.paste("textSize=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="sl" then
        LuaEditor.paste("singleLine=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="er" then
        LuaEditor.paste("error=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ml" then
        LuaEditor.paste("maxLines=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="me" then
        LuaEditor.paste("maxEms=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="mh" then
        LuaEditor.paste("maxHeight=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="mw" then
        LuaEditor.paste("maxWidth=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="st" then
        LuaEditor.paste("scaleType=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ba" then
        LuaEditor.paste("background=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       else
        LuaEditor.selectText(false)
      end
    end

    function Three(nowPosition1)
      LuaEditor.setSelection(nowPosition1-3,3)
      local text = LuaEditor.getSelectedText()
      if text=="ife" then
        LuaEditor.paste("if  then\n\n else\n\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-17)
       elseif text=="lck" then
        LuaEditor.paste("onLongClick=function()\n\n  return true\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-18)
       elseif text=="ick" then
        LuaEditor.paste("onItemClick=function(p,v,i,s)\n\n  return true\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-18)
       elseif text=="isd" then
        LuaEditor.paste("onItemSelected=function(p,v,i,s)\n\n  return true\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-18)
       elseif text=="gck" then
        LuaEditor.paste("onGroupClick=function(p,v,i,s)\n\n  return true\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-18)
       elseif text=="cck" then
        LuaEditor.paste("onChildClick=function(p,v,i,s)\n\n  return true\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-18)
       elseif text=="for" then
        LuaEditor.paste("for i=1,10 do\n\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-4)
       elseif text=="whi" then
        LuaEditor.paste("while true do\n\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-4)
       elseif text=="prs" then
        LuaEditor.paste("print(\"\")")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="nac" then
        LuaEditor.paste("activity.newActivity(\"\")")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="dfe" then
        LuaEditor.paste("File(\"\").delete()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-11)
       elseif text=="thr" then
        LuaEditor.paste("thread(function()\n\nend)")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-5)
       elseif text=="tas" then
        LuaEditor.paste("task(function()\n\nend)")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-5)
       elseif text=="acf" then
        LuaEditor.paste("activity.finish()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd())
       elseif text=="oet" then
        LuaEditor.paste("os.exit()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd())
       elseif text=="acr" then
        LuaEditor.paste("activity.recreate()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd())
       elseif text=="stt" then
        LuaEditor.paste("activity.setTitle(\"\")")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="scv" then
        LuaEditor.paste("activity.setContentView(loadlayout())")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="wfe" then
        LuaEditor.paste("io.open(\"\",\"w\"):write(\"\"):close()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-24)
       elseif text=="rfe" then
        LuaEditor.paste("io.open(\"\"):read(\"*a\")")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-13)
       elseif text=="dia" then
        LuaEditor.paste("AlertDialog.Builder(this)\n.setTitle(\"标题\")\n.setMessage(\"消息\")\n.setPositiveButton(\"积极\",{onClick=function(v)\n\n  end})\n.setNeutralButton(\"中立\",nil)\n.setNegativeButton(\"否认\",nil)\n.show()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-73)
       elseif text=="tos" then
        LuaEditor.paste("tostring()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="ton" then
        LuaEditor.paste("tonumber()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="toi" then
        LuaEditor.paste("tointeger()")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="src" then
        LuaEditor.paste("src=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lab" then
        LuaEditor.paste("layout_alignBottom=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lae" then
        LuaEditor.paste("layout_alignEnd=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lal" then
        LuaEditor.paste("layout_alignLeft=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lar" then
        LuaEditor.paste("layout_alignRight=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="las" then
        LuaEditor.paste("layout_alignStart=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lat" then
        LuaEditor.paste("layout_alignTop=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lch" then
        LuaEditor.paste("layout_centerHorizontal=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="lcp" then
        LuaEditor.paste("layout_centerInParent=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="lcv" then
        LuaEditor.paste("layout_centerVertical=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="bac" then
        LuaEditor.paste("backgroundColor=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lml" then
        LuaEditor.paste("layout_marginLeft=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lmr" then
        LuaEditor.paste("layout_marginRight=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lmb" then
        LuaEditor.paste("layout_marginBottom=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lmt" then
        LuaEditor.paste("layout_marginTop=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="htc" then
        LuaEditor.paste("hintTextColor=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="miw" then
        LuaEditor.paste("minWidth=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       else
        Two(nowPosition1)
      end
    end

    function Four(nowPosition1)
      LuaEditor.setSelection(nowPosition1-4,4)
      local text = LuaEditor.getSelectedText()
      if text=="fort" then
        LuaEditor.paste("for index,content in pairs() do\n\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-9)
       elseif text=="ilck" then
        LuaEditor.paste("onItemLongClick=function(p,v,i,s)\n\n  return true\nend")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-18)
       elseif text=="luad" then
        LuaEditor.paste("activity.getLuaDir()")
       elseif text=="task" then
        LuaEditor.paste("task(1000,function()\n\nend)")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-5)
       elseif text=="labl" then
        LuaEditor.paste("layout_alignBaseline=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="lapb" then
        LuaEditor.paste("layout_alignParentBottom=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="lape" then
        LuaEditor.paste("layout_alignParentEnd=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="lapl" then
        LuaEditor.paste("layout_alignParentLeft=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="lapr" then
        LuaEditor.paste("layout_alignParentRight=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="laps" then
        LuaEditor.paste("layout_alignParentStart=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="lapt" then
        LuaEditor.paste("layout_alignParentTop=;")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-1)
       elseif text=="ltoe" then
        LuaEditor.paste("layout_toEndOf=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ltol" then
        LuaEditor.paste("layout_toLeftOf=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ltor" then
        LuaEditor.paste("layout_toRightOf=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="ltos" then
        LuaEditor.paste("layout_toStartOf=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="rowc" then
        LuaEditor.paste("rowCount=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="colc" then
        LuaEditor.paste("columnCount=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="text" then
        LuaEditor.paste("text=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       elseif text=="main" then
        LuaEditor.paste("public static void main(String[] args)\n  {\n\n  }")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd())
       elseif text=="hint" then
        LuaEditor.paste("hint=\"\";")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-2)
       else
        Three(nowPosition1)
      end
    end

    function Five(nowPosition1)
      LuaEditor.setSelection(nowPosition1-5,5)
      local text = LuaEditor.getSelectedText()
      if text=="Httpg" then
        LuaEditor.paste("Http.get(\"\",function(cookie,charset,header,callback)\n\nend)")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-48)
       elseif text=="Httpp" then
        LuaEditor.paste("Http.post(\"\",\"\",function(cookie,charset,header,callback)\n\nend)")
        LuaEditor.setSelection(LuaEditor.getSelectionEnd()-51)
       else
        Four(nowPosition1)
      end
    end

    Suspension66.onClick=function()
      if LuaEditor.isSelectText() then
        code_pop2.show()
       else
        local nowPosition1 = LuaEditor.getSelectionStart()
        if nowPosition1-5 >= 0 then
          Five(nowPosition1)
         elseif nowPosition1-4 >= 0 then
          Four(nowPosition1)
         elseif nowPosition1-3 >= 0 then
          Three(nowPosition1)
         elseif nowPosition1-2 >= 0 then
          Two(nowPosition1)
        end
      end
      return true
    end

    Suspension5.onLongClick=function()
      if LuaEditor.getSelectedText()=="" then
        LuaEditor.paste("--[===[]===]")
        LuaEditor.setSelection(tonumber(LuaEditor.getCaretPosition()-5))
       else
        if string.sub(String(LuaEditor.getSelectedText()).trim(),1,7) == "--[===[" then
          local sn = LuaEditor.getSelectionEnd()-7;
          LuaEditor.setSelection(LuaEditor.getSelectionStart(),7)
          LuaEditor.paste("")
          LuaEditor.setSelection(sn-5,5)
          LuaEditor.paste("")
         else
          LuaEditor.paste("--[===["..LuaEditor.getSelectedText().."]===]")
        end
      end
      return true
    end

    Suspension13.onClick=function()
      dkk()
      return true
    end

    Suspension3.onLongClick=function()
      if dhl.getVisibility()==0 then
        dhl.setVisibility(View.GONE)
       else
        dhl.setVisibility(View.VISIBLE)
      end
      return true
    end

    function gn1()
      wj=activity.getLuaDir().."/res/set121.LY"
      hj=io.open(wj):read("*a")
      if hj=="true" then

        u31=activity.getLuaDir().."/res/s1.LY"
        fyy1=io.open(u31):read("*a")

        for fha11 in fyy1:gmatch('(.-) ') do
          uoo1=math.random(0,10000000)
          uio1="aa"..uoo1

          button1={
            TextView;
            text=fha11;
            textColor=TitleColor1,
            gravity="center";
            layout_height="fill",
            paddingRight="5dp";
            textSize="15sp";
            paddingLeft="5dp";
            id=uio1;
          };

          m1=loadlayout(button1)
          fhhk1.addView(m1)
          bw(m1)
          function m1.onClick(v)
            n=v.Text
            if n==getLS("L_Search_character") then
              if ssl.Visibility==0 then
                ssl.Visibility=8
               else
                ssl.Visibility=0
                task(500,function()
                  Typew2(ssneir)
                end)
              end
             elseif n==getLS("L_Jump_to_specify_rows") then
              InputLayout={
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
                  text=getLS("L_The_number_of_rows")..":";
                };
                {
                  EditText;
                  layout_marginLeft="10dp",
                  layout_marginRight="10dp",
                  layout_width="match_parent";
                  layout_gravity="center",
                  id="edit";
                  singleLine=true
                };
              };
              tc=AlertDialog.Builder(this)
              .setTitle(getLS("L_Jump_to_specify_rows"))
              .setView(loadlayout(InputLayout))
              .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
                  LuaEditor.gotoLine(tonumber(edit.Text))
                end})
              .setNeutralButton(getLS("L_The_last_line"),{onClick=function(v)
                  LuaEditor.gotoLine(99999999999999999999)
                end})
              .setNegativeButton(getLS("L_Cancel"),nil)
              .show()
              Typew(edit)
             elseif n==getLS("L_Characters_to_replace") then
              InputLayout={
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
                  text=getLS("L_The_original_string")..":";
                };
                {
                  EditText;
                  layout_marginLeft="10dp",
                  layout_marginRight="10dp",
                  layout_width="match_parent";
                  layout_gravity="center",
                  id="edit";
                  singleLine=true
                };
                {
                  TextView;
                  id="Prompt",
                  textSize="15sp",
                  layout_marginLeft="10dp",
                  layout_marginRight="10dp",
                  layout_width="match_parent";
                  layout_gravity="center",
                  text=getLS("L_The_replacement_string")..":";
                };
                {
                  EditText;
                  layout_marginLeft="10dp",
                  layout_marginRight="10dp",
                  layout_width="match_parent";
                  layout_gravity="center",
                  id="edit1";
                  singleLine=true
                };
              };
              tc=AlertDialog.Builder(this)
              .setTitle(getLS("L_Substitution_characters"))
              .setView(loadlayout(InputLayout))
              .setPositiveButton(getLS("L_Replace"),{onClick=function(v)
                  if LuaEditor.Text:find(edit.Text) then
                    SnackerBar.build()
                    :msg(getLS("L_Replace_the_success"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                    LuaEditor.selectAll()
                    LuaEditor.paste(tostring(string.gsub(LuaEditor.Text,edit.Text,edit1.Text)))
                   else
                    SnackerBar.build()
                    :msg(getLS("L_Without_the_characters_in_the_code"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                  end
                end})
              .setNegativeButton(getLS("L_Cancel"),nil)
              .show()
              Typew(edit)
             elseif n==getLS("L_Layout_of_the_assistant") then
              wj11=activity.getLuaDir().."/res/set7.LY"
              hj11=io.open(wj11):read("*a")
              wj23=activity.getLuaDir().."/res/set8.LY"
              hj23=io.open(wj23):read("*a")
              wj232=activity.getLuaDir().."/res/set9.LY"
              hj232=io.open(wj232):read("*a")
              activity.newActivity("main56",{glj(),"",hj11,hj23,hj232})
             elseif n==getLS("L_The_palette") then
              yss(getLS("L_The_palette"),"0xFFFFFFFF")
             elseif n==getLS("L_Material_warehouse") then
              activity.newActivity("main47")
             elseif n==getLS("L_A_key_to_replace") then
              activity.newActivity("main50")
             elseif n==getLS("L_Simulation_to_submit") then
              activity.newActivity("main51")
             elseif n==getLS("L_The_color_reference") then
              activity.newActivity("main48")
             elseif n==getLS("L_Code_manual") then
              activity.newActivity("main25")
             elseif n==getLS("L_APK_extract") then
              activity.newActivity("main55")
             elseif n==getLS("L_Import_the_resource") then
              activity.newActivity("file",{"*",nil,true})
             elseif n==getLS("L_Formatting") then
              LuaEditor.format()
             elseif n==getLS("L_Open_the") then
              dkk()
             elseif n==getLS("L_New") then
              xjjj()
             elseif n==getLS("L_The_import_analysis") then
              activity.newActivity("main2",{lj.."/",lj6.Text})
             elseif n==getLS("L_Save_the_code") then
              io.open(lj6.Text,"w"):write(LuaEditor.Text):close()
              SnackerBar.build()
              :msg(getLS("L_The_saved"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
             elseif n==getLS("L_Code_error") then
              luapath=lj6.Text
              local src=LuaEditor.getText()
              src=src.toString()
              if luapath:find("%.aly$") then
                src="return "..src
              end
              local _,data=loadstring(src)
              if data then
                local _,_,line,data=data:find(".(%d+).(.+)")
                LuaEditor.gotoLine(tonumber(line))
                SnackerBar.build()
                :msg(getLS("L_The_first")..line..getLS("L_Line")..data)
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
                return true
               elseif b then
                SnackerBar.build()
                :msg(getLS("L_No_mistakes_in_grammar"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                SnackerBar.build()
                :msg(getLS("L_No_mistakes_in_grammar"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
              end
             elseif n==getLS("L_The_tutorial_manual") then
              activity.newActivity("main25")
             elseif n==getLS("L_Chinese_function") then
              activity.newActivity("main31")
             elseif n==getLS("L_Packaging") then
              if type(onBin)=="function" then
                onBin()
               else
                bin(lj.."/")
              end
             elseif n==getLS("L_The_log") then
              activity.newActivity("logcat",{lj})
             elseif n==getLS("L_Attribute") then
              activity.newActivity("main4",{lj})
             elseif n==getLS("L_The_backup") then
              beif()
             elseif n==getLS("L_Compile_the_file") then
              jdd=lj.."/"
              ljj=lj6.Text
              local jdd,str=console.build(ljj)
              if jdd then
                SnackerBar.build()
                :msg(getLS("L_Compile_successfully")..jdd)
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               else
                SnackerBar.build()
                :msg(getLS("L_Compile_error"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
              end
             else
              if type(onTopSymbol)=="function" then
                onTopSymbol(tostring(n))
               else
                SnackerBar.build()
                :msg(getLS("L_The_unknown_function"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
              end
            end
          end

        end

       else
        bql1.setVisibility(View.GONE)
      end

    end

    gn1()

    wjff=activity.getLuaDir().."/res/set209.LY"
    hjff=io.open(wjff):read("*a")
    if hjff=="false" then
      Suspension4.Visibility=8
     else
      Suspension4.Visibility=0
    end

    wjff=activity.getLuaDir().."/res/set119.LY"
    hjff=io.open(wjff):read("*a")
    if hjff=="false" then
      Suspension2.Visibility=8
      Suspension12.Visibility=8
    end

    wjff=activity.getLuaDir().."/res/set216.LY"
    hjff=io.open(wjff):read("*a")
    if hjff=="false" then
      Suspension7.Visibility=8
    end

    wjff=activity.getLuaDir().."/res/set213.LY"
    hjff=io.open(wjff):read("*a")
    if hjff=="false" then
      Suspension6.Visibility=8
    end

    import "android.content.*"
    cm = activity.getSystemService(activity.CLIPBOARD_SERVICE)

    function copyClip(str)
      local cd = ClipData.newPlainText("label", str)
      cm.setPrimaryClip(cd)
      SnackerBar.build()
      :msg(getLS("L_Has_been_copied_to_the_clipboard"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
    end

    function create_import_dlg()
      if import_dlg then
        return
      end
      import_dlg = AlertDialogBuilder(activity)
      import_dlg.Title = getLS("L_May_need_to_import_the_classes")
      import_dlg.setPositiveButton(getLS("L_Determine"), nil)
      import_dlg.ListView.setDividerHeight(0)

      import_dlg.ListView.onItemClick = function(l, v)
        copyClip(v.Text)
        import_dlg.hide()
        return true
      end
    end

    function onActivityResult(req, res, intent)
      if res == 10000 then
        read(luapath)
        editor.format()
        return
      end
      if res ~= 0 then
        local data = intent.getStringExtra("data")
        local _, _, path, line = data:find("\n[ ]*([^\n]-):(%d+):")
        if path == luapath then
          editor.gotoLine(tonumber(line))
        end
        local classes = require "android"
        local c = data:match("a nil value %(global '(%w+)'%)")
        if c then
          local cls = {}
          c = "%." .. c .. "$"
          for k, v in ipairs(classes) do
            if v:find(c) then
              table.insert(cls, string.format("import %q", v))
            end
          end
          if #cls > 0 then
            create_import_dlg()
            import_dlg.setItems(cls)
            import_dlg.show()
          end
        end
      end
    end
    AndSubTitle.Text=lj

    AndTitle.onClick=function()
      io.open(lj6.Text,"w"):write(LuaEditor.Text):close()
      activity.newActivity("main4",{lj})
    end

    AndTitle.onLongClick=function()
      activity.newActivity("logcat",{lj})
    end

    AndSubTitle.onClick=function()
      dkk()
    end

    AndSubTitle.onLongClick=function()
      xjjj()
      return true
    end

    c1.onLongClick=function()
      wjff=activity.getLuaDir().."/res/set119.LY"
      hjff=io.open(wjff):read("*a")
      if hjff=="true" then
        Suspension2.Visibility=8
        Suspension12.Visibility=8
      end

      wjff=activity.getLuaDir().."/res/set213.LY"
      hjff=io.open(wjff):read("*a")
      if hjff=="true" then
        Suspension6.Visibility=8
      end

      wjff=activity.getLuaDir().."/res/set209.LY"
      hjff=io.open(wjff):read("*a")
      if hjff=="true" then
        Suspension4.Visibility=8
      end
      return true
    end

    wjjjj1=activity.getLuaDir().."/res/tips"
    hjjjj1=io.open(wjjjj1):read("*a")
    if hjjjj1=="0" then
      AlertDialog.Builder(this)
      .setTitle(getLS("L_Use_tip"))
      .setMessage(getLS("L_Use_tip_1"))
      .setPositiveButton(getLS("L_Determine"),nil)
      .setNegativeButton(getLS("L_No_longer_display"),{onClick=function(v)
          io.open(wjjjj1,"w"):write("1"):close()
        end})
      .show()
    end

    c21.onLongClick=function()
      wjff=activity.getLuaDir().."/res/set209.LY"
      hjff=io.open(wjff):read("*a")
      if hjff=="true" then
        Suspension4.Visibility=0
      end
      wjff=activity.getLuaDir().."/res/set119.LY"
      hjff=io.open(wjff):read("*a")
      if hjff=="true" then
        Suspension2.Visibility=0
        Suspension12.Visibility=0
      end

      wjff=activity.getLuaDir().."/res/set213.LY"
      hjff=io.open(wjff):read("*a")
      if hjff=="true" then
        Suspension6.Visibility=0
      end

      return true
    end

    wj=activity.getLuaDir().."/res/set217.LY"
    hj=io.open(wj):read("*a")
    if hj=="2" then
      DrawerLayout_1.Visibility=8
      DrawerLayout_2.Visibility=0
     else
      DrawerLayout_1.Visibility=0
      DrawerLayout_2.Visibility=8
    end

    wjff=activity.getLuaDir().."/res/set214.LY"
    hjff=io.open(wjff):read("*a")
    if hjff=="true" then

      java_api.Visibility=0
      java_api_.Visibility=0


      bw(java_api,0xFFEEEEEE)
      local classes=require "android"

      JAVA_API_VIEW={
        LinearLayout;
        layout_height="fill";
        layout_width="fill";
        {
          LinearLayout;
          layout_height="fill";
          layout_width="fill";
          orientation="vertical";
          backgroundColor="0X00000000";
          onClick=function()
            CloseDialog(JAVA_API_Dialog,JAVA_API_Dialog1,300)
          end,
          {
            LinearLayout;
            layout_height=activity.getHeight();
            layout_width="fill";
            layout_weight="1";
          };
          {
            LinearLayout;
            layout_height="-2";
            layout_width="fill";
            orientation="vertical";
            id="JAVA_API_Dialog";
            backgroundColor=tonumber(qys("BackgroundColor"));
            {
              RelativeLayout;
              layout_width="match_parent";
              {
                RelativeLayout;
                layout_height="50dp";
                layout_width="match_parent";
                id="JAVA_API_Dialog_Title",
                {
                  TextView;
                  layout_marginLeft="15dp";
                  textSize="20sp";
                  layout_alignParentBottom="true";
                  text=getLS("L_Java_API");
                  textColor=TitleColor,
                  singleLine="true";
                  ellipsize="end";
                  id="JAVA_API_Dialog_Title_text",
                };
              };
              {
                LinearLayout;
                layout_below="JAVA_API_Dialog_Title";
                orientation="vertical";
                layout_marginTop="8dp";
                layout_height="-2";
                id="JAVA_API_Dialog_Edit",
                layout_width="match_parent";
                {
                  RelativeLayout;
                  layout_height="match_parent";
                  layout_marginTop="-10dp";
                  layout_width="match_parent";
                  {
                    CardView;
                    backgroundColor=ColorDark("#"..string.sub(qys("BackgroundColor"),3,-1)),
                    layout_margin="15dp";
                    elevation="0dp";
                    layout_height="44dp";
                    radius="5dp";
                    layout_width="match_parent";
                    {
                      EditText;
                      textColor=TitleColor,
                      id="Class_Name";
                      background="0";
                      textSize="16sp";
                      layout_height="match_parent";
                      layout_marginRight="5dp";
                      hint=getLS("L_Please_enter_the_name_of_the_class");
                      layout_marginLeft="5dp";
                      singleLine="true";
                      layout_width="match_parent";
                    };
                  };
                },
              };
              {
                LinearLayout;
                layout_below="JAVA_API_Dialog_Edit";
                orientation="vertical";
                layout_marginTop="-5dp";
                layout_width="match_parent";
                {
                  ListView;
                  layout_width="match_parent";
                  id="class_list";
                  layout_height="50%h",
                  DividerHeight=0,
                  fastScrollEnabled=true,
                };
              };
            };
          };
        };
      };

      JAVA_API_ITEM={
        LinearLayout;
        layout_width="match_parent";
        orientation="vertical";
        gravity="center|left";
        {
          TextView;
          id="class_n";
          layout_marginTop="8dp";
          layout_marginLeft="16dp";
          textSize="15sp";
          textColor=TitleColor,
          layout_width="match_parent";
          layout_marginBottom="8dp";
        };
      };

      function findAPI(s)

        local s=tostring(s)
        local class=luajava.bindClass(s)
        curr_class=class
        local t={}
        local fs={}
        local ms={}
        local es={}
        local ss={}
        gs={}

        curr_ms=class.getMethods()
        for n=0,#curr_ms-1 do
          local str=tostring(curr_ms[n])
          table.insert(ms,str)
          local e1=str:match("%.setOn(%a+)Listener")
          local s1,s2=str:match("%.set(%a+)(%([%a$%.]+%))")
          local g1,g2=str:match("([%a$%.]+) [%a$%.]+%.get(%a+)%(%)")
          if e1 then
            table.insert(es,"on"..e1)
           elseif s1 then
            table.insert(ss,s1..s2)
          end
          if g1 then
            table.insert(gs,string.format("(%s)%s",g1,g2))
          end
        end

        for k,v in ipairs(ms) do
          table.insert(t,v)
        end

        return t
      end

      class_adp=LuaAdapter(activity,JAVA_API_ITEM)
      class_adp2=LuaAdapter(activity,JAVA_API_ITEM)

      java_api.onLongClick=function()
        activity.newActivity("main2",{lj.."/",lj6.Text})
        return true
      end

      java_api.onClick=function()

        DialogShow(JAVA_API_VIEW,"JAVA_API_Dialog",randoms(),"JAVA_API_Dialog1",randoms())

        JAVA_API_Dialog_Title_text.onLongClick=function(v)
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(v.Text)
          SnackerBar.build()
          :msg(getLS("L_Has_been_copied_to_the_clipboard"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
          return true
        end

        Class_Name.addTextChangedListener{
          onTextChanged=function(s)
            class_adp.clear()
            for index,content in pairs(classes) do
              if content:find(Class_Name.Text) then
                class_adp.add{class_n=content}
              end
            end
          end
        }

        class_list.setAdapter(class_adp)

        if LuaEditor.isSelectText() then
          Class_Name.Text=LuaEditor.getSelectedText()
         else
          for index,content in pairs(classes) do
            class_adp.add{class_n=content}
          end
        end

        class_list.onItemLongClick=function(p,v,i,s)
          activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(v.Tag.class_n.Text)
          SnackerBar.build()
          :msg(getLS("L_Has_been_copied_to_the_clipboard"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
          return true
        end

        class_list.onItemClick=function(p,v,i,s)
          Class_Name.Text=""

          Class_Name.addTextChangedListener{
            onTextChanged=function(s)
              class_adp2.clear()
              for index,content in pairs(findAPI(v.Tag.class_n.Text)) do
                if content:find(Class_Name.Text) then
                  class_adp2.add{class_n=content}
                end
              end
            end
          }

          JAVA_API_Dialog_Title_text.Text=v.Tag.class_n.Text

          for index,content in pairs(findAPI(v.Tag.class_n.Text)) do
            class_adp2.add{class_n=content}
          end
          class_list.setAdapter(class_adp2)

          class_list.onItemLongClick=function(p,v,i,s)
            local s=tostring(v.Tag.class_n.Text)

            for i=1,#gs,1 do
              if gs[i]==s then
                s=s:match("[A-Z_]+$")
                copy(s)
                return true
              end
            end

            if s:find("%w%(") then
              if s:match("(%([^%)]+%))") then
                s=s:match("(%w+)%(")..s:match("(%([^%)]+%))")
               else
                s=s:match("(%w+)%(").."()"
              end
            end

            activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(s)
            SnackerBar.build()
            :msg(getLS("L_Has_been_copied_to_the_clipboard"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
            return true
          end

          class_list.onItemClick=function(p,v,i,s)
            return true
          end

          return true
        end

        return true
      end
    end

  end
end

if pcall(MainP) then
 else
  activity.result({lj,"","9"})
end