require "import"
import "android.app.*"
import "android.os.*"
import "android.text.Html"
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
import "mods.lay"
ztt()
main10 = {
  RelativeLayout,
  layout_height = "fill",
  layout_width = "fill",
  background = "#FFFFFF",
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "50dp",
    id = "uul",
    {
      TextView,
      id = "uy2",
      layout_height = "-1",
      textSize = "14sp",
      text = "帖子",
      layout_width = "33%w",
      gravity = "center",
      background = "0",
      textColor = "0xFF757575",
    },
    {
      TextView,
      layout_toRightOf = "uy2",
      id = "uy3",
      layout_height = "-1",
      textSize = "14sp",
      text = "源码",
      layout_width = "34%w",
      gravity = "center",
      background = "0",
      textColor = "0xFF757575",
    },
    {
      TextView,
      layout_toRightOf = "uy3",
      id = "uy4",
      layout_height = "-1",
      textSize = "14sp",
      text = "用户",
      layout_width = "-1",
      gravity = "center",
      background = "0",
      textColor = "0xFF757575",
    },
    {
      TextView,
      layout_alignParentBottom = "true",
      layout_width = "34%w",
      layout_height = "2dp",
      backgroundColor = tonumber(bjzt()),
      id = "jd",
    },
  },
  {
    PageView,
    layout_width = "-1",
    layout_below = "uul",
    layout_height = "-1",
    background = "#ffffff",
    id = "hd",
    pages = {
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          SwipeRefreshLayout,
          id = "sxlist2",
          {
            YLListView,
            VerticalScrollBarEnabled = false,
            overScrollMode = 2,
            layout_width = "fill",
            layout_height = "fill",
            id = "list2",
            dividerHeight = "0",
          },
        },
      },
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          SwipeRefreshLayout,
          id = "sxlist3",
          {
            YLListView,
            VerticalScrollBarEnabled = false,
            overScrollMode = 2,
            layout_width = "fill",
            layout_height = "fill",
            id = "list3",
            dividerHeight = "0",
          },
        },
      },
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          SwipeRefreshLayout,
          id = "sxlist4",
          {
            YLListView,
            VerticalScrollBarEnabled = false,
            overScrollMode = 2,
            layout_width = "fill",
            layout_height = "fill",
            id = "list4",
            dividerHeight = "0",
          },
        },
      },
    }
  },
};
activity.setContentView(loadlayout(main10))
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
    id = "vvb",
    {
      EditText,
      layout_width = "-1",
      layout_height = "-1",
      singleLine = true,
      textColor = tonumber(bjzt()),
      background = "0x00ffffff",
      hint = "请输入搜索关键词",
      id = "gjc",
      hintTextColor = tonumber(bjzt()),
      textSize = "18sp",
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "jik",
    layout_gravity = "right",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial145.png",
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
bw(jik, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

jik.onClick = function()
  if gjc.Text == "" then
    SnackerBar.build()
        :msg("请输入搜索关键词")
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  else
    if hd.getCurrentItem() == 0 then
      sx1()
    elseif hd.getCurrentItem() == 1 then
      sx2()
    elseif hd.getCurrentItem() == 2 then
      sx3()
    end
  end
end

activity.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_PAN);

hd.setOnPageChangeListener(PageView.OnPageChangeListener {
  onPageScrolled = function(a, b, c)
    if c == 0 then
      if a == 0 then
        uy2.setTextColor(tonumber(bjzt()))
        uy3.setTextColor(0xFF757575)
        uy4.setTextColor(0xFF757575)
      elseif a == 1 then
        uy3.setTextColor(tonumber(bjzt()))
        uy2.setTextColor(0xFF757575)
        uy4.setTextColor(0xFF757575)
      elseif a == 2 then
        uy4.setTextColor(tonumber(bjzt()))
        uy3.setTextColor(0xFF757575)
        uy2.setTextColor(0xFF757575)
      end
    end
  end })

hd.addOnPageChangeListener {
  onPageScrolled = function(a, b, c)
    jd.setX(activity.getWidth() / 3 * (b + a))
  end,
  onPageSelected = function(page)
  end,
}

uy2.onClick = function()
  hd.showPage(0)
end
uy3.onClick = function()
  hd.showPage(1)
end
uy4.onClick = function()
  hd.showPage(2)
end

il = ...

if il == 1 then
  hd.showPage(0)
elseif il == 2 then
  hd.showPage(1)
else
  hd.showPage(2)
end

list2.onItemClick = function(l, v, p, i)
  AlertDialog.Builder(this)
      .setTitle("分享帖子")
      .setMessage("确定分享 " .. v.Tag.tzbt.Text .. " 帖子吗？")
      .setPositiveButton("确定", {
        onClick = function(v1)
          jh = "（" .. v.Tag.tztx1.Text .. "）《" .. v.Tag.tzbt.Text ..
          "》〈" .. v.Tag.tznr.Text .. "〉【1】" .. v.Tag.uidd4.Text
          io.open(tostring(activity.getLuaDir()) .. "/res/m.1", "w"):write(jh):close()
          activity.finish()
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
end

adp4 = LuaAdapter(activity, tzlb)
list2.setAdapter(adp4)

adp5 = LuaAdapter(activity, ymlb)
list3.setAdapter(adp5)

adp6 = LuaAdapter(activity, yhlb)
list4.setAdapter(adp6)

function sx1()
  adp4 = LuaAdapter(activity, tzlb)
  list2.setAdapter(adp4)
  Http.post("https://ly250.cn/andlua/sstz.php", "text=" .. gjc.Text .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      nr2 = b:gmatch('%["text"] = "(.-)%";')
      uid33 = b:gmatch('%["uid3"] = "(.-)%";')
      uid44 = b:gmatch('%["uid4"] = "(.-)%";')
      tx2 = b:gmatch('%["src"] = "(.-)%";')
      nc1 = b:gmatch('%["name"] = "(.-)%";')
      sj1 = b:gmatch('%["time"] = "(.-)%";')
      lll = b:gmatch('%["lll"] = "(.-)%";')
      uu = b:gmatch('%["bq"] = "(.-)%";')
      hfl = b:gmatch('%["hfl"] = "(.-)%";')
      for bt2 in b:gmatch('%["title"] = "(.-)%";') do
        nr3 = nr2()
        tx3 = tx2()
        nc2 = nc1()
        ud3 = uid33()
        ud4 = uid44()
        sj2 = sj1()
        lll1 = lll()
        q1 = uu()
        hfl1 = hfl()
        bt4 = "<font color='" ..
        "#" ..
        tostring(tostring(bjzt1()):match("0xFF(.+)")) ..
        "" .. "'>" .. q1 .. "&nbsp;" .. "</font><font color='#333333'>" .. bt2 .. "</font>";
        adp4.add { tzbt = { Text = Html.fromHtml(bt4) }, tznr = nr3, tztx = tx3, tztx1 = tx3, tznc = nc2, tzrq = sj2, lll =
        lll1, hfl = hfl1, uidd3 = ud3, uidd4 = ud4 }
      end
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
      SnackerBar.build()
          :msg("没有更多了")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
    sxlist2.setRefreshing(false);
  end)
end

function sx2()
  adp5 = LuaAdapter(activity, ymlb)
  list3.setAdapter(adp5)
  Http.post("https://ly250.cn/andlua/ssym.php", "sid=" .. sid() .. "&text=" .. gjc.Text, function(a1, bj, c, d)
    sid1 = bj:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      dx5 = bj:gmatch('%["dx"] = "(.-)%";')
      iconn = bj:gmatch('%["icon"] = "(.-)%";')
      uids3 = bj:gmatch('%["uid3"] = "(.-)%";')
      id3 = bj:gmatch('%["id"] = "(.-)%";')
      for mz5 in bj:gmatch('%["name"] = "(.-)%";') do
        uid333 = uids3()
        id33 = id3()
        dx6 = dx5()
        icon = iconn()
        adp5.add { wb = mz5, wb2 = dx6, ttxx1 = icon, ttx = icon, id3 = id33, id33 = uid333 }
      end
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
      SnackerBar.build()
          :msg("没有更多了")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
    sxlist3.setRefreshing(false);
  end)
end

list3.onItemClick = function(l, v, p, i)
  AlertDialog.Builder(this)
      .setTitle("分享源码")
      .setMessage("确定分享 " .. v.Tag.wb.Text .. " 源码吗？")
      .setPositiveButton("确定", {
        onClick = function(v1)
          jh = "（" .. v.Tag.ttxx1.Text .. "）《" .. v.Tag.wb.Text .. "》〈" ..
          v.Tag.wb2.Text .. "〉【2】" .. v.Tag.id3.Text
          io.open(tostring(activity.getLuaDir()) .. "/res/m.1", "w"):write(jh):close()
          activity.finish()
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
end

function sx3()
  adp6 = LuaAdapter(activity, yhlb)
  list4.setAdapter(adp6)
  Http.post("https://ly250.cn/andlua/ssyh.php", "sid=" .. sid() .. "&text=" .. gjc.Text, function(a1, bj, c, d)
    sid1 = bj:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      ico = bj:gmatch('%["icon"] = "(.-)%";')
      yh1 = bj:gmatch('%["gxqm"] = "(.-)%";')
      uid33 = bj:gmatch('%["uid3"] = "(.-)%";')
      for mz5 in bj:gmatch('%["name"] = "(.-)%";') do
        icoo = ico()
        adp6.add { yhnc = mz5, yhqm = yh1(), tx0 = icoo, yhtx = icoo, id33 = uid33() }
      end
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
      SnackerBar.build()
          :msg("没有更多了")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
    sxlist4.setRefreshing(false);
  end)
end

list4.onItemClick = function(l, v, p, i)
  AlertDialog.Builder(this)
      .setTitle("推荐用户")
      .setMessage("确定推荐 " .. v.Tag.yhnc.Text .. " 用户吗？")
      .setPositiveButton("确定", {
        onClick = function(v1)
          jh = "（" .. v.Tag.tx0.Text .. "）《" .. v.Tag.yhnc.Text .. "》〈" ..
          v.Tag.yhqm.Text .. "〉【3】" .. v.Tag.id33.Text
          io.open(tostring(activity.getLuaDir()) .. "/res/m.1", "w"):write(jh):close()
          activity.finish()
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
end

sxlist2.setColorSchemeColors({ tonumber(bjzt()) });
sxlist2.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  sx1()
end })

sxlist4.setColorSchemeColors({ tonumber(bjzt()) });
sxlist4.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  sx3()
end })

sxlist3.setColorSchemeColors({ tonumber(bjzt()) });
sxlist3.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  sx2()
end })

Typew(gjc)
