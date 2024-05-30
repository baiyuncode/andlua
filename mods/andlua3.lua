import "android.graphics.drawable.ColorDrawable"
import "android.graphics.Typeface"
import "android.content.Context"
import "android.widget.Toast"
import "android.app.*"
import "android.os.*"
import "console"
import "android.widget.*"
import "com.myopicmobile.textwarrior.common.*"
import "android.content.*"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.drawable.ColorDrawable"
import "android.view.*"
import "android.content.res.ColorStateList"
import "android.animation.ObjectAnimator"
import "android.animation.AnimatorSet"
import "android.view.animation.DecelerateInterpolator"
import "java.io.File"
import "java.io.FileOutputStream"
import "java.util.zip.ZipFile"
import "java.io.File"
import "android.animation.AnimatorSet"
import "android.graphics.PorterDuff"
import "android.graphics.PorterDuffColorFilter"
import "android.view.animation.AccelerateDecelerateInterpolator"
import "android.view.animation.BounceInterpolator"
import "android.animation.ObjectAnimator"
import "android.view.animation.AnimationUtils"
import "android.transition.ArcMotion"
import "android.graphics.drawable.RippleDrawable"
import "android.content.res.ColorStateList"
import "java.text.Collator"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.drawable.GradientDrawable"
import "android.graphics.Color"
import "android.view.animation.*"
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
import "com.andlua.string.number"
import "com.andlua.ascll.ResultMultiple"
import "android.webkit.MimeTypeMap"
import "android.content.Intent"
import "android.net.Uri"
import "java.io.File"
import "java.util.regex.Pattern"
import "com.andlua.ascll.ResultMultiple"
socket=import"socket.url"
import"android.view.inputmethod.InputMethodManager"
import "android.webkit.MimeTypeMap"
import "android.content.Intent"
import "android.net.Uri"
import "java.io.File"
import "mods.andlua"

ztt()

--工程路径
project=Environment.getExternalStorageDirectory().toString().."/AndLua"
--资源路径
res="res1/"

function lnFile(a)
  if File(a).isDirectory()==false then
    File(a).mkdirs()
  end
end

if Build.VERSION.SDK_INT >= 23 then
  activity.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
end

--[[
function ThemeColor(a)
  if a=="image" then--图片
    return 0XFFFFFFFF
   elseif a=="subimage" then--副图片
    return 0XFF757575
   elseif a=="simage" then--副图片
    return 0XFFFFFFFF
   elseif a=="TitleText" then--标题栏文本
    return 0XFFFFFFFF
   elseif a=="Text" then--主标题文本
    return 0XFF212121
   elseif a=="subText" then--副标题文本
    return 0XFF757575
   elseif a=="Bar" then--标题栏
    return 0xFF303030
   elseif a=="Window" then--状态栏
    return 0xFF303030
   elseif a=="Background" then--背景
    return 0xFF303030
   elseif a=="Dialog" then--弹窗背景
    return 0xFF303030
   else--主题
    return 0xFF303030
  end
end
]]

function ThemeColor(a)
  if a=="image" then--图片
    return 0xFF009688
   elseif a=="subimage" then--副图片
    return 0XFF757575
   elseif a=="simage" then--副图片
    return 0XFFFFFFFF
   elseif a=="TitleText" then--标题栏文本
    return 0xFF009688
   elseif a=="Text" then--主标题文本
    return 0XFF212121
   elseif a=="subText" then--副标题文本
    return 0XFF757575
   elseif a=="Bar" then--标题栏
    return 0xFFFFFFFF
   elseif a=="Window" then--状态栏
    return 0xFFFFFFFF
   elseif a=="Background" then--背景
    return 0xFFFFFFFF
   elseif a=="Dialog" then--弹窗背景
    return 0xFFFFFFFF
   else--主题
    return 0xFF009688
  end
end

function Write(File,Text)
  return io.open(File,"w"):write(Text):close()
