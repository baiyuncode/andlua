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
import "mods.lay"
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
  RelativeLayout,
  layout_height = "fill",
  backgroundColor = AndLuaB,
  layout_width = "fill",
  {
    TextView,
    textSize = "15sp",
    id = "js",
    text = getLS("L_The_man_is_lazy"),
    layout_centerInParent = "true",
  },
  {
    SwipeRefreshLayout,
    id = "sxlist1",
    layout_marginTop = "5dp",
    layout_marginLeft = "5dp",
    layout_marginRight = "5dp",
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
};

activity.setContentView(loadlayout(main10))
ztt()
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
      text = getLS("L_Ta_post"),
      textColor = tonumber(bjzt()),
      id = "bbt",
      singleLine = true,
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(0)
bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

uid33, ji = ...
page = 0
page1 = 1

uguid()
if uid3 == uid33 then
  bbt.setText(getLS("L_My_post"))
else
end
adp4 = LuaAdapter(activity, tzlb)
list1.setAdapter(adp4)
sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  adp4 = LuaAdapter(activity, tzlb)
  list1.setAdapter(adp4)
  page = 0
  page1 = 1
  sx(page1)
end })

function sx(i)
  Http.post("https://ly250.cn/andlua/tatz.php", "uid3=" .. uid33 .. "&page=" .. i .. "&sid=" .. sid(), function(a1, b, c,
                                                                                                                d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      nr2 = b:gmatch('%["text"] = "(.-)%";')
      uid335 = b:gmatch('%["uid3"] = "(.-)%";')
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
        ud3 = uid335()
        ud4 = uid44()
        sj2 = sj1()
        lll1 = lll()
        q1 = uu()
        hfl1 = hfl()
        bt4 = "<font color='" ..
        "#" ..
        tostring(tostring(bjzt1()):match("0xFF(.+)")) ..
        "" .. "'>" .. q1 .. "&nbsp;" .. "</font><font color='#333333'>" .. bt2 .. "</font>";
        adp4.add { tzbt = { Text = Html.fromHtml(bt4) }, tznr = nr3, tztx = tx3, tznc = nc2, tzrq = sj2, lll = lll1, hfl =
        hfl1, uidd3 = ud3, uidd4 = ud4 }
      end
      js.setText("")
    else
      js.setText(getLS("L_The_man_is_lazy"))
    end
    page = 0
    sxlist1.setRefreshing(false);
  end)
end

sx(page1)

list1.onItemClick = function(l, v, p, i)
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

list1.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list1.getLastVisiblePosition() == list1.getCount() - 1 then
      if page == 0 then
        page = 1
        page1 = page1 + 1
        sxlist1.setRefreshing(true);
        sx(page1)
      end
    end
  end }
