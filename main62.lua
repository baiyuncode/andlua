require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "mods.SnackerBar"
import "android.content.*"
import "android.view.inputmethod.InputMethodManager"
import "console"
import "android.view.*"
import "android.graphics.Typeface"
import "java.io.File"
import "bin"
import "android.view.animation.*"
import "android.view.animation.Animation"
import "android.graphics.*"
import "mods.andlua"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.Color"
import "android.support.v4.widget.*"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
import "android.text.method.LinkMovementMethod"
import "android.text.style.ClickableSpan"
import "android.text.SpannableString"
import "android.text.style.URLSpan"
import "android.text.Spanned"
import "android.text.style.ClickableSpan"
import "android.text.SpannableStringBuilder"
import "android.graphics.Color"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"

ztt()

replyID, LZL = ...

UID = ""

main = {
  LinearLayout,
  orientation = "vertical",
  layout_width = "fill",
  gravity = "center",
  backgroundColor = AndLuaB,
  layout_height = "fill",
  {
    ProgressBar,
    id = "comment_load",
    visibility = "0",
  },
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    visibility = "8",
    id = "comment",
    {
      LinearLayout,
      layout_width = "fill",
      orientation = "vertical",
      layout_marginTop = "5dp",
      layout_marginLeft = "5dp",
      layout_marginRight = "5dp",
      backgroundColor = AndLuaB,
      id = "code_l",
      {
        CardView,
        backgroundColor = AndLuaB1,
        layout_width = "-1",
        layout_margin = "3dp",
        radius = AndLuaR,
        Elevation = "0dp",
        id = "view_code",
        {
          LinearLayout,
          layout_width = "-1",
          orientation = "horizontal",
          gravity = "left|center",
          layout_height = "-1",
          layout_marginBottom = "8dp",
          layout_marginTop = "8dp",
          {
            ImageView,
            layout_width = "30dp",
            id = "code_icon",
            layout_marginLeft = "10dp",
            layout_height = "30dp",
          },
          {
            TextView,
            layout_marginLeft = "10dp",
            singleLine = "true",
            id = "code_name",
            ellipsize = "end",
            textSize = "15sp",
            textColor = TitleColor,
          },
          {
            LinearLayout,
            layout_weight = "1",
            layout_width = "-1",
            orientation = "vertical",
            gravity = "center",
            layout_height = "-1",
            {
              CardView,
              layout_marginRight = "10dp",
              layout_height = "26dp",
              layout_gravity = "right",
              Elevation = "0dp",
              backgroundColor = tonumber(bjzt()),
              {
                TextView,
                gravity = "center",
                id = "code_dow",
                layout_marginRight = "8dp",
                layout_marginLeft = "8dp",
                layout_width = "-1",
                textSize = "11sp",
                textColor = "#ffffff",
                layout_height = "-1",
              },
            },
          },
        },
      },
    },
    {
      RelativeLayout,
      backgroundColor = AndLuaB,
      layout_below = "code_l",
      layout_marginTop = "2dp",
      layout_marginLeft = "5dp",
      layout_marginRight = "5dp",
      id = "comment1",
      {
        CardView,
        radius = AndLuaR,
        CardElevation = "0dp",
        backgroundColor = AndLuaB1,
        layout_margin = "3dp",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "fill",
          {
            RelativeLayout,
            id = "b2",
            layout_width = "-1",
            layout_marginTop = "10dp",
            layout_height = "40dp",
            {
              CircleImageView,
              layout_height = "30dp",
              layout_marginLeft = "10dp",
              layout_width = "30dp",
              layout_centerVertical = "true",
              id = "tztx1",
              onClick = function(v)
                intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                intent.putExtra("uidd1", UID);
                path = activity.getLuaDir() .. "/main15.lua"
                intent.setData(Uri.parse("file://" .. path));
                activity.startActivity(intent,
                  ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
              end,
            },
            {
              TextView,
              layout_toRightOf = "tztx1",
              layout_marginTop = "2dp",
              layout_marginLeft = "10dp",
              textColor = TitleColor,
              textSize = "14sp",
              id = "tznc1",
            },
            {
              CardView,
              layout_toRightOf = "tznc1",
              backgroundColor = tonumber(bjzt()),
              layout_marginLeft = "5dp",
              layout_alignBottom = "tznc1",
              layout_marginTop = "2dp",
              id = "lzz",
              radius = "1dp",
              elevation = "0dp",
              layout_alignTop = "tznc1",
              {
                TextView,
                layout_margin = "2px",
                paddingRight = "3dp",
                paddingLeft = "3dp",
                backgroundColor = AndLuaB1,
                textColor = tostring(bjzt()),
                text = getLS("Landlord"),
                gravity = "center",
                textSize = "10sp",
                layout_height = "-1",
              },
            },
            {
              TextView,
              layout_below = "tznc1",
              layout_toRightOf = "tztx1",
              layout_marginLeft = "10dp",
              id = "time",
              textColor = TitleColor1,
              textSize = "12sp",
            },
          },
          {
            RelativeLayout,
            layout_below = "b2",
            layout_width = "-1",
            layout_marginTop = "2dp",
            layout_marginBottom = "8dp",
            {
              TextView,
              gravity = "start",
              textSize = "15sp",
              layout_width = "-1",
              layout_marginBottom = "10dp",
              layout_marginRight = "10dp",
              layout_marginLeft = "10dp",
              textColor = TitleColor,
              id = "text",
              textIsSelectable = true,
            },
          },
        },
      },
    },
    {
      LinearLayout,
      layout_width = "fill",
      orientation = "vertical",
      layout_marginTop = "2dp",
      layout_marginLeft = "5dp",
      layout_marginRight = "5dp",
      backgroundColor = AndLuaB,
      layout_below = "comment1",
      id = "comment2",
      {
        CardView,
        backgroundColor = AndLuaB1,
        layout_width = "-1",
        layout_margin = "3dp",
        radius = AndLuaR,
        Elevation = "0dp",
        {
          LinearLayout,
          layout_width = "-1",
          orientation = "horizontal",
          gravity = "left|center",
          layout_height = "-1",
          layout_marginBottom = "8dp",
          layout_marginTop = "8dp",
          {
            TextView,
            layout_marginLeft = "10dp",
            singleLine = "true",
            id = "Latest_reply",
            ellipsize = "end",
            textSize = "15sp",
            textColor = TitleColor,
          },
        },
      },
    },
    {
      SwipeRefreshLayout,
      backgroundColor = AndLuaB,
      layout_marginTop = "2dp",
      layout_below = "comment2",
      id = "sxlist",
      {
        YLListView,
        VerticalScrollBarEnabled = false,
        overScrollMode = 2,
        DividerHeight = 0,
        backgroundColor = AndLuaB,
        layout_width = "-1",
        layout_height = "-1",
        id = "list",
        VerticalScrollBarEnabled = false,
      },
    },

    {
      CardView,
      layout_width = "50dp",
      backgroundColor = tostring(bjzt()),
      layout_margin = "16dp",
      CardElevation = "4dp",
      layout_alignParentRight = "true",
      layout_alignParentBottom = "true",
      id = "button",
      Visibility = 8,
      layout_height = "50dp",
      radius = "25dp",
      {
        LinearLayout,
        layout_width = "74dp",
        style = "?android:attr/buttonBarButtonStyle",
        id = "butt",
        layout_gravity = "center",
        layout_height = "74dp",
        {
          ImageView,
          layout_width = "24dp",
          layout_gravity = "center",
          ColorFilter = "#FFFFFF",
          layout_height = "24dp",
          src = "res/Metrial362.png",
        },
      },
    },

  },
};