end

function read(file)
  if File(file).isFile() then
    return io.open(file):read("*a")
  end
end

function Ripple(id)
  import "android.content.res.ColorStateList"
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
  local typedArray =activity.obtainStyledAttributes(attrsArray)
  ripple=typedArray.getResourceId(0,0)
  aoos=activity.Resources.getDrawable(ripple)
  aoos.setColor(ColorStateList(int[0].class{int{}},int{0xFFEEEEEE}))
  id.setBackground(aoos.setColor(ColorStateList(int[0].class{int{}},int{0xFFEEEEEE})))
  return true
end

function RippleR()
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
  local typedArray =activity.obtainStyledAttributes(attrsArray)
  ripple=typedArray.getResourceId(0,0)
  aoos=activity.Resources.getDrawable(ripple)
  aoos.setColor(ColorStateList(int[0].class{int{}},int{0xFFEEEEEE}))
  return aoos.setColor(ColorStateList(int[0].class{int{}},int{0xFFEEEEEE}))
end

function RippleR1()
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
  local typedArray =activity.obtainStyledAttributes(attrsArray)
  ripple=typedArray.getResourceId(0,0)
  aoos=activity.Resources.getDrawable(ripple)
  aoos.setColor(ColorStateList(int[0].class{int{}},int{0x20000000}))
  return aoos.setColor(ColorStateList(int[0].class{int{}},int{0x20000000}))
end

function RippleA(array)
  for i=1,#array do
    local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
    local typedArray =activity.obtainStyledAttributes(attrsArray)
    ripple=typedArray.getResourceId(0,0)
    aoos=activity.Resources.getDrawable(ripple)
    aoos.setColor(ColorStateList(int[0].class{int{}},int{0x20000000}))
    array[i].setBackground(aoos.setColor(ColorStateList(int[0].class{int{}},int{0x20000000})))
  end
  return true
end

import "mods.andlua"

function Ripples(array)
  for i=1,#array do
    bw(array[i])
  end
  return true
end

function BarView(a)
  activity.ActionBar.setDisplayShowCustomEnabled(true)
  activity.ActionBar.setCustomView(loadlayout(a))
  activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(AndLuaB1)
  activity.ActionBar.setElevation(Elevation())
  return true
end

function AppName()
  return "AndLua++"
end

function Elevation()
  return 0
end

function ToolbarRipple(array)
  bw(_G[array["BUTTON"][1]["id"]])
  if #array["BUTTON"]-1 > 0 then
    for i=2,#array["BUTTON"] do
      bw(_G[array["BUTTON"][i]["id"]])
    end
  end
  return true
end

function Toolbar(array)

  local View1=""

  if #array["BUTTON"]-1 > 0 then
    for i=2,#array["BUTTON"] do
      View1=[[{
    LinearLayout;
    layout_width="60dp";
    gravity="center";
    layout_height="fill";
    layout_marginRight="-15dp";
    {
      ImageView;
      layout_height="28dp";
      colorFilter=ThemeColor("image");
      layout_width="23dp";
      src="]]..array["BUTTON"][i]["image"]..[[";
      id="]]..array["BUTTON"][i]["id"]..[[";
      onClick=]]..array["BUTTON"][i]["click"]..[[;
    };
  };
]]..View1
    end
  end

  local View=[[
 {
    LinearLayout;
    layout_width="fill";
    layout_height="fill";
    orientation="horizontal";
    ]]..[[
    {
      LinearLayout;
      layout_width="60dp";
      gravity="center";
      layout_height="fill";
      layout_marginLeft="-15dp";
      {
        ImageView;
        layout_height="28dp";
        colorFilter=ThemeColor("image");
        layout_width="23dp";
        src="]]..array["BUTTON"][1]["image"]..[[";
        onClick=]]..array["BUTTON"][1]["click"]..[[;
        id="]]..array["BUTTON"][1]["id"]..[[";
      };
    };
  ]]..[[
  {
      LinearLayout;
      layout_height="fill";
      layout_weight="1";
      orientation="horizontal";
      {
        TextView;
        layout_gravity="center";
        textSize="20sp";
        onClick=]]..array["Title"]["click"]..[[;
        text="]]..array["Title"]["name"]..[[";
        textColor=ThemeColor("TitleText");
        id="]]..array["Title"]["id"]..[[";
        singleLine=true;
      };
    };
  ]]..View1..[[
  };
]]
  Write(activity.getLuaDir().."/mods/temporary.aly",View)
  import "mods.temporary"
  Write(activity.getLuaDir().."/mods/temporary.aly","")
  os.remove(activity.getLuaDir().."/mods/temporary.aly")
  return temporary
