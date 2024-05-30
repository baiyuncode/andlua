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
    text = getLS("L_A_message_to_all_have_no"),
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
      text = getLS("L_The_message_center"),
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
  activity.result({ "", "", "刷新消息" })
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
        layout_height = "40dp",
        layout_width = "-1",
        id = "b2",
        layout_marginTop = "10dp",
        {
          TextView,
          layout_marginLeft = "10dp",
          textSize = "0sp",
          textColor = "0x00ffffff",
          id = "uid5",
          layout_height = "45dp",
          layout_centerVertical = "true",
          layout_width = "45dp",
        },
        {
          TextView,
          layout_marginLeft = "10dp",
          textSize = "0sp",
          textColor = "0x00ffffff",
          id = "uid7",
          layout_height = "45dp",
          layout_centerVertical = "true",
          layout_width = "45dp",
        },
        {
          CircleImageView,
          layout_marginLeft = "10dp",
          layout_height = "40dp",
          id = "tztx1",
          layout_width = "40dp",
          layout_centerVertical = "true",
          src = "res/tx.png",
        },
        {
          TextView,
          textSize = "13sp",
          text = "昵称",
          textColor = TitleColor,
          id = "tznc1",
          layout_toRightOf = "tztx1",
          layout_marginLeft = "10dp",
          layout_marginTop = "2dp",
        },
        {
          TextView,
          text = "2000-1-1",
          textSize = "11sp",
          id = "tzrq1",
          textColor = TitleColor1,
          layout_below = "tznc1",
          layout_marginLeft = "10dp",
          layout_toRightOf = "tztx1",
        },
        {
          TextView,
          layout_marginRight = "15dp",
          text = "未读",
          layout_alignParentRight = "true",
          id = "dd",
          textColor = "#F44336",
          layout_centerVertical = "true",
          textSize = "12sp",
        },
      },
      {
        RelativeLayout,
        layout_below = "b2",
        id = "ig",
        layout_width = "-1",
        layout_marginTop = "2dp",
        layout_marginBottom = "8dp",
        {
          TextView,
          layout_marginRight = "15dp",
          text = "内容",
          textColor = TitleColor,
          layout_width = "-1",
          layout_marginLeft = "65dp",
          gravity = "start",
          id = "tzbt1",
          textSize = "14sp",
          layout_marginBottom = "5dp",
        },
      },
      {
        CardView,
        layout_marginRight = "20dp",
        backgroundColor = AndLuaB3,
        layout_width = "-1",
        layout_marginLeft = "65dp",
        layout_marginBottom = "10dp",
        radius = "5dp",
        elevation = "0dp",
        id = "gf",
        layout_below = "ig",
        {
          RelativeLayout,
          {
            TextView,
            text = "帖子：",
            layout_marginTop = "8dp",
            id = "jj",
            textColor = TitleColor1,
            textSize = "13sp",
            layout_marginLeft = "8dp",
            layout_marginBottom = "8dp",
          },
          {
            TextView,
            textSize = "0sp",
            textColor = "0x00ffffff",
            id = "kku",
            layout_height = "0dp",
            layout_width = "0dp",
          },
        },
      },
      {
        TextView,
        id = "kd",
        layout_width = "0",
        layout_height = "0",
      },
      {
        TextView,
        id = "lzl",
        layout_width = "0",
        layout_height = "0",
      },
    },
  },
};


uid33, ji = ...
page = 0
page1 = 1
adp = LuaAdapter(activity, hflb)
list1.setAdapter(adp)

