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
  backgroundColor = AndLuaB,
  layout_height = "fill",
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
      id = "list2",
      dividerHeight = "0",
    },
  },
};


activity.setContentView(loadlayout(main10))
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
      text = getLS("L_The_source_code_of_Ta"),
      textColor = tonumber(bjzt()),
      id = "bt",
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

uid33 = ...
page = 0
page1 = 1

data3 = {}
adp5 = LuaMultiAdapter(activity, data2, ymlb)
list2.setAdapter(adp5)

function sx(i)
  Http.post("https://ly250.cn/andlua/taym.php", "uid3=" .. uid33 .. "&page=" .. i .. "&sid=" .. sid(),
    function(a1, bj, c, d)
      sid1 = bj:match('%["ret"] = "(.-)%";')
      if sid1 == "ok" then
        js.setText("")
        dx5 = bj:gmatch('%["dx"] = "(.-)%";')
        iconn = bj:gmatch('%["icon"] = "(.-)%";')
        uids3 = bj:gmatch('%["uid3"] = "(.-)%";')
        Price1 = bj:gmatch('%["Price"] = "(.-)%";')
        id3 = bj:gmatch('%["id"] = "(.-)%";')
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
            :msg(getLS("L_For_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
        js.setText(getLS("L_The_man_is_lazy"))
      end
      page = 0
      sxlist1.setRefreshing(false);
    end)
end

list2.onItemClick = function(l, v, p, i)
  activity.newActivity("main12", { v.Tag.id3.Text, v.Tag.id33.Text })
end

list2.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list2.getLastVisiblePosition() == list2.getCount() - 1 then
      if page == 0 then
        page = 1
        page1 = page1 + 1
        sxlist1.setRefreshing(true);
        sx(page1)
      end
    end
  end }

uguid()
if uid3 == uid33 then
  bt.setText(getLS("L_My_source"))
else
end

sx(page1)

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  data3 = {}
  adp5 = LuaMultiAdapter(activity, data2, ymlb)
  list2.setAdapter(adp5)
  page = 0
  page1 = 1
  sx(page1)
end })