end

function ContentView(layout)
  activity.setTheme(R.AndLua18)
  activity.setContentView(loadlayout(layout))
  return true
end

function random()
  return tostring("andlua"..math.random(10000000,99999999))
end

function randoms()
  return _G["andlua"..math.random(10000000,99999999)]
end

function NilClick()
  return "function()end"
end

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

function Gesture(dialog,id,yy)

  velocityTracker=random()

  A1=random()

  downY=random()

  moveY=random()

  Y=random()

  vsd=random()

  upY=random()

  _G[velocityTracker] = VelocityTracker.obtain();

  _G[id].onTouch=function(v,e)

    _G[A1]=e.getAction()&255

    if _G[A1]==MotionEvent.ACTION_DOWN then

      _G[velocityTracker].addMovement(e)

      _G[downY]=e.getY()

     elseif _G[A1]==MotionEvent.ACTION_MOVE then

      _G[velocityTracker].addMovement(e)

      _G[velocityTracker].computeCurrentVelocity(1000);

      _G[moveY]=e.getY()

      _G[Y]=_G[moveY] - _G[downY]

      if _G[Y]>0 then

        v.setTranslationY(_G[Y]/2)--跟手度

      end

      _G[vsd] = _G[velocityTracker].getYVelocity()

     elseif _G[A1]==MotionEvent.ACTION_UP then

      _G[upY]=e.getY()

      _G[upY]=_G[upY]-_G[downY]

      if _G[upY]>0 then

        if _G[upY]>yy || _G[vsd]>5000 then

          ObjectAnimator.ofFloat(_G[id],"translationY",{_G[upY]/2,activity.getWidth()}).setDuration(300).start()

          task(300,function()

            _G[dialog].dismiss()

            _G[velocityTracker].recycle()

          end)

         else

          ObjectAnimator.ofFloat(_G[id],"translationY",{_G[upY]/2,0}).setDuration(300).start()

        end

      end

    end

    return true
  end

end

function radius(view,a)
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(ThemeColor("Dialog"))
  drawable.setCornerRadii({a,a,a,a,a,a,a,a});
  _G[view].setBackgroundDrawable(drawable)
end

function DialogShow(DownLayout,A,IDD,IDD1,IDD2,op)

  IDD = AlertDialog.Builder(this)

  _G[IDD1]=IDD.show()

  _G[IDD1].getWindow().setContentView(loadlayout(DownLayout));

  _G[IDD1].getWindow().setBackgroundDrawable(ColorDrawable(0x00000000));

  IDD2 = _G[IDD1].getWindow();

  IDD2.setGravity(Gravity.BOTTOM);

  _G[IDD1].setCanceledOnTouchOutside(true)

  _G[IDD1].getWindow().getAttributes().width=(activity.Width-50);

  _G[IDD1].getWindow().clearFlags(WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM);

  if op==true then
    _G[IDD1].getWindow().setDimAmount(0)
  end

  _G[IDD1].setOnKeyListener{
    onKey=function(dialog,keyCode,event)
      if keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount()==0 then
        dh(_G[A],_G[IDD1],300)
        return true
      end
    end
  }

  Gesture(IDD1,A,100)

  radius(A,25)

  ObjectAnimator.ofFloat(_G[A],"translationY",{activity.getWidth(),0}).setDuration(380).start()

