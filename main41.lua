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
main10 = {
  LinearLayout,
  layout_height = "fill",
  orientation = "vertical",
  background = "#ffffff",
  layout_width = "fill",
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
        background = "#ffffff",
        id = "xx3",
        layout_marginBottom = "10dp",
        layout_marginRight = "10dp",
        layout_height = "-1",
        layout_width = "-1",
        cardElevation = "1dp",
        radius = "5dp",
        elevation = "1dp",
        layout_marginTop = "10dp",
        layout_marginLeft = "10dp",
        {
          RelativeLayout,
          layout_height = "-1",
          layout_width = "-1",
          {
            RelativeLayout,
            layout_marginBottom = "10dp",
            layout_height = "-1",
            layout_width = "-1",
            id = "uu1",
            {
              TextView,
              id = "l1",
              layout_marginTop = "8dp",
              textColor = tostring(bjzt()),
              text = "软件版本",
              textSize = "15sp",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_width = "-1",
              singleLine = "true",
              id = "bb",
              textSize = "14dp",
              layout_marginRight = "8dp",
              layout_below = "l1",
              background = "0",
              layout_marginLeft = "8dp",
              textColor = "#333333",
            },
            {
              TextView,
              id = "y1",
              layout_marginRight = "12dp",
              alpha = "0.2",
              layout_height = "1dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "bb",
              background = "#000000",
              layout_marginLeft = "12dp",
            },
            {
              TextView,
              id = "y2",
              layout_marginRight = "12dp",
              alpha = "1",
              layout_height = "2dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "bb",
              backgroundColor = tonumber(bjzt()),
              layout_marginLeft = "12dp",
            },
          },
          {
            RelativeLayout,
            layout_marginBottom = "10dp",
            layout_height = "-1",
            layout_width = "-1",
            layout_below = "uu1",
            id = "uu2",
            {
              TextView,
              id = "l2",
              layout_marginTop = "8dp",
              textColor = "#757575",
              text = "更新标题",
              textSize = "15sp",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_width = "-1",
              id = "bt",
              textSize = "14dp",
              singleLine = "true",
              layout_marginRight = "8dp",
              layout_below = "l2",
              background = "0",
              layout_marginLeft = "8dp",
              textColor = "#333333",
            },
            {
              TextView,
              id = "y3",
              layout_marginRight = "12dp",
              alpha = "0.2",
              layout_height = "1dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "bt",
              background = "#000000",
              layout_marginLeft = "12dp",
            },
            {
              TextView,
              id = "y4",
              layout_marginRight = "12dp",
              alpha = "1",
              layout_height = "2dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "bt",
              backgroundColor = tonumber(bjzt()),
              layout_marginLeft = "12dp",
            },
          },
          {
            RelativeLayout,
            layout_marginBottom = "10dp",
            layout_height = "-1",
            layout_width = "-1",
            layout_below = "uu2",
            id = "uu3",
            {
              TextView,
              id = "l3",
              layout_marginTop = "8dp",
              textColor = "#757575",
              text = "更新内容",
              textSize = "15sp",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_width = "-1",
              id = "nr",
              textSize = "14dp",
              layout_marginRight = "8dp",
              layout_below = "l3",
              background = "0",
              layout_marginLeft = "8dp",
              textColor = "#333333",
            },
            {
              TextView,
              id = "y5",
              layout_marginRight = "12dp",
              alpha = "0.2",
              layout_height = "1dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "nr",
              background = "#000000",
              layout_marginLeft = "12dp",
            },
            {
              TextView,
              id = "y6",
              layout_marginRight = "12dp",
              alpha = "1",
              layout_height = "2dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "nr",
              backgroundColor = tonumber(bjzt()),
              layout_marginLeft = "12dp",
            },
          },
          {
            RelativeLayout,
            layout_marginBottom = "10dp",
            layout_height = "-1",
            layout_width = "-1",
            layout_below = "uu3",
            id = "uu4",
            {
              TextView,
              id = "l4",
              layout_marginTop = "8dp",
              textColor = "#757575",
              text = "新版本链接",
              textSize = "15sp",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_width = "-1",
              singleLine = "true",
              id = "lj",
              textSize = "14dp",
              layout_marginRight = "8dp",
              layout_below = "l4",
              background = "0",
              layout_marginLeft = "8dp",
              textColor = "#333333",
            },
            {
              TextView,
              id = "y7",
              layout_marginRight = "12dp",
              alpha = "0.2",
              layout_height = "1dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "lj",
              background = "#000000",
              layout_marginLeft = "12dp",
            },
            {
              TextView,
              id = "y8",
              layout_marginRight = "12dp",
              alpha = "1",
              layout_height = "2dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "lj",
              backgroundColor = tonumber(bjzt()),
              layout_marginLeft = "12dp",
            },
          },
          {
            RelativeLayout,
            layout_marginBottom = "10dp",
            layout_height = "-1",
            layout_width = "-1",
            layout_below = "uu4",
            id = "uu5",
            {
              TextView,
              id = "l5",
              layout_marginTop = "8dp",
              textColor = "#757575",
              text = "新版本大小",
              textSize = "15sp",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_width = "-1",
              singleLine = "true",
              id = "dx",
              textSize = "14dp",
              layout_marginRight = "8dp",
              layout_below = "l5",
              background = "0",
              layout_marginLeft = "8dp",
              textColor = "#333333",
            },
            {
              TextView,
              id = "y9",
              layout_marginRight = "12dp",
              alpha = "0.2",
              layout_height = "1dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "dx",
              background = "#000000",
              layout_marginLeft = "12dp",
            },
            {
              TextView,
              id = "y10",
              layout_marginRight = "12dp",
              alpha = "1",
              layout_height = "2dp",
              layout_centerHorizontal = "true",
              layout_width = "-1",
              layout_alignBottom = "dx",
              backgroundColor = tonumber(bjzt()),
              layout_marginLeft = "12dp",
            },
          },
        },
      },
    },
  },
};

