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
import "android.text.Html"
import "android.text.Html"
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
import "mods.lay"
import "android.graphics.Color"
import "android.support.v4.widget.*"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
ztt()
result = 0;
resourceId = this.getResources().getIdentifier("status_bar_height", "dimen", "android");
if resourceId > 0 then
  result = this.getResources().getDimensionPixelSize(resourceId);
end
main = {
  LinearLayout,
  layout_width = "fill",
  id = "lpp",
  orientation = "vertical",
  layout_height = "fill",
  {
    LinearLayout,
    layout_width = "fill",
    elevation = "1dp",
    layout_marginTop = result,
    layout_height = "55dp",
    backgroundColor = "0x00ffffff",
    orientation = "horizontal",
    {
      LinearLayout,
      layout_width = "55dp",
      gravity = "center",
      id = "Sideslip",
      layout_height = "55dp",
      {
        ImageView,
        layout_height = "25dp",
        colorFilter = "0xffffffff",
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
        text = getLS("L_Personal_information"),
        textColor = "0xffffffff",
        id = "bt",
        singleLine = true,
      },
    },
    {
      LinearLayout,
      layout_width = "55dp",
      gravity = "center",
      id = "menu1",
      layout_height = "55dp",
      Visibility = 8,
      layout_marginRight = "0dp",
      {
        ImageView,
        layout_height = "22dp",
        colorFilter = 0xffffffff,
        layout_width = "25dp",
        src = "res/ic_xiepinglun_white_18dp.png",
      },
    },
  },

  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      RelativeLayout,
      layout_width = "-1",
      backgroundColor = "0x00ffffff",
      id = "snsh",
      elevation = "2dp",
      layout_height = "20%h",
      {
        CircleImageView,
        layout_width = "60dp",
        layout_marginLeft = "25dp",
        transitionName = "tx1io",
        id = "tx34",
        layout_centerVertical = "true",
        layout_height = "60dp",
        src = "res/tx.png",
      },
      {
        TextView,
        layout_centerVertical = "true",
        layout_height = "0dp",
        id = "n",
      },
      {
        TextView,
        layout_above = "n",
        layout_centerVertical = "true",
        layout_marginLeft = "15dp",
        textColor = "0xffffffff",
        id = "nc3",
        textSize = "17sp",
        text = getLS("L_Nickname"),
        Typeface = Typeface.defaultFromStyle(Typeface.BOLD),
        layout_toRightOf = "tx34",
      },
      {
        CardView,
        Elevation = "0dp",
        layout_above = "n",
        layout_toRightOf = "nc3",
        layout_marginBottom = "3dp",
        backgroundColor = "0xff1fa8fd",
        id = "m4",
        Visibility = View.GONE,
        layout_marginLeft = "8dp",
        radius = "2dp",
        {
          TextView,
          textColor = "0xffffffff",
          layout_marginBottom = "1dp",
          --Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
          layout_marginTop = "1dp",
          id = "chh",
          layout_marginLeft = "10dp",
          background = "0",
          textSize = "10sp",
          layout_marginRight = "10dp",
        },
      },
      {
        CardView,
        Elevation = "0dp",
        layout_below = "n",
        layout_marginTop = "7dp",
        layout_toRightOf = "tx34",
        id = "m1",
        backgroundColor = "0xff8e8e8e",
        layout_marginLeft = "15dp",
        radius = "8dp",
        {
          TextView,
          textColor = "0xffffffff",
          layout_marginBottom = "1dp",
          Typeface = Typeface.defaultFromStyle(Typeface.BOLD),
          text = "Lv.1",
          layout_marginTop = "1dp",
          id = "djj",
          layout_marginLeft = "9dp",
          background = "0",
          textSize = "10sp",
          layout_marginRight = "10dp",
        },
      },
      {
        CardView,
        Elevation = "0dp",
        layout_below = "n",
        layout_marginTop = "7dp",
        layout_toRightOf = "m1",
        id = "m2",
        backgroundColor = "0xff1b5689",
        layout_marginLeft = "8dp",
        radius = "8dp",
        {
          TextView,
          textColor = "0xffffffff",
          layout_marginBottom = "1dp",
          Typeface = Typeface.defaultFromStyle(Typeface.BOLD),
          text = "♀",
          layout_marginTop = "1dp",
          id = "nl",
          layout_marginLeft = "10dp",
          background = "0",
          textSize = "10sp",
          layout_marginRight = "10dp",
        },
      },
      {
        CardView,
        Elevation = "0dp",
        layout_below = "n",
        layout_marginTop = "7dp",
        layout_toRightOf = "m2",
        id = "m3",
        backgroundColor = "0x35000000",
        layout_marginLeft = "8dp",
        radius = "8dp",
        {
          TextView,
          textColor = "0xffffffff",
          layout_marginBottom = "1dp",
          Typeface = Typeface.defaultFromStyle(Typeface.BOLD),
          text = getLS("L_Active"),
          layout_marginTop = "1dp",
          id = "nll",
          layout_marginLeft = "10dp",
          background = "0",
          textSize = "10sp",
          layout_marginRight = "10dp",
        },
      },
    },
    {
      RelativeLayout,
      layout_width = "-1",
      layout_below = "snsh",
      backgroundColor = "0x80ffffff",
      layout_height = "80dp",
      id = "itcj",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          RelativeLayout,
          layout_width = "33%w",
          layout_height = "-1",
          id = "uuu",
          {
            TextView,
            layout_width = "0dp",
            layout_centerVertical = "true",
            layout_height = "0dp",
            id = "uu1",
          },
          {
            TextView,
            layout_below = "uu1",
            layout_centerHorizontal = "true",
            text = getLS("L_Post_0"),
            textColor = "#646464",
          },
          {
            TextView,
            layout_centerHorizontal = "true",
            id = "mytz",
            textColor = "#000000",
            text = "0",
            layout_above = "uu1",
          },
          {
            TextView,
            layout_width = "2px",
            layout_alignParentRight = "true",
            background = "#ffffff",
            layout_marginTop = "25dp",
            layout_height = "-1",
            layout_marginBottom = "25dp",
          },
          {
            Button,
            layout_width = "-1",
            style = "?android:attr/buttonBarButtonStyle",
            layout_height = "-1",
            id = "h5",
            layout_margin = "-20dp",
          },
        },
        {
          RelativeLayout,
          layout_width = "33%w",
          layout_toRightOf = "uuu",
          layout_height = "-1",
          id = "uu4",
          {
            TextView,
            layout_width = "0dp",
            layout_centerVertical = "true",
            layout_height = "0dp",
            id = "uu2",
          },
          {
            TextView,
            layout_below = "uu2",
            layout_centerHorizontal = "true",
            text = getLS("L_The_source_code"),
            textColor = "#646464",
          },
          {
            TextView,
            layout_centerHorizontal = "true",
            id = "myym",
            textColor = "#000000",
            text = "0",
            layout_above = "uu2",
          },
          {
            TextView,
            layout_width = "2px",
            layout_alignParentRight = "true",
            background = "#ffffff",
            layout_marginTop = "25dp",
            layout_height = "-1",
            layout_marginBottom = "25dp",
          },
          {
            Button,
            layout_width = "-1",
            style = "?android:attr/buttonBarButtonStyle",
            layout_height = "-1",
            id = "h6",
            layout_margin = "-20dp",
          },
        },
        {
          RelativeLayout,
          layout_width = "-1",
          layout_toRightOf = "uu4",
          layout_height = "-1",
          id = "uu5",
          {
            TextView,
            layout_width = "0dp",
            layout_centerVertical = "true",
            layout_height = "0dp",
            id = "uu3",
          },
          {
            TextView,
            layout_below = "uu3",
            layout_centerHorizontal = "true",
            text = getLS("L_Reply"),
            textColor = "#646464",
          },
          {
            TextView,
            layout_centerHorizontal = "true",
            id = "myhf",
            textColor = "#000000",
            text = "0",
            layout_above = "uu3",
          },
          {
            Button,
            layout_width = "-1",
            style = "?android:attr/buttonBarButtonStyle",
            layout_height = "-1",
            id = "h7",
            layout_margin = "-20dp",
          },
        },
      },
    },
    {
      TextView,
      layout_width = "-1",
      background = "0",
      id = "hwhwh",
      layout_below = "itcj",
      layout_height = "10dp",
    },
    {
      RelativeLayout,
      layout_width = "-1",
      backgroundColor = "0x80ffffff",
      layout_below = "hwhwh",
      layout_height = "-2",
      id = "aaa1",
      {
        CardView,
        layout_width = "-2",
        layout_marginLeft = "10dp",
        id = "hg1",
        elevation = "1dp",
        layout_height = "17dp",
        layout_marginTop = "10dp",
        {
          LinearLayout,
          layout_width = "-1",
          layout_height = "-1",
          backgroundColor = tonumber(bjzt()),
          {
            TextView,
            layout_width = "-1",
            gravity = "center",
            text = getLS("L_Individuality_signature"),
            id = "aa2",
            textSize = "10sp",
            textColor = "0xffffffff",
            layout_height = "-1",
            layout_margin = "2dp",
          },
        },
      },
      {
        TextView,
        textSize = "12sp",
        id = "gx",
        textColor = "0xff646464",
        layout_below = "hg1",
        layout_marginLeft = "10dp",
        layout_marginBottom = "10dp",
        layout_marginRight = "15dp",
        layout_marginTop = "8dp",
        text = "这个人很懒，啥都没写！",
      },
    },
    {
      RelativeLayout,
      layout_width = "-1",
      layout_marginTop = "10dp",
      backgroundColor = "0x80ffffff",
      layout_below = "aaa1",
      layout_height = "-1",
      id = "ggk",
      {
        CardView,
        layout_width = "-1",
        layout_marginTop = "5dp",
        layout_height = "-1",
        layout_marginBottom = "5dp",
        background = "0",
        elevation = "0dp",
        {
          RelativeLayout,
          layout_width = "-1",
          layout_height = "-1",
          {
            CardView,
            layout_width = "-2",
            layout_marginLeft = "10dp",
            id = "hg",
            elevation = "1dp",
            layout_height = "17dp",
            layout_marginTop = "10dp",
            {
              LinearLayout,
              layout_width = "-1",
              layout_height = "-1",
              backgroundColor = tonumber(bjzt()),
              {
                TextView,
                layout_width = "-1",
                gravity = "center",
                text = getLS("L_The_latest_development_of"),
                id = "ti3tle",
                textSize = "10sp",
                textColor = "0xffffffff",
                layout_height = "-1",
                layout_margin = "2dp",
              },
            },
          },
          {
            TextView,
            textSize = "15sp",
            textColor = "0xff646464",
            id = "js",
            text = getLS("L_The_man_is_lazy"),
            layout_centerInParent = "true",
          },
          {
            YLListView,
            VerticalScrollBarEnabled = false,
            overScrollMode = 2,
            layout_width = "fill",
            id = "list1",
            layout_below = "hg",
            layout_marginTop = "10dp",
            layout_height = "fill",
            dividerHeight = "0",
          },
        },
      },
    },
  },
};