end

--[[array={
  Title={
    name=AppName(),
    id=random(),
    click=NilClick(),
  },
  BUTTON={
    {
      image=res.."1.png",
      id=random(),
      click=NilClick(),
    },
    {
      image=res.."2.png",
      id=random(),
      click=NilClick(),
    },
  },
}

BarView(Toolbar(array))

ToolbarRipple(array)

VIEW1={
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
      dh(Dialog33,DIA2,300)
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
      id="Dialog33";
      backgroundColor=ThemeColor("Dialog");
      {
        RelativeLayout;
        layout_width="match_parent";
        {
          RelativeLayout;
          layout_height="50dp";
          id="TitleV1",
          layout_width="match_parent";
          {
            TextView;
            layout_marginLeft="15dp";
            textSize="20sp";
            layout_alignParentBottom="true";
            text="主题";
            textColor=ThemeColor("Text");
          };
        };
        {
          LinearLayout;
          layout_below="TitleV1";
          orientation="vertical";
          layout_marginTop="8dp";
          layout_height="300dp";
          layout_width="match_parent";
        };
      };
    };
  };
};

]]

function dh(A,B,C)
  ObjectAnimator.ofFloat(A,"translationY",{0,activity.getWidth()}).setDuration(C).start()task(C,function()B.dismiss()end)
  return true
end

function toast(a)
  Toast.makeText(activity, tostring(a),Toast.LENGTH_SHORT).show()
end

function startLayoutAnim(view,time,anim)
  if not anim then
    anim=android.R.anim.slide_in_left
  end
  animation = AnimationUtils.loadAnimation(activity,anim)
  lac = LayoutAnimationController(animation);
  lac.setOrder(LayoutAnimationController.ORDER_NORMAL);
  lac.setDelay(time)
  view.setLayoutAnimation(lac)
end

function dia(Title,Text)
  DialogShow(VIEW877,"Dialog877",randoms(),"DIA877",randoms())
  titl515877.Text=Text
  titl877.Text=Title
end

function dia1(str)
  dh(Dialog877,DIA877,300)
  if str!=nil then
    toast(str)
  end
end

function backups(file,project,name)
  require "import"
  import "java.io.File"
  call("dia","备份","正在备份")
  local time = os.date("%y_%m%d_%H%M")
  Thread.sleep(500)
  if File(file).isDirectory() then
    if LuaUtil.zip(file,project.."/backup/",name.."_"..time..".alp") then
      call("dia1","备份成功\n"..name.."_"..time..".alp")
     else
      call("dia1","工程错误")
    end
   else
    call("dia1","工程错误")
  end
end

function Sharing(path,name)
  FileName=tostring(File(path).Name)
  ExtensionName=FileName:match("%.(.+)")
  Mime=MimeTypeMap.getSingleton().getMimeTypeFromExtension(ExtensionName)
  intent = Intent()
  intent.setAction(Intent.ACTION_SEND)
  intent.setType("*/*")
  file = File(path)
  uri = Uri.fromFile(file)
  intent.putExtra(Intent.EXTRA_STREAM,uri)
  intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
  activity.startActivity(Intent.createChooser(intent,name.." 分享到:"))
end

function share(file,project,name)
  require "import"
  import "java.io.File"
  call("dia","分享","正在加载")
  local time = os.date("%y_%m%d_%H%M")
  Thread.sleep(500)
  if File(file).isDirectory() then
    if LuaUtil.zip(file,project.."/backup/",name.."_"..time..".alp") then
      call("dia1")
      call("Sharing",project.."/backup/"..name.."_"..time..".alp",name)
     else
      call("dia1","工程错误")
    end
   else
    call("dia1","工程错误")
  end
