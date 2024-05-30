require "import"
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
ztt()
main8 = {
  LinearLayout,
  orientation = "vertical",
  layout_height = "fill",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  {
    ScrollView,
    VerticalScrollBarEnabled = false,
    {
      RelativeLayout,
      layout_height = "-1",
      layout_width = "-1",
      {
        CardView,
        radius = 0,
        layout_margin = "10dp",
        layout_width = "-1",
        cardElevation = "0dp",
        id = "xx1",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        layout_height = "10%h",
        {
          RelativeLayout,
          layout_height = "-1",
          layout_width = "-1",
          {
            ImageView,
            layout_margin = "8dp",
            layout_width = "14%w",
            src = "icon.png",
            layout_height = "-1",
            id = "tb",
          },
          {
            CardView,
            layout_centerHorizontal = "true",
            backgroundColor = tostring(bjzt()),
            id = "xx2",
            cardElevation = "0dp",
            layout_alignParentRight = "true",
            layout_marginRight = "12dp",
            layout_centerVertical = "true",
            layout_width = "18%w",
            layout_height = "25dp",
            {
              RippleLayout,
              rippleColor = tostring(bjzt()),
              layout_height = "-1",
              layout_width = "-1",
              {
                TextView,
                gravity = "center",
                id = "txx",
                layout_width = "-1",
                textSize = "12sp",
                textColor = "#ffffff",
                text = "选择图标",
                layout_height = "-1",
              },
            },
          },
        },
      },
      {
        CardView,
        id = "xx3",
        layout_marginBottom = "10dp",
        layout_marginRight = "10dp",
        layout_below = "xx1",
        layout_height = "-1",
        layout_width = "-1",
        cardElevation = "0dp",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        layout_marginLeft = "10dp",
        {
          RelativeLayout,
          layout_height = "-1",
          layout_width = "-1",
          {
            TextView,
            id = "l1",
            layout_marginTop = "8dp",
            textColor = tostring(bjzt()),
            text = "应用名称",
            textSize = "14sp",
            layout_marginLeft = "12dp",
          },
          {
            EditText,
            layout_width = "-1",
            singleLine = "true",
            id = "yhm",
            textSize = "14dp",
            layout_marginRight = "8dp",
            layout_below = "l1",
            background = "0",
            layout_marginLeft = "8dp",
            textColor = "#000000",
          },
          {
            TextView,
            id = "l3",
            layout_marginRight = "12dp",
            alpha = "0.2",
            layout_height = "1dp",
            layout_centerHorizontal = "true",
            layout_width = "-1",
            layout_alignBottom = "yhm",
            background = "#000000",
            layout_marginLeft = "12dp",
          },
          {
            TextView,
            id = "l4",
            layout_marginRight = "12dp",
            alpha = "1",
            layout_height = "2dp",
            layout_centerHorizontal = "true",
            layout_width = "-1",
            layout_alignBottom = "yhm",
            backgroundColor = tonumber(bjzt()),
            layout_marginLeft = "12dp",
          },
          {
            CardView,
            id = "xx4",
            layout_width = "-1",
            layout_below = "l4",
            cardElevation = "0dp",
            backgroundColor = AndLuaB1,
            radius = AndLuaR,
            layout_height = "80dp",
            {
              RelativeLayout,
              layout_height = "-1",
              layout_width = "-1",
              {
                TextView,
                id = "l2",
                layout_marginTop = "8dp",
                textColor = "#757575",
                text = "应用版本",
                textSize = "14sp",
                layout_marginLeft = "12dp",
              },
              {
                EditText,
                background = "0",
                singleLine = "true",
                id = "zh",
                layout_width = "-1",
                layout_marginRight = "8dp",
                layout_below = "l2",
                textSize = "14dp",
                layout_marginLeft = "8dp",
                textColor = "#000000",
              },
              {
                TextView,
                id = "l5",
                layout_marginRight = "12dp",
                alpha = "0.2",
                layout_height = "1dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "zh",
                background = "#000000",
                layout_marginLeft = "12dp",
              },
              {
                TextView,
                id = "l55",
                layout_marginRight = "12dp",
                alpha = "1",
                layout_height = "2dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "zh",
                backgroundColor = tonumber(bjzt()),
                layout_marginLeft = "12dp",
              },
            },
          },
          {
            CardView,
            id = "xx5",
            layout_width = "-1",
            layout_below = "xx4",
            cardElevation = "0dp",
            layout_height = "80dp",
            backgroundColor = AndLuaB1,
            radius = AndLuaR,
            {
              RelativeLayout,
              layout_height = "-1",
              layout_width = "-1",
              {
                TextView,
                id = "l21",
                layout_marginTop = "8dp",
                textColor = "#757575",
                text = "应用包名",
                textSize = "14sp",
                layout_marginLeft = "12dp",
              },
              {
                EditText,
                layout_width = "-1",
                singleLine = "true",
                id = "yx",
                textSize = "14dp",
                layout_marginRight = "8dp",
                layout_below = "l21",
                background = "0",
                layout_marginLeft = "8dp",
                textColor = "#000000",
              },
              {
                TextView,
                id = "l51",
                layout_marginRight = "12dp",
                alpha = "0.2",
                layout_height = "1dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "yx",
                background = "#000000",
                layout_marginLeft = "12dp",
              },
              {
                TextView,
                id = "l41",
                layout_marginRight = "12dp",
                alpha = "1",
                layout_height = "2dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "yx",
                backgroundColor = tonumber(bjzt()),
                layout_marginLeft = "12dp",
              },
            },
          },
          {
            CardView,
            id = "xx6",
            layout_width = "-1",
            layout_below = "xx5",
            cardElevation = "0dp",
            layout_height = "80dp",
            backgroundColor = AndLuaB1,
            radius = AndLuaR,
            {
              RelativeLayout,
              layout_height = "-1",
              layout_width = "-1",
              {
                TextView,
                id = "l211",
                layout_marginTop = "8dp",
                textColor = "#757575",
                text = "版本号",
                textSize = "14sp",
                layout_marginLeft = "12dp",
              },
              {
                EditText,
                layout_width = "-1",
                singleLine = "true",
                id = "qq",
                textSize = "14dp",
                layout_marginRight = "8dp",
                layout_below = "l211",
                background = "0",
                layout_marginLeft = "8dp",
                textColor = "#000000",
              },
              {
                TextView,
                id = "l511",
                layout_marginRight = "12dp",
                alpha = "0.2",
                layout_height = "1dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "qq",
                background = "#000000",
                layout_marginLeft = "12dp",
              },
              {
                TextView,
                id = "l411",
                layout_marginRight = "12dp",
                alpha = "1",
                layout_height = "2dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "qq",
                backgroundColor = tonumber(bjzt()),
                layout_marginLeft = "12dp",
              },
            },
          },
          {
            CardView,
            backgroundColor = AndLuaB1,
            radius = AndLuaR,
            id = "xx61",
            layout_width = "-1",
            layout_below = "xx6",
            cardElevation = "0dp",
            layout_height = "80dp",
            {
              RelativeLayout,
              layout_height = "-1",
              layout_width = "-1",
              {
                TextView,
                id = "l2112",
                layout_marginTop = "8dp",
                textColor = "#757575",
                text = "SDK",
                textSize = "14sp",
                layout_marginLeft = "12dp",
              },
              {
                EditText,
                background = "0",
                textSize = "14dp",
                layout_marginRight = "8dp",
                layout_below = "l2112",
                singleLine = "true",
                layout_width = "-1",
                text = "",
                id = "hy",
                layout_marginLeft = "8dp",
                textColor = "#000000",
              },
              {
                TextView,
                id = "l5112",
                layout_marginRight = "12dp",
                alpha = "0.2",
                layout_height = "1dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "hy",
                background = "#000000",
                layout_marginLeft = "12dp",
              },
              {
                TextView,
                id = "l4112",
                layout_marginRight = "12dp",
                alpha = "1",
                layout_height = "2dp",
                layout_centerHorizontal = "true",
                layout_width = "-1",
                layout_alignBottom = "hy",
                backgroundColor = tonumber(bjzt()),
                layout_marginLeft = "12dp",
              },
            },
          },
          {
            Switch,
            layout_marginBottom = "20dp",
            textColor = "#000000",
            layout_marginTop = "10dp",
            layout_width = "-1",
            layout_marginRight = "12dp",
            layout_below = "xx61",
            text = "调试模式",
            layout_marginLeft = "12dp",
            id = "ts",
          },
        },
      },
    },
  },
};

