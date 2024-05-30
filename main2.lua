require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "com.myopicmobile.textwarrior.common.*"
import "android.content.*"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.drawable.ColorDrawable"
import "autotheme"
import "mods.andlua"
import "mods.SnackerBar"

main7 = {
  LinearLayout,
  orientation = "horizontal",
  backgroundColor = AndLuaB,
};
ztl()
classes = require "android"
activity.setContentView(loadlayout(main7))
ztt()
dir, path = ...
function fiximport(path)
  require "import"
  import "android.app.*"
  import "android.os.*"
  import "android.widget.*"
  import "android.view.*"
  import "com.myopicmobile.textwarrior.common.*"
  import "mods.andlua"

  if Night_mode then
  else
    ztt()
  end

  classes = require "android"
  local searchpath = path:gsub("[^/]+%.lua", "?.lua;") .. path:gsub("[^/]+%.lua", "?.aly;")
  local cache = {}
  function checkclass(path, ret)
    if cache[path] then
      return
    end
    cache[path] = true
    local f = io.open(path)
    local str = f:read("a")
    f:close()
    if not str then
      return
    end
    for s, e, t in str:gfind("(import \"[%w%.]+%*\")") do
    end
    for s, e, t in str:gfind("import \"([%w%.]+)\"") do
      local p = package.searchpath(t, searchpath)
      if p then
        p5 = io.open(p):read("*a")
        if string.byte(p5, 1) == 0x1b then
        else
          checkclass(p, ret)
        end
      end
    end
    local lex = LuaLexer(str)
    local buf = {}
    local last = nil
    while true do
      local t = lex.advance()
      if not t then
        break
      end
      if last ~= LuaTokenTypes.DOT and t == LuaTokenTypes.NAME then
        local text = lex.yytext()
        buf[text] = true
      end
      last = t
    end
    table.sort(buf)
    for k, v in pairs(buf) do
      k = "[%.$]" .. k .. "$"
      for a, b in ipairs(classes) do
        if string.find(b, k) then
          if cache[b] == nil then
            table.insert(ret, b)
            cache[b] = true
          end
        end
      end
    end
  end

  local ret = {}
  checkclass(path, ret)
  return String(ret)
end

dir, path = ...
list = ListView(activity)
list.ChoiceMode = ListView.CHOICE_MODE_MULTIPLE;
task(fiximport, path, function(v)
  rs = v
  adp = ArrayListAdapter(activity, android.R.layout.simple_list_item_multiple_choice, v)
  list.Adapter = adp
  activity.setContentView(list)
end)

cm = activity.getSystemService(Context.CLIPBOARD_SERVICE)
function onOptionsItemSelected(item)
  if item.Title == getLS("L_Copy") then
    local buf = {}
    local cs = list.getCheckedItemPositions()
    local buf = {}
    for n = 0, #rs - 1 do
      if cs.get(n) then
        table.insert(buf, string.format("import \"%s\"", rs[n]))
      end
    end
    local str = table.concat(buf, "\n")
    local cd = ClipData.newPlainText("label", str)
    cm.setPrimaryClip(cd)
    Toast.makeText(activity, getLS("L_Replicated_the_clipboard"), 1000).show()
  else
    for n = 0, #rs - 1 do
      list.setItemChecked(n, not list.isItemChecked(n))
    end
  end
end

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
      text = getLS("L_The_import_analysis"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "c1",
    layout_height = "55dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/ic_select_all.png",
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "c2",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "22dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "25dp",
      src = "res/ic_copy.png",
    },
  },
  {
    LinearLayout,
    layout_width = "0dp",
    gravity = "center",
    id = "menu2",
    layout_height = "0dp",
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
sp = SpannableString(getLS("L_The_import_analysis"))
sp.setSpan(ForegroundColorSpan(0xffffffff), 0, #sp, Spannable.SPAN_EXCLUSIVE_INCLUSIVE)
activity.ActionBar.setTitle(sp)
activity.ActionBar.setElevation(6)
activity.setTheme(android.R.style.Theme_Material_Light)
bw(Sideslip, 0x5FFFFFFF)
bw(c1, 0x5FFFFFFF)
bw(c2, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
c2.onClick = function()
  local buf = {}
  local cs = list.getCheckedItemPositions()
  local buf = {}
  for n = 0, #rs - 1 do
    if cs.get(n) then
      table.insert(buf, string.format("import \"%s\"", rs[n]))
    end
  end
  local str = table.concat(buf, "\n")
  local cd = ClipData.newPlainText("label", str)
  cm.setPrimaryClip(cd)
  SnackerBar.build()
      :msg(getLS("L_Replicated_the_clipboard"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
end
c1.onClick = function()
  for n = 0, #rs - 1 do
    list.setItemChecked(n, not list.isItemChecked(n))
  end
end
ztt()

list.setDividerHeight(0)
