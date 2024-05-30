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
  layout_width = "fill",
  {
    ScrollView,
    layout_height = "fill",
    layout_width = "fill",
    {
      LinearLayout,
      orientation = "vertical",
      layout_height = "fill",
      layout_width = "fill",
      {
        CardView,
        layout_margin = "5dp",
        layout_width = "-1",
        radius = "5dp",
        elevation = "1dp",
        layout_height = "-2",
        {
          LinearLayout,
          orientation = "vertical",
          layout_width = "-1",
          layout_height = "-1",
          background = "#ffffffff",
          {
            TextView,
            layout_marginTop = "10dp",
            layout_marginLeft = "10dp",
            text = "通用",
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "发件接口开关",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              Switch,
              layout_gravity = "right",
              layout_marginRight = "10dp",
              layout_height = "-1",
              id = "s1",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h1",
            },
          },
        },
      },
      {
        CardView,
        layout_margin = "5dp",
        layout_width = "-1",
        radius = "5dp",
        elevation = "1dp",
        layout_height = "-2",
        {
          LinearLayout,
          orientation = "vertical",
          layout_width = "-1",
          layout_height = "-1",
          background = "#ffffffff",
          {
            TextView,
            layout_marginTop = "10dp",
            layout_marginLeft = "10dp",
            text = "邮件",
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "剩余邮件",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              TextView,
              layout_gravity = "right",
              layout_marginRight = "22dp",
              text = "0封",
              layout_height = "-1",
              id = "s2",
              textSize = "13sp",
              gravity = "center",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h2",
            },
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "今日使用",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              TextView,
              layout_gravity = "right",
              layout_marginRight = "22dp",
              text = "0封",
              layout_height = "-1",
              id = "s3",
              textSize = "13sp",
              gravity = "center",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h3",
            },
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "总共使用",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              TextView,
              layout_gravity = "right",
              layout_marginRight = "22dp",
              text = "0封",
              textSize = "13sp",
              layout_height = "-1",
              id = "s4",
              gravity = "center",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h4",
            },
          },
        },
      },
      {
        CardView,
        layout_margin = "5dp",
        layout_width = "-1",
        layout_height = "-2",
        radius = "5dp",
        elevation = "1dp",
        {
          LinearLayout,
          orientation = "vertical",
          layout_width = "-1",
          layout_height = "-1",
          background = "#ffffffff",
          {
            TextView,
            layout_marginTop = "10dp",
            layout_marginLeft = "10dp",
            text = "说明",
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            layout_marginBottom = "10dp",
            {
              TextView,
              text = [==[1.每月会有 500 封邮件免费提供使用
2.每当邮件使用完时将不能继续使用
3.每月1号系统会自动重置邮件数量为 500]==],
              layout_marginLeft = "10dp",
              textSize = "13sp",
              gravity = "center|left",
              layout_height = "-1",
              id = "zy",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h9",
            },
          },
        },
      },
    },
  },
};
activity.setContentView(loadlayout(main10))
ztl()
lj = ...
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
      text = "发件系统",
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
      src = "res/Metrial31.png",
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
idd = ...
lj = ""
function sxd()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/email.php", "uid1=" ..
  uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. idd .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      nn = b:match('%["email1"] = "(.-)%";')
      nn1 = b:match('%["email2"] = "(.-)%";')
      nn2 = b:match('%["email3"] = "(.-)%";')
      nn3 = b:match('%["email4"] = "(.-)%";')
      lj = b:match('%["id"] = "(.-)%";')
      n = b:match('%["text"] = "(.-)%";')
      zy.setText(n)
      s2.setText(nn .. "封")
      s3.setText(nn1 .. "封")
      s4.setText(nn2 .. "封")
      if nn3 == "1" then
        s1.setChecked(true)
      else
        s1.setChecked(false)
      end
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == nil then
      SnackerBar.build()
          :msg("获取失败")
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
    else
    end
    dialog5.hide()
  end)
end

sxd()

h1.onClick = function()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/kg.php", "uid1=" .. uid1 .. "&uid2=" ..
  uid2 .. "&uid3=" .. uid3 .. "&id=" .. lj .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    dialog5.hide()
    if sid1 == "ok" then
      SnackerBar.build()
          :msg("修改成功")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      sxd()
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("提交失败")
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
    else
    end
  end)
end

bw(menu11, 0x5FFFFFFF)

menu11.onClick = function()
  sxd()
end
