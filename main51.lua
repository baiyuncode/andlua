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

layout = {
  ScrollView,
  backgroundColor = AndLuaB,
  {
    LinearLayout,
    orientation = "vertical",
    layout_height = "fill",
    layout_width = "fill",
    {
      CardView,
      layout_marginTop = "8dp",
      layout_height = "-2",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        EditText,
        layout_marginBottom = "-3dp",
        layout_height = "-1",
        gravity = "top",
        textColor = TitleColor,
        layout_marginLeft = "3dp",
        layout_marginRight = "3dp",
        textSize = "15sp",
        hint = getLS("L_The_target_address"),
        layout_width = "-1",
        background = "0",
        id = "posturl",
        layout_marginTop = "-3dp",
      },
    },
    {
      CardView,
      layout_marginTop = "8dp",
      layout_height = "-2",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        EditText,
        layout_marginBottom = "-3dp",
        layout_height = "-1",
        gravity = "top",
        textColor = TitleColor,
        layout_marginLeft = "3dp",
        layout_marginRight = "3dp",
        textSize = "15sp",
        hint = getLS("L_POST_data"),
        layout_width = "-1",
        background = "0",
        id = "posturl1",
        layout_marginTop = "-3dp",
      },
    },
    {
      CardView,
      layout_marginTop = "8dp",
      layout_height = "-2",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        EditText,
        layout_marginBottom = "-3dp",
        layout_height = "-1",
        gravity = "top",
        textColor = TitleColor,
        layout_marginLeft = "3dp",
        layout_marginRight = "3dp",
        textSize = "15sp",
        hint = getLS("L_Content_encoding"),
        layout_width = "-1",
        background = "0",
        id = "bm",
        text = "UTF-8",
        layout_marginTop = "-3dp",
      },
    },
    {
      CardView,
      layout_height = "35dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_marginTop = "8dp",
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        Button,
        id = "tj",
        layout_height = "-1",
        layout_margin = "-20dp",
        layout_width = "-1",
        text = "POST",
        textColor = "#FFFFFF",
        backgroundColor = tonumber(bjzt()),
      },
    },
    {
      CardView,
      layout_height = "35dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_marginTop = "8dp",
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        Button,
        id = "tj1",
        layout_height = "-1",
        layout_margin = "-20dp",
        layout_width = "-1",
        text = "GET",
        textColor = "#FFFFFF",
        backgroundColor = tonumber(bjzt()),
      },
    },
    {
      CardView,
      layout_height = "35dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_marginTop = "8dp",
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        Button,
        id = "tj11",
        layout_height = "-1",
        layout_margin = "-20dp",
        layout_width = "-1",
        text = "Browser mode",
        textColor = "#FFFFFF",
        backgroundColor = tonumber(bjzt()),
      },
    },
    {
      CardView,
      layout_height = "35dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_marginTop = "8dp",
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        Button,
        id = "tj3",
        layout_height = "-1",
        layout_margin = "-20dp",
        layout_width = "-1",
        text = getLS("L_Fill_the_beginning"),
        textColor = "#FFFFFF",
        backgroundColor = tonumber(bjzt()),
      },
    },
    {
      CardView,
      layout_height = "35dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_marginTop = "8dp",
      layout_width = "-1",
      layout_marginRight = "8dp",
      elevation = "0dp",
      layout_marginLeft = "8dp",
      {
        Button,
        id = "tj4",
        layout_height = "-1",
        layout_margin = "-20dp",
        layout_width = "-1",
        text = getLS("L_A_key_to_empty"),
        textColor = "#FFFFFF",
        backgroundColor = tonumber(bjzt()),
      },
    },
    {
      CardView,
      layout_margin = "8dp",
      elevation = "0dp",
      layout_height = "-1",
      layout_width = "-1",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          TextView,
          textIsSelectable = true,
          hint = getLS("L_Information_output") .. "...",
          layout_margin = "8dp",
          textColor = TitleColor,
          layout_height = "-1",
          id = "sc",
          layout_width = "-1",
        },
        {
          ImageView,
          src = "res/Metrial175.png",
          id = "j2",
          layout_marginRight = "5dp",
          layout_alignParentRight = "true",
          colorFilter = "#656565",
          layout_height = "23dp",
          layout_marginTop = "5dp",
          layout_width = "23dp",
        },
      },
    },
  },
};
ztt()
ztl()
activity.setContentView(loadlayout(layout))

