require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
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
ztt()
main10 = {
  LinearLayout,
  layout_height = "fill",
  orientation = "vertical",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  {
    YLListView,
    VerticalScrollBarEnabled = false,
    overScrollMode = 2,
    layout_width = "fill",
    layout_height = "fill",
    layout_marginLeft = "5dp",
    layout_marginRight = "5dp",
    layout_marginTop = "5dp",
    id = "lb",
    dividerHeight = "0",
  },
  {
    TextView,
    layout_gravity = "center",
    textSize = "0sp",
    text = "1",
    textColor = "0x00ffffff",
    id = "gy",
    singleLine = true,
  },
};

activity.setContentView(loadlayout(main10))
ztt()
ztl()
btl = {
  LinearLayout,
  layout_width = "fill",
  elevation = "1dp",
  layout_height = "55dp",
  orientation = "horizontal",
  id = "jku",
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "Sideslip",
    layout_height = "55dp",
    layout_marginLeft = "-15dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/off.png",
    },
  },
  {
    LinearLayout,
    layout_height = "fill",
    layout_weight = "1",
    id = "vvb",
    {
      EditText,
      layout_width = "-1",
      layout_height = "-1",
      singleLine = true,
      textColor = tonumber(bjzt()),
      background = "0x00ffffff",
      hint = getLS("L_Please_enter_a_search_keyword"),
      id = "gjc",
      textSize = "18sp",
      hintTextColor = tonumber(bjzt()),
    },
  },
  {
    LinearLayout,
    layout_height = "fill",
    layout_weight = "1",
    orientation = "horizontal",
    id = "jrr",
    {
      TextView,
      layout_gravity = "center",
      textSize = "18sp",
      text = getLS("L_The_tutorial_manual_1"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "jik",
    layout_gravity = "right",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial145.png",
    },
  },
};


activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
bw(jik, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

vvb.setVisibility(View.GONE)

jik.onClick = function()
  if gy.Text == "1" then
    gy.setText("2")
    bt.setText("")
    Alpha = AlphaAnimation(1, 0)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    jrr.startAnimation(Alpha)
    Alpha = AlphaAnimation(0, 1)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    vvb.startAnimation(Alpha)
    task(500, function()
      jrr.setVisibility(View.GONE)
    end)
    vvb.setVisibility(View.VISIBLE)
  else
    gy.setText("1")
    Alpha = AlphaAnimation(1, 0)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    vvb.startAnimation(Alpha)
    Alpha = AlphaAnimation(0, 1)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    jrr.startAnimation(Alpha)
    task(500, function()
      vvb.setVisibility(View.GONE)
      bt.setText(getLS("L_The_tutorial_manual_1"))
    end)
    jrr.setVisibility(View.VISIBLE)
  end
end

gjc.addTextChangedListener {
  onTextChanged = function(s)
    adp4 = LuaAdapter(activity, l1)
    jk = wjj:gmatch('】(.-)【')
    for pa in wjj:gmatch('【(.-)】') do
      jkk = jk()
      if pa:find(gjc.Text) or jkk:find(gjc.Text) then
        adp4.add { btm = pa, n = jkk }
      else
      end
    end
    lb.setAdapter(adp4)
  end
}

l1 = {
  RelativeLayout,
  backgroundColor = AndLuaB,
  {
    CardView,
    radius = AndLuaR,
    CardElevation = "0dp",
    layout_width = "-1",
    layout_marginLeft = "5dp",
    layout_marginRight = "5dp",
    layout_marginTop = "5dp",
    layout_marginBottom = "5dp",
    backgroundColor = AndLuaB1,
    {
      RelativeLayout,
      layout_width = "-1",
      layout_height = "100dp",
      {
        TextView,
        layout_marginRight = "15dp",
        singleLine = true,
        layout_marginTop = "8dp",
        textSize = "17sp",
        textColor = TitleColor,
        id = "btm",
        layout_marginLeft = "8dp",
        text = "标题",
      },
      {
        TextView,
        MaxLines = "3",
        textSize = "14sp",
        text = "内容",
        layout_marginRight = "8dp",
        layout_marginTop = "5dp",
        layout_below = "btm",
        id = "n",
        layout_marginLeft = "8dp",
        textColor = TitleColor1,
      },
    },
  },
};

adp3 = LuaAdapter(activity, l1)
lb.setAdapter(adp3)
wjj = [===[
【中文函数使用说明】使用中文函数库需要导入包
import "andlua"【MD提示】--MD提示("内容",背景颜色,字体颜色,阴影,圆角)
MD提示("AndLua+",0xFF2196F3,0xFFFFFFFF,4,10)【窗口标题】窗口标题("AndLua+")【载入界面】载入界面("layout")【隐藏标题栏】隐藏标题栏()【设置主题】设置主题(R.AndLua1)
AndLua1 深蓝色
AndLua2 粉色
AndLua3 灰色
AndLua4 深灰色
AndLua5 蓝色
AndLua6 深红色
AndLua7 红色
AndLua8 铜色
AndLua9 深铜色
AndLua10 黄色
AndLua11 橙色
AndLua12 深橙色
AndLua13 浅灰色
AndLua14 黑色
AndLua15 绿色
AndLua16 青色
AndLua17 紫色
AndLua18 水鸭绿【打印】打印("AndLua+")【提示】提示("AndLua+")【截取文本】--截取文本(字符串,前字符,后字符)
打印(截取("123456789","3","7"))
--返回 456【替换文本】--替换文本(字符串,要替换的字符,替换成的字符)
打印(替换("123456789","123","321"))
--返回 321456789【字符串长度】--字符串长度("字符串")
打印(字符串长度("AndLua+"))
返回 7【状态栏颜色】状态栏颜色(0xFF4285F4)【沉浸状态栏】沉浸状态栏()【设置文本】设置文本(id,"内容")【跳转界面】跳转界面("main")【关闭页面】关闭页面()【获取文本】--获取文本(id)
提示(获取文本(id))【结束程序】结束程序()【控件圆角】控件圆角(id,0xb0000000,20)
--控件圆角(id,color,radius)【获取设备标识码】--获取设备标识码()
打印(获取设备标识码())【获取IMEI】--获取IMEI()
打印(获取IMEI())【控件背景渐变动画】--控件背景渐变动画(控件ID,颜色1,颜色2,颜色3,颜色4)【获取屏幕尺寸】--获取屏幕尺寸()
打印(获取屏幕尺寸())【判断是否安装指定软件】--是否安装APP(包名)【设置文本中划线风格】设置中划线(id)【设置文本下划线风格】设置下划线(id)【设置字体加粗】设置字体加粗(id)【设置字体斜体】设置字体斜体(id)【分享内容】分享("内容")【跳转到QQ群】加QQ群("群号码")【跳转到QQ聊天】QQ聊天("QQ号")【发送短信】发送短信("号码","内容")【获取剪切板】--获取剪切板()
打印(获取剪切板())【写入剪切板】写入剪切板("内容")【开启wifi】开启WIFI()【关闭wifi】关闭WIFI()【断开网络】断开网络()【创建文件】创建文件("路径")
--创建文件("/sdcard/test.txt")【创建文件夹】创建文件夹("路径")
--创建文件夹("/sdcard/test/")【创建多级文件夹】创建多级文件夹("路径")
--创建多级文件夹("/sdcard/test/test2/test3/")【移动文件】移动文件("旧文件路径","新文件路径")【写入文件】写入文件("路径","内容")【设置按钮颜色】设置按钮颜色(id,color)【设置编辑框颜色】设置编辑框颜色(id,color)【设置进度条颜色】设置进度条颜色(id,color)【设置控件颜色】设置控件颜色(id,color)【获取手机存储路径】打印(获取手机存储路径())【获取屏幕高】打印(获取屏幕高())【获取屏幕宽】打印(获取屏幕宽())【文件是否存在】文件是否存在("path")
if 文件是否存在("/sdcard/test.txt") then
提示("存在")
else
提示("不存在")
end
【打开左侧滑】打开左侧滑()【关闭右侧滑】关闭右侧滑()【显示控件】显示控件(id)【隐藏控件】隐藏控件(id)【播放本地音乐】播放本地音乐("/sdcard/test.mp3")【在线播放音乐】在线播放音乐("http://andlua.cn/test.mp3")【播放本地视频】播放本地视频("/sdcard/test.mp4")【在线播放视频】在线播放视频("http://andlua.cn/test.mp4")【打开APP】打开APP("包名")【卸载APP】卸载APP("包名")【安装APP】安装APP("/sdcard/test.apk")【调用系统下载文件】系统下载文件("文件直链","文件下载目录","文件名")【弹窗1】弹窗1("标题","内容","按钮文本",function()
--按钮点击事件
end)【设置波纹效果】波纹(id,color)【随机数】随机数(最小值,最大值)【删除控件】删除控件(父控件id,控件id)【状态栏高色】状态栏亮色()【重构页面】重构页面()【窗口全屏】窗口全屏()【取消全屏】取消全屏()【返回桌面】返回桌面()【]===]
jk = wjj:gmatch('】(.-)【')
for pa in wjj:gmatch('【(.-)】') do
  jkk = jk()
  adp3.add { btm = pa, n = jkk }
end
lb.onItemClick = function(l, v, p, i)
  activity.newActivity("main26", { v.Tag.btm.Text, v.Tag.n.Text })
end
