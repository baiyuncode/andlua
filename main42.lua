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
  background = "#ffffff",
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      TextView,
      textSize = "15sp",
      layout_centerInParent = "true",
      text = "加载中...",
      textColor = "#757575",
      id = "wgc",
    },
    {
      SwipeRefreshLayout,
      id = "sxlist1",
      {
        YLListView,
        VerticalScrollBarEnabled = false,
        overScrollMode = 2,
        id = "list",
        VerticalScrollBarEnabled = false,
        layout_width = "-1",
        layout_height = "-1",
        DividerHeight = 0
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
      src = "res/Metrial351.png",
    },
  },
};

lb = {
  RelativeLayout,
  background = "#ffffff",
  layout_width = "-1",
  {
    CardView,
    elevation = "1dp",
    layout_width = "-1",
    layout_margin = "5dp",
    radius = "6dp",
    background = "#ffffff",
    {
      RelativeLayout,
      layout_width = "-1",
      {
        TextView,
        MaxLines = 3,
        id = "nn",
        layout_width = "-1",
        layout_marginTop = "5dp",
        layout_marginRight = "8dp",
        layout_marginLeft = "8dp",
        textColor = "#555555",
      },
      {
        TextView,
        layout_height = "0dp",
        layout_width = "0dp",
        id = "ln",
      },
      {
        TextView,
        layout_below = "nn",
        textSize = "12sp",
        id = "sjj",
        text = "2018-01-01 12:00",
        textColor = "#757575",
        layout_marginLeft = "8dp",
        layout_marginBottom = "5dp",
      },
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
  activity.newActivity("main43", { idd })
end

adp3 = LuaAdapter(activity, lb)
list.setAdapter(adp3)

function sxd()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/wd.php", "uid1=" .. uid1 .. "&uid2=" ..
  uid2 .. "&uid3=" .. uid3 .. "&id=" .. idd .. "&sid=" .. sid(), function(a1, b, c, d)
    adp3 = LuaAdapter(activity, lb)
    list.setAdapter(adp3)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      wds = b:match('%["sl"] = "(.-)%";')
      if wds == "0" then
        wgc.setText("无文档，点击右上角创建")
      else
        bty = b:gmatch('%["id"] = "(.-)%";')
        sju = b:gmatch('%["time"] = "(.-)%";')
        for bt2 in b:gmatch('%["text"] = "(.-)%";') do
          bt3 = bty()
          sji = sju()
          adp3.add { nn = bt2, ln = bt3, sjj = sji }
        end
        wgc.setText("")
      end
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == nil then
      wgc.setText("获取失败！")
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

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  sxd()
  sxlist1.setRefreshing(false);
end })

list.onItemClick = function(l, v, p, i)
  activity.newActivity("main44", { idd, v.Tag.ln.Text })
end
