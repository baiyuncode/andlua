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
import "bmob"
b = bmob("73669056f163f1e66a6deed81dff6e50", "8a2770b0663035f18c9e4260711873b8")
ztt()
main10 = {
  RelativeLayout,
  layout_height = "fill",
  layout_width = "fill",
  id = "ViewNight_lay1",
  backgroundColor = AndLuaB1,
  {
    LinearLayout,
    orientation = "vertical",
    Visibility = 8,
    id = "zbb",
    layout_width = "fill",
    layout_height = "fill",
    {
      RelativeLayout,
      layout_width = "-1",
      backgroundColor = AndLuaB,
      layout_height = "-1",
      {
        RelativeLayout,
        layout_width = "-1",
        backgroundColor = AndLuaB1,
        id = "txx",
        layout_height = "60dp",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_Head_portrait"),
          layout_centerVertical = "true",
        },
        {
          CircleImageView,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          id = "tx",
          layout_width = "45dp",
          layout_height = "45dp",
          layout_marginRight = "15dp",
          src = "res/tx.png",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h1",
        },
      },
      {
        RelativeLayout,
        layout_width = "-1",
        layout_below = "txx",
        backgroundColor = AndLuaB1,
        layout_marginTop = "1dp",
        id = "background2",
        layout_height = "60dp",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_Personal_home_page_background"),
          layout_centerVertical = "true",
        },
        {
          CardView,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_width = "45dp",
          layout_height = "45dp",
          elevation = "0dp",
          layout_marginRight = "15dp",
          radius = "5dp",
          {
            ImageView,
            id = "background1",
            layout_width = "-1",
            background = "res/background.jpg",
            layout_height = "-1",
            scaleType = "center",
          },
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h188",
        },
      },
      {
        RelativeLayout,
        id = "y222",
        backgroundColor = AndLuaB1,
        layout_marginTop = "10dp",
        layout_below = "background2",
        layout_height = "45dp",
        layout_width = "-1",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_The_balance_RMB"),
          layout_centerVertical = "true",
        },
        {
          TextView,
          textColor = TitleColor1,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_marginRight = "15dp",
          text = "￥0",
          id = "nn222",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h222",
        },
      },
      {
        RelativeLayout,
        backgroundColor = AndLuaB1,
        id = "ll2",
        layout_marginTop = "1dp",
        layout_below = "y222",
        layout_height = "45dp",
        layout_width = "-1",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_Withdrawal"),
          layout_centerVertical = "true",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "hll2",
        },
      },
      {
        RelativeLayout,
        backgroundColor = AndLuaB1,
        id = "ll20",
        layout_marginTop = "1dp",
        layout_below = "ll2",
        layout_height = "45dp",
        layout_width = "-1",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_Payment_code"),
          layout_centerVertical = "true",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "hll20",
        },
      },
      {
        RelativeLayout,
        backgroundColor = AndLuaB1,
        id = "ll3",
        layout_marginTop = "10dp",
        layout_below = "ll20",
        layout_height = "45dp",
        layout_width = "-1",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_Bill"),
          layout_centerVertical = "true",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "hll3",
        },
      },
      {
        RelativeLayout,
        id = "y2",
        backgroundColor = AndLuaB1,
        layout_marginTop = "10dp",
        layout_below = "ll3",
        layout_height = "45dp",
        layout_width = "-1",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_The_user_name"),
          layout_centerVertical = "true",
        },
        {
          TextView,
          textColor = TitleColor1,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_marginRight = "15dp",
          text = getLS("L_In_the_load"),
          id = "nc",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h2",
        },
      },
      {
        RelativeLayout,
        backgroundColor = AndLuaB1,
        id = "y3",
        layout_marginTop = "1dp",
        layout_below = "y2",
        layout_height = "45dp",
        layout_width = "-1",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_Gender"),
          layout_centerVertical = "true",
        },
        {
          TextView,
          textColor = TitleColor1,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_marginRight = "15dp",
          text = getLS("L_In_the_load"),
          id = "xb",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h3",
        },
      },
      {
        RelativeLayout,
        backgroundColor = AndLuaB1,
        id = "y4",
        layout_marginTop = "1dp",
        layout_below = "y3",
        layout_height = "45dp",
        layout_width = "-1",
        {
          TextView,
          textColor = TitleColor,
          textSize = "15sp",
          layout_marginLeft = "15dp",
          text = getLS("L_Birthday"),
          layout_centerVertical = "true",
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h4",
        },
        {
          TextView,
          textColor = TitleColor1,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_marginRight = "15dp",
          text = getLS("L_In_the_load"),
          id = "csrq",
        },
      },
      {
        RelativeLayout,
        id = "y5",
        backgroundColor = AndLuaB1,
        layout_marginTop = "1dp",
        layout_below = "y4",
        layout_width = "-1",
        layout_height = "45dp",
        {
          TextView,
          textColor = TitleColor,
          layout_centerVertical = "true",
          layout_marginLeft = "15dp",
          text = getLS("L_Registration_time"),
          textSize = "15sp",
        },
        {
          TextView,
          textColor = TitleColor1,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_marginRight = "15dp",
          MaxLines = "2",
          id = "zcsj",
          layout_marginLeft = "85dp",
          text = getLS("L_In_the_load"),
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h6",
        },
      },
      {
        RelativeLayout,
        id = "y6",
        backgroundColor = AndLuaB1,
        layout_marginTop = "10dp",
        layout_below = "y5",
        layout_width = "-1",
        layout_height = "45dp",
        {
          TextView,
          textColor = TitleColor,
          layout_centerVertical = "true",
          layout_marginLeft = "15dp",
          text = getLS("L_Individuality_signature"),
          textSize = "15sp",
        },
        {
          TextView,
          textColor = TitleColor1,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_marginRight = "15dp",
          MaxLines = "2",
          id = "gxqm",
          layout_marginLeft = "85dp",
          text = getLS("L_In_the_load"),
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h5",
        },
      },
      {
        RelativeLayout,
        id = "y7",
        backgroundColor = AndLuaB1,
        layout_marginTop = "10dp",
        layout_below = "y6",
        layout_width = "-1",
        layout_height = "45dp",
        {
          TextView,
          textColor = TitleColor,
          layout_centerVertical = "true",
          layout_marginLeft = "15dp",
          text = "UID",
          textSize = "15sp",
        },
        {
          TextView,
          textColor = TitleColor1,
          layout_alignParentRight = "true",
          layout_centerVertical = "true",
          layout_marginRight = "15dp",
          MaxLines = "2",
          id = "uidt",
          layout_marginLeft = "85dp",
          text = getLS("L_In_the_load"),
        },
        {
          Button,
          layout_width = "-1",
          style = "?android:attr/buttonBarButtonStyle",
          layout_height = "-1",
          layout_margin = "-10dp",
          id = "h55",
        },
      },
    },
  },
  {
    TextView,
    text = "",
    layout_width = "0dp",
    layout_height = "0dp",
    id = "txlj",
  },
  {
    TextView,
    text = "1",
    layout_width = "0dp",
    layout_height = "0dp",
    id = "jz",
  },
  {
    ProgressBar,
    id = "jzl",
    layout_centerInParent = "true",
  },
};