end

function clone(file,project,name)
  require "import"
  import "java.io.File"
  call("dia","克隆","正在克隆")
  Thread.sleep(500)
  if File(file).isDirectory() then
    if LuaUtil.copyDir(file,project.."/project/"..name.."_clone") then
      local FText1=io.open(file.."/init.lua"):read("*a")
      local FText2=tostring(string.gsub(FText1,[[appname="]]..name..[["]],[[appname="]]..name.."_clone"..[["]]))
      io.open(project.."/project/"..name.."_clone/init.lua","w"):write(FText2):close()
      call("dia1","克隆成功\n"..name.."_clone")
     else
      call("dia1","工程错误")
    end
   else
    call("dia1","工程错误")
  end
end

--编码
function Code(text)
  return socket.escape(text)
end

--解码
function Decode(text)
  return socket.unescape(text)
end

--转义
function Transferred(text)
  local Trans="% ( [ { / ^ - $ ¦ } ] ) ? * + . "
  for Trans1 in Trans:gmatch("(.-) ") do
    if Trans1=="%" then
      text=string.gsub(text,"%"..Trans1,"%%%"..Trans1)
     else
      text=string.gsub(text,"%"..Trans1,"%%"..Trans1)
    end
  end
  return text
end

--初始化表
function Tab(tab,OP)
  Table=tostring(activity.getLuaDir().."/data/"..tab)
  if File(Table).isFile()==false then
    if OP then
      io.open(Table,"w"):write("{\n};"):close()
     else
      io.open(Table,"w"):write(""):close()
    end
  end
  return Table
end

--读取
function ReadTable()
  loadstring("_table="..io.open(Table):read("*a"))()
  return _table
end

--数据存不存在
function NoTable(tab)
  local text=io.open(Table):read("*a")
  local text1=string.gsub(text,Transferred(Code(tab)),"andlua")
  if text==text1 then
    return false
   else
    return true
  end
end

--文件是否打开
function No1Table(tab)
  local text1=string.gsub(openFile,Transferred("#"..tab),"andlua")
  if openFile==text1 then
    return false
   else
    return true
  end
end

--获取
function ObtainTable(tab)
  loadstring("_table="..tostring(io.open(Table):read("*a")))()
  if type(tab)=="number" then
    return Decode(tostring(_table[tointeger(Code(tostring(tab)))]))
   else
    return Decode(tostring(_table[Code(tostring(tab))]))
  end
end

--写入
function WriteTable(array)
  local table=""
  for i=1,#array/2 do
    if type(array[i*2-1])=="number" then
      if ObtainTable(array[i*2-1])=="nil" then
        table=table..'['..Code(tostring(array[i*2-1]))..']="'..Code(tostring(array[i*2]))..'";\n'
      end
     else
      if ObtainTable(array[i*2-1])=="nil" then
        table=table..'["'..Code(tostring(array[i*2-1]))..'"]="'..Code(tostring(array[i*2]))..'";\n'
      end
    end
  end
  return io.open(Table,"w"):write("{\n"..table.."};"):close()
end

--插入
function InsertTable(array)
  local text=string.sub(tostring(io.open(Table):read("*a")),0,-4)
  local table=""
  for i=1,#array/2 do
    if type(array[i*2-1])=="number" then
      if ObtainTable(array[i*2-1])=="nil" then
        table=table..'['..Code(tostring(array[i*2-1]))..']="'..Code(tostring(array[i*2]))..'";\n'
      end
     else
      if ObtainTable(array[i*2-1])=="nil" then
        table=table..'["'..Code(tostring(array[i*2-1]))..'"]="'..Code(tostring(array[i*2]))..'";\n'
      end
    end
  end
  return io.open(Table,"w"):write(text.."\n"..table.."};"):close()
end

