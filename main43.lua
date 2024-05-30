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
  orientation = "vertical",
  layout_height = "fill",
  layout_width = "fill",
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      CardView,
      layout_margin = "5dp",
      layout_height = "-1",
      layout_width = "-1",
      radius = "5dp",
      elevation = "1dp",
      {
        EditText,
        gravity = "top",
        textColor = "#757575",
        id = "nr",
        layout_height = "-1",
        background = "#ffffff",
        layout_marginRight = "5dp",
        layout_marginLeft = "5dp",
        layout_width = "-1",
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
      text = "创建文档",
      textColor = tonumber(bjzt()),
      id = "bt",
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
      src = "res/Metrial50.png",
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

bw(menu11, 0x5FFFFFFF)

menu11.onClick = function()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  mm1 = m1(nr.Text)
  ajj1 = 0
  while ajj1 ~= 1 do
    if mm1:find("=") then
      mm1 = string.gsub(mm1, "=", "Andlua@LY")
    else
      ajj1 = 1
      mm = mm1
      uguid()
      Http.post("https://ly250.cn/api/cjwd.php",
        "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. idd .. "&sid=" .. sid() .. "&text=" .. mm,
        function(a1, b, c, d)
          sid1 = b:match('%["ret"] = "(.-)%";')
          if sid1 == "ok" then
            activity.finish()
          elseif sid1 == "1" then
            SnackerBar.build()
                :msg("提交失败")
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          elseif sid1 == nil then
            nr.setText("提交失败！")
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
  end
end