tj.onClick = function()
  sc.Text = ""
  Http.post(posturl.Text, posturl1.Text, bm.Text, function(a1, b1, c1, d1)
    sc.setText(b1)
    u1 = activity.getLuaDir() .. "/res/str1"
    u11 = activity.getLuaDir() .. "/res/str2"
    u111 = activity.getLuaDir() .. "/res/str3"
    u1111 = activity.getLuaDir() .. "/res/str4"
    io.open(u1, "w"):write(posturl.Text):close()
    io.open(u11, "w"):write(posturl1.Text):close()
    io.open(u111, "w"):write(bm.Text):close()
    io.open(u1111, "w"):write(sc.Text):close()
  end)
end

tj1.onClick = function()
  sc.Text = ""
  Http.get(posturl.Text, bm.Text, function(a1, b1, c1, d1)
    sc.setText(b1)
    u1 = activity.getLuaDir() .. "/res/str1"
    u11 = activity.getLuaDir() .. "/res/str2"
    u111 = activity.getLuaDir() .. "/res/str3"
    u1111 = activity.getLuaDir() .. "/res/str4"
    io.open(u1, "w"):write(posturl.Text):close()
    io.open(u11, "w"):write(posturl1.Text):close()
    io.open(u111, "w"):write(bm.Text):close()
    io.open(u1111, "w"):write(sc.Text):close()
  end)
end

function getHtml(url)
  layoutdig = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      LuaWebView,
      id = "gh",
      layout_weight = "fill",
      layout_height = "fill",
    },
  };
  dh = AlertDialog.Builder(this)
      .setTitle("")
      .setView(loadlayout(layoutdig))
  gh.getSettings().setJavaScriptEnabled(true)
  gh.loadUrl(tostring(url))
  gh.setWebViewClient {
    shouldOverrideUrlLoading = function(view, url)
    end,
    onPageStarted = function(view, url, favicon)
    end,
    onPageFinished = function(view, url)
      gh.evaluateJavascript(
      "function getSource(){return \"<html>\"+document.getElementsByTagName('html')[0].innerHTML+\"</html>\";};getSource();",
        {
          onReceiveValue = function(result)
            result = result:gsub("%%", "%%;"):gsub("\\\\n", "%%n"):gsub("\\n", "\n"):gsub("%%n", "\\n"):gsub("%%;", "%%")
            :gsub("\\u003C", "<"):gsub("\\\"", "\""):gsub("^\"", ""):gsub("\"$", "")
            sc.setText(result)
            u1 = activity.getLuaDir() .. "/res/str1"
            u11 = activity.getLuaDir() .. "/res/str2"
            u111 = activity.getLuaDir() .. "/res/str3"
            u1111 = activity.getLuaDir() .. "/res/str4"
            io.open(u1, "w"):write(posturl.Text):close()
            io.open(u11, "w"):write(posturl1.Text):close()
            io.open(u111, "w"):write(bm.Text):close()
            io.open(u1111, "w"):write(sc.Text):close()
          end
        })
    end }
end

tj3.onClick = function()
  posturl.setText("http://")
end

tj11.onClick = function()
  sc.Text = ""
  getHtml(posturl.Text)
end

tj4.onClick = function()
  sc.setText("")
  posturl.setText("")
  posturl1.setText("")
  u1 = activity.getLuaDir() .. "/res/str1"
  u11 = activity.getLuaDir() .. "/res/str2"
  u1111 = activity.getLuaDir() .. "/res/str4"
  io.open(u1, "w"):write(""):close()
  io.open(u11, "w"):write(""):close()
  io.open(u1111, "w"):write(""):close()
end

u1 = activity.getLuaDir() .. "/res/str1"
u2 = io.open(u1):read("*a")
u11 = activity.getLuaDir() .. "/res/str2"
u22 = io.open(u11):read("*a")
u111 = activity.getLuaDir() .. "/res/str3"
u222 = io.open(u111):read("*a")
u1111 = activity.getLuaDir() .. "/res/str4"
u2222 = io.open(u1111):read("*a")

posturl.setText(u2)
posturl1.setText(u22)
bm.setText(u222)
sc.setText(u2222)

j2.onClick = function()
  activity.newActivity("main26", { getLS("L_View_the_source_code"), sc.Text })
end

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
      text = getLS("L_Simulation_to_submit_1"),
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
