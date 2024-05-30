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
import "mods.mod1"
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
lj = ...
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
      hintTextColor = tonumber(bjzt()),
      textSize = "18sp",
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
activity.ActionBar.setElevation(0)
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
    jk = wjj:gmatch('》》\n《《(.-)》》\n')
    for pa in wjj:gmatch('《《(.-)》》\n《《') do
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
jc()
adp3 = LuaAdapter(activity, l1)
wjj = scnr
jk = wjj:gmatch('》》\n《《(.-)》》\n')
for pa in wjj:gmatch('《《(.-)》》\n《《') do
  jkk = jk()
  adp3.add { btm = pa, n = jkk }
end
lb.setAdapter(adp3)
lb.onItemClick = function(l, v, p, i)
  activity.newActivity("main26", { v.Tag.btm.Text, v.Tag.n.Text })
end