function sxx(i)
  Http.post("https://ly250.cn/andlua/wdxx1.php", "&uid3=" .. uid33 .. "&page=" .. i .. "&sid=" .. sid(),
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
        js.setText(getLS("L_A_message_to_all_have_no"))
      elseif sid2 == "ok" then
        tx5 = b:gmatch('%["src"] = "(.-)%";')
        rq5 = b:gmatch('%["time"] = "(.-)%";')
        key = b:gmatch('%["key"] = "(.-)%";')
        key6 = b:gmatch('%["key1"] = "(.-)%";')
        key66 = b:gmatch('%["key2"] = "(.-)%";')
        bty = b:gmatch('%["title"] = "(.-)%";')
        nr5 = b:gmatch('%["text"] = "(.-)%";')
        lx5 = b:gmatch('%["lx"] = "(.-)%";')
        idd = b:gmatch('%["id"] = "(.-)%";')
        nnnr = b:gmatch('%["nr"] = "(.-)%";')
        lzl0 = b:gmatch('%["lzl"] = "(.-)%";')
        for ncu in b:gmatch('%["name"] = "(.-)%";') do
          tx6 = tx5()
          rq6 = rq5()
          nr6 = nr5()
          keyy = key()
          keyy1 = key6()
          local keyy6 = key66()
          lxx = lx5()
          bt = bty()
          nrr = nnnr()
          iid = idd()
          local lzl1 = lzl0()
          if lxx == "1" then
            adp.add { lzl = lzl1, gf = { visibility = 0 }, kd = "0", b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = {
              text = keyy1 }, uid7 = { text = iid }, kku = { text = keyy }, jj = { text = nrr }, tznc1 = { text = ncu }, tzrq1 = {
              text = rq6 }, tzbt1 = { text = nr6 }, tztx1 = {
              src = tx6,
              transitionName = "tx1io",
              onClick = function(v)
                intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                intent.putExtra("uidd1", keyy6);
                path = activity.getLuaDir() .. "/main15.lua"
                intent.setData(Uri.parse("file://" .. path));
                activity.startActivity(intent,
                  ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
              end
            }, b3 = { visibility = 0 }, dd = "" }
          elseif lxx == "2" then
            adp.add { lzl = lzl1, gf = { visibility = 0 }, kd = "0", b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = {
              text = keyy1 }, uid7 = { text = iid }, kku = { text = keyy }, jj = { text = nrr }, tznc1 = { text = ncu }, tzrq1 = {
              text = rq6 }, tzbt1 = { text = nr6 }, tztx1 = {
              src = tx6,
              transitionName = "tx1io",
              onClick = function(v)
                intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                intent.putExtra("uidd1", keyy6);
                path = activity.getLuaDir() .. "/main15.lua"
                intent.setData(Uri.parse("file://" .. path));
                activity.startActivity(intent,
                  ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
              end
            }, b3 = { visibility = 0 }, dd = "" }
          elseif lxx == "3" then
            adp.add { lzl = lzl1, gf = { visibility = 8 }, kd = "1", b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = {
              text = keyy1 }, uid7 = { text = iid }, kku = { text = keyy }, jj = { text = "" }, tznc1 = { text = ncu }, tzrq1 = {
              text = rq6 }, tzbt1 = { text = nr6 }, tztx1 = {
              src = tx6,
              transitionName = "tx1io",
              onClick = function(v)
              end
            }, dd = { text = nrr, textColor = 0xffE53A40 }, b3 = { visibility = 0 } }
          elseif lxx == "4" then
            adp.add { lzl = lzl1, gf = { visibility = 0 }, kd = "2", b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = {
              text = keyy }, uid7 = { text = iid }, kku = { text = keyy1 }, jj = { text = nrr }, tznc1 = { text = ncu }, tzrq1 = {
              text = rq6 }, tzbt1 = { text = nr6 }, tztx1 = {
              src = tx6,
              transitionName = "tx1io",
              onClick = function(v)
                intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                intent.putExtra("uidd1", keyy6);
                path = activity.getLuaDir() .. "/main15.lua"
                intent.setData(Uri.parse("file://" .. path));
                activity.startActivity(intent,
                  ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
              end
            }, b3 = { visibility = 0 }, dd = "" }
          elseif lxx == "5" then
            adp.add { lzl = lzl1, gf = { visibility = 0 }, kd = "3", b11 = { visibility = 8 }, fj = { visibility = 8 }, uid5 = {
              text = keyy1 }, uid7 = { text = iid }, kku = { text = keyy }, jj = { text = nrr }, tznc1 = { text = ncu }, tzrq1 = {
              text = rq6 }, tzbt1 = { text = StringBuilder("", nr6, true) }, tztx1 = {
              src = tx6,
              transitionName = "tx1io",
              onClick = function(v)
                intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                intent.putExtra("uidd1", keyy6);
                path = activity.getLuaDir() .. "/main15.lua"
                intent.setData(Uri.parse("file://" .. path));
                activity.startActivity(intent,
                  ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
              end
            }, b3 = { visibility = 0 }, dd = "" }
          end
        end
        js.setText("")
        Http.post("https://ly250.cn/andlua/dxx.php", "&uid3=" .. uid33 .. "&sid=" .. sid(), function(a1, b, c, d)
        end)
      else
        js.setText(getLS("L_Load_failed"))
      end
      page = 0
      sxlist1.setRefreshing(false);
    end)
end

sxx(page1)

list1.onItemClick = function(l, v, p, i)
  if v.Tag.kd.Text == "2" then
    uguid()
    activity.newActivity("main12", { v.Tag.kku.Text, v.Tag.uid5.Text })
  elseif v.Tag.kd.Text == "0" then
    uguid()
    activity.newActivity("main8", { v.Tag.kku.Text, v.Tag.uid5.Text })
  elseif v.Tag.kd.Text == "3" then
    boo = true
    if v.Tag.lzl.Text == "false" then
      boo = false
    end
    activity.newActivity("main62", { v.Tag.uid5.Text, boo })
  end
end

function onKeyDown(c, e)
  if c == 4 then
    activity.result({ "", "", "刷新消息" })
  end
end

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  adp = LuaAdapter(activity, hflb)
  list1.setAdapter(adp)
  page = 0
  page1 = 1
  sxx(page1)
end })

list1.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list1.getLastVisiblePosition() == list1.getCount() - 1 then
      if page == 0 then
        page = 1
        page1 = page1 + 1
        sxlist1.setRefreshing(true);
        sxx(page1)
      end
    end
  end }
