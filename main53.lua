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
import "bin"
ztt()
main10 = {
  RelativeLayout,
  layout_height = "fill",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "50dp",
    backgroundColor = AndLuaB1,
    id = "uul",
    {
      TextView,
      id = "uy1",
      layout_height = "-1",
      textSize = "14sp",
      text = getLS("L_Engineering"),
      layout_width = "25%w",
      gravity = "center",
      background = "0",
      textColor = tonumber(bjzt()),
    },
    {
      TextView,
      layout_toRightOf = "uy1",
      id = "uy2",
      layout_height = "-1",
      textSize = "14sp",
      text = getLS("post"),
      layout_width = "25%w",
      gravity = "center",
      background = "0",
      textColor = TitleColor1,
    },
    {
      TextView,
      layout_toRightOf = "uy2",
      id = "uy3",
      layout_height = "-1",
      textSize = "14sp",
      text = getLS("L_The_source_code"),
      layout_width = "25%w",
      gravity = "center",
      background = "0",
      textColor = TitleColor1,
    },
    {
      TextView,
      layout_toRightOf = "uy3",
      id = "uy4",
      layout_height = "-1",
      textSize = "14sp",
      text = getLS("L_The_user"),
      layout_width = "-1",
      gravity = "center",
      background = "0",
      textColor = TitleColor1,
    },
    {
      TextView,
      layout_alignParentBottom = "true",
      layout_width = "25%w",
      layout_height = "2dp",
      backgroundColor = tonumber(bjzt()),
      id = "jd",
    },
  },
  {
    PageView,
    layout_width = "-1",
    layout_below = "uul",
    layout_marginTop = "5dp",
    layout_marginRight = "3dp",
    layout_marginLeft = "3dp",
    layout_height = "-1",
    backgroundColor = AndLuaB,
    id = "hd",
    pages = {
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          SwipeRefreshLayout,
          id = "sxlist1",
          {
            YLListView,
            VerticalScrollBarEnabled = false,
            overScrollMode = 2,
            layout_width = "fill",
            layout_height = "fill",
            id = "list1",
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
      hint = getLS("L_Please_enter_a_search_keyword"),
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
activity.ActionBar.setElevation(0)
bw(Sideslip, 0x5FFFFFFF)
bw(jik, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

jik.onClick = function()
  if gjc.Text == "" then
    SnackerBar.build()
        :msg(getLS("L_Please_enter_a_search_keyword_1"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  else
    if hd.getCurrentItem() == 0 then
      thread(sx4, gjc.Text)
    elseif hd.getCurrentItem() == 1 then
      page1 = 0
      page11 = 1
      adp4 = LuaAdapter(activity, tzlb)
      list2.setAdapter(adp4)
      sx1(page11)
    elseif hd.getCurrentItem() == 2 then
      data3 = {}
      adp5 = LuaMultiAdapter(activity, data2, ymlb)
      list3.setAdapter(adp5)
      page2 = 0
      page22 = 1
      sx2(page22)
    elseif hd.getCurrentItem() == 3 then
      adp6 = LuaAdapter(activity, yhlb)
      list4.setAdapter(adp6)
      page3 = 0
      page33 = 1
      sx3(page33)
    end
  end
end

activity.getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_PAN);

hd.setOnPageChangeListener(PageView.OnPageChangeListener {
  onPageScrolled = function(a, b, c)
    if c == 0 then
      if a == 0 then
        uy1.setTextColor(tonumber(bjzt()))
        uy2.setTextColor(TitleColor1)
        uy3.setTextColor(TitleColor1)
        uy4.setTextColor(TitleColor1)
      elseif a == 1 then
        uy2.setTextColor(tonumber(bjzt()))
        uy1.setTextColor(TitleColor1)
        uy3.setTextColor(TitleColor1)
        uy4.setTextColor(TitleColor1)
      elseif a == 2 then
        uy3.setTextColor(tonumber(bjzt()))
        uy1.setTextColor(TitleColor1)
        uy2.setTextColor(TitleColor1)
        uy4.setTextColor(TitleColor1)
      elseif a == 3 then
        uy4.setTextColor(tonumber(bjzt()))
        uy1.setTextColor(TitleColor1)
        uy2.setTextColor(TitleColor1)
        uy3.setTextColor(TitleColor1)
      end
    end
  end })

hd.addOnPageChangeListener {
  onPageScrolled = function(a, b, c)
    jd.setX(activity.getWidth() / 4 * (b + a))
  end,
  onPageSelected = function(page)
  end,
}

page3 = 0
page33 = 1
page2 = 0
page22 = 1
page1 = 0
page11 = 1

uy1.onClick = function()
  hd.showPage(0)
end
uy2.onClick = function()
  hd.showPage(1)
end
uy3.onClick = function()
  hd.showPage(2)
end
uy4.onClick = function()
  hd.showPage(3)
end

list2.onItemClick = function(l, v, p, i)
  wj = activity.getLuaDir() .. "/res/uid5.LY"
  uo = io.open(wj):read("*a")
  an = string.gsub(v.Tag.tzbt.Text, "                      ", "")
  an1 = v.Tag.uidd3.Text
  an2 = v.Tag.uidd4.Text
  an3 = os.date("%Y-%m-%d %H:%M")
  uh = uo ..
  "\n" ..
  "#$2826587025【" ..
  an ..
  "】2826587025$#" ..
  "\n" ..
  "#$2826587025〖" ..
  an1 .. "〗2826587025$#" .. "\n" .. "#$2826587025［" ..
  an2 .. "］2826587025$#" .. "\n" .. "#$2826587025｛" .. an3 .. "｝2826587025$#"
  io.open(wj, "w"):write(uh):close()
  activity.newActivity("main8", { v.Tag.uidd3.Text, v.Tag.uidd4.Text })
end

adp7 = LuaAdapter(activity, lap)
list1.setAdapter(adp7)

adp4 = LuaAdapter(activity, tzlb)
list2.setAdapter(adp4)

data3 = {}
adp5 = LuaMultiAdapter(activity, data2, ymlb)
list3.setAdapter(adp5)

adp6 = LuaAdapter(activity, yhlb)
list4.setAdapter(adp6)

function sx1(i)
  Http.post("https://ly250.cn/andlua/sstz.php", "text=" .. gjc.Text .. "&page=" .. i .. "&sid=" .. sid(),
    function(a1, b, c, d)
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
          "" .. "'>" .. q1 .. "&nbsp;" .. "</font><font color='" .. TitleColor .. "'>" .. bt2 .. "</font>";
          adp4.add { tzbt = { Text = Html.fromHtml(bt4) }, tznr = nr3, tztx = tx3, tznc = nc2, tzrq = sj2, lll = lll1, hfl =
          hfl1, uidd3 = ud3, uidd4 = ud4 }
        end
      elseif sid1 == "1" then
        SnackerBar.build()
            :msg(getLS("L_For_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      else
        SnackerBar.build()
            :msg(getLS("L_No_more"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      end
      sxlist2.setRefreshing(false);
      page1 = 0
    end)
end

list2.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list2.getLastVisiblePosition() == list2.getCount() - 1 then
      if page1 == 0 then
        page1 = 1
        page11 = page11 + 1
        sxlist2.setRefreshing(true);
        sx1(page11)
      end
    end
  end }

function sx2(i)
  Http.post("https://ly250.cn/andlua/ssym.php", "sid=" .. sid() .. "&page=" .. i .. "&text=" .. gjc.Text,
    function(a1, bj, c, d)
      sid1 = bj:match('%["ret"] = "(.-)%";')
      if sid1 == "ok" then
        dx5 = bj:gmatch('%["dx"] = "(.-)%";')
        iconn = bj:gmatch('%["icon"] = "(.-)%";')
        uids3 = bj:gmatch('%["uid3"] = "(.-)%";')
        id3 = bj:gmatch('%["id"] = "(.-)%";')
        Price1 = bj:gmatch('%["Price"] = "(.-)%";')
        for mz5 in bj:gmatch('%["name"] = "(.-)%";') do
          uid333 = uids3()
          id33 = id3()
          dx6 = dx5()
          icon = iconn()
          Price = Price1()
          if Price == "0" then
            Price = getLS("L_As_a_free_download")
          else
            Price = "￥" .. Price
          end
          adp5.add { __type = 2, txx = Price, wb = mz5, wb2 = dx6, ttx = icon, id3 = id33, id33 = uid333 }
        end
      elseif sid1 == "1" then
        SnackerBar.build()
            :msg(getLS("L_For_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      else
        SnackerBar.build()
            :msg(getLS("L_No_more"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      end
      sxlist3.setRefreshing(false);
      page2 = 0
    end)
end

list3.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list3.getLastVisiblePosition() == list3.getCount() - 1 then
      if page2 == 0 then
        page2 = 1
        page22 = page22 + 1
        sxlist3.setRefreshing(true);
        sx2(page22)
      end
    end
  end }

list4.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list4.getLastVisiblePosition() == list4.getCount() - 1 then
      if page3 == 0 then
        page3 = 1
        page33 = page33 + 1
        sxlist4.setRefreshing(true);
        sx3(page33)
      end
    end
  end }

list3.onItemClick = function(l, v, p, i)
  activity.newActivity("main12", { v.Tag.id3.Text, v.Tag.id33.Text })
end

function sx3(i)
  Http.post("https://ly250.cn/andlua/ssyh.php", "sid=" .. sid() .. "&page=" .. i .. "&text=" .. gjc.Text,
    function(a1, bj, c, d)
      sid1 = bj:match('%["ret"] = "(.-)%";')
      if sid1 == "ok" then
        ico = bj:gmatch('%["icon"] = "(.-)%";')
        yh1 = bj:gmatch('%["gxqm"] = "(.-)%";')
        uid33 = bj:gmatch('%["uid3"] = "(.-)%";')
        for mz5 in bj:gmatch('%["name"] = "(.-)%";') do
          adp6.add { yhnc = mz5, yhqm = yh1(), yhtx = ico(), id33 = uid33() }
        end
      elseif sid1 == "1" then
        SnackerBar.build()
            :msg(getLS("L_For_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      else
        SnackerBar.build()
            :msg(getLS("L_No_more"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      end
      sxlist4.setRefreshing(false);
      page3 = 0
    end)
end

function gxlbb(ggh, bbt, bh, bmh, g, ggg)
  adp7.add { tb = ggh, bt = bbt, bb = bh, bmb = bmh, gcv = g, gcwj = ggg }
end

function sjj()
  adp7 = LuaAdapter(activity, lap)
end

function szlb(hkqq)
  if hkqq == "0" then
    SnackerBar.build()
        :msg(getLS("L_No_more"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
    list1.setAdapter(adp7)
  else
    list1.setAdapter(adp7)
  end
  sxlist1.setRefreshing(false);
end

function sx4(gj)
  require "import"
  import "java.io.File"
  import "mods.andlua"
  call("sjj")
  function show(f)
    dir = f
    ls = luajava.astable(f.listFiles() or String {})
    table.sort(ls, function(a, b)
      return (a.isDirectory() ~= b.isDirectory() and a.isDirectory()) or
      ((a.isDirectory() == b.isDirectory()) and a.Name < b.Name)
    end)
    if #ls == 0 then
      hkqq = "0"
    else
      hkqq = "1"
      for n = 1, #ls do
        bbm = ls[n].Name
        pdd1 = ("/sdcard/AndLua/project/" .. ls[n].Name)
        pdd = ("/sdcard/AndLua/project/" .. ls[n].Name .. "/main.lua")
        file, err = io.open(pdd)
        if err == nil then
          ggh = ("/sdcard/AndLua/project/" .. ls[n].Name .. "/icon.png")
          if File(ggh).isFile() then
          else
            ggh = activity.getLuaDir() .. "/icon.png"
          end
          gg = ("/sdcard/AndLua/project/" .. ls[n].Name .. "/init.lua")
          g = ("/sdcard/AndLua/project/" .. ls[n].Name)
          ggg = ls[n].Name
          wj = io.open(gg):read("*a")
          bbt = wj:match('%appname="(.-)"')
          bh = getLS("L_Version") .. ": " .. wj:match('%appver="(.-)"')
          bmh = getLS("L_The_package_name") .. ": " .. wj:match('%kagename="(.-)"')
          if bbt:find(gj) then
            call("gxlbb", ggh, bbt, bh, bmh, g, ggg)
          end
        else
        end
      end
    end
  end

  show(File("/sdcard/AndLua/project/"))
  call("szlb", hkqq)
end

list4.onItemClick = function(l, v, p, i)
  activity.newActivity("main15", { v.Tag.id33.Text })
end

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  thread(sx4, gjc.Text)
end })

sxlist2.setColorSchemeColors({ tonumber(bjzt()) });
sxlist2.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  adp4 = LuaAdapter(activity, tzlb)
  list2.setAdapter(adp4)
  page1 = 0
  page11 = 1
  sx1(page11)
end })

sxlist4.setColorSchemeColors({ tonumber(bjzt()) });
sxlist4.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  page3 = 0
  page33 = 1
  adp6 = LuaAdapter(activity, yhlb)
  list4.setAdapter(adp6)
  sx3(page33)
end })

sxlist3.setColorSchemeColors({ tonumber(bjzt()) });
sxlist3.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  data3 = {}
  adp5 = LuaMultiAdapter(activity, data2, ymlb)
  list3.setAdapter(adp5)
  page2 = 0
  page22 = 1
  sx2(page22)
end })

GChome(list1)

list1.onItemClick = function(l, v, p, i)
  if File(v.Tag.gcv.Text).isDirectory() then
    activity.newActivity("main1", { v.Tag.gcv.Text })
  else
    SnackerBar.build()
        :msg(getLS("L_Engineering_does_not_exist"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  end
end

Typew(gjc)