items = {
  RelativeLayout,
  layout_width = "-1",
  layout_height = "-1",
  {
    RelativeLayout,
    backgroundColor = AndLuaB,
    layout_below = "code_l",
    layout_marginTop = "2dp",
    layout_marginLeft = "5dp",
    layout_marginRight = "5dp",
    id = "comment1",
    {
      CardView,
      radius = AndLuaR,
      CardElevation = "0dp",
      backgroundColor = AndLuaB1,
      layout_margin = "3dp",
      layout_width = "-1",
      {
        RelativeLayout,
        layout_width = "fill",
        {
          RelativeLayout,
          id = "b2",
          layout_width = "-1",
          layout_marginTop = "10dp",
          layout_height = "40dp",
          {
            CircleImageView,
            layout_height = "30dp",
            layout_marginLeft = "10dp",
            layout_width = "30dp",
            layout_centerVertical = "true",
            id = "tztx1",
          },
          {
            TextView,
            layout_toRightOf = "tztx1",
            layout_marginTop = "2dp",
            layout_marginLeft = "10dp",
            textColor = TitleColor,
            textSize = "14sp",
            id = "tznc1",
          },
          {
            CardView,
            layout_toRightOf = "tznc1",
            backgroundColor = tonumber(bjzt()),
            layout_marginLeft = "5dp",
            layout_alignBottom = "tznc1",
            layout_marginTop = "2dp",
            id = "lzz",
            radius = "1dp",
            elevation = "0dp",
            layout_alignTop = "tznc1",
            {
              TextView,
              layout_margin = "2px",
              paddingRight = "3dp",
              paddingLeft = "3dp",
              backgroundColor = AndLuaB1,
              textColor = tostring(bjzt()),
              text = getLS("Landlord"),
              gravity = "center",
              textSize = "10sp",
              layout_height = "-1",
            },
          },
          {
            TextView,
            layout_below = "tznc1",
            layout_toRightOf = "tztx1",
            layout_marginLeft = "10dp",
            textColor = TitleColor1,
            id = "time",
            textSize = "12sp",
          },
          {
            TextView,
            textColor = "#757575",
            layout_margin = "10dp",
            id = "lss",
            text = "1#",
            textSize = "12sp",
            layout_alignParentRight = "true",
          },
        },
        {
          RelativeLayout,
          layout_below = "b2",
          layout_width = "-1",
          layout_marginTop = "7dp",
          layout_marginBottom = "8dp",
          {
            TextView,
            gravity = "start",
            textSize = "15sp",
            layout_width = "-1",
            layout_marginBottom = "10dp",
            layout_marginRight = "10dp",
            layout_marginLeft = "10dp",
            textColor = TitleColor,
            id = "text",
            textIsSelectable = true,
            --HighlightColor=tointeger(bjzt()),
            MovementMethod = LinkMovementMethod.getInstance(),
          },

          {
            CardView,
            layout_below = "text",
            layout_marginBottom = "8dp",
            layout_marginRight = "10dp",
            layout_marginLeft = "10dp",
            radius = "15dp",
            backgroundColor = AndLuaB3,
            CardElevation = "0",
            {
              TextView,
              textSize = "12sp",
              layout_marginBottom = "3dp",
              layout_marginTop = "3dp",
              layout_marginLeft = "10dp",
              text = getLS("L_Reply_2"),
              textColor = TitleColor1,
              id = "Reply_reply",
              layout_marginRight = "10dp",
            },
          },
        },
      },
    },
  },
};

