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

layout = {
  ScrollView,
  backgroundColor = AndLuaB,
  {
    LinearLayout,
    backgroundColor = AndLuaB,
    layout_width = "fill",
    layout_height = "fill",
    orientation = "vertical",
    {
      CardView,
      layout_marginTop = "8dp",
      layout_height = "-2",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_width = "-1",
      elevation = "0dp",
      layout_marginRight = "8dp",
      layout_marginLeft = "8dp",
      {
        EditText,
        layout_marginBottom = "-3dp",
        layout_height = "-1",
        gravity = "top",
        textColor = TitleColor,
        layout_marginLeft = "3dp",
        layout_marginRight = "3dp",
        textSize = "15sp",
        hint = getLS("L_Please_select_a_folder_path"),
        layout_width = "-1",
        background = "0",
        id = "lj",
        layout_marginTop = "-3dp",
      },
    },
    {
      CardView,
      layout_marginTop = "8dp",
      layout_height = "-2",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        EditText,
        layout_marginBottom = "-3dp",
        layout_height = "-1",
        gravity = "top",
        textColor = TitleColor,
        layout_marginLeft = "3dp",
        layout_marginRight = "3dp",
        textSize = "15sp",
        hint = getLS("L_Need_to_replace_the_characters"),
        layout_width = "-1",
        background = "0",
        id = "zf1",
        layout_marginTop = "-3dp",
      },
    },
    {
      CardView,
      layout_marginTop = "8dp",
      layout_height = "-2",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        EditText,
        layout_marginBottom = "-3dp",
        layout_height = "-1",
        gravity = "top",
        textColor = TitleColor,
        layout_marginLeft = "3dp",
        layout_marginRight = "3dp",
        textSize = "15sp",
        hint = getLS("L_Replace_the_characters"),
        layout_width = "-1",
        background = "0",
        id = "zf2",
        layout_marginTop = "-3dp",
      },
    },
    {
      CardView,
      layout_width = "-1",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_height = "-2",
      elevation = "0dp",
      layout_margin = "8dp",
      {
        TextView,
        id = "lx",
        layout_height = "-2",
        textIsSelectable = true,
        layout_width = "-1",
        textColor = TitleColor,
        layout_margin = "8dp",
      },
    },
    {
      CardView,
      layout_height = "35dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        Button,
        id = "yjth",
        layout_height = "-1",
        layout_margin = "-20dp",
        layout_width = "-1",
        text = getLS("L_A_key_to_replace"),
        textColor = "#FFFFFF",
        backgroundColor = tonumber(bjzt()),
      },
    },
    {
      CardView,
      layout_marginTop = "8dp",
      layout_marginRight = "8dp",
      layout_height = "35dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      elevation = "0dp",
      layout_width = "-1",
      layout_marginLeft = "8dp",
      {
        Button,
        id = "xglx",
        layout_height = "-1",
        layout_margin = "-20dp",
        layout_width = "-1",
        text = getLS("L_Modify_the_type"),
        textColor = "#FFFFFF",
        backgroundColor = tonumber(bjzt()),
      },
    },
    {
      CardView,
      layout_width = "-1",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      elevation = "0dp",
      layout_height = "-1",
      layout_margin = "8dp",
      {
        TextView,
        textIsSelectable = true,
        layout_height = "-1",
        hint = getLS("L_Information_output") .. "...",
        layout_width = "-1",
        id = "sc",
        textColor = TitleColor,
        layout_margin = "8dp",
      },
    },
  },
};
ztt()
ztl()
activity.setTitle(getLS("L_A_key_to_replace"))
activity.setContentView(loadlayout(layout))

function onResult(name, ...)
  ah = ...
  lj.setText(ah)
end

u1 = activity.getLuaDir() .. "/res/post1"
u2 = io.open(u1):read("*a")
lx.setText(u2:match("(.+) 一键替换"))

InputLayout = {
  LinearLayout,
  orientation = "vertical",
  Focusable = true,
  FocusableInTouchMode = true,
  {
    TextView,
    id = "Prompt",
    textSize = "14sp",
    layout_marginTop = "8dp",
    layout_marginLeft = "10dp",
    layout_width = "-1",
    layout_gravity = "center",
    text = getLS("L_Please_enter_the_need_to_perform_file_suffix_separated_by_Spaces"),
  },
  {
    EditText,
    layout_marginLeft = "10dp",
    layout_marginRight = "10dp",
    layout_width = "match_parent",
    layout_gravity = "center",
    id = "edit",
  },
};

