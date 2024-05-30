require "import"
import "android.app.*"
import "android.os.*"
import "android.text.Html"
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
import "android.content.Context"
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
import "android.provider.MediaStore"
import "android.graphics.BitmapFactory"
import "android.content.Intent"
import "android.graphics.drawable.ColorDrawable"
import "bmob"

ltsid,mc,gg,state=...

layout={
  LinearLayout;
  layout_width="fill";
  layout_height="fill";
  backgroundColor=AndLuaB1;
  id="ViewNight_lay1";
  {
    LinearLayout;
    layout_width="fill";
    layout_height="fill";
    backgroundColor=AndLuaB1;
    orientation="vertical";
    {
      YLListView;
      VerticalScrollBarEnabled=false;
      overScrollMode=2;
      layout_width="fill";
      layout_height="fill";
      VerticalScrollBarEnabled=false;
      overScrollMode=2;
      id="list";
      DividerHeight=0;
      layout_weight="1";
      backgroundColor=AndLuaB;
    };
    {
      LinearLayout;
      layout_width="match_parent";
      id="Panel";
      gravity="right";
      orientation="horizontal";
      {
        CardView;
        layout_width="match_parent";
        elevation="0dp";
        backgroundColor=AndLuaB3;
        layout_weight="1";
        radius="6dp";
        layout_margin="8dp";
        {
          EditText;
          textSize="15sp";
          layout_marginLeft="2dp";
          background="0";
          id="ChatText0";
          layout_marginRight="2dp";
          MaxLines=4;
          layout_width="match_parent";
          hint=getLS("L_Send_a_message").."...";
        };
      };
      {
        CardView;
        layout_gravity="right|bottom";
        elevation="0dp";
        layout_marginLeft="-2dp";
        backgroundColor="0XFF2196F3";
        layout_height="41dp";
        layout_width="60dp";
        id="Send";
        radius="6dp";
        layout_margin="8dp";
        {
          TextView;
          layout_width="match_parent";
          layout_height="match_parent";
          textSize="14sp";
          gravity="center";
          Visibility=0;
          text="发送";
          id="Send1";
          textColor="0xffffffff";
        };
        {
          ProgressBar;
          style="?android:attr/progressBarStyleSmall";
          layout_gravity="center";
          id="Send2";
          Visibility=8;
        };
      };
    };
    {
      LinearLayout;
      layout_height="23dp";
      layout_marginBottom="10dp";
      layout_width="match_parent";
      {
        RelativeLayout;
        layout_height="match_parent";
        layout_width="match_parent";
        {
          LinearLayout;
          layout_height="23dp";
          orientation="horizontal";
          layout_width="match_parent";
          {
            LinearLayout;
            layout_height="match_parent";
            layout_width="20%w";
            {
              ImageView;
              id="biaoq";
              layout_height="match_parent";
              layout_width="match_parent";
              src="res/Metrial488.png";
              ColorFilter=TitleColor1;
            };
          };
          {
            LinearLayout;
            layout_height="match_parent";
            layout_width="20%w";
            {
              ImageView;
              layout_height="match_parent";
              layout_width="match_parent";
              src="res/Metrial491.png";
              ColorFilter=TitleColor1;
              id="ttpp";
            };
          };
          {
            LinearLayout;
            layout_height="match_parent";
            layout_width="20%w";
            {
              ImageView;
              layout_height="match_parent";
              layout_width="match_parent";
              src="res/Metrial745.png";
              id="il1";
              ColorFilter=TitleColor1;
            };
          };
          {
            LinearLayout;
            layout_height="match_parent";
            layout_width="20%w";
            {
              ImageView;
              layout_height="match_parent";
              layout_width="match_parent";
              src="res/Metrial441.png";
              id="il2";
              ColorFilter=TitleColor1;
            };
          };
          {
            LinearLayout;
            layout_height="match_parent";
            layout_width="20%w";
            {
              ImageView;
              layout_height="match_parent";
              layout_width="match_parent";
              src="res/Metrial910.png";
              ColorFilter=TitleColor1;
              id="il3";
            };
          };
        };
      };
    };
    {
      LinearLayout;
      layout_height="146dp";
      layout_marginBottom="10dp";
      Visibility="8";
      id="bq";
      layout_width="match_parent";
      {
        GridView;
        numColumns=8;
        verticalSpacing="0dp";
        layout_height="fill";
        gravity="center";
        id="grid";
        horizontalSpacing="0dp";
        layout_width="fill";
      };
    };
  };
};

