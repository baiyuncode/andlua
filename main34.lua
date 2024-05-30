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
  layout_width = "fill",
  orientation = "vertical",
  background = "#ffffff",
  {
    RelativeLayout,
    layout_height = "-1",
    layout_width = "-1",
    layout_marginTop = "10dp",
    layout_marginBottom = "10dp",
    {
      SwipeRefreshLayout,
      id = "sxlist1",
      {
        GridView,
        numColumns = 3,
        verticalSpacing = "15dp",
        layout_height = "fill",
        gravity = "center",
        id = "grid",
        horizontalSpacing = "0dp",
        layout_width = "fill",
      },
    },
  },
};


activity.setContentView(loadlayout(main10))
ztl()
id = ...
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
      text = getLS("L_Tool_list"),
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
menu11.onClick = function()
  pop = PopupMenu(activity, menu11)
  menu = pop.Menu
  menu.add("后台设置").onMenuItemClick = function(a)
    activity.newActivity("main36", { id })
  end
  menu.add("复制KEY").onMenuItemClick = function(a)
    import "android.content.Context"
    dialog5 = ProgressDialog(this)
    dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
    dialog5.setCancelable(true)
    dialog5.setCanceledOnTouchOutside(false)
    dialog5.show()
    uguid()
    Http.post("https://ly250.cn/api/ugkey.php", "uid1=" ..
    uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. id .. "&sid=" .. sid(), function(a1, b, c, d)
      sid1 = b:match('%["ret"] = "(.-)%";')
      if sid1 == "ok" then
        kky = b:match('%["key"] = "(.-)%";')
        activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(kky)
        SnackerBar.build()
            :msg("key已复制，不能给别人看哟！")
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
  menu.add("删除后台").onMenuItemClick = function(a)
    SnackerBar.build()
        :msg("暂不支持删除")
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  end
  pop.show()
end
item = {
  LinearLayout,
  gravity = "center",
  background = "#ffffff",
  layout_width = "102dp",
  layout_height = "102dp",
  {
    CardView,
    radius = "5dp",
    CardElevation = "2dp",
    layout_width = "100dp",
    background = "#ffffff",
    layout_height = "100dp",
    {
      LinearLayout,
      gravity = "center",
      orientation = "vertical",
      layout_width = "fill",
      layout_height = "fill",
      {
        ImageView,
        id = "img",
        layout_width = "30dp",
        layout_height = "30dp",
        layout_marginBottom = "5dp",
        colorFilter = "#757575",
      },
      {
        TextView,
        id = "bt",
      },
    },
  },
};

data = {}
adp = LuaAdapter(activity, data, item)
adp.add { img = "res/Metrial842.png", bt = "远程公告" }
adp.add { img = "res/Metrial248.png", bt = "远程文档" }
adp.add { img = "res/Metrial485.png", bt = "远程更新" }
adp.add { img = "res/Metrial320.png", bt = "发件系统" }
--[[
adp.add{img="res/Metrial100.png",bt="用户权限"}
adp.add{img="res/Metrial19.png",bt="用户管理"}
adp.add{img="res/Metrial491.png",bt="启动图"}
adp.add{img="res/Metrial525.png",bt="IMEI管理"}
]]
grid.Adapter = adp

grid.onItemClick = function(l, v, p, i)
  if v.Tag.bt.Text == "远程公告" then
    activity.newActivity("main35", { id })
  elseif v.Tag.bt.Text == "发件系统" then
    activity.newActivity("main40", { id })
  elseif v.Tag.bt.Text == "远程更新" then
    activity.newActivity("main41", { id })
  elseif v.Tag.bt.Text == "远程文档" then
    activity.newActivity("main42", { id })
  end
end

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  sxlist1.setRefreshing(false);
end })
