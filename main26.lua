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

main10 = {
  LinearLayout,
  layout_height = "fill",
  orientation = "vertical",
  layout_width = "fill",
  {
    LuaEditor,
    layout_height = "-1",
    layout_width = "-1",
    id = "lua",
  },
};
ztt()
activity.setContentView(loadlayout(main10))
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
      text = "标题",
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
};
jql = {
  LinearLayout,
  layout_height = "55dp",
  orientation = "horizontal",
  layout_width = "fill",
  {
    LinearLayout,
    gravity = "center",
    id = "Sideslipm",
    layout_height = "55dp",
    layout_marginLeft = "-15dp",
    layout_width = "55dp",
    {
      ImageView,
      layout_width = "28dp",
      colorFilter = tonumber(bjzt()),
      src = "res/off.png",
      layout_height = "25dp",
    },
  },
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      LinearLayout,
      gravity = "center",
      id = "menu1mm",
      layout_height = "55dp",
      layout_marginRight = "-15dp",
      layout_alignParentRight = "true",
      layout_width = "55dp",
      {
        ImageView,
        layout_width = "25dp",
        colorFilter = tonumber(bjzt()),
        src = "res/Metrial361.png",
        layout_height = "22dp",
      },
    },
    {
      LinearLayout,
      layout_toLeftOf = "menu1mm",
      gravity = "center",
      id = "c1m",
      layout_height = "55dp",
      layout_width = "55dp",
      {
        ImageView,
        layout_width = "25dp",
        colorFilter = tonumber(bjzt()),
        src = "res/Metrial359.png",
        layout_height = "22dp",
      },
    },
    {
      LinearLayout,
      layout_toLeftOf = "c1m",
      gravity = "center",
      id = "c2m",
      layout_height = "55dp",
      layout_width = "55dp",
      {
        ImageView,
        layout_width = "25dp",
        colorFilter = tonumber(bjzt()),
        src = "res/Metrial360.png",
        layout_height = "22dp",
      },
    },
    {
      LinearLayout,
      layout_toLeftOf = "c2m",
      gravity = "center",
      id = "c3m",
      layout_height = "55dp",
      layout_width = "55dp",
      {
        ImageView,
        id = "hhhm",
        layout_height = "24dp",
        layout_width = "26dp",
        src = "res/Metrial385.png",
        colorFilter = tonumber(bjzt()),
      },
    },
    {
      RelativeLayout,
      layout_toLeftOf = "c3m",
      layout_height = "-1",
      {
        RelativeLayout,
        id = "jrrm",
        layout_height = "fill",
        {
          TextView,
          textColor = tonumber(bjzt()),
          layout_centerVertical = "true",
          id = "btm",
          textSize = "18sp",
          text = getLS("L_Select_the_text"),
          singleLine = true,
          layout_width = "-1",
        },
      },
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

a, b = ...
lua.setText(b)
bt.setText(a)
bss(lua)
lua.format()

lua.onSelectionChanged = function(b)
  if b then

  else

  end
end


lua.OnSelectionChangedListener = function(status, Start, End)
  if status == true then
    local Str = String(lua.Text)
    local content = Str.substring(Start, End)
    activity.ActionBar.setDisplayShowCustomEnabled(true)
    activity.ActionBar.setCustomView(loadlayout(jql))
    activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
    activity.ActionBar.setElevation(0)
    bw(c3m, 0x5FFFFFFF)
    bw(c2m, 0x5FFFFFFF)
    bw(menu1mm, 0x5FFFFFFF)
    bw(Sideslipm, 0x5FFFFFFF)
    bw(c1m, 0x5FFFFFFF)
    c3m.onClick = function()
      lua.selectAll()
    end
    c2m.onClick = function()
      lua.cut()
    end
    c1m.onClick = function()
      lua.copy()
    end
    menu1mm.onClick = function()
      lua.paste()
    end
    Sideslipm.onClick = function()
      activity.ActionBar.setDisplayShowCustomEnabled(true)
      activity.ActionBar.setCustomView(loadlayout(btl))
      activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
      activity.ActionBar.setElevation(6)
      bw(Sideslip, 0x5FFFFFFF)
      Sideslip.onClick = function()
        activity.finish()
      end
      bt.setText(a)
    end
  else
    activity.ActionBar.setDisplayShowCustomEnabled(true)
    activity.ActionBar.setCustomView(loadlayout(btl))
    activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
    activity.ActionBar.setElevation(6)
    bw(Sideslip, 0x5FFFFFFF)
    Sideslip.onClick = function()
      activity.finish()
    end
    bt.setText(a)
  end
end
bqq(lua)