ChatList={
  LinearLayout;
  {
    RelativeLayout;
    layout_width="match_parent";
    id="Chat1";
    Visibility=8;
    {
      RelativeLayout;
      id="lay1";
      layout_marginLeft="10dp";
      layout_width="40dp";
      layout_height="40dp";
      layout_marginTop="10dp";
      {
        CircleImageView;
        layout_height="match_parent";
        id="imag1";
        layout_width="match_parent";
      };
    };
    {
      TextView;
      text="昵称";
      id="name1";
      layout_toRightOf="lay1";
      textSize="12sp";
      layout_marginLeft="10dp";
      layout_marginRight="62dp";
      layout_alignTop="lay1";
      singleLine=true;
      layout_toRightOf="lay1";
      textColor=TitleColor1;
    };
    {
      TextView;
      layout_toRightOf="lay1";
      layout_below="name1";
      layout_width="10dp";
      backgroundColor=AndLuaB1;
      layout_height="10dp";
      layout_marginTop="4dp";
      layout_marginLeft="10dp";
    };
    {
      CardView;
      layout_toRightOf="lay1";
      layout_below="name1";
      elevation="0dp";
      layout_marginLeft="10dp";
      backgroundColor=AndLuaB1;
      layout_marginRight="62dp";
      radius="8dp";
      layout_marginTop="4dp";
      layout_marginBottom="10dp";
      {
        TextView;
        text="嗨";
        Visibility=4;
        textSize="14sp";
        textColor=TitleColor,
        layout_margin="8dp";
      };
      {
        TextView;
        id="ChatText1";
        text="聊天内容";
        textIsSelectable=true,
        textSize="14sp";
        textColor=TitleColor,
        layout_margin="8dp";
      };
      {
        ImageView;
        id="ChatSrc1";
        Visibility=8;
      };
    };
    {
      TextView;
      layout_width="match_parent";
    };
  };
  {
    RelativeLayout;
    layout_width="match_parent";
    id="Chat2";
    Visibility=8;
    {
      RelativeLayout;
      layout_alignParentRight="true";
      layout_marginRight="10dp";
      layout_width="40dp";
      id="lay2";
      layout_marginTop="10dp";
      layout_height="40dp";
      {
        CircleImageView;
        layout_width="match_parent";
        id="imag2";
        transitionName="tx1io",
        layout_height="match_parent";
      };
    };
    {
      TextView;
      text="昵称";
      id="name2";
      layout_toLeftOf="lay2";
      textSize="12sp";
      layout_marginRight="10dp";
      layout_marginLeft="62dp";
      layout_alignTop="lay2";
      singleLine=true;
      layout_toLeftOf="lay2";
      textColor=TitleColor1,
    };
    {
      TextView;
      backgroundColor=AndLuaB1;
      layout_width="10dp";
      layout_toLeftOf="lay2";
      layout_below="name2";
      layout_marginRight="10dp";
      layout_marginTop="4dp";
      layout_height="10dp";
    };
    {
      CardView;
      layout_marginTop="4dp";
      layout_marginRight="10dp";
      layout_below="name2";
      layout_marginLeft="62dp";
      backgroundColor=AndLuaB1;
      layout_marginBottom="10dp";
      layout_toLeftOf="lay2";
      radius="8dp";
      elevation="0dp";
      {
        TextView;
        text="嗨";
        Visibility=4;
        layout_margin="8dp";
        textSize="14sp";
        textColor="0x00000000";
      };
      {
        TextView;
        text="聊天内容";
        textIsSelectable=true,
        layout_margin="8dp";
        textSize="14sp";
        id="ChatText2";
        textColor=TitleColor,
      };
      {
        ImageView;
        --layout_margin="8dp";
        id="ChatSrc2";
        Visibility=8;
      };
    };
    {
      TextView;
      layout_width="match_parent";
    };
  };
  {
    RelativeLayout;
    id="Chat3";
    Visibility=0;
    layout_width="-1";
    {
      RelativeLayout;
      layout_width="-1";
      layout_margin="15dp";
      {
        ProgressBar;
        layout_centerInParent="true";
        style="?android:attr/progressBarStyleSmall";
        id="jzd";
        Visibility=8;
      };
      {
        TextView;
        id="ChatText3";
        layout_centerHorizontal="true";
        textSize="12sp";
        textColor=TitleColor1,
        layout_marginLeft="20dp";
        singleLine=true;
        layout_marginRight="20dp";
        gravity="center";
      };
    };
  };
  {
    RelativeLayout;
    layout_width="match_parent";
    id="Chat21";
    Visibility=8;
    {
      RelativeLayout;
      layout_alignParentRight="true";
      layout_marginRight="10dp";
      layout_width="40dp";
      id="lay21";
      layout_marginTop="10dp";
      layout_height="40dp";
      {
        CircleImageView;
        layout_width="match_parent";
        id="imag21";
        layout_height="match_parent";
      };
    };
    {
      TextView;
      text="昵称";
      id="name21";
      layout_toLeftOf="lay21";
      textSize="12sp";
      layout_marginRight="10dp";
      layout_marginLeft="62dp";
      layout_alignTop="lay21";
      singleLine=true;
      layout_toLeftOf="lay21";
      textColor=TitleColor1,
    };
    {
      TextView;
      backgroundColor=AndLuaB1;
      layout_width="10dp";
      layout_toLeftOf="lay21";
      layout_below="name21";
      layout_marginRight="10dp";
      layout_marginTop="4dp";
      layout_height="10dp";
    };
    {
      CardView;
      layout_marginTop="4dp";
      layout_marginRight="10dp";
      layout_below="name21";
      layout_marginLeft="62dp";
      backgroundColor=AndLuaB1;
      layout_marginBottom="10dp";
      layout_toLeftOf="lay21";
      radius="8dp";
      elevation="0dp";
      {
        LinearLayout;
        layout_width="250dp";
        orientation="vertical";
        layout_height="65dp";
        {
          CardView;
          backgroundColor=AndLuaB1;
          layout_width="-1";
          layout_margin="8dp";
          radius="5dp";
          Elevation="0dp";
          {
            LinearLayout;
            layout_width="-1";
            orientation="horizontal";
            layout_height="-1";
            {
              LinearLayout;
              layout_margin="3dp";
              {
                CircleImageView;
                layout_width="43dp";
                id="ttx21";
                layout_height="43dp";
              };
            };
            {
              LinearLayout;
              layout_width="-1";
              orientation="vertical";
              layout_height="-1";
              {
                TextView;
                layout_marginLeft="2dp";
                singleLine="true";
                layout_marginTop="5dp";
                id="wb21";
                ellipsize="end";
                textSize="15sp";
                textColor=TitleColor,
              };
              {
                TextView;
                layout_marginTop="2dp";
                id="wb211";
                ellipsize="end";
                singleLine=true;
                textSize="12sp";
                textColor=TitleColor1,
                layout_marginLeft="3dp";
              };
            };
          };
        };
      };
    };
    {
      TextView;
      layout_width="match_parent";
    };
  };
  {
    RelativeLayout;
    layout_width="match_parent";
    id="Chat22";
    Visibility=8;
    {
      RelativeLayout;
      id="lay22";
      layout_marginLeft="10dp";
      layout_width="40dp";
      layout_height="40dp";
      layout_marginTop="10dp";
      {
        CircleImageView;
        layout_height="match_parent";
        id="imag22";
        layout_width="match_parent";
      };
    };
    {
      TextView;
      text="昵称";
      id="name22";
      layout_toRightOf="lay22";
      textSize="12sp";
      layout_marginLeft="10dp";
      layout_marginRight="62dp";
      layout_alignTop="lay22";
      singleLine=true;
      layout_toRightOf="lay22";
      textColor=TitleColor1,
    };
    {
      TextView;
      layout_toRightOf="lay22";
      layout_below="name22";
      layout_width="10dp";
      backgroundColor=AndLuaB1;
      layout_height="10dp";
      layout_marginTop="4dp";
      layout_marginLeft="10dp";
    };
    {
      CardView;
      layout_toRightOf="lay22";
      layout_below="name22";
      elevation="0dp";
      layout_marginLeft="10dp";
      backgroundColor=AndLuaB1;
      layout_marginRight="62dp";
      radius="8dp";
      layout_marginTop="4dp";
      layout_marginBottom="10dp";
      {
        LinearLayout;
        layout_width="250dp";
        orientation="vertical";
        layout_height="65dp";
        {
          CardView;
          backgroundColor=AndLuaB1;
          layout_width="-1";
          layout_margin="8dp";
          radius="5dp";
          Elevation="0dp";
          {
            LinearLayout;
            layout_width="-1";
            orientation="horizontal";
            layout_height="-1";
            {
              LinearLayout;
              layout_margin="3dp";
              {
                CircleImageView;
                layout_width="43dp";
                id="ttx22";
                src="icon.png";
                layout_height="43dp";
              };
            };
            {
              LinearLayout;
              layout_width="-1";
              orientation="vertical";
              layout_height="-1";
              {
                TextView;
                text="Text";
                layout_marginLeft="2dp";
                singleLine="true";
                layout_marginTop="5dp";
                id="wb22";
                ellipsize="end";
                textSize="15sp";
                textColor=TitleColor,
              };
              {
                TextView;
                text="Text";
                layout_marginTop="2dp";
                id="wb222";
                ellipsize="end";
                singleLine=true;
                textSize="12sp";
                textColor=TitleColor1,
                layout_marginLeft="3dp";
              };
            };
          };
        };
      };
    };
    {
      TextView;
      layout_width="match_parent";
    };
  };
  {
    TextView;
    id="ChatText4";
    Visibility=8;
  };
  {
    TextView;
    id="ChatText5";
    Visibility=8;
  };
  {
    TextView;
    id="ChatText7";
    Visibility=8;
  };
  {
    TextView;
    id="ChatText8";
    Visibility=8;
  };
  {
    TextView;
    id="ChatText9";
    Visibility=8;
  };
  {
    TextView;
    id="ChatText10";
    Visibility=8;
  };
  {
    TextView;
    id="ChatText11";
    Visibility=8;
  };
};

