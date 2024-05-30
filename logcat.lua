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
      text = getLS("L_The_log"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "menu11",
    layout_height = "55dp",
    layout_marginRight = "-8dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial363.png",
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "menu12",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/ic_dots_vertical.png",
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
bw(menu11, 0x5FFFFFFF)
menu11.onClick = function()
  adapter.clear()
  task(clearlog, show)
end

pop = PopupMenu(activity, menu12)
menu = pop.Menu
menu.add("All").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "", show)
end
menu.add("Lua").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "lua:* *:S", show)
end
menu.add("Test").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "test:* *:S", show)
end
menu.add("Tcc").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "tcc:* *:S", show)
end
menu.add("Error").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "*:E", show)
end
menu.add("Warning").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "*:W", show)
end
menu.add("Info").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "*:I", show)
end
menu.add("Debug").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "*:D", show)
end
menu.add("Verbose").onMenuItemClick = function(a)
  adapter.clear()
  task(readlog, "*:V", show)
end

bw(menu12, 0x5FFFFFFF)
menu12.onClick = function()
  pop.show()
end
function readlog(s)
  p = io.popen("logcat -d -v long " .. s)
  local s = p:read("*a")
  p:close()
  s = s:gsub("%-+ beginning of[^\n]*\n", "")
  if #s == 0 then
    s = "<run the app to see its log output>"
  end
  return s
end

function clearlog()
  p = io.popen("logcat -c")
  local s = p:read("*a")
  p:close()
  return s
end

lay = {
  LinearLayout,
  orientation = "vertical",
  {
    RelativeLayout,
    layout_width = "match_parent",
    layout_height = "match_parent",
    {
      RelativeLayout,
      layout_width = "-1",
      layout_height = "-1",
      {
        ListView,
        id = "scroll",
        layout_width = "match_parent",
        layout_height = "match_parent",
        backgroundColor = AndLuaB,
        FastScrollEnabled = true,
        DividerHeight = 0,
      },
    },
  },
};

activity.setContentView(loadlayout(lay))

local r = "%[ *%d+%-%d+ *%d+:%d+:%d+%.%d+ *%d+: *%d+ *%a/[^ ]+ *%]"

function show(s)
  local a = LuaAdapter(activity,
    {
      LinearLayout,
      orientation = "vertical",
      layout_width = "fill",
      backgroundColor = AndLuaB,
      layout_height = "fill",
      {
        CardView,
        layout_marginRight = "8dp",
        layout_marginLeft = "8dp",
        layout_marginTop = "8dp",
        backgroundColor = AndLuaB1,
        layout_width = "-1",
        elevation = "0dp",
        radius = AndLuaR,
        {
          TextView,
          layout_margin = "5dp",
          textIsSelectable = true,
          textColor = TitleColor1,
          textSize = "15sp",
          id = "rz",
        },
      },
    }
  )
  local l = 1
  for i in s:gfind(r) do
    if l ~= 1 then
      a.add { rz = s:sub(l, i - 1) }
    end
    l = i
  end
  a.add { rz = s:sub(l) }
  adapter = a
  scroll.Adapter = a
end

task(readlog, "", show)
