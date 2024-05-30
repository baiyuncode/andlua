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
  id = "ViewNight_lay1",
  layout_width = "fill",
  {
    RelativeLayout,
    layout_width = "match_parent",
    id = "jz7",
    Visibility = 8,
    {
      CardView,
      layout_width = "fill",
      elevation = "0dp",
      layout_margin = "8dp",
      radius = AndLuaR,
      backgroundColor = AndLuaB1,
      id = "shux",
      {
        RelativeLayout,
        layout_width = "match_parent",
        {
          ImageView,
          scaleType = "fitXY",
          id = "tp",
          layout_marginTop = "20dp",
          layout_height = "55dp",
          src = "icon",
          layout_centerHorizontal = "true",
          layout_width = "55dp",
        },
        {
          TextView,
          text = Title,
          id = "mc",
          layout_marginTop = "5dp",
          layout_below = "tp",
          layout_marginBottom = "20dp",
          text = "AndLua+",
          layout_centerHorizontal = "true",
          textColor = TitleColor,
          --Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
        },
      },
    },
    {
      CardView,
      layout_width = "match_parent",
      radius = AndLuaR,
      layout_marginRight = "8dp",
      layout_marginLeft = "8dp",
      layout_marginBottom = "8dp",
      backgroundColor = AndLuaB1,
      layout_below = "shux",
      elevation = "0dp",
      id = "lll",
      {
        LinearLayout,
        layout_height = "fill",
        layout_marginRight = "5dp",
        orientation = "vertical",
        layout_marginLeft = "5dp",
        layout_marginBottom = "5dp",
        layout_width = "fill",
        {
          CheckBox,
          gravity = "right|center",
          layout_width = "match_parent",
          textColor = TitleColor,
          text = getLS("L_Other_users_to_download_is_forbidden"),
          paddingRight = "8dp",
          id = "jz1",
        },
        {
          CheckBox,
          gravity = "right|center",
          layout_width = "match_parent",
          textColor = TitleColor,
          text = getLS("L_To_ban_other_users_to_view"),
          paddingRight = "8dp",
          id = "jz2",
        },
        {
          CheckBox,
          gravity = "right|center",
          layout_width = "match_parent",
          textColor = TitleColor,
          text = getLS("L_Set_the_password_to_download"),
          paddingRight = "8dp",
          id = "jz3",
        },
        {
          EditText,
          gravity = "right|center",
          layout_marginRight = "8dp",
          hint = getLS("L_Set_the_download_password"),
          background = "0",
          textColor = TitleColor,
          textSize = "14sp",
          layout_width = "-1",
          id = "xzmm",
        },
        {
          CheckBox,
          gravity = "right|center",
          layout_width = "match_parent",
          textColor = TitleColor,
          text = getLS("L_Set_the_downloads"),
          paddingRight = "8dp",
          id = "jz5",
        },
        {
          EditText,
          gravity = "right|center",
          layout_marginRight = "8dp",
          hint = getLS("L_Please_input_the_price"),
          background = "0",
          textSize = "14sp",
          textColor = TitleColor,
          layout_width = "-1",
          id = "ffjg",
        },
      },
    },
  },
  {
    ProgressBar,
    id = "jz",
    layout_centerInParent = "true",
  },
};

activity.setContentView(loadlayout(main10))

