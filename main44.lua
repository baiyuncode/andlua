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
      radius = "4dp",
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
id, idd = ...
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
      text = "远程文档",
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

bw(menu11, 0x5FFFFFFF)

pop = PopupMenu(activity, menu11)
menu = pop.Menu
menu.add("保存").onMenuItemClick = function(a)
  mm = m1(nr.Text)
  ajj = 0
  while ajj ~= 1 do
    if mm:find("=") then
      mm = string.gsub(mm, "=", "Andlua@LY")
    else
      ajj = 1
      mml = mm
      uguid()
      Http.post("https://ly250.cn/api/bcwd.php",
        "uid1=" .. uid1 .. "&text=" .. mml .. "&uid2=" .. uid2 ..
        "&uid3=" .. uid3 .. "&id=" .. id .. "&idd=" .. idd .. "&sid=" .. sid(), function(a1, b, c, d)
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
              :msg("文档字数不能大于1000")
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
  end
end
menu.add("刷新").onMenuItemClick = function(a)
  sxd1()
end
menu.add("复制ID").onMenuItemClick = function(a)
  import "android.content.Context"
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(idd)
  SnackerBar.build()
      :msg("已复制文档ID")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
end
menu.add("删除文档").onMenuItemClick = function(a)
  AlertDialog.Builder(this)
      .setTitle("删除文档")
      .setMessage("删除后将不可恢复，确认删除吗？")
      .setPositiveButton("删除", {
        onClick = function(v)
          sc()
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
end

menu11.onClick = function()
  pop.show()
end

function sxd1()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/hqwd.php",
    "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. id .. "&idd=" .. idd .. "&sid=" .. sid(),
    function(a1, b, c, d)
      sid1 = b:match('%["ret"] = "(.-)%";')
      if sid1 == "ok" then
        nn = b:match('%["text"] = "(.-)%";')
        nr.setText(nn)
        SnackerBar.build()
            :msg("刷新成功")
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

function sxd()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/hqwd.php",
    "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. id .. "&idd=" .. idd .. "&sid=" .. sid(),
    function(a1, b, c, d)
      sid1 = b:match('%["ret"] = "(.-)%";')
      if sid1 == "ok" then
        nn = b:match('%["text"] = "(.-)%";')
        nr.setText(nn)
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

function sc()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/scwd.php",
    "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. id .. "&idd=" .. idd .. "&sid=" .. sid(),
    function(a1, b, c, d)
      sid1 = b:match('%["ret"] = "(.-)%";')
      if sid1 == "ok" then
        activity.finish()
      elseif sid1 == "1" then
        SnackerBar.build()
            :msg("删除失败")
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif sid1 == nil then
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