--有序插入
function OrderTable(array)
  local text=string.sub(tostring(io.open(Table):read("*a")),0,-4)
  local table=""
  for i=1,#array do
    table=table..'['..tostring(#ReadTable()+i)..']="'..Code(tostring(array[i]))..'";\n'
  end
  return io.open(Table,"w"):write(text.."\n"..table.."};"):close()
end

--更新
function ToTable(tab,tab1)
  if ObtainTable(tab)!="nil" then
    if type(tab)=="number" then
      local text=tostring(io.open(Table):read("*a"))
      local text1='['..tostring(tab)..']="'..tostring(ReadTable()[tab])..'";'
      local text2='['..tostring(tab)..']="'..Transferred(tostring(Code(tab1)))..'";'
      local text3=string.gsub(text,Transferred(text1),text2)
      return io.open(Table,"w"):write(text3):close()
     else
      local text=tostring(io.open(Table):read("*a"))
      local text1='["'..Code(tab)..'"]="'..tostring(ReadTable()[Code(tab)])..'";'
      local text2='["'..Transferred(Code(tab))..'"]="'..Transferred(tostring(Code(tab1)))..'";'
      local text3=string.gsub(text,Transferred(text1),text2)
      return io.open(Table,"w"):write(text3):close()
    end
   else
    return InsertTable({tab,tab1})
  end
end

--删除
function DeleteTable(tab)
  if ObtainTable(tab)!="nil" then
    if type(tab)=="number" then
      local text=tostring(io.open(Table):read("*a"))
      local text1='\n['..tostring(tab)..']="'..tostring(ReadTable()[tab])..'";'
      local text3=string.gsub(text,Transferred(text1),"")
      return io.open(Table,"w"):write(text3):close()
     else
      local text=tostring(io.open(Table):read("*a"))
      local text1='\n["'..Code(tab)..'"]="'..tostring(ReadTable()[Code(tab)])..'";'
      local text3=string.gsub(text,Transferred(text1),"")
      return io.open(Table,"w"):write(text3):close()
    end
   else
    return false
  end
end

function Setcolor(id)
  id.setTextSize(37)
  id.setTextColor(0xff222222)
  id.setKeywordColor(0xff3f7fb5)
  id.setBasewordColor(0xff6e81d9)
  id.setStringColor(ThemeColor())
  id.setCommentColor(0xFFA0A0A0)
  id.setBackgroundColor(0xffffffff)
  id.setUserwordColor(0xff6e81d9)
  id.setPanelBackgroundColor(0XFFFFFFFF)
  id.setPanelTextColor(ThemeColor())
end

--增
function Data_plus(data)
  if Data_check(data)==false then
    local text=tostring(io.open(DataRoute):read("*a"))
    return io.open(DataRoute,"w"):write(text.."\n[File]"..Code(tostring(data)).."[Cursor]0[Cursor][Id]"..random().."[Id][File]"):close()
  end
  return false
end

--删
function Data_delete(data)
  if Data_check(data) then
    local text=tostring(io.open(DataRoute):read("*a"))
    local text1=Transferred("[File]"..Code(tostring(data)).."[Cursor]"..Data_cursor(data).."[Cursor][Id]"..Data_id(data).."[Id][File]")
    local text3=string.gsub(text,"\n"..text1,"")
    return io.open(DataRoute,"w"):write(text3):close()
  end
  return false
end

--改
function Data_change(data,data1,Cursor)
  if Data_check(data) then
    if Cursor=="" then Cursor=Data_cursor(data) end
    if data1=="" then data1=data end
    local text=tostring(io.open(DataRoute):read("*a"))
    local text1="[File]"..Code(tostring(data)).."[Cursor]"..Data_cursor(data).."[Cursor][Id]"..Data_id(data).."[Id][File]"
    local text2="[File]"..Transferred(Code(tostring(data1))).."[Cursor]"..Cursor.."[Cursor][Id]"..Data_id(data).."[Id][File]"
    local text3=string.gsub(text,Transferred(text1),text2)
    return io.open(DataRoute,"w"):write(text3):close()
  end
  return false
end

--查
function Data_check(data)
  local text=tostring(io.open(DataRoute):read("*a"))
  local text1=string.gsub(text,Transferred("[File]"..Code(tostring(data)).."[Cursor]"),"AndLua")
  if text==text1 then
    return false
  end
  return true
end

--查光标位置
function Data_cursor(data)
  if Data_check(data) then
    local text=tostring(io.open(DataRoute):read("*a"))
    return text:match(Transferred("[File]"..Code(tostring(data)).."[Cursor]")..'(.-)%[Cursor%]')
  end
  return false
end

--查ID
function Data_id(data)
  if Data_check(data) then
    local text=tostring(io.open(DataRoute):read("*a"))
    return text:match(Transferred("[File]"..Code(tostring(data)).."[Cursor]"..Data_cursor(data).."[Cursor][Id]")..'(.-)%[Id%]')
  end
  return false
end

--查Main
function Data_Main()
  local text=tostring(io.open(DataRoute):read("*a"))
  return Decode(text:match(Transferred("[Main]")..'(.-)%[Main%]'))
end

--改Main
function Data_GMain(data)
  local text=tostring(io.open(DataRoute):read("*a"))
  local text1="[Main]"..Code(Data_Main()).."[Main]"
  local text2="[Main]"..Transferred(Code(data)).."[Main]"
  local text3=string.gsub(text,Transferred(text1),text2)
  return io.open(DataRoute,"w"):write(text3):close()
end

function Typew(view)
  view.setFocusable(true);
  view.setFocusableInTouchMode(true);
  view.requestFocus();
  task(50,function()
    im=view.getContext().getSystemService(this.INPUT_METHOD_SERVICE);
    im.toggleSoftInput(0,InputMethodManager.HIDE_NOT_ALWAYS);
    if view.Text:find("%.") then
      view.setSelection(0,#view.Text-tointeger(#view.Text:match(view.Text:match("(.+)%.").."(.+)")))
     else
      view.setSelection(0,#view.Text)
    end
  end)
end

function OpenFile(path)
  FileName=tostring(File(path).Name)
  ExtensionName=FileName:match("%.(.+)")
  Mime=MimeTypeMap.getSingleton().getMimeTypeFromExtension(ExtensionName)
  if Mime then
    intent = Intent()
    intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
    intent.setAction(Intent.ACTION_VIEW);
    intent.setDataAndType(Uri.fromFile(File(path)), Mime);
    activity.startActivity(intent)
    return true
   else
    return false
  end
end

VIEW877={
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
      dh(Dialog877,DIA877,300)
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
      id="Dialog877";
      backgroundColor=ThemeColor("Dialog");
      {
        RelativeLayout;
        layout_width="match_parent";
        {
          RelativeLayout;
          layout_height="50dp";
          id="TitleV877",
          layout_width="match_parent";
          {
            TextView;
            layout_marginLeft="15dp";
            textSize="20sp";
            singleLine=true;
            ellipsize="end";
            layout_alignParentBottom="true";
            id="titl877",
            textColor=ThemeColor("Text");
          };
        };
        {
          LinearLayout;
          layout_below="TitleV877";
          orientation="vertical";
          layout_marginTop="8dp";
          layout_width="match_parent";
          {
            RelativeLayout;
            layout_width="match_parent";
            layout_height="150dp";
            {
              TextView;
              layout_centerInParent="true";
              id="andlua87777";
              layout_height="8dp";
            };
            {
              ProgressBar;
              layout_centerHorizontal="true";
              layout_above="andlua87777";
            };
            {
              TextView;
              layout_below="andlua87777";
              textColor="0XFF222222";
              id="titl515877",
              layout_centerHorizontal="true";
              textSize="15sp";
            };
          };
        };
      };
    };
  };
};