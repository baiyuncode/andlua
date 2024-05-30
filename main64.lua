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

main = {
  RelativeLayout,
  layout_height = "fill",
  layout_width = "fill",
  backgroundColor = AndLuaB,
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      SwipeRefreshLayout,
      layout_marginTop = "5dp",
      layout_marginLeft = "5dp",
      layout_marginRight = "5dp",
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
};

activity.setContentView(loadlayout(main))

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

page1 = 0
page11 = 1

adp = LuaAdapter(activity, yhlb)
list1.setAdapter(adp)

jik.onClick = function()
  adp = LuaAdapter(activity, yhlb)
  list1.setAdapter(adp)
  page1 = 0
  page11 = 1
  sx(page11)
end

function sx(i)
  if gjc.Text == "" then
    SnackerBar.build()
        :msg(getLS("L_Please_enter_a_search_keyword_1"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  else
    Http.post("https://ly250.cn/andlua/search1.php", "sid=" .. sid() .. "&page=" .. i .. "&name=" .. gjc.Text,
      function(a1, bj, c, d)
        sid1 = bj:match('%["ret"] = "(.-)%";')
        if sid1 == "ok" then
          ico = bj:gmatch('%["icon"] = "(.-)%";')
          yh1 = bj:gmatch('%["gxqm"] = "(.-)%";')
          uid33 = bj:gmatch('%["uid3"] = "(.-)%";')
          for mz5 in bj:gmatch('%["name"] = "(.-)%";') do
            adp.add { yhnc = mz5, yhqm = yh1(), yhtx = ico(), id33 = uid33() }
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
        sxlist1.setRefreshing(false);
        page1 = 0
      end)
  end
end

Typew(gjc)

list1.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list1.getLastVisiblePosition() == list1.getCount() - 1 then
      if page1 == 0 then
        page1 = 1
        page11 = page11 + 1
        sxlist1.setRefreshing(true);
        sx(page11)
      end
    end
  end }

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  adp = LuaAdapter(activity, yhlb)
  list1.setAdapter(adp)
  page1 = 0
  page11 = 1
  sx(page11)
end })

list1.onItemClick = function(p, v, i, s)
  activity.result({ v.Tag.yhnc.Text, v.Tag.id33.Text })
  return true
end
