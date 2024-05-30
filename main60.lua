require "import"
import "console"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "com.androlua.*"
import "mods.andlua3"
import "mods.andlua"
import "android.graphics.drawable.ColorDrawable"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "loadlayout3"

cm = activity.getSystemService(Context.CLIPBOARD_SERVICE)

layout = {
  LinearLayout,
  orientation = "vertical",
  {
    LuaEditor,
    layout_width = "match_parent",
    layout_weight = "1",
    id = "lua",
    layout_height = "match_parent",
  },
  {
    RelativeLayout,
    layout_height = "40dp",
    layout_width = "match_parent",
    backgroundColor = AndLuaB1,
    elevation = "5dp",
    id = "Symbolbar",
    {
      HorizontalScrollView,
      horizontalScrollBarEnabled = false,
      layout_width = "fill",
      layout_height = "-1",
      {
        LinearLayout,
        layout_height = "-1",
        layout_width = "-1",
        id = "list1",
        orientation = "horizontal",
      },
    },
  },
};

activity.setContentView(loadlayout(layout))

layout1 = ...

lua.Text = layout1

Setcolor(lua)

BarVie = {
  RelativeLayout,
  layout_height = "match_parent",
  layout_width = "match_parent",
  {
    LinearLayout,
    layout_height = "-1",
    orientation = "horizontal",
    id = "ta1",
    layout_width = "fill",
    {
      LinearLayout,
      gravity = "center",
      id = "menu11",
      layout_height = "-1",
      layout_marginLeft = "-15dp",
      layout_width = "55dp",
      onClick = function()
        ta1.setVisibility(View.GONE)
        ta2.setVisibility(View.VISIBLE)
      end,
      {
        ImageView,
        layout_width = "28dp",
        colorFilter = tonumber(bjzt()),
        src = res .. "1.png",
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
        id = "menu22",
        layout_height = "-1",
        layout_marginRight = "-15dp",
        layout_alignParentRight = "true",
        layout_width = "55dp",
        onClick = function()
          lua.paste()
        end,
        {
          ImageView,
          layout_width = "25dp",
          colorFilter = tonumber(bjzt()),
          src = res .. "32.png",
          layout_height = "22dp",
        },
      },
      {
        LinearLayout,
        layout_toLeftOf = "menu22",
        gravity = "center",
        id = "menu33",
        layout_height = "-1",
        layout_width = "55dp",
        onClick = function()
          lua.copy()
        end,
        {
          ImageView,
          layout_width = "25dp",
          colorFilter = tonumber(bjzt()),
          src = res .. "31.png",
          layout_height = "22dp",
        },
      },
      {
        LinearLayout,
        layout_toLeftOf = "menu33",
        gravity = "center",
        id = "menu44",
        layout_height = "-1",
        layout_width = "55dp",
        onClick = function()
          lua.cut()
        end,
        {
          ImageView,
          layout_width = "25dp",
          colorFilter = tonumber(bjzt()),
          src = res .. "30.png",
          layout_height = "22dp",
        },
      },
      {
        LinearLayout,
        layout_toLeftOf = "menu44",
        gravity = "center",
        id = "menu55",
        layout_height = "-1",
        layout_width = "55dp",
        onClick = function()
          lua.selectAll()
        end,
        {
          ImageView,
          layout_height = "24dp",
          layout_width = "26dp",
          src = res .. "29.png",
          colorFilter = tonumber(bjzt()),
        },
      },
      {
        RelativeLayout,
        layout_toLeftOf = "menu55",
        layout_height = "-1",
        {
          RelativeLayout,
          layout_height = "fill",
          {
            TextView,
            textColor = tonumber(bjzt()),
            layout_centerVertical = "true",
            textSize = "18sp",
            text = getLS("L_Select_the_text"),
            singleLine = true,
            layout_width = "-1",
          },
        },
      },
    },
  },
  {
    LinearLayout,
    id = "ta2",
    layout_width = "fill",
    layout_height = "fill",
    orientation = "horizontal",
    {
      LinearLayout,
      layout_width = "60dp",
      gravity = "center",
      layout_height = "fill",
      layout_marginLeft = "-15dp",
      {
        ImageView,
        layout_height = "28dp",
        colorFilter = tonumber(bjzt()),
        layout_width = "23dp",
        src = "res1/1.png",
        onClick = function() activity.finish() end,
        id = "andlua89950206",
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
        onClick = function() end,
        text = getLS("L_Edit_the_layout"),
        textColor = tonumber(bjzt()),
        id = "andlua82677278",
        singleLine = true,
      },
    },
    {
      LinearLayout,
      layout_width = "60dp",
      gravity = "center",
      layout_height = "fill",
      layout_marginRight = "-15dp",
      {
        ImageView,
        layout_height = "28dp",
        colorFilter = tonumber(bjzt()),
        layout_width = "23dp",
        src = "res1/17.png",
        id = "andlua91022075",
        onClick = function() lua.undo() end,
      },
    },
    {
      LinearLayout,
      layout_width = "60dp",
      gravity = "center",
      layout_height = "fill",
      layout_marginRight = "-15dp",
      {
        ImageView,
        layout_height = "28dp",
        colorFilter = tonumber(bjzt()),
        layout_width = "23dp",
        src = "res1/18.png",
        id = "andlua33417538",
        onClick = function() lua.redo() end,
      },
    },
    {
      LinearLayout,
      layout_width = "60dp",
      gravity = "center",
      layout_height = "fill",
      layout_marginRight = "-15dp",
      {
        ImageView,
        layout_height = "28dp",
        colorFilter = tonumber(bjzt()),
        layout_width = "23dp",
        src = "res1/13.png",
        id = "a1",
        onClick = function() pop.show() end,
      },
    },
  },
};