activity.setContentView(loadlayout(main10))

ViewNight(ViewNight_lay1)

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
      text = getLS("L_My_profile"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

function gxxx()
  uguid()
  Http.post("https://ly250.cn/andlua/xx.php", "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&sid=" .. sid(), function(a1, b, c,
                                                                                                                d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "4" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      jzl.setVisibility(View.VISIBLE)
      zbb.setVisibility(View.GONE)
    elseif sid1 == "ok" then
      jz.setText("2")
      tx1 = b:match('%["tx"] = "(.-)%";')
      nc1 = b:match('%["nc"] = "(.-)%";')
      gxqm1 = b:match('%["gxqm"] = "(.-)%";')
      xb1 = b:match('%["xb"] = "(.-)%";')
      cs = b:match('%["cs"] = "(.-)%";')
      csrq1 = b:match('%["csrq"] = "(.-)%";')
      payy1 = b:match('%["balance"] = "(.-)%";')
      zcsj1 = b:match('%["zcsj"] = "(.-)%";')
      background3 = b:match('%["background"] = "(.-)%";')
      uiddd = b:match('%["uid"] = "(.-)%";')
      uidt.Text = uiddd
      nn222.setText(payy1)
      nc.setText(nc1)
      zcsj.setText(zcsj1)
      xb.setText(xb1)
      txlj.setText(tx1)
      gxqm.setText(gxqm1)
      csrq.setText(csrq1)
      tx.setImageBitmap(loadbitmap(tx1))
      if background3 != "0" then
        background1.setBackground(luajava.bindClass("android.graphics.drawable.BitmapDrawable")(loadbitmap(background3)))
      end
      if nc1 != "" then
        zbb.setVisibility(View.VISIBLE)
        jzl.setVisibility(View.GONE)
      end
    elseif sid == "1" then
      SnackerBar.build()
          :msg(getLS("L_For_failure"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      jzl.setVisibility(View.VISIBLE)
      zbb.setVisibility(View.GONE)
    else
      SnackerBar.build()
          :msg(getLS("L_Server_error"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      jzl.setVisibility(View.VISIBLE)
      zbb.setVisibility(View.GONE)
    end
  end)
end

gxxx()


h5.onClick = function()
  InputLayout = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      EditText,
      layout_marginTop = "5dp",
      layout_width = "80%w",
      layout_gravity = "center",
      id = "edit",
    },
  };

  AlertDialog.Builder(this)
      .setTitle(getLS("L_Change_character_signature"))
      .setView(loadlayout(InputLayout))
      .setPositiveButton(getLS("L_Determine"), {
        onClick = function(v)
          dialog5 = ProgressDialog(this)
          dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
          dialog5.setCancelable(true)
          dialog5.setCanceledOnTouchOutside(false)
          dialog5.show()
          uguid()
          Http.post("https://ly250.cn/andlua/xgxqm.php",
            "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. edit.Text .. "&sid=" .. sid(),
            function(a1, b, c, d)
              sid1 = b:match('%["ret"] = "(.-)%";')
              if sid1 == "1" then
                SnackerBar.build()
                    :msg(getLS("L_You_submit"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                dialog5.hide()
              elseif sid1 == "4" then
                SnackerBar.build()
                    :msg(getLS("L_Identity_expired"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                dialog5.hide()
              elseif sid1 == "ok" then
                SnackerBar.build()
                    :msg(getLS("L_Modify_the_success"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                gxxx()
                dialog5.hide()
              else
                dialog5.hide()
              end
            end)
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  edit.setText(gxqm.Text)
  Typew(edit)
end



h2.onClick = function()
  InputLayout = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      TextView,
      id = "Prompt",
      textSize = "13sp",
      layout_marginTop = "10dp",
      layout_marginLeft = "3dp",
      layout_width = "80%w",
      layout_gravity = "center",
      text = getLS("L_Modify_the_user_name_1") .. cs .. getLS("L_Modify_the_user_name_2"),
      --singleLine=true;
      TextColor = tonumber(bjzt()),
    },
    {
      EditText,
      layout_marginTop = "5dp",
      layout_width = "80%w",
      layout_gravity = "center",
      id = "edit",
    },
  };

  AlertDialog.Builder(this)
      .setTitle(getLS("L_Modify_the_user_name"))
      .setView(loadlayout(InputLayout))
      .setPositiveButton(getLS("L_Determine"), {
        onClick = function(v)
          dialog5 = ProgressDialog(this)
          dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
          dialog5.setCancelable(true)
          dialog5.setCanceledOnTouchOutside(false)
          dialog5.show()
          uguid()
          Http.post("https://ly250.cn/andlua/xyhm.php",
            "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. edit.Text .. "&sid=" .. sid(),
            function(a1, b, c, d)
              sid1 = b:match('%["ret"] = "(.-)%";')
              if sid1 == "1" then
                SnackerBar.build()
                    :msg(getLS("L_You_submit"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                dialog5.hide()
              elseif sid1 == "7" then
                SnackerBar.build()
                    :msg(getLS("L_User_name_already_exists"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                dialog5.hide()
              elseif sid1 == "8" then
                SnackerBar.build()
                    :msg(getLS("L_The_user_name_is_too_long"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                dialog5.hide()
              elseif sid1 == "9" then
                SnackerBar.build()
                    :msg(getLS("L_Modify_the_number_has_been_finished"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                dialog5.hide()
              elseif sid1 == "4" then
                SnackerBar.build()
                    :msg(getLS("L_Identity_expired"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                dialog5.hide()
              elseif sid1 == "ok" then
                SnackerBar.build()
                    :msg(getLS("L_Modify_the_success"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
                gxxx()
                dialog5.hide()
              else
                dialog5.hide()
              end
            end)
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  edit.setText(nc.Text)
  Typew(edit)
end

h1.onClick = function()
  function onActivityResult(requestCode, resultCode, intent)
    if intent then
      local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
      cursor.moveToFirst()
      import "android.provider.MediaStore"
      local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
      fileSrc = cursor.getString(idx)
      bit = nil
      dialog5 = ProgressDialog(this)
      dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
      dialog5.setCancelable(true)
      dialog5.setCanceledOnTouchOutside(false)
      dialog5.show()
      b:upload(fileSrc, function(code, j1)
        tp = dump(j1):match('%["url"%]	= "(.-)" ;')
        uguid()
        Http.post("https://ly250.cn/andlua/xtx.php",
          "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. tp .. "&sid=" .. sid(),
          function(a1, b, c, d)
            sid1 = b:match('%["ret"] = "(.-)%";')
            if sid1 == "1" then
              SnackerBar.build()
                  :msg(getLS("L_You_submit"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid1 == "4" then
              SnackerBar.build()
                  :msg(getLS("L_Identity_expired"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid1 == "ok" then
              SnackerBar.build()
                  :msg(getLS("L_Modify_the_success"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              gxxx()
              dialog5.hide()
            else
              dialog5.hide()
            end
          end)
      end)
      import "android.graphics.BitmapFactory"
      bit = BitmapFactory.decodeFile(fileSrc)
    end
  end

  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end

h188.onClick = function()
  function onActivityResult(requestCode, resultCode, intent)
    if intent then
      local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
      cursor.moveToFirst()
      import "android.provider.MediaStore"
      local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
      fileSrc = cursor.getString(idx)
      bit = nil
      dialog5 = ProgressDialog(this)
      dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
      dialog5.setCancelable(true)
      dialog5.setCanceledOnTouchOutside(false)
      dialog5.show()
      b:upload(fileSrc, function(code, j1)
        tp = dump(j1):match('%["url"%]	= "(.-)" ;')
        uguid()
        Http.post("https://ly250.cn/andlua/xbackground.php",
          "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. tp .. "&sid=" .. sid(),
          function(a1, b, c, d)
            sid1 = b:match('%["ret"] = "(.-)%";')
            if sid1 == "1" then
              SnackerBar.build()
                  :msg(getLS("L_You_submit"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid1 == "4" then
              SnackerBar.build()
                  :msg(getLS("L_Identity_expired"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid1 == "ok" then
              SnackerBar.build()
                  :msg(getLS("L_Modify_the_success"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              gxxx()
              dialog5.hide()
            else
              dialog5.hide()
            end
          end)
      end)
      import "android.graphics.BitmapFactory"
      bit = BitmapFactory.decodeFile(fileSrc)
    end
  end

  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end

pay = {
  LinearLayout,
  layout_height = "fill",
  layout_width = "fill",
  {
    LinearLayout,
    layout_width = "match_parent",
    layout_marginBottom = "10dp",
    layout_marginLeft = "10dp",
    layout_marginRight = "10dp",
    orientation = "vertical",
    {
      LinearLayout,
      layout_width = "match_parent",
      orientation = "horizontal",
      layout_height = "95dp",
      {
        CardView,
        radius = "10dp",
        layout_height = "-1",
        elevation = "0dp",
        layout_margin = "10dp",
        backgroundColor = "0xffeeeeee",
        layout_weight = "1",
        {
          Button,
          layout_height = "-1",
          text = "2元",
          background = "0",
          layout_width = "match_parent",
          layout_margin = "-10dp",
          textSize = "16sp",
        },
      },
      {
        CardView,
        radius = "10dp",
        layout_height = "-1",
        backgroundColor = "0xffeeeeee",
        elevation = "0dp",
        layout_margin = "10dp",
        layout_weight = "1",
        {
          Button,
          background = "0",
          layout_height = "-1",
          text = "5元",
          layout_width = "match_parent",
          layout_margin = "-10dp",
          textSize = "16sp",
        },
      },
      {
        CardView,
        radius = "10dp",
        layout_height = "-1",
        backgroundColor = "0xffeeeeee",
        elevation = "0dp",
        layout_margin = "10dp",
        layout_weight = "1",
        {
          Button,
          background = "0",
          layout_height = "-1",
          text = "10元",
          layout_width = "match_parent",
          layout_margin = "-10dp",
          textSize = "16sp",
        },
      },
    },
    {
      LinearLayout,
      layout_width = "match_parent",
      orientation = "horizontal",
      layout_height = "95dp",
      layout_marginTop = "-10dp",
      {
        CardView,
        radius = "10dp",
        layout_height = "-1",
        backgroundColor = "0xffeeeeee",
        elevation = "0dp",
        layout_margin = "10dp",
        layout_weight = "1",
        {
          Button,
          background = "0",
          layout_height = "-1",
          text = "20元",
          layout_width = "match_parent",
          layout_margin = "-10dp",
          textSize = "16sp",
        },
      },
      {
        CardView,
        radius = "10dp",
        layout_height = "-1",
        backgroundColor = "0xffeeeeee",
        elevation = "0dp",
        layout_margin = "10dp",
        layout_weight = "1",
        {
          Button,
          background = "0",
          layout_height = "-1",
          text = "50元",
          layout_width = "match_parent",
          layout_margin = "-10dp",
          textSize = "16sp",
        },
      },
      {
        CardView,
        radius = "10dp",
        layout_height = "-1",
        backgroundColor = "0xffeeeeee",
        elevation = "0dp",
        layout_margin = "10dp",
        layout_weight = "1",
        {
          Button,
          background = "0",
          layout_height = "-1",
          text = "100元",
          layout_width = "match_parent",
          layout_margin = "-10dp",
          textSize = "16sp",
          id = "y100",
        },
      },
    },
  },
};

local dl = AlertDialog.Builder(activity)
    .setTitle("充值余额")
    .setView(loadlayout(pay))
dl.show()

h222.onClick = function()
  InputLayout = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      EditText,
      hint = getLS("L_Please_enter_the_prepaid_phone_CARDS"),
      layout_marginTop = "5dp",
      layout_width = "80%w",
      singleLine = "true",
      layout_gravity = "center",
      id = "edit",
    },
  };

  AlertDialog.Builder(this)
      .setTitle(getLS("L_Topup_balance"))
      .setView(loadlayout(InputLayout))
      .setPositiveButton(getLS("L_Determine"), {
        onClick = function(v)
          if edit.Text == "" then
          else
            dialog5 = ProgressDialog(this)
            dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
            dialog5.show()
            uguid()
            Http.post("https://ly250.cn/andlua/Usecard.php",
              "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. edit.Text .. "&sid=" .. sid(),
              function(a1, b, c, d)
                sid1 = b:match('%["ret"] = "(.-)%";')
                if sid1 == "1" then
                  SnackerBar.build()
                      :msg(getLS("L_You_submit"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                  dialog5.hide()
                elseif sid1 == "5" then
                  SnackerBar.build()
                      :msg(getLS("L_System_error"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                  dialog5.hide()
                elseif sid1 == "3" then
                  SnackerBar.build()
                      :msg(getLS("L_Camilo_error"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                  dialog5.hide()
                elseif sid1 == "6" then
                  SnackerBar.build()
                      :msg(getLS("L_Card_has_been_used"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                  dialog5.hide()
                elseif sid1 == "4" then
                  SnackerBar.build()
                      :msg(getLS("L_Identity_expired"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                  dialog5.hide()
                elseif sid1 == "ok" then
                  SnackerBar.build()
                      :msg(getLS("L_Using_the_successful"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                  gxxx()
                  dialog5.hide()
                else
                  dialog5.hide()
                end
              end)
          end
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .setNeutralButton(getLS("L_Purchase_card_secret"), {
        onClick = function(v)
          import "android.content.Intent"
          import "android.net.Uri"
          url = "https://ly250.cn/pay.php"
          viewIntent = Intent("android.intent.action.VIEW", Uri.parse(url))
          activity.startActivity(viewIntent)
        end
      })
      .show()
  Typew(edit)
  --[[
  Layout=AlertDialog.Builder(activity)
  .setTitle("充值余额")
  .setView(loadlayout(pay))
  .show()
  y100.onClick=function()
    SnackerBar.build()
    :msg("正在支付中...")
    :actionText(getLS("L_OK"))
    :action(function()
    end)
    :show()
  end]]
end

function Cash(edit)
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/andlua/withdrawal.php",
    "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&money=" .. edit .. "&sid=" .. sid(), function(a1, b, c,
                                                                                                               d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "1" then
      SnackerBar.build()
          :msg(getLS("L_You_submit"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "3" then
      SnackerBar.build()
          :msg(getLS("L_Amount_of_error"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "2" then
      SnackerBar.build()
          :msg(getLS("L_Lack_of_balance"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "4" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "5" then
      SnackerBar.build()
          :msg(getLS("L_Amount_is_too_large"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "6" then
      SnackerBar.build()
          :msg(getLS("L_Please_set_up_a_payment_code"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "ok" then
      SnackerBar.build()
          :msg(getLS("L_Has_applied_for_withdrawal"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      gxxx()
      dialog5.hide()
    else
      dialog5.hide()
    end
  end)
end

hll2.onClick = function()
  lllu = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      TextView,
      id = "Prompt",
      textSize = "15sp",
      layout_marginLeft = "3dp",
      layout_marginTop = "5dp",
      layout_width = "80%w",
      layout_gravity = "center",
      text = [[1.每次最低提现1元起。
2.每次最多提现1000元。
3.提现将收取5%手续费， 实到金额为提现金额95%！
4.提现会在三个工作日内到账。
5.外挂、违规等源码收益系统直接没收，一律不给予提现。
6.收款码仅支持支付宝、微信，三合一无效。
]],
    },
    {
      EditText,
      hint = getLS("L_Please_enter_the_withdrawal_amount"),
      layout_width = "80%w",
      singleLine = true,
      layout_marginTop = "-10dp",
      layout_gravity = "center",
      id = "edit",
    },
    {
      TextView,
      id = "Prompt1",
      textSize = "15sp",
      layout_marginLeft = "3dp",
      layout_width = "80%w",
      layout_gravity = "center",
    },
  };
  tc = AlertDialog.Builder(this)
      .setTitle(getLS("L_Cash_balance"))
      .setView(loadlayout(lllu))
      .setPositiveButton(getLS("L_Determine"), {
        onClick = function(v)
          if edit.Text == "" then
          else
            txl = string.sub(edit.Text, 0, 1)
            if txl == "0" then
              SnackerBar.build()
                  :msg(getLS("L_Amount_of_error"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
            else
              if #edit.Text > 3 then
                if edit.Text == "1000" then
                  Cash(edit.Text)
                else
                  SnackerBar.build()
                      :msg(getLS("L_Withdrawal_amount_is_too_large"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                end
              else
                Cash(edit.Text)
              end
            end
          end
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .setNeutralButton(getLS("L_All_withdrawal"), nil)
      .show()
  edit.addTextChangedListener {
    onTextChanged = function(s)
      if edit.Text == "" then
        Prompt1.Text = ""
      else
        Prompt1.Text = getLS("L_Expected_to_deduct_fees") ..
        " " .. string.format("%.2f", tonumber(edit.Text) / 100 * 5) .. " " .. getLS("L_Yuan")
      end
    end }
  dialog = tc.create()
  dialog.getButton(AlertDialog.BUTTON_NEUTRAL).setOnClickListener(View.OnClickListener
    { onClick = function()
      edit.Text = tostring(tointeger(payy1))
      edit.setSelection(#edit.Text)
    end })
  import "android.text.InputType"
  import "android.text.method.DigitsKeyListener"
  edit.setInputType(InputType.TYPE_CLASS_NUMBER)
  Typew(edit)
end

hll20.onClick = function()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/andlua/query.php", "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 ..
  "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "1" then
      SnackerBar.build()
          :msg(getLS("L_You_submit"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "4" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      dialog5.hide()
    elseif sid1 == "ok" then
      pay2 = b:match('%["src"] = "(.-)%";')
      if pay2 == "" then
        SnackerBar.build()
            :msg(getLS("L_Please_upload_a_payment_code"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
        pay2 = "icon.png"
      end
      dialog5.hide()
      Pay1 = {
        LinearLayout,
        layout_height = "fill",
        layout_width = "fill",
        {
          ImageView,
          src = pay2,
          layout_width = "match_parent",
        },
      };
      AlertDialog.Builder(this)
          .setTitle(getLS("L_Payment_code"))
          .setView(loadlayout(Pay1))
          .setPositiveButton(getLS("L_Determine"), {
            onClick = function()
            end
          })
          .setNegativeButton(getLS("L_Cancel"), nil)
          .setNeutralButton(getLS("L_Replace_the_payment_code"), {
            onClick = function()
              replace()
            end
          })
          .show()
      dialog5.hide()
    else
      dialog5.hide()
    end
  end)
end

function replace()
  function onActivityResult(requestCode, resultCode, intent)
    if intent then
      local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
      cursor.moveToFirst()
      import "android.provider.MediaStore"
      local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
      fileSrc = cursor.getString(idx)
      bit = nil
      dialog5 = ProgressDialog(this)
      dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
      dialog5.show()
      b:upload(fileSrc, function(code, j1)
        tp = dump(j1):match('%["url"%]	= "(.-)" ;')
        uguid()
        Http.post("https://ly250.cn/andlua/mPayment.php",
          "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. tp .. "&sid=" .. sid(),
          function(a1, b, c, d)
            sid1 = b:match('%["ret"] = "(.-)%";')
            if sid1 == "1" then
              SnackerBar.build()
                  :msg(getLS("L_You_submit"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid1 == "4" then
              SnackerBar.build()
                  :msg(getLS("L_Identity_expired"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid1 == "ok" then
              SnackerBar.build()
                  :msg(getLS("L_Modify_the_success"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              gxxx()
              dialog5.hide()
              dialog5.hide()
            else
              dialog5.hide()
            end
          end)
      end)
      import "android.graphics.BitmapFactory"
      bit = BitmapFactory.decodeFile(fileSrc)
    end
  end

  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end

hll3.onClick = function()
  activity.newActivity("main59")
end

function modifyGender(text)
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguidPro()
  Http.post("https://ly250.cn/andlua/xGender.php",
    "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. encrypt(text) .. "&sid=" .. sidPro(),
    function(a1, b, c, d)
      b = tostring(decrypt(b))
      sid1 = b:match('%["ret"] = "(.-)%";')
      if sid1 == "1" then
        SnackerBar.build()
            :msg(getLS("L_You_submit"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
        dialog5.hide()
      elseif sid1 == "4" then
        SnackerBar.build()
            :msg(getLS("L_Identity_expired"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
        dialog5.hide()
      elseif sid1 == "ok" then
        SnackerBar.build()
            :msg(getLS("L_Modify_the_success"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
        gxxx()
        dialog5.hide()
      else
        dialog5.hide()
      end
    end)
end

h3.onClick = function()
  AlertDialog.Builder(this)
      .setMessage(getLS("L_Modify_the_gender"))
      .setPositiveButton(getLS("L_Male"), {
        onClick = function(v)
          modifyGender("男")
        end
      })
      .setNegativeButton(getLS("L_Female"), {
        onClick = function(v)
          modifyGender("女")
        end
      })
      .show()
end

h4.onClick = function()
  m = {
    LinearLayout,
    orientation = "vertical",
    layout_height = "fill",
    layout_width = "fill",
    {
      DatePicker,
      id = "bb",
      layout_height = "fill",
      backgroundColor = DialogColor,
      layout_width = "fill",
    },
    {
      Button,
      backgroundColor = tonumber(bjzt()),
      layout_width = "-1",
      id = "n",
      textColor = "#ffffff",
      text = getLS("L_Determine"),
    },
  };
  s = AlertDialogBuilder(activity)
  s.setView(loadlayout(m))
  s.show()
  n.onClick = function()
    r = bb.getDayOfMonth()
    y1 = bb.getMonth()
    n = bb.getYear()
    y1 = y1 + "1"
    y = tointeger(y1)
    text = n .. "-" .. y .. "-" .. r
    dialog5 = ProgressDialog(this)
    dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
    dialog5.setCancelable(true)
    dialog5.setCanceledOnTouchOutside(false)
    dialog5.show()
    uguidPro()
    Http.post("https://ly250.cn/andlua/xBirthday.php",
      "uid3=" .. uid3 .. "&uid2=" .. uid2 .. "&uid1=" .. uid1 .. "&text=" .. encrypt(text) .. "&sid=" .. sidPro(),
      function(a1, b, c, d)
        b = tostring(decrypt(b))
        sid1 = b:match('%["ret"] = "(.-)%";')
        if sid1 == "1" then
          SnackerBar.build()
              :msg(getLS("L_You_submit"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
          dialog5.hide()
        elseif sid1 == "4" then
          SnackerBar.build()
              :msg(getLS("L_Identity_expired"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
          dialog5.hide()
        elseif sid1 == "ok" then
          SnackerBar.build()
              :msg(getLS("L_Modify_the_success"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
          gxxx()
          dialog5.hide()
        else
          dialog5.hide()
        end
      end)
    s.hide()
  end
end