btl={
  LinearLayout;
  layout_width="fill";
  elevation="1dp";
  layout_height="55dp";
  orientation="horizontal";
  {
    LinearLayout;
    layout_width="55dp";
    gravity="center";
    id="menu4";
    layout_height="55dp";
    layout_marginLeft="-15dp";
    {
      ImageView;
      layout_height="25dp";
      colorFilter=tonumber(bjzt());
      layout_width="28dp";
      src="res/off.png";
    };
  };
  {
    LinearLayout;
    layout_height="fill";
    layout_weight="1";
    orientation="horizontal";
    {
      TextView;
      layout_gravity="center";
      textSize="18sp";
      text=mc;
      textColor=tonumber(bjzt());
      id="bt";
      singleLine=true;
    };
    {
      TextView;
      text="0";
      layout_width="0dp";
      id="dz";
      layout_height="0dp";
    };
  };
  {
    LinearLayout;
    layout_width="55dp";
    gravity="center";
    id="menu1";
    layout_height="55dp";
    layout_marginRight="-5dp";
    {
      ImageView;
      layout_height="25dp";
      colorFilter=tonumber(bjzt());
      layout_width="28dp";
      src="res/Metrial31.png";
    };
  };
  {
    LinearLayout;
    layout_width="55dp";
    gravity="center";
    id="menu2";
    layout_height="55dp";
    layout_marginRight="-5dp";
    {
      ImageView;
      layout_height="25dp";
      colorFilter=tonumber(bjzt());
      layout_width="28dp";
      src="res/Metrial491.png";
    };
  };
  {
    LinearLayout;
    layout_width="55dp";
    gravity="center";
    id="menu3";
    layout_height="55dp";
    layout_marginRight="-15dp";
    {
      ImageView;
      layout_height="25dp";
      colorFilter=tonumber(bjzt());
      layout_width="28dp";
      src="res/Metrial842.png";
    };
  };
};

bqq={
  RelativeLayout;
  id="bj1";
  layout_height="fill";
  BackgroundColor=AndLuaB1;
  layout_width="fill";
  {
    EditText;
    id="bj";
    textSize="20sp";
    Focusable=false;
    layout_centerInParent="true";
    background="0";
    cursorVisible=false,
    layout_margin="5dp";
    onClick=function(v)
      ChatText0.Text=ChatText0.Text..v.Text
      ChatText0.setSelection(ChatText0.length());
      return true
    end,
  };
};

ztt()
activity.setContentView(loadlayout(layout))
ViewNight(ViewNight_lay1)
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)

emoji=[==[
^😀[笑脸]
^😁[呲牙]
^😂[激动]
^😃[开心]
^😄[高兴]
^😅[流汗]
^😆[大笑]
^😉[媚眼]
^😊[微笑]
^😎[得意]
^😍[爱你]
^😘[亲脸]
^😗[亲亲]
^😙[亲吻]
^☺[愉快]
^😇[天使]
^😐[认可]
^😑[无奈]
^😶[无语]
^😏[阴笑]
^😣[纠结]
^😥[难受]
^😮[惊讶]
^😪[瞌睡]
^😫[郁闷]
^😴[困]
^😌[欣慰]
^😛[吐舌]
^😜[眯眼]
^😝[调皮]
^😒[鄙视]
^😔[不开心]
^😲[吃惊]
^😷[闭嘴]
^😞[难过]
^😤[生气]
^😢[哭泣]
^😭[大哭]
^😳[害羞]
^😵[头晕]
^😡[愤怒]
^😠[怒]
]==]

data={}
adp=LuaAdapter(activity,data,bqq)

emoji2=emoji:gmatch('%^(.-)%[')
for emoji1 in emoji:gmatch('%[(.-)%]') do
  adp.add{bj=emoji2()}
end

grid.Adapter=adp

an=0

il1.onClick=function(v)
  SnackerBar.build()
  :msg("该功能已下架")
  :actionText(getLS("L_OK"))
  :action(function()
  end)
  :show()
  --activity.newActivity("main58",{1})
end

il2.onClick=function(v)
  SnackerBar.build()
  :msg("该功能已下架")
  :actionText(getLS("L_OK"))
  :action(function()
  end)
  :show()
  --activity.newActivity("main58",{2})
end

il3.onClick=function(v)
  SnackerBar.build()
  :msg("该功能已下架")
  :actionText(getLS("L_OK"))
  :action(function()
  end)
  :show()
  --activity.newActivity("main58",{3})
end

biaoq.onClick=function(v)
  if an==0 then
    an=1
    bq.setVisibility(View.VISIBLE)

    imm = activity.getSystemService(Context.INPUT_METHOD_SERVICE)
    imm.hideSoftInputFromWindow(grid.getWindowToken(), 0);

   else
    an=0
    bq.setVisibility(View.GONE)

    imm = activity.getSystemService(Context.INPUT_METHOD_SERVICE)
    imm.showSoftInput(ChatText0, InputMethodManager.SHOW_FORCED)

  end
end

function Timee()
  return tostring(os.date("%Y年%m月%d日 %H:%M"))
end

Forbidden=0
Forbiddenn=0