xglx.onClick = function()
  AlertDialog.Builder(this)
      .setTitle(getLS("L_Modify_the_type"))
      .setView(loadlayout(InputLayout))
      .setPositiveButton(getLS("L_Determine"), {
        onClick = function(v)
          u3 = activity.getLuaDir() .. "/res/post1"
          io.open(u3, "w"):write(edit.Text .. " 一键替换"):close()
          u1 = activity.getLuaDir() .. "/res/post1"
          u2 = io.open(u1):read("*a")
          lx.setText(u2:match("(.+) 一键替换"))
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  Typew1(edit)
  edit.setText(lx.Text)
end

u1 = activity.getLuaDir() .. "/res/post1"
u2 = io.open(u1):read("*a")
u11 = activity.getLuaDir() .. "/res/post2"
u22 = io.open(u11):read("*a")
u111 = activity.getLuaDir() .. "/res/post3"
u222 = io.open(u111):read("*a")
u1111 = activity.getLuaDir() .. "/res/post4"
u2222 = io.open(u1111):read("*a")
lj.setText(u22)
zf1.setText(u222)
zf2.setText(u2222)

yjth.onClick = function()
  u11 = activity.getLuaDir() .. "/res/post2"
  u111 = activity.getLuaDir() .. "/res/post3"
  u1111 = activity.getLuaDir() .. "/res/post4"
  io.open(u11, "w"):write(lj.Text):close()
  io.open(u111, "w"):write(zf1.Text):close()
  io.open(u1111, "w"):write(zf2.Text):close()
  if File(lj.Text).isDirectory() then
    sc.setText(getLS("L_Began_to_replace") .. "\n\n" .. sc.Text)
    show(File(lj.Text))
  else
    sc.setText(getLS("L_Please_select_a_valid_path") .. "\n" .. sc.Text)
  end
end

function th(a5, b5, c5)
  if a5 then
    d = io.open(a5):read("*a")
    io.open(a5, "w+"):write(tostring(d:gsub(b5, c5))):close()
    return true
  else
    return false
  end
end

function show(f)
  b1 = zf1.Text
  c1 = zf2.Text
  cs = 0
  ls = luajava.astable(f.listFiles() or String {})
  table.sort(ls, function(a, b)
    return (a.isDirectory() ~= b.isDirectory() and a.isDirectory()) or
    ((a.isDirectory() == b.isDirectory()) and a.Name < b.Name)
  end)
  if #ls == 0 then
    sc.setText(getLS("L_This_folder_is_performed_within_the_file") .. "\n\n" .. sc.Text)
  else
    for n = 1, #ls do
      if File(tostring(ls[n])).isDirectory() then
      else
        u1 = activity.getLuaDir() .. "/res/post1"
        u2 = io.open(u1):read("*a")
        for lx1 in u2:gmatch('(.-) ') do
          jk = tointeger("-" .. #lx1)
          if tostring(string.sub(tostring(ls[n]), jk, -1)) == lx1 then
            cs = cs + 1
            if th(tostring(ls[n]), b1, c1) then
              sc.setText(getLS("L_Replace_the_success") .. "\n" .. tostring(ls[n]) .. "\n\n" .. sc.Text)
            else
              sc.setText(getLS("L_Replace_the_failed") .. "\n" .. tostring(ls[n]) .. "\n\n" .. sc.Text)
            end
          else
          end
        end
      end
    end
    sc.setText(getLS("L_The_end_of_the_substitution") ..
    "\n" ..
    getLS("L_A_total_of_execution") ..
    " " .. cs .. " " .. getLS("L_A_total_of_execution_1") .. "\n" .. b1 .. "=>" .. c1 .. "\n\n" .. sc.Text)
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
      text = getLS("L_A_key_to_replace_1"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "menu1",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "22dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "25dp",
      src = "res/Metrial266.png",
    },
  },
};

activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(0)
bw(Sideslip, 0x5FFFFFFF)
bw(menu1, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

menu1.onClick = function()
  activity.newActivity("file", { "folder", lj.Text })
end