activity.setContentView(loadlayout(main8))
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
      text = "工程属性",
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
    {
      TextView,
      text = "0",
      layout_width = "0dp",
      id = "dz",
      layout_height = "0dp",
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
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial50.png",
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
activity.ActionBar.setElevation(0)
bw(Sideslip, 0x5FFFFFFF)
bw(menu1, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

lj, aaa = ...
luaproject = lj .. "/init.lua"
bcv = io.open(luaproject):read("*a")
ic = lj .. "/icon.png"
app = {}
loadfile(luaproject, "bt", app)()
ts.Checked = app.debugmode == true or app.debugmode
yhm.Text = app.appname or "andlua"
mc = app.appname or "andlua"
zh.Text = app.appver or "1.0"
bb = app.appver or "1.0"
qq.Text = app.appcode or "1"
bbh = app.appcode or "1"
hy.Text = app.appsdk or "15"
sdk = app.appsdk or "15"
yx.Text = app.packagename or "com.andlua.demo"
yxx = app.packagename or "com.andlua.demo"
mc1 = "appname=" .. [["]] .. mc .. [["]]
bb1 = "appver=" .. [["]] .. bb .. [["]]
bbh1 = "appcode=" .. [["]] .. bbh .. [["]]
sdk1 = "appsdk=" .. [["]] .. sdk .. [["]]
bmm = "kagename=" .. [["]] .. yxx .. [["]]
hhu = ts.isChecked()
if hhu == true then
  tss = "debugmode=true"
elseif hhu == false then
  tss = "debugmode=false"
else
  tss = "debugmode=true"
end
if File(ic).isFile() then
  tb.setImageBitmap(loadbitmap(ic))
else
  uu = activity.getLuaDir() .. "/icon.png"
  tb.setImageBitmap(loadbitmap(uu))
end
menu1.onClick = function()
  hh = ts.isChecked()
  if hh == true then
    ts1 = "debugmode=true"
  elseif hh == false then
    ts1 = "debugmode=false"
  else
    ts1 = "debugmode=true"
  end
  h1 = th(bcv, mc1, "appname=" .. [["]] .. yhm.Text .. [["]])
  h2 = th(h1, bb1, "appver=" .. [["]] .. zh.Text .. [["]])
  h3 = th(h2, bbh1, "appcode=" .. [["]] .. qq.Text .. [["]])
  h4 = th(h3, sdk1, "appsdk=" .. [["]] .. hy.Text .. [["]])
  h5 = th(h4, tss, ts1)
  h6 = th(h5, bmm, "kagename=" .. [["]] .. yx.Text .. [["]])
  if dz.Text == "0" then
  else
    thb = (lj .. "/icon.png")
    LuaUtil.copyDir(fileSrc, thb)
  end
  if aaa == "1" then
    io.open(lj .. "/init.lua", "w"):write(h6):close()
    activity.finish()
  else
    activity.result({ "已保存", h6, "0" })
  end
end
yhm.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      l4.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l4.setVisibility(View.VISIBLE)
      l1.setTextColor(tonumber(bjzt()))
    else
      l4.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l4.setVisibility(View.INVISIBLE)
      l1.setTextColor(0xff8b8b8b)
    end
  end
}
yx.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      l41.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l41.setVisibility(View.VISIBLE)
      l21.setTextColor(tonumber(bjzt()))
    else
      l41.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l41.setVisibility(View.INVISIBLE)
      l21.setTextColor(0xff8b8b8b)
    end
  end
}
qq.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      l411.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l411.setVisibility(View.VISIBLE)
      l211.setTextColor(tonumber(bjzt()))
    else
      l411.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l411.setVisibility(View.INVISIBLE)
      l211.setTextColor(0xff8b8b8b)
    end
  end
}
hy.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      l4112.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l4112.setVisibility(View.VISIBLE)
      l2112.setTextColor(tonumber(bjzt()))
    else
      l4112.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l4112.setVisibility(View.INVISIBLE)
      l2112.setTextColor(0xff8b8b8b)
    end
  end
}
zh.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      l55.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l55.setVisibility(View.VISIBLE)
      l2.setTextColor(tonumber(bjzt()))
    else
      l55.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      l55.setVisibility(View.INVISIBLE)
      l2.setTextColor(0xff8b8b8b)
    end
  end
}
l4.setVisibility(View.INVISIBLE)
l41.setVisibility(View.INVISIBLE)
l411.setVisibility(View.INVISIBLE)
l55.setVisibility(View.INVISIBLE)
l4112.setVisibility(View.INVISIBLE)
txx.onClick = function()
  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end
ztt()

function onActivityResult(requestCode, resultCode, intent)
  if intent then
    local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
    cursor.moveToFirst()
    import "android.provider.MediaStore"
    local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
    fileSrc = cursor.getString(idx)
    bit = nil
    tb.setImageBitmap(loadbitmap(fileSrc))
    dz.setText(fileSrc)
    import "android.graphics.BitmapFactory"
    bit = BitmapFactory.decodeFile(fileSrc)
  end
end