function Forbidden1()
  ChatText0.setFocusable(false);
  ChatText0.setHint("全体禁言中...")
  Forbidden=1
end

--[[
  if tostring(tointeger(os.date("%Y%m%d%H%M")))>=tostring(tointeger(tointeger(ChatTime1)+4)) then
    thread(SendChat,"系统消息",ChatTime,"system")
  end]]

function tti(ChatTime)
  ChatTime0=tostring(string.gsub(ChatTime,"年",""))
  ChatTime00=tostring(string.gsub(ChatTime0,"月",""))
  ChatTime000=tostring(string.gsub(ChatTime00,"日",""))
  ChatTime0000=tostring(string.gsub(ChatTime000," ",""))
  ChatTime1=tostring(string.gsub(ChatTime0000,":",""))
  ChatTime=string.gsub(ChatTime,tostring(string.sub(os.date("%Y年%m月%d日 "),0,18)),"今天 ")
  if tointeger(tointeger(os.date("%d")-1))<10 then
    ChatTime5="0"..tointeger(tointeger(os.date("%d")-1))
   else
    ChatTime5=tointeger(tointeger(os.date("%d")-1))
  end
  if tointeger(tointeger(os.date("%d")-2))<10 then
    ChatTime6="0"..tointeger(tointeger(os.date("%d")-2))
   else
    ChatTime6=tointeger(tointeger(os.date("%d")-2))
  end
  ChatTime=string.gsub(ChatTime,tostring(string.sub(tostring(os.date("%Y年%m月")..ChatTime5.."日 "),0,18)),"昨天 ")
  ChatTime=string.gsub(ChatTime,tostring(string.sub(tostring(os.date("%Y年%m月")..ChatTime6.."日 "),0,18)),"前天 ")
  return ChatTime
end

function SendChat(ChatName,ChatText,ChatSrc,ChatType,ChatObject,ChatTime,dild,n1,i1,d1,uid)

  emoji2=emoji:gmatch('%^(.-)%[')
  for emoji1 in emoji:gmatch('%[(.-)%]') do
    ChatText=string.gsub(ChatText,"%["..emoji1.."%]",emoji2())
  end

  ChatTime=tti(ChatTime)

  local ChatObject22=""
  local ChatObject22=ChatObject

  ui3=activity.getLuaDir().."/res/uid4.LY"
  uid3=io.open(ui3):read("*a")

  if ChatObject==uid3 then
    ChatObject=2
   else
    ChatObject=1
  end

  if ChatObject==1 then

    if ChatType==1 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="1",name1=ChatName,Chat3={Visibility=8},Chat1={Visibility=0},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag1={src=ChatSrc,onClick=function(v)
            intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
            intent.putExtra("uidd1",ChatObject22);
            path=activity.getLuaDir().."/main15.lua"
            intent.setData(Uri.parse("file://"..path));
            activity.startActivity(intent,ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());end},ChatText1={Text=ChatText,Visibility=0},ChatSrc1={Visibility=8}})--文字
     elseif ChatType==2 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="2",name1=ChatName,Chat3={Visibility=8},Chat1={Visibility=0},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},ChatSrc1={src=ChatText,Visibility=0},imag1=ChatSrc,ChatText1={Visibility=8}})--图片
     elseif ChatType==3 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="1",name1=ChatName,Chat3={Visibility=8},Chat1={Visibility=0},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag1=ChatSrc,ChatText1={Text=ChatText,Visibility=0},ChatSrc1={Visibility=8}})--撤回
     elseif ChatType==4 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="3",name22=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=0},imag22=ChatSrc,ttx22=i1,wb22={Text=n1},wb222={Text=d1},ChatText10=ChatText,ChatText11=uid})--源码
     elseif ChatType==5 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="5",name22=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=0},imag22=ChatSrc,ttx22=i1,wb22={Text=n1},wb222={Text=d1},ChatText10=ChatText,ChatText11=uid})--帖子
     elseif ChatType==6 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="6",name22=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=0},imag22=ChatSrc,ttx22=i1,wb22={Text=n1},wb222={Text=d1},ChatText10=ChatText,ChatText11=uid})--用户
    end

   else

    if ChatType==1 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="11",name2=ChatName,Chat3={Visibility=8},Chat2={Visibility=0},Chat1={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag2={src=ChatSrc},ChatText2={Text=ChatText,Visibility=0},ChatSrc2={Visibility=8}})
     elseif ChatType==2 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="22",name2=ChatName,Chat3={Visibility=8},Chat2={Visibility=0},Chat1={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},ChatSrc2={src=ChatText,Visibility=0},imag2=ChatSrc,ChatText2={Visibility=8}})
     elseif ChatType==3 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="11",name2=ChatName,Chat3={Visibility=8},Chat2={Visibility=0},Chat1={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag2=ChatSrc,ChatText2={Text=ChatText,Visibility=0},ChatSrc2={Visibility=8}})
     elseif ChatType==4 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="33",name21=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=0},Chat22={Visibility=8},imag21=ChatSrc,ttx21=i1,wb21={Text=n1},wb211={Text=d1},ChatText10=ChatText,ChatText11=uid})--源码
     elseif ChatType==5 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="55",name21=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=0},Chat22={Visibility=8},imag21=ChatSrc,ttx21=i1,wb21={Text=n1},wb211={Text=d1},ChatText10=ChatText,ChatText11=uid})--帖子
     elseif ChatType==6 then
      ada.insert(0,{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="66",name21=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=0},Chat22={Visibility=8},imag21=ChatSrc,ttx21=i1,wb21={Text=n1},wb211={Text=d1},ChatText10=ChatText,ChatText11=uid})--用户
    end

  end

end