activity.setContentView(loadlayout(main))
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
      text = getLS("L_Comment_in_detail"),
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

page = 0
page1 = 1
ls = 0

url = "https://ly250.cn/andlua/reply.php"
if LZL then
  url = "https://ly250.cn/andlua/reply2.php"
end

function updateUI(Rnum, Rtext, Rtime, Rname, Ricon, Cicon, Cname, Price, code_uid_1, code_id_1, UID_0)
  UID = UID_0
  code_uid = code_uid_1
  code_id = code_id_1
  thread(StringBuilder, text, Rtext)
  Latest_reply.Text = getLS("Latest_reply") .. " (" .. Rnum .. ")";
  time.Text = Rtime
  tznc1.Text = Rname
  tztx1.setImageBitmap(loadbitmap(Ricon))
  code_icon.setImageBitmap(loadbitmap(Cicon))
  code_name.Text = Cname
  code_dow.Text = Price
end

function updateUI1()
  comment.setVisibility(View.VISIBLE)
  button.setVisibility(View.VISIBLE)
  comment_load.setVisibility(View.GONE)
end

function updateUI3()
  page = 0
  sxlist.setRefreshing(false);
end

function updateUI4(i)
  ls = i
end

function addADP(t)
  adp.add(t)
end

function addTAB(t)
  tab = t
end

