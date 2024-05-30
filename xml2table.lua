require "import"
import "console"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "com.androlua.*"
import "mods.andlua"
import "android.graphics.drawable.ColorDrawable"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "mods.SnackerBar"
import "loadlayout3"
ztl()
ztt()

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
      text = getLS("L_Edit_the_layout"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
};

cm = activity.getSystemService(Context.CLIPBOARD_SERVICE)
t = {
  LinearLayout,
  id = "l",
  orientation = "vertical",
  --backgroundColor="#eeeeff",
  {
    LuaEditor,
    id = "edit",
    --hint= "XML布局代码转换AndroLua布局表",
    layout_width = "fill",
    layout_height = "fill",
    layout_weight = 1,
    --gravity="top"
  },
  {
    LinearLayout,
    layout_width = "fill",
    backgroundColor = "0xffffffff",
    {
      TextView,
      id = "open1",
      text = getLS("L_Conversion"),
      layout_width = "fill",
      layout_weight = 1,
      onClick = "click",
      textColor = tonumber(bjzt()),
      backgroundColor = tonumber(bjzt()),
      gravity = "center",
      layout_height = "45dp",
    },
    {
      TextView,
      id = "open2",
      text = getLS("L_Preview"),
      layout_width = "fill",
      layout_weight = 1,
      textColor = tonumber(bjzt()),
      onClick = "click2",
      backgroundColor = tonumber(bjzt()),
      layout_height = "45dp",
      gravity = "center",
    },
    {
      TextView,
      id = "open3",
      text = getLS("L_Copy"),
      layout_width = "fill",
      layout_weight = 1,
      onClick = "click3",
      textColor = tonumber(bjzt()),
      layout_height = "45dp",
      backgroundColor = tonumber(bjzt()),
      gravity = "center",
    },
    {
      TextView,
      id = "open",
      text = getLS("L_Determine"),
      layout_width = "fill",
      textColor = tonumber(bjzt()),
      layout_height = "45dp",
      layout_weight = 1,
      onClick = "click4",
      backgroundColor = tonumber(bjzt()),
      gravity = "center",
    },
  }
}

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

dlg = Dialog(activity, ztt1())
function show(s)
  dlg.setContentView(loadlayout3(loadstring("return " .. s)(), {}))
  dlg.show()
  dlg.ActionBar.hide()
end

function click()
  local str = edit.getText().toString()
  str = xml2table(str)
  str = console.format(str)
  edit.setText(str)
end

function click2()
  local str = edit.getText().toString()
  show(str)
end

function click3(s)
  local cd = ClipData.newPlainText("label", edit.getText().toString())
  cm.setPrimaryClip(cd)
  SnackerBar.build()
      :msg(getLS("L_Has_been_copied_to_the_clipboard"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
end

function click4()
  local str = edit.getText().toString()
  layout.main = loadstring("return " .. str)()
  activity.setContentView(loadlayout2(layout.main, {}))
  dlg2.hide()
end

loadlayout(t)
dlg2 = Dialog(activity, ztt1())
dlg2.getWindow().setSoftInputMode(0x10)
dlg2.setContentView(l)

ztl()
function editlayout(txt)
  edit.Text = txt
  edit.format()
  dlg2.show()
  dlg2.ActionBar.hide()
end

function onResume2()
  local cd = cm.getPrimaryClip();
  local msg = cd.getItemAt(0).getText()
  edit.setText(msg)
end

ztl()
bw(open, 0x5FFFFFFF)
bw(open1, 0x5FFFFFFF)
bw(open2, 0x5FFFFFFF)
bw(open3, 0x5FFFFFFF)
ztt()
