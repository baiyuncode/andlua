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
import "mods.lay"
import "bin"

ztt()

main = {
  RelativeLayout,
  layout_height = "fill",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  {
    LuaWebView,
    id = "llq",
    layout_height = "fill",
    layout_width = "fill",
  },
};

activity.setContentView(loadlayout(main))

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
    id = "vvb",
    {
      EditText,
      layout_width = "-1",
      layout_height = "-1",
      singleLine = true,
      textColor = tonumber(bjzt()),
      background = "0x00ffffff",
      hint = getLS("L_Lua53_reference_manual"),
      id = "gjc",
      hintTextColor = tonumber(bjzt()),
      textSize = "18sp",
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
      src = "res/Metrial473.png",
    },
  },
};

activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(5)
bw(Sideslip, 0x5FFFFFFF)
bw(jik, 0x5FFFFFFF)

Sideslip.onClick = function()
  activity.finish()
end

jik.onClick = function()
  llq.loadUrl("file://" .. activity.getLuaDir() .. "/luadoc/contents.html")
end

llq.loadUrl("file://" .. activity.getLuaDir() .. "/luadoc/manual.html")