activity.setContentView(loadlayout(main10))
ztl()
idd = ...
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
    layout_width = "fill",
    layout_weight = "1",
    orientation = "horizontal",
    {
      TextView,
      layout_gravity = "center",
      textSize = "18sp",
      text = "远程更新",
      textColor = tonumber(bjzt()),
      id = "btt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "menu11",
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
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

bb.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      y2.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y2.setVisibility(View.VISIBLE)
      l1.setTextColor(tonumber(bjzt()))
    else
      y2.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y2.setVisibility(View.INVISIBLE)
      l1.setTextColor(0xff8b8b8b)
    end
  end
}
bt.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      y4.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y4.setVisibility(View.VISIBLE)
      l2.setTextColor(tonumber(bjzt()))
    else
      y4.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y4.setVisibility(View.INVISIBLE)
      l2.setTextColor(0xff8b8b8b)
    end
  end
}
nr.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      y6.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y6.setVisibility(View.VISIBLE)
      l3.setTextColor(tonumber(bjzt()))
    else
      y6.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y6.setVisibility(View.INVISIBLE)
      l3.setTextColor(0xff8b8b8b)
    end
  end
}
lj.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      y8.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y8.setVisibility(View.VISIBLE)
      l4.setTextColor(tonumber(bjzt()))
    else
      y8.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y8.setVisibility(View.INVISIBLE)
      l4.setTextColor(0xff8b8b8b)
    end
  end
}
dx.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      y10.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y10.setVisibility(View.VISIBLE)
      l5.setTextColor(tonumber(bjzt()))
    else
      y10.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      y10.setVisibility(View.INVISIBLE)
      l5.setTextColor(0xff8b8b8b)
    end
  end
}
y2.setVisibility(View.INVISIBLE)
y4.setVisibility(View.INVISIBLE)
y6.setVisibility(View.INVISIBLE)
y8.setVisibility(View.INVISIBLE)
y10.setVisibility(View.INVISIBLE)

bw(menu11, 0x5FFFFFFF)

function hh()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/bcycgx.php",
    "uid1=" ..
    uid1 ..
    "&uid2=" ..
    uid2 .. "&uid3=" ..
    uid3 .. "&id=" .. idd .. "&bb=" .. ml1 .. "&bt=" .. ml2 .. "&nr=" .. ml3 .. "&lj=" ..
    ml4 .. "&dx=" .. ml5 .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      SnackerBar.build()
          :msg("保存成功")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "5" then
      SnackerBar.build()
          :msg("字数不能大于1000")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == nil then
      SnackerBar.build()
          :msg("保存失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "2" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "no" then
      SnackerBar.build()
          :msg("该后台已被封禁")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "3" then
      SnackerBar.build()
          :msg("服务器维护中")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "4" then
      SnackerBar.build()
          :msg("该后台不存在")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
    end
    dialog5.hide()
  end)
end

pop = PopupMenu(activity, menu11)
menu = pop.Menu
menu.add("保存").onMenuItemClick = function(a)
  mm1 = m1(bb.Text)
  mm2 = m1(bt.Text)
  mm3 = m1(nr.Text)
  mm4 = m1(lj.Text)
  mm5 = m1(dx.Text)
  ajj1 = 0
  ajj2 = 0
  ajj3 = 0
  ajj4 = 0
  ajj5 = 0
  while ajj1 ~= 1 do
    if mm1:find("=") then
      mm1 = string.gsub(mm1, "=", "Andlua@LY")
    else
      ajj1 = 1
      ml1 = mm1
      while ajj2 ~= 1 do
        if mm2:find("=") then
          mm2 = string.gsub(mm2, "=", "Andlua@LY")
        else
          ajj2 = 1
          ml2 = mm2
          while ajj3 ~= 1 do
            if mm3:find("=") then
              mm3 = string.gsub(mm3, "=", "Andlua@LY")
            else
              ajj3 = 1
              ml3 = mm3
              while ajj4 ~= 1 do
                if mm4:find("=") then
                  mm4 = string.gsub(mm4, "=", "Andlua@LY")
                else
                  ajj4 = 1
                  ml4 = mm4
                  while ajj5 ~= 1 do
                    if mm5:find("=") then
                      mm5 = string.gsub(mm5, "=", "Andlua@LY")
                    else
                      ajj5 = 1
                      ml5 = mm5
                      hh()
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

menu.add("刷新").onMenuItemClick = function(a)
  sxd()
end

menu11.onClick = function()
  pop.show()
end

function sxd()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/ycgx.php", "uid1=" .. uid1 ..
  "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. idd .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      bb1 = b:match('%["bb"] = "(.-)%";')
      bb.setText(bb1)
      bt1 = b:match('%["bt"] = "(.-)%";')
      bt.setText(bt1)
      nr1 = b:match('%["nr"] = "(.-)%";')
      nr.setText(nr1)
      lj1 = b:match('%["lj"] = "(.-)%";')
      lj.setText(lj1)
      dx1 = b:match('%["dx"] = "(.-)%";')
      dx.setText(dx1)
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == nil then
      nr.setText("获取失败！")
    elseif sid1 == "2" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "no" then
      SnackerBar.build()
          :msg("该后台已被封禁")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "3" then
      SnackerBar.build()
          :msg("服务器维护中")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
    end
    dialog5.hide()
  end)
end

sxd()