function SendChat2(ChatName,ChatText,ChatSrc,ChatType,ChatObject,ChatTime,dild,n1,i1,d1,uid)

  emoji2=emoji:gmatch('%^(.-)%[')
  for emoji1 in emoji:gmatch('%[(.-)%]') do
    ChatText=string.gsub(ChatText,"%["..emoji1.."%]",emoji2())
  end

  ChatTime=tti(ChatTime)

  ChatObject22=""
  ChatObject22=ChatObject

  ui3=activity.getLuaDir().."/res/uid4.LY"
  uid3=io.open(ui3):read("*a")

  if ChatObject==uid3 then
    ChatObject=2
   else
    ChatObject=1
  end

  if ChatObject==1 then

    if ChatType==1 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="1",name1=ChatName,Chat3={Visibility=8},Chat1={Visibility=0},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag1=ChatSrc,ChatText1={Text=ChatText,Visibility=0},ChatSrc1={Visibility=8}}--文字
     elseif ChatType==2 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="2",name1=ChatName,Chat3={Visibility=8},Chat1={Visibility=0},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},ChatSrc1={src=ChatText,Visibility=0},imag1=ChatSrc,ChatText1={Visibility=8}}--图片
     elseif ChatType==3 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="1",name1=ChatName,Chat3={Visibility=8},Chat1={Visibility=0},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag1=ChatSrc,ChatText1={Text=ChatText,Visibility=0},ChatSrc1={Visibility=8}}--撤回
     elseif ChatType==4 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="3",name22=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=0},imag22=ChatSrc,ttx22=i1,wb22={Text=n1},wb222={Text=d1},ChatText10=ChatText,ChatText11=uid}--源码
     elseif ChatType==5 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="5",name22=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=0},imag22=ChatSrc,ttx22=i1,wb22={Text=n1},wb222={Text=d1},ChatText10=ChatText,ChatText11=uid}--帖子
     elseif ChatType==6 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="6",name22=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=0},imag22=ChatSrc,ttx22=i1,wb22={Text=n1},wb222={Text=d1},ChatText10=ChatText,ChatText11=uid}--用户
    end

   else

    if ChatType==1 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="11",name2=ChatName,Chat3={Visibility=8},Chat2={Visibility=0},Chat1={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag2=ChatSrc,ChatText2={Text=ChatText,Visibility=0},ChatSrc2={Visibility=8}}
     elseif ChatType==2 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="22",name2=ChatName,Chat3={Visibility=8},Chat2={Visibility=0},Chat1={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},ChatSrc2={src=ChatText,Visibility=0},imag2=ChatSrc,ChatText2={Visibility=8}}
     elseif ChatType==3 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="11",name2=ChatName,Chat3={Visibility=8},Chat2={Visibility=0},Chat1={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8},imag2=ChatSrc,ChatText2={Text=ChatText,Visibility=0},ChatSrc2={Visibility=8}}
     elseif ChatType==4 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="33",name21=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=0},Chat22={Visibility=8},imag21=ChatSrc,ttx21=i1,wb21={Text=n1},wb211={Text=d1},ChatText10=ChatText,ChatText11=uid}--源码
     elseif ChatType==5 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="55",name21=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=0},Chat22={Visibility=8},imag21=ChatSrc,ttx21=i1,wb21={Text=n1},wb211={Text=d1},ChatText10=ChatText,ChatText11=uid}--帖子
     elseif ChatType==6 then
      ada.add{ChatText9=dild,ChatText8=ChatTime,ChatText7={Text=ChatObject22},ChatText5=ChatText,ChatText4="66",name21=ChatName,Chat3={Visibility=8},Chat1={Visibility=8},Chat2={Visibility=8},Chat21={Visibility=0},Chat22={Visibility=8},imag21=ChatSrc,ttx21=i1,wb21={Text=n1},wb211={Text=d1},ChatText10=ChatText,ChatText11=uid}--用户
    end

  end

end

function SendChat1(ChatText)
  ada.insert(0,{ChatText4="4",ChatText3=ChatText,Chat3={Visibility=0},Chat2={Visibility=8},Chat1={Visibility=8},Chat21={Visibility=8},Chat22={Visibility=8}})
end

function ListButtom()
  task(10,function()
    list.setSelection(ada.getCount()-1)
  end)
end

ListButtom()

Send.setBackgroundColor(0XFFdddee2)
Send3=0

