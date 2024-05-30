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
    layout_marginLeft = "5dp",
    layout_marginRight = "5dp",
    layout_marginTop = "8dp",
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
      text = getLS("L_Ta_to_reply"),
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

hflb = {
  RelativeLayout,
  id = "b3",
  backgroundColor = AndLuaB,
  {
    CardView,
    radius = AndLuaR,
    CardElevation = "0dp",
    backgroundColor = AndLuaB1,
    layout_width = "-1",
    layout_marginLeft = "5dp",
    layout_marginBottom = "5dp",
    layout_marginRight = "5dp",
    layout_marginTop = "2dp",
    {
      RelativeLayout,
      layout_width = "fill",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_marginTop = "10dp",
        layout_height = "40dp",
        id = "b2",
        {
          TextView,
          textColor = "0x00ffffff",
          layout_centerVertical = "true",
          id = "uid5",
          textSize = "0sp",
          layout_width = "45dp",
          layout_height = "45dp",
          layout_marginLeft = "10dp",
        },
        {
          CircleImageView,
          src = "res/tx.png",
          layout_centerVertical = "true",
          id = "tztx1",
          layout_width = "45dp",
          layout_height = "45dp",
          layout_marginLeft = "10dp",
        },
        {
          TextView,
          textColor = TitleColor,
          layout_marginTop = "2dp",
          id = "tznc1",
          text = "昵称",
          textSize = "13sp",
          layout_toRightOf = "tztx1",
          layout_marginLeft = "10dp",
        },
        {
          TextView,
          layout_toRightOf = "tztx1",
          id = "tzrq1",
          text = "2000-1-1",
          textSize = "11sp",
          textColor = TitleColor1,
          layout_below = "tznc1",
          layout_marginLeft = "10dp",
        },
      },
      {
        RelativeLayout,
        layout_marginBottom = "8dp",
        layout_marginTop = "2dp",
        id = "ig",
        layout_width = "-1",
        layout_below = "b2",
        {
          TextView,
          layout_marginRight = "10dp",
          id = "tzbt1",
          text = "内容",
          textSize = "14sp",
          layout_width = "-1",
          gravity = "start",
          layout_marginBottom = "5dp",
          textColor = TitleColor,
          layout_marginLeft = "65dp",
        },
      },
      {
        CardView,
        layout_marginRight = "20dp",
        radius = "5dp",
        id = "gf",
        elevation = "0dp",
        layout_width = "-1",
        layout_below = "ig",
        backgroundColor = AndLuaB3,
        layout_marginBottom = "10dp",
        layout_marginLeft = "65dp",
        {
          RelativeLayout,
          {
            TextView,
            layout_marginBottom = "8dp",
            layout_marginTop = "8dp",
            text = "帖子：",
            layout_marginRight = "8dp",
            textSize = "13sp",
            textColor = TitleColor1,
            layout_marginLeft = "8dp",
            id = "jj",
          },
          {
            TextView,
            textSize = "0sp",
            id = "kku",
            layout_width = "0dp",
            textColor = "0x00ffffff",
            layout_height = "0dp",
          },
        },
      },
    },
  },
};

uid33, ji = ...
page = 0
page1 = 1
adp = LuaAdapter(activity, hflb)
list1.setAdapter(adp)
function sx(i)
  Http.post("https://ly250.cn/andlua/tahf.php", "&uid3=" .. uid33 .. "&page=" .. i .. "&sid=" .. sid(),
    function(a1, b, c, d)
      sid2 = b:match('%["ret"] = "(.-)%";')
      if sid2 == "1" then
        SnackerBar.build()
            :msg(getLS("L_For_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
        js.setText(getLS("L_Load_failed"))
      elseif sid2 == "4" then
        js.setText(getLS("L_Load_failed"))
        SnackerBar.build()
            :msg(getLS("L_Identity_expired"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif sid2 == nil then
        js.setText(getLS("L_The_man_is_lazy"))
      elseif sid2 == "ok" then
        tx5 = b:gmatch('%["src"] = "(.-)%";')
        rq5 = b:gmatch('%["time"] = "(.-)%";')
        key = b:gmatch('%["key"] = "(.-)%";')
        key6 = b:gmatch('%["key1"] = "(.-)%";')
        bty = b:gmatch('%["title"] = "(.-)%";')
        nr5 = b:gmatch('%["text"] = "(.-)%";')
        wd = b:gmatch('%["yd"] = "(.-)%";')
        lx5 = b:gmatch('%["lx"] = "(.-)%";')
        idd = b:gmatch('%["id"] = "(.-)%";')
        pln = b:gmatch('%["pltt"] = "(.-)%";')
        for ncu in b:gmatch('%["name"] = "(.-)%";') do
          tx6 = tx5()
          rq6 = rq5()
          nr6 = nr5()
          plln = pln()
          keyy = key()
          keyy1 = key6()
          lxx = lx5()
          ddd = wd()
          bt = bty()
          iid = idd()
          if lxx == "1" then
            if ddd == "1" then
              adp.add { b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = { text = keyy1 }, uid7 = { text = iid }, kku = {
                text = keyy }, jj = { text = getLS("L_Post_1") .. bt }, tznc1 = { text = ncu }, tzrq1 = { text = rq6 }, tzbt1 = {
                text = nr6 }, tztx1 = { src = tx6 }, b3 = { visibility = 0 } }
            else
              adp.add { b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = { text = keyy1 }, uid7 = { text = iid }, kku = {
                text = keyy }, jj = { text = getLS("L_Post_1") .. bt }, tznc1 = { text = ncu }, tzrq1 = { text = rq6 }, tzbt1 = {
                text = nr6 }, tztx1 = { src = tx6 }, dd = { text = "已读", textColor = tonumber(bjzt()) }, b3 = {
                visibility = 0 } }
            end
          elseif lxx == "2" then
            if ddd == "1" then
              adp.add { b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = { text = keyy1 }, uid7 = { text = iid }, kku = {
                text = keyy }, jj = { text = getLS("L_Reply_1") .. plln }, tznc1 = { text = ncu }, tzrq1 = { text = rq6 }, tzbt1 = {
                text = nr6 }, tztx1 = { src = tx6 }, b3 = { visibility = 0 } }
            else
              adp.add { b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = { text = keyy1 }, uid7 = { text = iid }, kku = {
                text = keyy }, jj = { text = getLS("L_Reply_1") .. plln }, tznc1 = { text = ncu }, tzrq1 = { text = rq6 }, tzbt1 = {
                text = nr6 }, tztx1 = { src = tx6 }, dd = { text = "已读", textColor = tonumber(bjzt()) }, b3 = {
                visibility = 0 } }
            end
          end
        end
        js.setText("")
      else
        js.setText(getLS("L_Load_failed"))
      end
      page = 0
      sxlist1.setRefreshing(false);
    end)
end

list1.onItemClick = function(l, v, p, i)
  activity.newActivity("main8", { v.Tag.kku.Text, v.Tag.uid5.Text })
end

sx(page1)

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  adp = LuaAdapter(activity, hflb)
  list1.setAdapter(adp)
  page = 0
  page1 = 1
  sx(page1)
end })

uguid()
if uid3 == uid33 then
  bt.setText(getLS("L_My_response"))
else
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
