require "import"
import "com.andlua.view.CustomGridView"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "mods.SnackerBar"
import "android.content.Intent"
import "android.net.Uri"
import "java.net.URLDecoder"
import "android.content.*"
import "android.view.inputmethod.InputMethodManager"
import "console"
import "android.view.*"
import "android.graphics.Typeface"
import "java.io.File"
import "bin"
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

projectdir = ...

if File(projectdir .. "/icon.png").isFile() == false then
  luapathIMG = activity.getLuaDir() .. "/icon.png"
else
  luapathIMG = projectdir .. "/icon.png"
end

layout = {
  LinearLayout,
  backgroundColor = AndLuaB,
  orientation = "vertical",
  {
    RelativeLayout,
    layout_height = "match_parent",
    layout_marginTop = "5dp",
    layout_width = "match_parent",
    {
      RelativeLayout,
      layout_height = "match_parent",
      layout_width = "match_parent",
      {
        RelativeLayout,
        layout_width = "70dp",
        layout_marginLeft = "10dp",
        layout_height = "70dp",
        id = "andlua7676974631",
        {
          CardView,
          backgroundColor = AndLuaB1,
          layout_height = "45dp",
          elevation = "0dp",
          radius = AndLuaR,
          layout_centerInParent = "true",
          layout_height = "45dp",
          {
            ImageView,
            src = luapathIMG,
            layout_height = "45dp",
            id = "icon",
            scaleType = "centerCrop",
            layout_width = "45dp",
          },
        },
      },
      {
        RelativeLayout,
        layout_height = "70dp",
        layout_toRightOf = "andlua7676974631",
        layout_marginLeft = "-5dp",
        layout_marginRight = "15dp",
        layout_width = "match_parent",
        {
          CardView,
          layout_height = "45dp",
          elevation = "0dp",
          layout_margin = "5dp",
          backgroundColor = AndLuaB1,
          layout_centerInParent = "true",
          radius = AndLuaR,
          layout_centerHorizontal = "true",
          layout_width = "-1",
          {
            EditText,
            textColor = TitleColor,
            id = "appname",
            text = "MyApp",
            background = "0",
            layout_height = "match_parent",
            layout_marginRight = "5dp",
            hint = getLS("L_The_application_name"),
            layout_marginLeft = "5dp",
            singleLine = "true",
            textSize = "15sp",
            layout_width = "match_parent",
          },
        },
      },
      {
        RelativeLayout,
        layout_height = "match_parent",
        layout_marginRight = "5dp",
        layout_marginTop = "-17dp",
        layout_below = "andlua7676974631",
        layout_marginLeft = "5dp",
        layout_width = "match_parent",
        {
          CardView,
          backgroundColor = AndLuaB1,
          layout_margin = "15dp",
          elevation = "0dp",
          layout_height = "45dp",
          radius = "5dp",
          layout_width = "match_parent",
          id = "andlua78413",
          {
            EditText,
            textColor = TitleColor,
            id = "appPackage",
            text = "com.mycompany.myapp",
            background = "0",
            layout_height = "match_parent",
            layout_marginRight = "5dp",
            textSize = "15sp",
            hint = getLS("L_The_name_of_packages"),
            layout_marginLeft = "5dp",
            singleLine = "true",
            layout_width = "match_parent",
          },
        },
        {
          RelativeLayout,
          layout_below = "andlua78413",
          layout_marginTop = "-20dp",
          id = "andlua755",
          {
            LinearLayout,
            orientation = "vertical",
            layout_height = "-2",
            layout_width = "-1",
            {
              LinearLayout,
              orientation = "horizontal",
              layout_height = "-2",
              layout_width = "-1",
              {
                CardView,
                backgroundColor = AndLuaB1,
                layout_margin = "15dp",
                elevation = "0dp",
                layout_weight = "1",
                radius = AndLuaR,
                layout_height = "45dp",
                layout_width = "-1",
                {
                  EditText,
                  textColor = TitleColor,
                  id = "appver",
                  textSize = "15sp",
                  text = "1.0",
                  background = "0",
                  layout_height = "match_parent",
                  layout_marginRight = "5dp",
                  hint = getLS("L_Version"),
                  layout_marginLeft = "5dp",
                  singleLine = "true",
                  layout_width = "match_parent",
                },
              },
              {
                CardView,
                backgroundColor = AndLuaB1,
                elevation = "0dp",
                layout_margin = "15dp",
                layout_weight = "1",
                layout_height = "45dp",
                radius = AndLuaR,
                layout_marginLeft = "-5dp",
                layout_width = "-1",
                {
                  EditText,
                  textColor = TitleColor,
                  id = "appcode",
                  text = "1",
                  background = "0",
                  textSize = "15sp",
                  layout_height = "match_parent",
                  layout_marginRight = "5dp",
                  hint = getLS("L_The_version_number"),
                  layout_marginLeft = "5dp",
                  singleLine = "true",
                  layout_width = "match_parent",
                },
              },
            },
          },
        },
        {
          RelativeLayout,
          layout_marginTop = "-20dp",
          layout_below = "andlua755",
          id = "andlua8877",
          {
            LinearLayout,
            orientation = "horizontal",
            layout_height = "-2",
            layout_width = "-1",
            {
              CardView,
              backgroundColor = AndLuaB1,
              layout_margin = "15dp",
              elevation = "0dp",
              layout_weight = "1",
              radius = AndLuaR,
              layout_height = "45dp",
              layout_width = "-1",
              {
                EditText,
                textColor = TitleColor,
                id = "appsdk",
                text = "21",
                background = "0",
                layout_height = "match_parent",
                layout_marginRight = "5dp",
                textSize = "15sp",
                hint = "SDK",
                layout_marginLeft = "5dp",
                singleLine = "true",
                layout_width = "match_parent",
              },
            },
            {
              CardView,
              layout_weight = "1",
              id = "Debugging2",
              backgroundColor = AndLuaB1,
              layout_margin = "15dp",
              elevation = "0dp",
              radius = AndLuaR,
              layout_marginLeft = "-5dp",
              layout_height = "45dp",
              layout_width = "-1",
              {
                TextView,
                text = getLS("L_Debug_mode"),
                textSize = "15sp",
                layout_margin = "-6dp",
                textColor = TitleColor3,
                id = "Debugging1",
                layout_height = "-1",
                layout_width = "-1",
                gravity = "center",
                onClick = function()
                  if Debugging == true then
                    Debugging2.backgroundColor = AndLuaB
                    Debugging1.textColor = TitleColor
                    Debugging = false
                  else
                    Debugging2.backgroundColor = tointeger(bjzt())
                    Debugging1.textColor = TitleColor3
                    Debugging = true
                  end
                end,
              },
            },
          },
        },
        {
          CardView,
          backgroundColor = AndLuaB1,
          layout_margin = "15dp",
          elevation = "0dp",
          layout_marginTop = "-5dp",
          layout_below = "andlua8877",
          radius = AndLuaR,
          layout_height = "-1",
          layout_width = "-1",
          {
            YLListView,
            VerticalScrollBarEnabled = false,
            overScrollMode = 2,
            layout_width = "fill",
            layout_height = "-1",
            layout_marginTop = "5dp",
            DividerHeight = 0,
            layout_marginBottom = "5dp",
            id = "list",
          },
        },
      },
    },
  },
};