Send.onClick=function()

  if Forbidden==0 then
    if Send3==0 then
      if ChatText0.Text~="" then
        ChatText000=ChatText0.Text
        emoji2=emoji:gmatch('%^(.-)%[')
        for emoji1 in emoji:gmatch('%[(.-)%]') do
          ChatText000=string.gsub(ChatText000,emoji2(),"["..emoji1.."]")
        end
        Send3=1
        Send.setBackgroundColor(0XFFdddee2)
        Send1.setVisibility(8)
        Send2.setVisibility(0)
        uguid()
        Http.post("https://ly250.cn/andlua/Chat2.php","uid3="..uid3.."&uid1="..uid1.."&uid2="..uid2.."&sid="..sid().."&id="..ltsid.."&lx=1".."&text="..ChatText000.."&time="..Timee(),function(a1,b1,c1,d1)
          sid1=b1:match('%["ret"] = "(.-)%";')
          if sid1=="1" then
            Send3=0
            Send.setBackgroundColor(tonumber(bjzt()))
            ListButtom()
            Send1.setVisibility(0)
            Send2.setVisibility(8)
            SnackerBar.build()
            :msg("发送失败")
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           elseif sid1=="2" then
            Send3=0
            Send.setBackgroundColor(tonumber(bjzt()))
            ListButtom()
            Send1.setVisibility(0)
            Send2.setVisibility(8)
            SnackerBar.build()
            :msg(getLS("L_Identity_expired"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           elseif sid1=="3" then
            Send3=0
            Send.setBackgroundColor(tonumber(bjzt()))
            ListButtom()
            Send1.setVisibility(0)
            Send2.setVisibility(8)
            SnackerBar.build()
            :msg("字数超出限制")
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           elseif sid1=="4" then
            src3=b1:match('%["src"] = "(.-)%";')
            name=b1:match('%["name"] = "(.-)%";')
            Send3=0
            SendChat2(name,ChatText0.Text,src3,1,uid3,Timee(),"0")
            ChatText0.Text=""
            ListButtom()
            Send1.setVisibility(0)
            Send2.setVisibility(8)
           else
            Send3=0
            Send.setBackgroundColor(tonumber(bjzt()))
            ListButtom()
            Send1.setVisibility(0)
            Send2.setVisibility(8)
            SnackerBar.build()
            :msg("发送失败")
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end
        end)
      end
    end
  end
end

ChatText0.addTextChangedListener{
  onTextChanged=function(s)
    if Forbidden==0 then
      if Send3==0 then
        if ChatText0.Text=="" then
          Send.setBackgroundColor(0XFFdddee2)
         else
          Send.setBackgroundColor(tonumber(bjzt()))
        end
      end
     else
      ChatText0.Text=""
    end
  end
}

b=bmob("73669056f163f1e66a6deed81dff6e50","8a2770b0663035f18c9e4260711873b8")

function onActivityResult(requestCode,resultCode,intent)
  if Forbidden==0 then
    if intent then
      local cursor =this.getContentResolver ().query(intent.getData(), nil, nil, nil, nil)
      cursor.moveToFirst()
      local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
      fileSrc = cursor.getString(idx)
      bit=nil
      bit =BitmapFactory.decodeFile(fileSrc)
      InputLayout={
        LinearLayout;
        gravity="center";
        layout_height="fill";
        layout_width="fill";
        backgroundColor=MainColor1;
        orientation="vertical";
        {
          PhotoView;
          id="src1";
        };
      };
      AlertDialog.Builder(this)
      .setTitle("确定发送吗？")
      .setView(loadlayout(InputLayout))
      .setPositiveButton("确定",{onClick=function()
          Send1.setVisibility(8)
          Send2.setVisibility(0)
          Send.setBackgroundColor(0XFFdddee2)
          b:upload(fileSrc,function(code,jon)
            Src=dump(jon):match('%["url"%]	= "(.-)" ;')
            uguid()
            Http.post("https://ly250.cn/andlua/Chat2.php","uid3="..uid3.."&uid1="..uid1.."&uid2="..uid2.."&sid="..sid().."&id="..ltsid.."&lx=2".."&text="..Src.."&time="..Timee(),function(a1,b1,c1,d1)
              sid1=b1:match('%["ret"] = "(.-)%";')
              if sid1=="1" then
                Send3=0
                Send.setBackgroundColor(tonumber(bjzt()))
                ListButtom()
                Send1.setVisibility(0)
                Send2.setVisibility(8)
                SnackerBar.build()
                :msg("发送失败")
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               elseif sid1=="2" then
                Send3=0
                Send.setBackgroundColor(tonumber(bjzt()))
                ListButtom()
                Send1.setVisibility(0)
                Send2.setVisibility(8)
                SnackerBar.build()
                :msg(getLS("L_Identity_expired"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               elseif sid1=="3" then
                Send3=0
                Send.setBackgroundColor(tonumber(bjzt()))
                ListButtom()
                Send1.setVisibility(0)
                Send2.setVisibility(8)
                SnackerBar.build()
                :msg("图片错误")
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
               elseif sid1=="4" then
                src3=b1:match('%["src"] = "(.-)%";')
                name=b1:match('%["name"] = "(.-)%";')
                Send3=0
                SendChat2(name,fileSrc,src3,2,uid3,Timee(),"0")
                ListButtom()
                Send1.setVisibility(0)
                Send2.setVisibility(8)
                if ChatText0.Text=="" then
                  Send.setBackgroundColor(0XFFdddee2)
                 else
                  Send.setBackgroundColor(tonumber(bjzt()))
                end
               else
                Send3=0
                Send.setBackgroundColor(tonumber(bjzt()))
                ListButtom()
                Send1.setVisibility(0)
                Send2.setVisibility(8)
                SnackerBar.build()
                :msg("发送失败")
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
              end
            end)
          end)
        end})
      .setNegativeButton(getLS("L_Cancel"),nil)
      .show()
      src1.setImageBitmap(loadbitmap(fileSrc))
    end
  end
end

bw(menu1,0x5FFFFFFF)
bw(menu2,0x5FFFFFFF)
bw(menu3,0x5FFFFFFF)
bw(menu4,0x5FFFFFFF)

menu1.onClick=function()
  Refresh1()
  page=1
end

menu2.onClick=function()
  if Forbidden==0 then
    local intent= Intent(Intent.ACTION_PICK)
    intent.setType("image/*")
    this.startActivityForResult(intent, 1)
  end
end

menu3.onClick=function()
  AlertDialog.Builder(this)
  .setTitle("公告")
  .setMessage(gg)
  .setPositiveButton("知道了",nil)
  .show()
end

menu4.onClick=function()
  activity.finish()
end

ttpp.onClick=function()
  if Forbidden==0 then
    local intent= Intent(Intent.ACTION_PICK)
    intent.setType("image/*")
    this.startActivityForResult(intent, 1)
  end
end

function withdraw(i)
  uguid()
  Http.post("https://ly250.cn/andlua/Chat4.php","uid3="..uid3.."&uid1="..uid1.."&uid2="..uid2.."&sid="..sid().."&id="..i,function(a1,b1,c1,d1)
    sid1=b1:match('%["ret"] = "(.-)%";')
    if sid1=="1" then
      SnackerBar.build()
      :msg("撤回失败")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
     elseif sid1=="4" then
      SnackerBar.build()
      :msg(getLS("L_Identity_expired"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
     elseif sid1=="ok" then
      Refresh1()
     else
      SnackerBar.build()
      :msg("网络错误")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
    end
  end)
end

function liste(l,v,p,i,ll)
  name="@"..v.Tag.name1.Text.." "
  uidd1=v.Tag.ChatText7.Text
  sjj=v.Tag.ChatText8.Text
  dild1=v.Tag.ChatText9.Text
  src=v.Tag.ChatText5.Text
  text1=v.Tag.ChatText5.Text
  aa=v.Tag.ChatText3
  bb=v.Tag.jzd
  id33=v.Tag.ChatText10.Text
  uid333=v.Tag.ChatText11.Text
  if v.Tag.ChatText4.Text=="2" then
    activity.newActivity("main28",{tostring(src)})
   elseif v.Tag.ChatText4.Text=="22" then
    activity.newActivity("main28",{tostring(src)})
   elseif v.Tag.ChatText4.Text=="3" then
    uguid()
    activity.newActivity("main12",{id33,uid333})
   elseif v.Tag.ChatText4.Text=="33" then
    uguid()
    activity.newActivity("main12",{id33,uid333})
   elseif v.Tag.ChatText4.Text=="5" then
    uguid()
    activity.newActivity("main8",{uid333,id33})
   elseif v.Tag.ChatText4.Text=="55" then
    uguid()
    activity.newActivity("main8",{uid333,id33})
   elseif v.Tag.ChatText4.Text=="6" then
    activity.newActivity("main15",{id33})
   elseif v.Tag.ChatText4.Text=="66" then
    activity.newActivity("main15",{id33})
   elseif v.Tag.ChatText4.Text=="4" then
    if ll=="0" then
      if Forbiddenn==0 then
        Forbiddenn=1
        aa.setVisibility(8)
        bb.setVisibility(0)
        task(1000,function()
          ada.remove(0)
          page=page+1
          Refresh(page)
          aa.setVisibility(0)
          bb.setVisibility(8)
        end)
      end
    end
  end
end

function liste1(l,v,p,i,ll)
  name="@"..v.Tag.name1.Text.." "
  uidd1=v.Tag.ChatText7.Text
  sjj=v.Tag.ChatText8.Text
  dild1=v.Tag.ChatText9.Text
  src=v.Tag.ChatText5.Text
  text1=v.Tag.ChatText5.Text
  aa=v.Tag.ChatText3
  bb=v.Tag.jzd
  id33=v.Tag.ChatText10.Text
  uid333=v.Tag.ChatText11.Text
  if v.Tag.ChatText4.Text=="1" then
    mainpt = { "@TA","查看主页","复制消息",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="@TA" then
        ChatText0.Text=ChatText0.Text..name
        ChatText0.setSelection(ChatText0.length());
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
       elseif Context=="复制消息"
        import "android.content.Context"
        activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(text1)
      end
    end
   elseif v.Tag.ChatText4.Text=="11" then
    mainpt = { "查看主页","撤回消息","复制消息",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="复制消息"
        import "android.content.Context"
        activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(text1)
       elseif Context=="撤回消息"
        withdraw(dild1)
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="2" then
    mainpt = { "@TA", "查看主页", "查看图片",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="@TA" then
        ChatText0.Text=ChatText0.Text..name
        ChatText0.setSelection(ChatText0.length());
       elseif Context=="查看图片"
        activity.newActivity("main28",{tostring(src)})
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="22" then
    mainpt = { "查看主页", "撤回消息","查看图片",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="查看图片"
        activity.newActivity("main28",{tostring(src)})
       elseif Context=="撤回消息"
        withdraw(dild1)
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="3" then
    mainpt = { "@TA", "查看主页", "查看源码",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="@TA" then
        ChatText0.Text=ChatText0.Text..name
        ChatText0.setSelection(ChatText0.length());
       elseif Context=="查看源码"
        uguid()
        activity.newActivity("main12",{id33,uid333})
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="33" then
    mainpt = {"查看主页", "撤回消息", "查看源码",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="撤回消息" then
        withdraw(dild1)
       elseif Context=="查看源码"
        uguid()
        activity.newActivity("main12",{id33,uid333})
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="5" then
    mainpt = { "@TA", "查看主页", "查看帖子",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="@TA" then
        ChatText0.Text=ChatText0.Text..name
        ChatText0.setSelection(ChatText0.length());
       elseif Context=="查看帖子"
        uguid()
        activity.newActivity("main8",{uid333,id33})
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="55" then
    mainpt = { "查看主页", "撤回消息", "查看帖子",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="撤回消息" then
        withdraw(dild1)
       elseif Context=="查看帖子"
        uguid()
        activity.newActivity("main8",{uid333,id33})
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="6" then
    mainpt = { "@TA", "查看主页", "查看用户",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="@TA" then
        ChatText0.Text=ChatText0.Text..name
        ChatText0.setSelection(ChatText0.length());
       elseif Context=="查看用户"
        activity.newActivity("main15",{id33})
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="66" then
    mainpt = { "查看主页", "撤回消息", "查看用户",sjj }
    PtionShow(mainpt)
    PtionList.onItemClick=function(p,v,i,s)
      PtionView.hide()
      Context=v.Tag.PtionTitle.Text
      if Context=="撤回消息" then
        withdraw(dild1)
       elseif Context=="查看用户"
        activity.newActivity("main15",{id33})
       elseif Context=="查看主页"
        activity.newActivity("main15",{uidd1})
      end
    end
   elseif v.Tag.ChatText4.Text=="4" then
    if ll=="0" then
      if Forbiddenn==0 then
        Forbiddenn=1
        aa.setVisibility(8)
        bb.setVisibility(0)
        task(1,function()
          ada.remove(0)
          page=page+1
          Refresh(page)
          aa.setVisibility(0)
          bb.setVisibility(8)
        end)
      end
    end
  end
end

list.onItemClick=function(l,v,p,i)
  liste(l,v,p,i,"0")
end

--[[
list.onItemLongClick=function(l,v,p,i)
  liste1(l,v,p,i,"1")
  return true
end]]

if state=="1" then
  Forbidden1()
end

ada=LuaAdapter(activity,ChatList)
list.setAdapter(ada)

page=1

function Refresh(page1)
  Http.post("https://ly250.cn/andlua/Chat3.php","id="..ltsid.."&sid="..sid().."&page="..tostring(page1),function(a1,b,c1,d1)
    sid1=b:match('%["ret"] = "(.-)%";')
    if sid1=="1" then
      page=page1-1
      SnackerBar.build()
      :msg("获取聊天消息失败")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
      task(1,function()
        SendChat1("加载更多")
        Forbiddenn=0
      end)
     elseif sid1=="ok" then
      dlid=b:gmatch('%["id"] = "(.-)%";')
      ltstext=b:gmatch('%["text"] = "(.-)%";')
      ltsstate=b:gmatch('%["state"] = "(.-)%";')
      ltsname=b:gmatch('%["name"] = "(.-)%";')
      ltssrc=b:gmatch('%["src"] = "(.-)%";')
      ltsuid3=b:gmatch('%["uid3"] = "(.-)%";')
      numrows=b:match('%["sub"] = "(.-)%";')
      n1=b:gmatch('%["n"] = "(.-)%";')
      i1=b:gmatch('%["i"] = "(.-)%";')
      d1=b:gmatch('%["d"] = "(.-)%";')
      d11=b:gmatch('%["d1"] = "(.-)%";')
      bt.setText(mc.." ("..numrows..")")
      for time in b:gmatch('%["time"] = "(.-)%";') do
        SendChat(ltsname(),ltstext(),tostring(ltssrc()),tointeger(ltsstate()),tostring(ltsuid3()),time,tostring(dlid()),tostring(n1()),tostring(i1()),tostring(d1()),tostring(d11()))
      end
      task(1,function()
        SendChat1("加载更多")
        Forbiddenn=0
      end)
     else
      SnackerBar.build()
      :msg("没有更多了")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
      Forbiddenn=0
    end
  end)
end

function Refresh1()
  ada.clear()
  ada=LuaAdapter(activity,ChatList)
  list.setAdapter(ada)
  Http.post("https://ly250.cn/andlua/Chat3.php","id="..ltsid.."&sid="..sid().."&page=1",function(a1,b,c1,d1)
    sid1=b:match('%["ret"] = "(.-)%";')
    if sid1=="1" then
      SnackerBar.build()
      :msg("获取聊天消息失败")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
     elseif sid1=="ok" then
      dlid=b:gmatch('%["id"] = "(.-)%";')
      ltstext=b:gmatch('%["text"] = "(.-)%";')
      ltsstate=b:gmatch('%["state"] = "(.-)%";')
      ltsname=b:gmatch('%["name"] = "(.-)%";')
      ltssrc=b:gmatch('%["src"] = "(.-)%";')
      ltsuid3=b:gmatch('%["uid3"] = "(.-)%";')
      numrows=b:match('%["sub"] = "(.-)%";')
      n1=b:gmatch('%["n"] = "(.-)%";')
      i1=b:gmatch('%["i"] = "(.-)%";')
      d1=b:gmatch('%["d"] = "(.-)%";')
      d11=b:gmatch('%["d1"] = "(.-)%";')
      bt.setText(mc.." ("..numrows..")")
      for time in b:gmatch('%["time"] = "(.-)%";') do
        SendChat(ltsname(),ltstext(),tostring(ltssrc()),tointeger(ltsstate()),tostring(ltsuid3()),time,tostring(dlid()),tostring(n1()),tostring(i1()),tostring(d1()),tostring(d11()))
      end
      task(200,function()
        SendChat1("加载更多")
      end)
     else
      SnackerBar.build()
      :msg("没有更多了")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
    end
    task(100,function()
      ListButtom()
    end)
  end)
end

Refresh1()

ztl()

Typew(ChatText0)

function onResume()
  if io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("【(.+)】")=="1" then
    idl=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("】(.+)")
    tztx=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("（(.+)）")
    tzbt=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("《(.+)》")
    tznr=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("〈(.+)〉")
    Send3=1
    Send.setBackgroundColor(0XFFdddee2)
    Send1.setVisibility(8)
    Send2.setVisibility(0)
    uguid()
    Http.post("https://ly250.cn/andlua/Chat2.php","uid3="..uid3.."&uid1="..uid1.."&uid2="..uid2.."&sid="..sid().."&id="..ltsid.."&lx=5".."&uidd="..idl.."&time="..Timee(),function(a1,b1,c1,d1)
      sid1=b1:match('%["ret"] = "(.-)%";')
      if sid1=="1" then
        Send3=0
        Send.setBackgroundColor(tonumber(bjzt()))
        ListButtom()
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        SnackerBar.build()
        :msg("发送失败")
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif sid1=="2" then
        Send3=0
        Send.setBackgroundColor(tonumber(bjzt()))
        ListButtom()
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        SnackerBar.build()
        :msg(getLS("L_Identity_expired"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif sid1=="4" then
        nncc=b1:match('%["name"] = "(.-)%";')
        ttxx=b1:match('%["src"] = "(.-)%";')
        uguid()
        SendChat2(tostring(nncc),tostring(idl),tostring(ttxx),tointeger(5),uid3,Timee(),tostring("0"),tostring(tzbt),tostring(tztx),tostring(tznr),tostring(uid3))
        Send3=0
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        if ChatText0.Text=="" then
          Send.setBackgroundColor(0XFFdddee2)
         else
          Send.setBackgroundColor(tonumber(bjzt()))
        end
        ListButtom()
      end
    end)
    io.open(tostring(activity.getLuaDir()).."/res/m.1","w"):write("【】〈〉《》（）"):close()
   elseif io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("【(.+)】")=="2" then
    idl=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("】(.+)")
    tztx=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("（(.+)）")
    tzbt=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("《(.+)》")
    tznr=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("〈(.+)〉")
    Send3=1
    Send.setBackgroundColor(0XFFdddee2)
    Send1.setVisibility(8)
    Send2.setVisibility(0)
    uguid()
    Http.post("https://ly250.cn/andlua/Chat2.php","uid3="..uid3.."&uid1="..uid1.."&uid2="..uid2.."&sid="..sid().."&id="..ltsid.."&lx=4".."&uidd="..idl.."&time="..Timee(),function(a1,b1,c1,d1)
      sid1=b1:match('%["ret"] = "(.-)%";')
      if sid1=="1" then
        Send3=0
        Send.setBackgroundColor(tonumber(bjzt()))
        ListButtom()
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        SnackerBar.build()
        :msg("发送失败")
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif sid1=="2" then
        Send3=0
        Send.setBackgroundColor(tonumber(bjzt()))
        ListButtom()
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        SnackerBar.build()
        :msg(getLS("L_Identity_expired"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif sid1=="4" then
        nncc=b1:match('%["name"] = "(.-)%";')
        ttxx=b1:match('%["src"] = "(.-)%";')
        uguid()
        SendChat2(tostring(nncc),tostring(idl),tostring(ttxx),tointeger(4),uid3,Timee(),tostring("0"),tostring(tzbt),tostring(tztx),tostring(tznr),tostring(uid3))
        Send3=0
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        if ChatText0.Text=="" then
          Send.setBackgroundColor(0XFFdddee2)
         else
          Send.setBackgroundColor(tonumber(bjzt()))
        end
        ListButtom()
      end
    end)
    io.open(tostring(activity.getLuaDir()).."/res/m.1","w"):write("【】〈〉《》（）"):close()
   elseif io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("【(.+)】")=="3" then
    idl=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("】(.+)")
    tztx=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("（(.+)）")
    tzbt=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("《(.+)》")
    tznr=io.open(activity.getLuaDir().."/res/m.1"):read("*a"):match("〈(.+)〉")
    Send3=1
    Send.setBackgroundColor(0XFFdddee2)
    Send1.setVisibility(8)
    Send2.setVisibility(0)
    uguid()
    Http.post("https://ly250.cn/andlua/Chat2.php","uid3="..uid3.."&uid1="..uid1.."&uid2="..uid2.."&sid="..sid().."&id="..ltsid.."&lx=6".."&uidd="..idl.."&time="..Timee(),function(a1,b1,c1,d1)
      sid1=b1:match('%["ret"] = "(.-)%";')
      if sid1=="1" then
        Send3=0
        Send.setBackgroundColor(tonumber(bjzt()))
        ListButtom()
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        SnackerBar.build()
        :msg("发送失败")
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif sid1=="2" then
        Send3=0
        Send.setBackgroundColor(tonumber(bjzt()))
        ListButtom()
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        SnackerBar.build()
        :msg(getLS("L_Identity_expired"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
       elseif sid1=="4" then
        nncc=b1:match('%["name"] = "(.-)%";')
        ttxx=b1:match('%["src"] = "(.-)%";')
        uguid()
        SendChat2(tostring(nncc),tostring(idl),tostring(ttxx),tointeger(6),uid3,Timee(),tostring("0"),tostring(tzbt),tostring(tztx),tostring(tznr),tostring(uid3))
        Send3=0
        Send1.setVisibility(0)
        Send2.setVisibility(8)
        if ChatText0.Text=="" then
          Send.setBackgroundColor(0XFFdddee2)
         else
          Send.setBackgroundColor(tonumber(bjzt()))
        end
        ListButtom()
      end
    end)
    io.open(tostring(activity.getLuaDir()).."/res/m.1","w"):write("【】〈〉《》（）"):close()
   else
  end
end