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
  backgroundColor = AndLuaB,
  layout_height = "fill",
  layout_width = "fill",
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      CardView,
      layout_marginTop = "10dp",
      layout_marginRight = "10dp",
      layout_width = "-1",
      layout_marginLeft = "10dp",
      radius = AndLuaR,
      backgroundColor = AndLuaB1,
      layout_height = "-2",
      id = "xx3",
      cardElevation = "0dp",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          CardView,
          radius = 0,
          layout_width = "-1",
          id = "x1",
          backgroundColor = AndLuaB1,
          cardElevation = "0dp",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              textSize = "15sp",
              layout_marginTop = "8dp",
              text = getLS("L_The_title"),
              textColor = TitleColor1,
              id = "z3",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_marginRight = "8dp",
              background = "0",
              id = "btt",
              textSize = "14dp",
              layout_width = "-1",
              layout_marginLeft = "8dp",
              MaxLines = "5",
              textColor = TitleColor,
              layout_marginBottom = "12dp",
              layout_below = "z3",
            },
            {
              TextView,
              textSize = "14sp",
              layout_marginTop = "8dp",
              text = "#其他内容#",
              layout_alignParentRight = "true",
              layout_marginRight = "12dp",
              textColor = tostring(bjzt()),
              id = "bq2",
            },
          },
        },
      },
    },
    {
      CardView,
      layout_marginRight = "10dp",
      id = "xx4",
      layout_marginLeft = "10dp",
      layout_below = "xx3",
      layout_marginTop = "10dp",
      cardElevation = "0dp",
      radius = AndLuaR,
      layout_height = "-1",
      backgroundColor = AndLuaB1,
      layout_marginBottom = "10dp",
      layout_width = "-1",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          CardView,
          cardElevation = "0dp",
          radius = 0,
          layout_marginTop = "10dp",
          id = "x2",
          backgroundColor = AndLuaB1,
          layout_width = "-1",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              textSize = "15sp",
              text = getLS("L_Content"),
              textColor = TitleColor1,
              id = "z2",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_marginRight = "8dp",
              background = "0",
              id = "nr",
              textSize = "14dp",
              layout_marginLeft = "8dp",
              layout_height = "-1",
              gravity = "top",
              layout_width = "-1",
              textColor = TitleColor,
              layout_marginBottom = "12dp",
              layout_below = "z2",
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
      text = getLS("L_Post"),
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
  Http.post("https://ly250.cn/andlua/fabu.php",
    "uid1=" ..
    uid1 .. "&uid2=" .. uid2 .. "&uid3=" ..
    uid3 .. "&title=" .. btt.Text .. "&text=" .. nr.Text .. "&bq=" .. bq2.Text .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    dialog5.hide()
    if sid1 == "ok" then
      activity.finish()
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
btt.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      z3.setTextColor(tonumber(bjzt()))
    else
      z3.setTextColor(0xff8b8b8b)
    end
  end
}
nr.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      z2.setTextColor(tonumber(bjzt()))
    else
      z2.setTextColor(0xff8b8b8b)
    end
  end
}

bq2.onClick = function()
  InputLayout = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      EditText,
      layout_marginTop = "5dp",
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      singleLine = true,
      MaxEms = 5,
      layout_gravity = "center",
      id = "edit",
    },
  };

  AlertDialog.Builder(this)
      .setTitle(getLS("L_Select_the_label"))
      .setView(loadlayout(InputLayout))
      .setPositiveButton(getLS("L_Determine"), {
        onClick = function(v)
          if #edit.Text > 30 then
            SnackerBar.build()
                :msg(getLS("L_The_label_is_too_long"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          else
            bq2.Text = "#" .. edit.Text .. "#"
          end
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  edit.Text = bq2.Text:match("#(.+)#")
  Typew(edit)
end

Typew1(btt)