tzlb = {
  LinearLayout,
  layout_width = "fill",
  layout_height = "fill",
  backgroundColor = "0x00ffffff",
  orientation = "vertical",
  {
    CardView,
    layout_width = "-1",
    layout_marginLeft = "8dp",
    layout_marginRight = "8dp",
    backgroundColor = "0x00ffffff",
    layout_marginTop = "8dp",
    radius = "0dp",
    layout_marginBottom = "8dp",
    elevation = "0dp",
    {
      RelativeLayout,
      layout_width = "-1",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "40dp",
        layout_marginTop = "10dp",
        id = "b",
        {
          CircleImageView,
          layout_width = "45dp",
          layout_marginLeft = "10dp",
          id = "tztx",
          layout_height = "45dp",
          src = "res/tx.png",
          layout_centerVertical = "true",
        },
        {
          TextView,
          id = "tznc",
          text = "昵称",
          textSize = "14sp",
          layout_toRightOf = "tztx",
          layout_marginLeft = "10dp",
          ellipsize = "end",
          layout_marginTop = "2dp",
          textColor = "#000000",
        },
        {
          TextView,
          id = "tzrq",
          textColor = "0xff646464",
          layout_below = "tznc",
          layout_toRightOf = "tztx",
          text = "2000-1-1",
          ellipsize = "end",
          layout_marginLeft = "10dp",
          textSize = "12sp",
        },
      },
      {
        RelativeLayout,
        id = "bcl",
        layout_width = "-1",
        layout_marginTop = "10dp",
        layout_below = "b",
        {
          TextView,
          gravity = "start",
          layout_marginRight = "10dp",
          MaxLines = "2",
          textColor = "#000000",
          ellipsize = "end",
          layout_marginBottom = "5dp",
          layout_marginLeft = "10dp",
          layout_width = "-1",
          id = "tzbt",
          textSize = "16sp",
        },
        {
          TextView,
          background = "0",
          layout_below = "tzbt",
          layout_marginRight = "10dp",
          layout_width = "-1",
          layout_height = "1dp",
          layout_marginLeft = "10dp",
          id = "jkk",
        },
        {
          TextView,
          layout_width = "0dp",
          id = "uidd3",
          layout_height = "0dp",
        },
        {
          TextView,
          layout_width = "0dp",
          id = "uidd4",
          layout_height = "0dp",
        },
        {
          TextView,
          id = "tznr",
          layout_marginRight = "10dp",
          MaxLines = "5",
          textColor = "#646464",
          layout_width = "-1",
          ellipsize = "end",
          layout_marginLeft = "10dp",
          layout_marginBottom = "8dp",
          text = "",
          layout_below = "tzbt",
          layout_marginTop = "3dp",
          textSize = "14sp",
        },
      },
      {
        RelativeLayout,
        layout_marginBottom = "10dp",
        layout_below = "bcl",
        layout_width = "-1",
        {
          TextView,
          id = "lll",
          layout_alignParentRight = "true",
          text = "0",
          layout_marginRight = "15dp",
          layout_centerVertical = "true",
          textColor = "#646464",
          textSize = "13sp",
        },
        {
          ImageView,
          layout_width = "17dp",
          id = "gsd",
          colorFilter = "#646464",
          layout_marginRight = "5dp",
          layout_toLeftOf = "lll",
          layout_height = "18dp",
          src = "res/Metrial210.png",
          layout_centerVertical = "true",
        },
        {
          TextView,
          id = "hfl",
          text = "0",
          layout_marginRight = "10dp",
          layout_toLeftOf = "gsd",
          layout_centerVertical = "true",
          textColor = "#646464",
          textSize = "13sp",
        },
        {
          ImageView,
          layout_width = "15dp",
          colorFilter = "#646464",
          layout_marginRight = "5dp",
          layout_toLeftOf = "hfl",
          layout_height = "16dp",
          src = "res/Metrial314.png",
          layout_centerVertical = "true",
        },
      },
    },
  },
};

