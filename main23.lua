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
  RelativeLayout,
  layout_height = "fill",
  backgroundColor = AndLuaB,
  layout_width = "fill",
  {
    TextView,
    textSize = "15sp",
    id = "js",
    text = getLS("L_You_havenot_seen_post"),
    layout_centerInParent = "true",
  },
  {
    YLListView,
    VerticalScrollBarEnabled = false,
    overScrollMode = 2,
    layout_width = "fill",
    layout_height = "fill",
    layout_marginLeft = "5dp",
    layout_marginRight = "5dp",
    layout_marginTop = "5dp",
    id = "list1",
    dividerHeight = "0",
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
    orientation = "horizontal",
    {
      TextView,
      layout_gravity = "center",
      textSize = "18sp",
      text = getLS("L_Browsing_history"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "jjk",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial363.png",
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(0)
bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

lllb = {
  LinearLayout,
  orientation = "vertical",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  layout_height = "fill",
  {
    CardView,
    layout_margin = "5dp",
    backgroundColor = AndLuaB1,
    layout_width = "-1",
    layout_height = "55dp",
    elevation = "0dp",
    radius = AndLuaR,
    {
      RelativeLayout,
      layout_width = "-1",
      layout_height = "-1",
      {
        TextView,
        text = "标题",
        layout_marginLeft = "8dp",
        id = "btl",
        textSize = "16sp",
        MaxLines = "1",
        textColor = TitleColor,
        layout_marginTop = "8dp",
      },
      {
        TextView,
        layout_alignParentRight = "true",
        layout_marginBottom = "5dp",
        layout_alignParentBottom = "true",
        id = "rql",
        textSize = "12sp",
        text = "2018-01-01 12:00",
        textColor = TitleColor1,
        layout_marginRight = "5dp",
      },
      {
        TextView,
        textColor = "0x00ffffff",
        textSize = "0sp",
        layout_width = "0dp",
        layout_height = "0dp",
        id = "u3",
      },
      {
        TextView,
        textColor = "0x00ffffff",
        textSize = "0sp",
        layout_width = "0dp",
        layout_height = "0dp",
        id = "u4",
      },
    },
  },
};

wj = activity.getLuaDir() .. "/res/uid5.LY"
hj = io.open(wj):read("*a")
adp3 = LuaAdapter(activity, lllb)
sj = hj:gmatch('#$2826587025｛(.-)｝2826587025$#')
ui3 = hj:gmatch('#$2826587025〖(.-)〗2826587025$#')
ui4 = hj:gmatch('#$2826587025［(.-)］2826587025$#')
for bt2 in hj:gmatch('#$2826587025【(.-)】2826587025$#') do
  sjj = sj()
  uid3 = ui3()
  uid4 = ui4()
  adp3.add { btl = bt2, rql = sjj, u3 = uid3, u4 = uid4 }
  js.setText("")
end
list1.setAdapter(adp3)


list1.onItemClick = function(l, v, p, i)
  activity.newActivity("main8", { v.Tag.u3.Text, v.Tag.u4.Text })
end


bw(jjk, 0x5FFFFFFF)
jjk.onClick = function()
  wj = activity.getLuaDir() .. "/res/uid5.LY"
  io.open(wj, "w"):write(""):close()
  wj = activity.getLuaDir() .. "/res/uid5.LY"
  hj = io.open(wj):read("*a")
  adp3 = LuaAdapter(activity, lllb)
  sj = hj:gmatch('#$2826587025｛(.-)｝2826587025$#')
  ui3 = hj:gmatch('#$2826587025〖(.-)〗2826587025$#')
  ui4 = hj:gmatch('#$2826587025［(.-)］2826587025$#')
  for bt2 in hj:gmatch('#$2826587025【(.-)】2826587025$#') do
    sjj = sj()
    uid3 = ui3()
    uid4 = ui4()
    adp3.add { btl = bt2, rql = sjj, u3 = uid3, u4 = uid4 }
  end
  list1.setAdapter(adp3)
  js.setText(getLS("L_You_havenot_seen_post"))
end
