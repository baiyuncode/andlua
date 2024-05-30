require "import"
import "console"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "com.androlua.*"
import "mods.andlua3"
import "android.graphics.drawable.ColorDrawable"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "loadlayout3"


layout = ...

xpcall(function()
    activity.setContentView(loadlayout3(loadstring("return " .. layout)(), {}))
  end,
  function()
    activity.result({ getLS("L_This_layout_is_not_supported"), "", "2" })
  end)

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
      src = res .. "1.png",
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
      text = getLS("L_Preview_the_layout"),
      textColor = tonumber(bjzt()),
      singleLine = true,
    },
  },
};

BarView(btl)

Ripple(Sideslip)

Sideslip.onClick = function()
  activity.finish()
end
