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
import "mods.color1"
ztt()
main10 = {
  LinearLayout,
  layout_height = "fill",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  orientation = "vertical",
  {
    RelativeLayout,
    layout_height = "-1",
    layout_width = "-1",
    layout_marginTop = "10dp",
    layout_marginBottom = "10dp",
    {
      SwipeRefreshLayout,
      id = "sxlist1",
      {
        GridView,
        numColumns = 3,
        verticalSpacing = "15dp",
        layout_height = "fill",
        gravity = "center",
        id = "grid",
        horizontalSpacing = "0dp",
        layout_width = "fill",
      },
    },
  },
};


activity.setContentView(loadlayout(main10))
ztl()
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
      text = getLS("L_Tool_set"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
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
item = {
  LinearLayout,
  gravity = "center",
  layout_width = "102dp",
  backgroundColor = AndLuaB,
  layout_height = "102dp",
  {
    CardView,
    radius = AndLuaR,
    CardElevation = "0dp",
    backgroundColor = AndLuaB1,
    layout_width = "100dp",
    layout_height = "100dp",
    {
      LinearLayout,
      gravity = "center",
      orientation = "vertical",
      layout_width = "fill",
      layout_height = "fill",
      {
        ImageView,
        id = "img",
        layout_width = "30dp",
        layout_height = "30dp",
        layout_marginBottom = "5dp",
        colorFilter = TitleColor1,
      },
      {
        TextView,
        textColor = TitleColor1,
        id = "bt",
      },
    },
  },
};

data = {}
adp = LuaAdapter(activity, data, item)
adp.add { img = "res/Metrial491.png", bt = getLS("L_Material_warehouse") }
adp.add { img = "res/Metrial367.png", bt = getLS("L_A_key_to_replace") }
adp.add { img = "res/Metrial915.png", bt = getLS("L_Simulation_to_submit") }
adp.add { img = "res/Metrial475.png", bt = getLS("L_The_color_reference") }
adp.add { img = "res/Metrial822.png", bt = getLS("L_APK_extract") }
adp.add { img = "res/Metrial225.png", bt = getLS("L_The_palette") }
--adp.add{img="res/Metrial415.png",bt="取色器"}
grid.Adapter = adp

grid.onItemClick = function(l, v, p, i)
  if v.Tag.bt.Text == getLS("L_Material_warehouse") then
    activity.newActivity("main47")
  elseif v.Tag.bt.Text == getLS("L_A_key_to_replace") then
    activity.newActivity("main50")
  elseif v.Tag.bt.Text == getLS("L_Simulation_to_submit") then
    activity.newActivity("main51")
  elseif v.Tag.bt.Text == getLS("L_The_color_reference") then
    activity.newActivity("main48")
  elseif v.Tag.bt.Text == getLS("L_APK_extract") then
    activity.newActivity("main55")
  elseif v.Tag.bt.Text == getLS("L_The_palette") then
    yss(getLS("L_The_palette_1"), "0xFFFFFFFF")
  elseif v.Tag.bt.Text == "取色器" then
    activity.newActivity("main32")
  end
end

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  sxlist1.setRefreshing(false);
end })
