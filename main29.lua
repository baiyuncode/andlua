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
      radius = 0,
      layout_height = "-2",
      id = "xx3",
      cardElevation = "1dp",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          CardView,
          radius = 0,
          layout_width = "-1",
          id = "x1",
          cardElevation = "0dp",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              textSize = "15sp",
              layout_marginTop = "8dp",
              text = "标题",
              textColor = "#757575",
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
              textColor = "#333333",
              layout_marginBottom = "12dp",
              layout_below = "z3",
            },
            {
              TextView,
              layout_marginRight = "12dp",
              background = "#000000",
              id = "v1",
              alpha = "0.2",
              layout_width = "-1",
              layout_height = "1dp",
              layout_alignBottom = "btt",
              layout_centerHorizontal = "true",
              layout_marginLeft = "12dp",
            },
            {
              TextView,
              layout_marginRight = "12dp",
              backgroundColor = tonumber(bjzt()),
              id = "v2",
              alpha = "1",
              layout_width = "-1",
              layout_height = "2dp",
              layout_alignBottom = "btt",
              layout_centerHorizontal = "true",
              layout_marginLeft = "12dp",
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
      cardElevation = "1dp",
      radius = 0,
      layout_height = "-2",
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
          layout_width = "-1",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              textSize = "15sp",
              layout_marginTop = "8dp",
              text = "内容",
              textColor = "#777777",
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
              layout_width = "-1",
              textColor = "#333333",
              layout_marginBottom = "12dp",
              layout_below = "z2",
            },
            {
              TextView,
              layout_marginRight = "12dp",
              background = "#000000",
              id = "v3",
              alpha = "0.2",
              layout_width = "-1",
              layout_height = "1dp",
              layout_alignBottom = "nr",
              layout_centerHorizontal = "true",
              layout_marginLeft = "12dp",
            },
            {
              TextView,
              layout_marginRight = "12dp",
              backgroundColor = tonumber(bjzt()),
              id = "v4",
              alpha = "1",
              layout_width = "-1",
              layout_height = "2dp",
              layout_alignBottom = "nr",
              layout_centerHorizontal = "true",
              layout_marginLeft = "12dp",
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
      text = "修改帖子",
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
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
bw(menu1, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
uid33, uid44, uid3, btu, nru, bq3 = ...
menu1.onClick = function()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/andlua/xtz.php",
    "uid1=" ..
    uid1 ..
    "&uid2=" ..
    uid2 ..
    "&uid3=" ..
    uid3 .. "&uid33=" ..
    uid33 .. "&uid44=" .. uid44 .. "&bq=" .. bq2.Text .. "&text=" .. nr.Text .. "&title=" .. btt.Text .. "&sid=" .. sid(),
    function(a1, b, c, d)
      sid1 = b:match('%["ret"] = "(.-)%";')
      dialog5.hide()
      if sid1 == "ok" then
        activity.finish()
      elseif sid1 == "5" then
        SnackerBar.build()
            :msg("标题或内容字数不符合要求")
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif sid1 == "6" then
        SnackerBar.build()
            :msg("无权限操作")
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
            :msg("提交失败")
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
      v2.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v2.setVisibility(View.VISIBLE)
      z3.setTextColor(tonumber(bjzt()))
    else
      v2.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v2.setVisibility(View.INVISIBLE)
      z3.setTextColor(0xff8b8b8b)
    end
  end
}
nr.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      v4.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v4.setVisibility(View.VISIBLE)
      z2.setTextColor(tonumber(bjzt()))
    else
      v4.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v4.setVisibility(View.INVISIBLE)
      z2.setTextColor(0xff8b8b8b)
    end
  end
}
v4.setVisibility(View.INVISIBLE)
v2.setVisibility(View.INVISIBLE)



bq2.onClick = function()
  dxlb = {}
  table.insert(dxlb, "#资源共享#")
  table.insert(dxlb, "#原创资源#")
  table.insert(dxlb, "#代码教程#")
  table.insert(dxlb, "#问题求助#")
  table.insert(dxlb, "#其他内容#")
  local dx = AlertDialog.Builder(this)
      .setTitle("选择标签")
      .setPositiveButton("确定", {
        onClick = function(v, p)
        end
      })
      .setSingleChoiceItems(dxlb, -1, {
        onClick = function(v, p)
          bq2.setText(dxlb[p + 1])
        end
      })
  dx.show();
end

btt.setText(btu)
nr.setText(nru)
bq2.setText(bq3)