function sx(i, replyID, url, ls)
  require "import"
  import "android.app.*"
  import "android.os.*"
  import "android.widget.*"
  import "mods.SnackerBar"
  import "android.content.*"
  import "android.view.inputmethod.InputMethodManager"
  import "console"
  import "android.view.*"
  import "android.graphics.Typeface"
  import "java.io.File"
  import "bin"
  import "android.view.animation.*"
  import "android.view.animation.Animation"
  import "android.graphics.*"
  import "mods.andlua"
  import "android.text.SpannableString"
  import "android.text.style.ForegroundColorSpan"
  import "android.text.Spannable"
  import "android.graphics.drawable.ColorDrawable"
  import "android.graphics.Color"
  import "android.support.v4.widget.*"
  import "android.graphics.PorterDuffColorFilter"
  import "android.graphics.PorterDuff"
  import "android.text.method.LinkMovementMethod"
  import "android.text.style.ClickableSpan"
  import "android.text.SpannableString"
  import "android.text.style.URLSpan"
  import "android.text.Spanned"
  import "android.text.style.ClickableSpan"
  import "android.text.SpannableStringBuilder"
  import "android.graphics.Color"
  import "android.text.style.ForegroundColorSpan"
  import "android.text.Spannable"

  function setStringBuilder(s)
    local str = s
    local s = String(s)
    local url = {}
    local typ = {}
    local position1 = {}
    local position2 = {}
    local i = 0

    for label in str:gmatch("%[label%](.-)%[%/label%]") do
      i = i + 1

      loadstring("label_table=" .. label)()

      label = string.gsub(label, "+", "%%+")
      label = string.gsub(label, "-", "%%-")
      label = string.gsub(label, "=", "%%=")
      label = string.gsub(label, "*", "%%*")
      label = string.gsub(label, "#", "%%#")
      label = string.gsub(label, "?", "%%?")

      url[i] = label_table["url"]
      typ[i] = label_table["type"]

      if typ[i] == "code" then
        s = string.gsub(str, "%[label%]" .. label .. "%[%/label%]", "【" .. label_table["text"] .. "】", 1)
        position1[i] = String(str).indexOf("[label]")
        position2[i] = String(str).indexOf("[label]") + String(label_table["text"]).length() + 2
      elseif typ[i] == "user" then
        s = string.gsub(str, "%[label%]" .. label .. "%[%/label%]", "@" .. label_table["text"], 1)
        position1[i] = String(str).indexOf("[label]")
        position2[i] = String(str).indexOf("[label]") + String(label_table["text"]).length() + 1
      end

      str = s
    end

    local builder = SpannableStringBuilder(s);

    for i = 1, #position1 do
      builder.setSpan(ForegroundColorSpan(tointeger(bjzt())), position1[i], position2[i],
        Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
      builder.setSpan(ClickableSpan { onClick = function()
        call("Suilder", typ[i - 1], url[i - 1])
      end }, position1[i], position2[i], Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
      i = i + 1
    end

    return builder
  end

  uguid()

  Http.post(url, "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" ..
  replyID .. "&page=" .. i .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    Ricon = b:match('%["Ricon"] = "(.-)%";')
    Rname = b:match('%["Rname"] = "(.-)%";')
    Rtime = b:match('%["Rtime"] = "(.-)%";')
    Rtext = b:match('%["Rtext"] = "(.-)%";')
    Rnum = b:match('%["Rnum"] = "(.-)%";')

    Cicon = b:match('%["Cicon"] = "(.-)%";')
    Cname = b:match('%["Cname"] = "(.-)%";')

    Price1 = tostring(b:match('%["Price"] = "(.-)%";'))

    UID = b:match('%["UID"] = "(.-)%";')
    code_id = b:match('%["codeID"] = "(.-)%";')
    code_uid = b:match('%["codeUID"] = "(.-)%";')

    if Price1 == "0" then
      Price = getLS("L_As_a_free_download")
    else
      Price = "￥" .. Price1
    end

    if sid1 == "4" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "ok" then
      call("updateUI", Rnum, Rtext, Rtime, Rname, Ricon, Cicon, Cname, Price, code_uid, code_id, UID)

      tab = {}
      tab["icon"] = Ricon
      tab["name"] = Rname
      tab["time"] = Rtime
      tab["text"] = Rtext
      tab["id"] = replyID

      call("addTAB", tab)

      icon = b:gmatch('%["src"] = "(.-)%";')
      time0 = b:gmatch('%["time"] = "(.-)%";')
      text0 = b:gmatch('%["text"] = "(.-)%";')
      reply0 = b:gmatch('%["reply"] = "(.-)%";')
      replyID_0 = b:gmatch('%["id"] = "(.-)%";')
      UID3 = b:gmatch('%["UID3"] = "(.-)%";')

      for name in b:gmatch('%["name"] = "(.-)%";') do
        local icon1 = icon()
        local time1 = time0()
        local text1 = text0()
        local reply1 = reply0()
        local replyID_1 = replyID_0()
        local UID3_1 = UID3()

        ls = ls + 1
        call("updateUI4", ls)

        vi = 8

        if UID3_1 == UID then
          vi = 0
        end

        local reply_3 = reply1 .. getLS("L_Reply_2")
        if reply1 == "0" then
          reply_3 = getLS("reply")
        end

        call("addADP", {
          lzz = { Visibility = vi },
          Reply_reply = {
            text = reply_3,
            onClick = function()
              activity.newActivity("main62", { replyID_1, true })
            end
          },
          lss = ls .. "#",
          tznc1 = name,
          text = setStringBuilder(text1),
          time = time1,
          tztx1 = {
            src = icon1,
            onClick = function(v)
              intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
              intent.putExtra("uidd1", UID3_1);
              path = activity.getLuaDir() .. "/main15.lua"
              intent.setData(Uri.parse("file://" .. path));
              activity.startActivity(intent,
                ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
            end
          }
        })
      end

      call("updateUI1")
    elseif sid1 == "6" then
      call("updateUI", Rnum, Rtext, Rtime, Rname, Ricon, Cicon, Cname, Price, code_uid, code_id, UID)

      tab = {}
      tab["icon"] = Ricon
      tab["name"] = Rname
      tab["time"] = Rtime
      tab["text"] = Rtext
      tab["id"] = replyID

      call("addTAB", tab)

      call("updateUI1")
    else
      SnackerBar.build()
          :msg(getLS("L_No_more"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
    call("updateUI3")
  end)
end

adp = LuaAdapter(activity, items)
list.setAdapter(adp)

comment_load.setVisibility(View.VISIBLE)
button.setVisibility(View.GONE)
comment.setVisibility(View.GONE)

sxlist.setColorSchemeColors({ tonumber(bjzt()) });
sxlist.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  task(500, function()
    adp = LuaAdapter(activity, items)
    list.setAdapter(adp)
    page = 0
    page1 = 1
    ls = 0
    thread(sx, page1, replyID, url, ls)
    sxlist.setRefreshing(false);
  end)
end })

thread(sx, page1, replyID, url, ls)

butt.onClick = function()
  activity.newActivity("main63", { tab, LZL })
end

function onResult(name, ...)
  a = ...
  if a == "ok" then
    adp = LuaAdapter(activity, items)
    list.setAdapter(adp)
    page = 0
    page1 = 1
    sxlist.setRefreshing(false);
    ls = 0
    thread(sx, page1, replyID, url, ls)
  end
end

import "android.view.animation.*"
import "android.view.animation.Animation$AnimationListener"

list.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list.getLastVisiblePosition() == list.getCount() - 1 then
      if page == 0 then
        page = 1
        page1 = page1 + 1
        sxlist.setRefreshing(true);
        thread(sx, page1, replyID, url, ls)
      end
    end
    if list.getLastVisiblePosition() == list.getCount() - 1 then
      if button.getVisibility() == View.GONE then
      else
        button.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 0.0, 1, 0.5, 1, 0.5).setDuration(200).setAnimationListener(
        AnimationListener {
          onAnimationEnd = function()
            button.setVisibility(View.GONE)
          end }))
      end
    else
      if button.getVisibility() == View.GONE then
        button.setVisibility(View.VISIBLE)
        button.startAnimation(ScaleAnimation(0.0, 1.0, 0.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      else
      end
    end
  end }

view_code.onClick = function()
  activity.newActivity("main12", { code_id, code_uid })
end