activity.setContentView(loadlayout(main))
ztt()
function bw2(id, ys)
  import "android.content.res.ColorStateList"
  local attrsArray = { android.R.attr.selectableItemBackgroundBorderless }
  local typedArray = activity.obtainStyledAttributes(attrsArray)
  ripple = typedArray.getResourceId(0, 0)
  aoos = activity.Resources.getDrawable(ripple)
  aoos.setColor(ColorStateList(int[0].class { int {} }, int { 0x30EEEEEE }))
  id.setBackground(aoos.setColor(ColorStateList(int[0].class { int {} }, int { 0x30EEEEEE })))
end

bw2(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finishAfterTransition()
end

bw2(menu1, 0x5FFFFFFF)
menu1.onClick = function()
  uguid()
  activity.newActivity("main20", { uid3 })
end
intent = Intent(activity.getIntent())
uid3 = intent.getStringExtra("uidd1");
uid3Pro = ""

if uid3 == nil then
  uid3, uid3Pro = ...
end

if uid3Pro == true then
  uid3Pro = "true"
else
  uid3Pro = "false"
end

Http.post("https://ly250.cn/andlua/taxx.php", "uid3=" .. uid3 .. "&pro=" .. uid3Pro .. "&sid=" .. sid(),
  function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      hfl = b:match('%["myhf"] = "(.-)%";')
      ftl = b:match('%["myt"] = "(.-)%";')
      yml = b:match('%["myym"] = "(.-)%";')
      nc = b:match('%["name"] = "(.-)%";')
      tx = b:match('%["src"] = "(.-)%";')
      xb = b:match('%["xb"] = "(.-)%";')
      gxqm = b:match('%["gxqm"] = "(.-)%";')
      active = b:match('%["active"] = "(.-)%";')
      dj = tointeger(b:match('%["dj"] = "(.-)%";'))
      csrq = b:match('%["csrq"] = "(.-)%";')
      xb = b:match('%["xb"] = "(.-)%";')
      ch = b:match('%["ch"] = "(.-)%";')
      chys = b:match('%["chys"] = "(.-)%";')
      background1 = b:match('%["background"] = "(.-)%";')
      if ch != "0" then
        m4.setVisibility(View.VISIBLE)
        chh.setText(ch)
        m4.backgroundColor = tointeger(chys)
      end
      if background1 == "0" then
        lpp.setBackground(luajava.bindClass("android.graphics.drawable.BitmapDrawable")(loadbitmap("res/background.jpg")))
      else
        lpp.setBackground(luajava.bindClass("android.graphics.drawable.BitmapDrawable")(loadbitmap(background1)))
      end
      djj.setText("Lv." .. dj)
      if active == "0" then
        active = "2018-08-25 12:00"
      end
      if xb == "男" then
        xb = "♀ "
      else
        xb = "♂ "
        m2.backgroundColor = 0xfff452a2
      end
      nll.setText(Time.getTimeRange(active .. ":00") .. "活跃")
      if dj >= 0 and dj <= 5 then
        ab = 0xff8e8e8e
      elseif dj >= 6 and dj <= 15 then
        ab = 0xff66b365
      elseif dj >= 16 and dj <= 30 then
        ab = 0xff5385b8
      elseif dj >= 31 and dj <= 50 then
        ab = 0xffbc6cc5
      elseif dj >= 51 and dj <= 70 then
        ab = 0xffe85a71
      elseif dj >= 71 then
        ab = 0xff6C49B8
      end
      nl.setText(xb .. csrq)
      m1.backgroundColor = ab
      nc3.setText(nc)
      myhf.setText(hfl)
      mytz.setText(ftl)
      myym.setText(yml)
      gx.setText(gxqm)
      tx34.setImageBitmap(loadbitmap(tx))
      tx34.onClick = function(v)
        intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
        intent.putExtra("tx", tx);
        path = activity.getLuaDir() .. "/main28.lua"
        intent.setData(Uri.parse("file://" .. path));
        activity.startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
      end
      Http.post("https://ly250.cn/andlua/tatz.php", "uid3=" .. uid3 .. "&page=1&sid=" .. sid(), function(a1, b, c, d)
        sid1 = b:match('%["ret"] = "(.-)%";')
        if sid1 == "ok" then
          nr2 = b:gmatch('%["text"] = "(.-)%";')
          uid33 = b:gmatch('%["uid3"] = "(.-)%";')
          uid44 = b:gmatch('%["uid4"] = "(.-)%";')
          tx2 = b:gmatch('%["src"] = "(.-)%";')
          nc1 = b:gmatch('%["name"] = "(.-)%";')
          sj1 = b:gmatch('%["time"] = "(.-)%";')
          lll = b:gmatch('%["lll"] = "(.-)%";')
          hfl = b:gmatch('%["hfl"] = "(.-)%";')
          bq2 = b:gmatch('%["bq"] = "(.-)%";')
          for bt2 in b:gmatch('%["title"] = "(.-)%";') do
            nr3 = nr2()
            tx3 = tx2()
            nc2 = nc1()
            ud3 = uid33()
            ud4 = uid44()
            sj2 = sj1()
            lll1 = lll()
            bq1 = bq2()
            hfl1 = hfl()
            bt4 = "<font color='" ..
            "#" ..
            tostring(tostring(bjzt1()):match("0xFF(.+)")) ..
            "" .. "'>" .. bq1 .. "&nbsp;" .. "</font><font color='#333333'>" .. bt2 .. "</font>";
            adp4.add { tzbt = { Text = Html.fromHtml(bt4) }, tznr = nr3, tztx = tx3, tznc = nc2, tzrq = sj2, lll = lll1, hfl =
            hfl1, uidd3 = ud3, uidd4 = ud4 }
          end
          js.setText("")
        else
          js.setText(getLS("L_The_man_is_lazy"))
        end
      end)
    else
      SnackerBar.build()
          :msg(getLS("L_For_failure"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
  end)
adp4 = LuaAdapter(activity, tzlb)
list1.setAdapter(adp4)
list1.onItemClick = function(l, v, p, i)
  activity.newActivity("main8", { v.Tag.uidd3.Text, v.Tag.uidd4.Text })
end


h5.onClick = function()
  activity.newActivity("main17", { uid3, "1" })
end
h6.onClick = function()
  activity.newActivity("main18", { uid3, "1" })
end
h7.onClick = function()
  activity.newActivity("main19", { uid3, "1" })
end

activity.ActionBar.hide()

window = activity.getWindow();
window.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN | View.SYSTEM_UI_FLAG_LAYOUT_STABLE);
window.setStatusBarColor(Color.TRANSPARENT);

djj.getPaint().setTextSkewX(-0.1)

uid33 = uid3

uguid()
if uid33 == uid3 then
  menu1.Visibility = 0
end

uid3 = uid33
