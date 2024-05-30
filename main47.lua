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
  backgroundColor = AndLuaB,
  layout_height = "fill",
  id = "ViewNight_lay1",
  layout_width = "fill",
  {
    LinearLayout,
    orientation = "vertical",
    layout_width = "fill",
    layout_height = "fill",
    {
      RelativeLayout,
      layout_height = "match_parent",
      layout_width = "match_parent",
      {
        GridView,
        numColumns = 4,
        layout_marginTop = "5dp",
        layout_marginLeft = "5dp",
        layout_marginRight = "5dp",
        layout_marginTop = "5dp",
        verticalSpacing = "5dp",
        layout_height = "fill",
        gravity = "center",
        fastScrollEnabled = true,
        id = "list1",
        horizontalSpacing = "5dp",
        layout_width = "fill",
      },
      {
        ProgressBar,
        layout_centerInParent = "true",
        id = "jdt",
      },
    },
  },
};

activity.setContentView(loadlayout(main10))

ViewNight(ViewNight_lay1)

ztt()
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
      text = getLS("L_Material_warehouse_1"),
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

lb = {
  LinearLayout,
  layout_width = "fill",
  orientation = "vertical",
  layout_height = "fill",
  gravity = "center",
  {
    CardView,
    radius = AndLuaR,
    CardElevation = "0dp",
    backgroundColor = AndLuaB1,
    layout_width = "fill",
    layout_height = "fill",
    {
      LinearLayout,
      layout_width = "70dp",
      orientation = "vertical",
      layout_height = "70dp",
      layout_gravity = "center",
      gravity = "center",
      {
        ImageView,
        layout_width = "30dp",
        id = "tbj",
        layout_margin = "0dp",
        layout_height = "30dp",
        ColorFilter = TitleColor,
        layout_gravity = "center",
      },
      {
        TextView,
        layout_marginTop = "-2dp",
        text = "src",
        id = "tbb",
        textColor = "#757575",
        layout_width = "0",
        layout_height = "0",
        singleLine = true,
        layout_gravity = "center",
      },
    },
  },
};

function a1()
  adp3 = LuaAdapter(activity, lb)
  list1.setAdapter(adp3)
end

function a2(a, b)
  adp3.add { tbj = { src = a }, tbb = b }
end

function a3()
  jdt.setVisibility(View.GONE)
  list1.setVisibility(View.VISIBLE)
end

function show(f)
  require "import"
  import "java.io.File"
  dir = f
  call("a1")
  ls = luajava.astable(f.listFiles() or String {})
  table.sort(ls, function(a, b)
    return (a.isDirectory() ~= b.isDirectory() and a.isDirectory()) or
    ((a.isDirectory() == b.isDirectory()) and a.Name < b.Name)
  end)
  if #ls == 0 then
  else
    for n = 1, #ls do
      call("a2", tostring(ls[n]), ls[n].Name)
    end
    call("a3")
  end
end

thread(show, File(activity.getLuaDir() .. "/icon_black/"))

list1.onItemClick = function(l, v, p, i)
  tpp = tostring(activity.getLuaDir() .. "/icon_black") .. "/" .. v.Tag.tbb.Text
  tb1 = v.Tag.tbb.Text
  activity.newActivity("main49", { tpp, tb1 })
end

list1.setVisibility(View.GONE)