BarView(BarVie)

Ripples({ a1, andlua33417538, andlua91022075, andlua89950206, menu11, menu22, menu33, menu44, menu55 })

bss(lua)

function xml2table(xml)
  local xml, s = xml:gsub("</%w+>", "}")
  if s == 0 then
    return xml
  end
  xml = xml:gsub("<%?[^<>]+%?>", "")
  xml = xml:gsub("xmlns:android=%b\"\"", "")
  xml = xml:gsub("%w+:", "")
  xml = xml:gsub("\"([^\"]+)\"", function(s) return (string.format("\"%s\"", s:match("([^/]+)$"))) end)
  xml = xml:gsub("[\t ]+", "")
  xml = xml:gsub("\n+", "\n")
  xml = xml:gsub("^\n", ""):gsub("\n$", "")
  xml = xml:gsub("<", "{"):gsub("/>", "}"):gsub(">", ""):gsub("\n", ",\n")
  return (xml)
end

function click1()
  local str = lua.getText().toString()
  str = xml2table(str)
  str = console.format(str)
  lua.setText(str)
end

function click3()
  local cd = ClipData.newPlainText("label", lua.getText().toString())
  cm.setPrimaryClip(cd)
  toast(getLS("L_Has_been_copied_to_the_clipboard"))
end

function click4()
  xpcall(function()
      layout.main = assert(loadstring("return " .. lua.Text))()
      activity.result({ "0", lua.Text })
    end,
    function()
      toast(getLS("L_The_layout_error"))
    end)
end

pop = PopupMenu(activity, a1)
menu = pop.Menu
menu.add(getLS("L_Formatting_1")).onMenuItemClick = function(a)
  lua.format()
end
menu.add(getLS("L_Conversion")).onMenuItemClick = function(a)
  click1()
end
menu.add(getLS("L_Preview")).onMenuItemClick = function(a)
  xpcall(function()
      layout.main = assert(loadstring("return " .. lua.Text))()
      activity.newActivity("main61", { lua.Text })
    end,
    function()
      toast(getLS("L_The_layout_error"))
    end)
end
menu.add(getLS("L_Copy")).onMenuItemClick = function(a)
  click3()
end
menu.add(getLS("L_Save")).onMenuItemClick = function(a)
  click4()
end

activity.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);

function Symbol()
  require "import"
  import "java.io.File"
  local text = io.open(activity.getLuaDir() .. "/res/set5.LY"):read("*a")
  for text1 in text:gmatch('(.-) ') do
    uid = "andlua" .. tostring(math.random(10000, 999999))
    if text1 == "Fun" then
      text4 = "45dp"
      text3 = "14sp"
    else
      text4 = "40dp"
      text3 = "14sp"
    end
    call("add1", text1, text3, text4, uid)
  end
end

function add1(text1, text3, text4, uid)
  button = {
    TextView,
    textColor = tonumber(bjzt()),
    text = text1,
    gravity = "center",
    id = uid,
    textSize = text3,
    layout_height = "-1",
    layout_width = text4,
    onClick = function(v)
      if v.Text == "Fun" then
        lua.paste("function")
      elseif v.Text == "←" then
        lua.setSelection(tonumber(lua.getCaretPosition() - 1))
      elseif v.Text == "→" then
        lua.setSelection(tonumber(lua.getCaretPosition() + 1))
      elseif v.Text == "↹" then
        lua.paste("	")
      else
        lua.paste(v.Text)
      end
    end,
  };
  button = loadlayout(button)
  list1.addView(button)
  bw(_G[uid])
end

thread(Symbol)

lua.OnSelectionChangedListener = function(status, Start, End)
  if status == true then
    local Str = String(lua.Text)
    local content = Str.substring(Start, End)
    ta2.setVisibility(View.GONE)
    ta1.setVisibility(View.VISIBLE)
  else
    ta2.setVisibility(View.VISIBLE)
    ta1.setVisibility(View.GONE)
  end
end

ta1.setVisibility(View.GONE)