item = {
  LinearLayout,
  orientation = "horizontal",
  layout_width = "match_parent",
  {
    TextView,
    textSize = "16sp",
    ellipsize = "end",
    singleLine = true,
    textColor = TitleColor1,
    id = "Jtext",
    layout_weight = "1",
    layout_marginLeft = "5dp",
    padding = "5dp",
    layout_width = "match_parent",
  },
  {
    CheckBox,
    focusable = false,
    clickable = false,
    focusableInTouchMode = false,
    layout_marginRight = "5dp",
    id = "Jche",
  },
};

activity.setContentView(loadlayout(layout))

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
      text = getLS("L_Engineering_properties"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
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
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial50.png",
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(0)

adp = LuaAdapter(activity, item)
list.Adapter = adp

function Write(File, Text)
  return io.open(File, "w"):write(Text):close()
end

bw(Sideslip, 0x5FFFFFFF)
bw(c2, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
c2.onClick = function()
  local rs = {}

  for i = 0, #data1 do
    if data1[i] then
      table.insert(rs, ps[i + 1])
    end
  end

  local Jurl = ""
  local Jurl1 = ""

  for i = 1, #rs do
    Jurl = Jurl .. '  "' .. rs[i] .. '",\n'
  end

  for i = 1, #sc do
    Jurl1 = Jurl1 .. '  "' .. sc[i] .. '",\n'
  end

  local STR = [[--名称
appname="]] .. tostring(appname.Text) .. [["
--版本号
appver="]] .. tostring(appver.Text) .. [["
--版本
appcode="]] .. tostring(appcode.Text) .. [["
--SDK
appsdk="]] .. tostring(appsdk.Text) .. [["
--包名
packagename="]] .. tostring(appPackage.Text) .. [["
--调试模式
debugmode=]] .. tostring(Debugging) .. [[

--应用权限
user_permission={
]] .. tostring(string.sub(Jurl, 0, -2)) .. [[

}]] .. [[

--跳过编译
skip_compilation={
]] .. tostring(string.sub(Jurl1, 0, -2)) .. [[

}]]

  if fileSrc != nil then
    if LuaUtil.copyDir(fileSrc, projectdir .. "/icon.png") == false then
      SnackerBar.build()
          :msg(getLS("L_Save_exception"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
  end

  if Write(projectdir .. "/init.lua", tostring(STR)) then
    activity.result({ "已保存", tostring(STR), "0" })
  else
    SnackerBar.build()
        :msg(getLS("L_Save_exception"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  end
end

list.setOnItemClickListener(AdapterView.OnItemClickListener {
  onItemClick = function(id, v, zero, one)
    if v.Tag.Jche["Checked"] == true then
      data1[one - 1] = false
      v.Tag.Jche["Checked"] = false
    else
      data1[one - 1] = true
      v.Tag.Jche["Checked"] = true
    end

    adp.clear()

    if getLang() then
      for k, v in ipairs(ps) do
        adp.add { Jtext = permission_info[v], Jche = { Checked = data1[k - 1] } }
      end
    else
      for k, v in ipairs(ps) do
        adp.add { Jtext = v, Jche = { Checked = data1[k - 1] } }
      end
    end
  end
})

luaproject = projectdir .. "/init.lua"

app = {}

loadfile(luaproject, "bt", app)()

appname.Text = app.appname or "andlua"
appver.Text = app.appver or "1.0"
appcode.Text = app.appcode or "1"
appsdk.Text = app.appsdk or "21"
appPackage.Text = app.packagename or "com.andlua.demo"

if app.debugmode == nil then
  Debugging = true
else
  Debugging = app.debugmode
end

if Debugging == true then
  Debugging2.backgroundColor = tointeger(bjzt())
  Debugging1.textColor = TitleColor3
else
  Debugging2.backgroundColor = AndLuaB
  Debugging1.textColor = TitleColor
end

pss = {}
ps = {}

sc = {}

for k, v in pairs(permission_info) do
  table.insert(ps, k)
end

for k, v in ipairs(app.skip_compilation or {}) do
  table.insert(sc, app.skip_compilation[k])
end

table.sort(ps)

pcs = {}
data1 = {}

for k, v in ipairs(app.user_permission or {}) do
  pcs[v] = true
end

if getLang() then
  for k, v in ipairs(ps) do
    if pcs[v] then
      data1[k - 1] = true
      adp.add { Jtext = permission_info[v], Jche = { Checked = data1[k - 1] } }
    else
      data1[k - 1] = false
      adp.add { Jtext = permission_info[v], Jche = { Checked = data1[k - 1] } }
    end
  end
else
  for k, v in ipairs(ps) do
    if pcs[v] then
      data1[k - 1] = true
      adp.add { Jtext = v, Jche = { Checked = data1[k - 1] } }
    else
      data1[k - 1] = false
      adp.add { Jtext = v, Jche = { Checked = data1[k - 1] } }
    end
  end
end

local template = [[
appname="%s"
appver="%s"
appcode="%s"
appsdk="%s"
packagename="%s"
debugmode=%s
user_permission={
  %s
}
skip_compilation={
  %s
}
]]

local function dump(t)
  for k, v in ipairs(t) do
    t[k] = string.format("%q", v)
  end
  return table.concat(t, ",\n  ")
end

activity.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_PAN);

list.onItemLongClick = function(p, v, i, s)
  AlertDialog.Builder(this)
      .setTitle(getLS("L_Permissions_1"))
      .setMessage(v.Tag.Jtext.Text)
      .setPositiveButton(getLS("L_Determine"), nil)
      .show()
  return true
end

icon.onClick = function()
  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end

import "android.graphics.BitmapFactory"
import "android.provider.MediaStore"
function onActivityResult(requestCode, resultCode, intent)
  if intent then
    local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
    cursor.moveToFirst()
    local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
    fileSrc = cursor.getString(idx)
    bit = nil
    bit = BitmapFactory.decodeFile(fileSrc)
    icon.setImageBitmap(bit)
  end
end