ViewNight(ViewNight_lay1)

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
      text = getLS("L_Source_permissions"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "jjk",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial50.png",
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

zzid, ud3 = ...

bw(jjk, 0x5FFFFFFF)
jjk.onClick = function()
  oo = false
  if jz3.isChecked() == true then
    if xzmm.Text == "" then
      SnackerBar.build()
          :msg(getLS("L_Please_download_the_password"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif #xzmm.Text >= 30 then
      SnackerBar.build()
          :msg(getLS("L_The_password_is_too_long"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif xzmm.Text == "Do not set password" then
      SnackerBar.build()
          :msg(getLS("L_Ban_the_word"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
      oo = true
    end
  else
    oo = true
  end
  oo1 = false
  if jz5.isChecked() == true then
    txl = string.sub(ffjg.Text, 0, 1)
    txl1 = string.sub(ffjg.Text, -1, -1)
    bbbb, cccc = string.gsub(ffjg.Text, "%.", ".")
    if ffjg.Text == "" then
      SnackerBar.build()
          :msg(getLS("L_Please_set_the_price"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif txl == "." then
      SnackerBar.build()
          :msg(getLS("L_Amount_of_error"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif txl1 == "." then
      SnackerBar.build()
          :msg(getLS("L_Amount_of_error"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif cccc >= 2 then
      SnackerBar.build()
          :msg(getLS("L_Amount_of_error"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif #ffjg.Text > 5 then
      SnackerBar.build()
          :msg(getLS("L_Amount_is_too_large"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif string.format("%.2f", ffjg.Text) < tostring(0.10) then
      SnackerBar.build()
          :msg(getLS("L_The_lowest_price_of"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
      oo1 = true
    end
  else
    oo1 = true
  end
  if oo == true then
    if oo1 == true then
      uguid()
      s1 = "0"
      s2 = "0"
      if jz1.isChecked() then
        s1 = "1"
      end
      if jz2.isChecked() then
        s2 = "1"
      end
      if ffjg.Text == "" then
        PA = "0"
      else
        PA = tostring(string.format("%.2f", ffjg.Text))
      end
      Http.post("https://ly250.cn/andlua/ymqx.php",
        "uid1=" ..
        uid1 ..
        "&uid2=" ..
        uid2 .. "&uid3=" ..
        uid3 .. "&ymid=" .. ud3 .. "&s1=" .. s1 .. "&s2=" .. s2 .. "&pass=" .. xzmm.Text .. "&money=" ..
        PA .. "&sid=" .. sid(), function(a1, hb, c, d)
          sid1 = hb:match('%["ret"] = "(.-)%";')
          if sid1 == "1" then
            SnackerBar.build()
                :msg(getLS("L_For_failure"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          elseif sid1 == "4" then
            SnackerBar.build()
                :msg(getLS("L_Identity_expired"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          elseif sid1 == "ok" then
            activity.finish()
          end
        end)
    end
  end
end

uguid()
Http.post("https://ly250.cn/andlua/getqx.php",
  "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid33=" .. zzid .. "&id=" .. ud3 .. "&sid=" .. sid(),
  function(a1, hb, c, d)
    sid1 = hb:match('%["ret"] = "(.-)%";')
    if sid1 == "1" then
      SnackerBar.build()
          :msg(getLS("L_For_failure"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "4" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "ok" then
      jz.Visibility = 8
      jz7.Visibility = 0
      mz = hb:match('%["name"] = "(.-)%";')
      tb = hb:match('%["icon"] = "(.-)%";')
      jzxz = hb:match('%["jzxz"] = "(.-)%";')
      jzck = hb:match('%["jzck"] = "(.-)%";')
      pass = hb:match('%["pass"] = "(.-)%";')
      mon = hb:match('%["money"] = "(.-)%";')
      if pass != "Do not set password" and pass != "" then
        xzmm.setVisibility(View.VISIBLE)
        xzmm.Text = pass
        jz3.setChecked(true)
      end
      if mon != "0" and mon != "" then
        ffjg.setVisibility(View.VISIBLE)
        ffjg.Text = mon
        jz5.setChecked(true)
      end
      mc.Text = mz
      tp.setImageBitmap(loadbitmap(tb))
      if jzck == "1" then
        jz2.setChecked(true)
      end
      if jzxz == "1" then
        jz1.setChecked(true)
      end
    end
  end)

jz1.onClick = function()
  if jz1.isChecked() then
    jz5.setChecked(false)
    ffjg.setVisibility(View.GONE)
    ffjg.Text = ""
  else
  end
end

jz2.onClick = function()
  if jz2.isChecked() then
    jz5.setChecked(false)
    ffjg.setVisibility(View.GONE)
    ffjg.Text = ""
  else
  end
end

jz3.onClick = function()
  if jz3.isChecked() then
    jz5.setChecked(false)
    ffjg.setVisibility(View.GONE)
    ffjg.Text = ""
    xzmm.setVisibility(View.VISIBLE)
  else
    xzmm.setVisibility(View.GONE)
    xzmm.Text = ""
  end
end

jz5.onClick = function()
  if jz5.isChecked() then
    AlertDialog.Builder(this)
        .setTitle(getLS("L_Prompt"))
        .setCancelable(false)
        .setMessage([[1.价格最低0.10元起。
2.用户每次下载都要支付一次费用。
3.用户付费后你将获得付费金额的95%收益。
4.禁止发布欺骗用户、色情、赌博、外挂等违规源码。
5.外挂、违规等源码收益系统直接没收，一律不给予提现。
]])
        .setPositiveButton(getLS("L_Agree_and_continue_to_release"), nil)
        .setNegativeButton(getLS("L_Donot_agree_to_quit"), {
          onClick = function(v)
            activity.finish()
          end
        })
        .show()
    ffjg.setVisibility(View.VISIBLE)
    jz1.setChecked(false)
    jz2.setChecked(false)
    jz3.setChecked(false)
    xzmm.setVisibility(View.GONE)
    xzmm.Text = ""
  else
    ffjg.setVisibility(View.GONE)
    ffjg.Text = ""
  end
end

xzmm.setVisibility(View.GONE)
ffjg.setVisibility(View.GONE)

import "android.text.InputType"
import "android.text.method.DigitsKeyListener"
ffjg.setKeyListener(DigitsKeyListener.getInstance("0123456789."))
