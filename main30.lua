require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "mods.SnackerBar"
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
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.drawable.ColorDrawable"

import "android.graphics.Color"
import "android.support.v4.widget.*"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
ztt()
main = {
  LinearLayout,
  orientation = "vertical",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  layout_height = "fill",
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      CardView,
      layout_marginRight = "10dp",
      layout_width = "-1",
      radius = AndLuaR,
      layout_marginLeft = "10dp",
      id = "xx3",
      backgroundColor = AndLuaB1,
      cardElevation = "0dp",
      layout_marginTop = "10dp",
      layout_height = "-2",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          CardView,
          id = "x1",
          cardElevation = "0dp",
          backgroundColor = AndLuaB1,
          radius = 0,
          layout_width = "-1",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              id = "z3",
              text = getLS("L_Reply"),
              layout_marginLeft = "12dp",
              textSize = "14sp",
              layout_marginTop = "8dp",
              textColor = TitleColor1,
            },
            {
              RelativeLayout,
              id = "b",
              layout_below = "z3",
              layout_width = "-1",
              layout_marginBottom = "15dp",
              layout_marginTop = "10dp",
              layout_height = "40dp",
              {
                CircleImageView,
                id = "tztx",
                layout_width = "45dp",
                layout_marginLeft = "10dp",
                layout_centerVertical = "true",
                src = "res/tx.png",
                layout_height = "45dp",
              },
              {
                TextView,
                textSize = "15sp",
                MaxLines = "2",
                gravity = "top",
                layout_toRightOf = "tztx",
                layout_centerVertical = "true",
                layout_marginTop = "2dp",
                textColor = TitleColor,
                id = "tznc",
                text = "",
                layout_marginRight = "5dp",
                layout_marginLeft = "10dp",
              },
            },
          },
        },
      },
    },
    {
      CardView,
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_marginLeft = "10dp",
      id = "xx4",
      layout_marginBottom = "10dp",
      layout_below = "xx3",
      layout_marginTop = "10dp",
      layout_marginRight = "10dp",
      cardElevation = "0dp",
      layout_width = "-1",
      layout_height = "-2",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          CardView,
          id = "x2",
          radius = 0,
          cardElevation = "0dp",
          backgroundColor = AndLuaB1,
          layout_marginTop = "10dp",
          layout_width = "-1",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              id = "z2",
              text = getLS("L_Reply_content"),
              layout_marginLeft = "12dp",
              textSize = "15sp",
              textColor = bjzt(),
            },
            {
              EditText,
              textSize = "14dp",
              layout_marginLeft = "8dp",
              textColor = TitleColor,
              layout_height = "-1",
              gravity = "top",
              layout_marginRight = "8dp",
              layout_below = "z2",
              layout_marginBottom = "12dp",
              id = "nr",
              layout_width = "-1",
              background = "0",
            },
          },
        },
      },
    },
  },
};


activity.setContentView(loadlayout(main))
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
      text = getLS("L_Reply_to_comment"),
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
      src = "res/Metrial386.png",
    },
  },
};
uid33, uid44, nc, bot, txc, hfid = ...
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
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/andlua/hufu2.php",
    "uid1=" ..
    uid1 ..
    "&uid2=" ..
    uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. uid44 .. "&text=" ..
    nr.Text .. "&hfid=" .. hfid .. "&uid33=" .. uid33 .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    dialog5.hide()
    if sid1 == "ok" then
      activity.result({ "ok" })
    elseif sid1 == "5" then
      SnackerBar.build()
          :msg(getLS("L_Word_too_little"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "4" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
      SnackerBar.build()
          :msg(getLS("L_You_submit"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
  end)
end

z3.setText(getLS("L_Reply") .. " " .. nc)
tznc.setText(bot)
tztx.setImageBitmap(loadbitmap(txc))
