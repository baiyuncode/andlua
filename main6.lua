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
  LinearLayout,
  layout_width = "fill",
  layout_height = "fill",
  orientation = "vertical",
  id = "ViewNight_lay1",
  backgroundColor = AndLuaB1,
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      CardView,
      layout_height = "-2",
      layout_marginBottom = "10dp",
      layout_width = "-1",
      id = "xx3",
      radius = AndLuaR,
      backgroundColor = AndLuaB1,
      layout_marginLeft = "10dp",
      cardElevation = "0dp",
      layout_centerInParent = "true",
      layout_marginRight = "10dp",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          ImageView,
          layout_width = "65dp",
          layout_height = "65dp",
          layout_centerHorizontal = "true",
          id = "tx",
          layout_marginTop = "15dp",
          src = activity.getLuaDir() .. "/icon.png",
        },
        {
          TextView,
          layout_height = "0dp",
          layout_width = "0dp",
          id = "txx",
          text = activity.getLuaDir() .. "/icon.png",
        },
        {
          TextView,
          layout_height = "0dp",
          layout_width = "0dp",
          id = "xbb",
          text = "1",
        },
        {
          CardView,
          layout_below = "tx",
          layout_height = "80dp",
          radius = 0,
          id = "x1",
          backgroundColor = AndLuaB1,
          cardElevation = "0dp",
          layout_width = "-1",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              id = "z1",
              textSize = "15sp",
              text = getLS("L_Nickname"),
              layout_marginTop = "8dp",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              layout_width = "-1",
              id = "nc",
              background = "0",
              textSize = "14dp",
              layout_marginLeft = "8dp",
              layout_below = "z1",
              textColor = TitleColor,
              singleLine = "true",
              layout_marginRight = "8dp",
            },
            {
              TextView,
              layout_height = "1dp",
              backgroundColor = TitleColor,
              alpha = "0.2",
              layout_width = "-1",
              layout_alignBottom = "nc",
              layout_marginLeft = "12dp",
              layout_centerHorizontal = "true",
              id = "v1",
              layout_marginRight = "12dp",
            },
            {
              TextView,
              layout_height = "2dp",
              backgroundColor = tonumber(bjzt()),
              alpha = "1",
              layout_width = "-1",
              layout_alignBottom = "nc",
              layout_marginLeft = "12dp",
              layout_centerHorizontal = "true",
              id = "v2",
              layout_marginRight = "12dp",
            },
          },
        },
        {
          CardView,
          layout_below = "x1",
          layout_height = "80dp",
          radius = 0,
          id = "x2",
          backgroundColor = AndLuaB1,
          cardElevation = "0dp",
          layout_width = "-1",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              textColor = TitleColor1,
              id = "z3",
              textSize = "15sp",
              text = getLS("L_Date_of_birth"),
              layout_marginTop = "8dp",
              layout_marginLeft = "12dp",
            },
            {
              EditText,
              background = "0",
              Focusable = false,
              layout_below = "z3",
              id = "csrq",
              layout_marginLeft = "8dp",
              layout_width = "-1",
              text = "1970-01-01",
              textColor = TitleColor,
              singleLine = "true",
              textSize = "14dp",
              layout_marginRight = "8dp",
            },
            {
              TextView,
              layout_height = "1dp",
              backgroundColor = TitleColor,
              alpha = "0.2",
              layout_width = "-1",
              layout_alignBottom = "csrq",
              layout_marginLeft = "12dp",
              layout_centerHorizontal = "true",
              id = "v3",
              layout_marginRight = "12dp",
            },
            {
              TextView,
              layout_height = "2dp",
              backgroundColor = tonumber(bjzt()),
              alpha = "1",
              layout_width = "-1",
              layout_alignBottom = "csrq",
              layout_marginLeft = "12dp",
              layout_centerHorizontal = "true",
              id = "v4",
              layout_marginRight = "12dp",
            },
          },
        },
        {
          CardView,
          layout_below = "x2",
          layout_height = "100dp",
          radius = 0,
          id = "x3",
          backgroundColor = AndLuaB1,
          layout_width = "-1",
          layout_marginBottom = "10dp",
          cardElevation = "0dp",
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "-1",
            {
              TextView,
              textColor = TitleColor1,
              id = "z2",
              textSize = "15sp",
              text = getLS("L_Gender"),
              layout_marginTop = "8dp",
              layout_marginLeft = "12dp",
            },
            {
              RadioGroup,
              layout_below = "z2",
              id = "q",
              layout_marginLeft = "7dp",
              orientation = "vertical",
              layout_marginTop = "4dp",
              layout_width = "-1",
              layout_marginBottom = "10dp",
              {
                RadioButton,
                text = getLS("L_Male"),
                id = "q1",
                textColor = TitleColor1,
                layout_width = "-1",
              },
              {
                RadioButton,
                layout_width = "-1",
                id = "q2",
                layout_marginTop = "2dp",
                textColor = TitleColor1,
                text = getLS("L_Female"),
              },
            },
          },
        },
        {
          ImageView,
          layout_height = "55dp",
          backgroundColor = tonumber(bjzt()),
          ColorFilter = "#ffffffff",
          layout_marginBottom = "15dp",
          layout_below = "x3",
          id = "ok",
          padding = "8dp",
          layout_centerHorizontal = "true",
          layout_width = "55dp",
          src = "res/Metrial50.png",
          elevation = "0dp",
        },
      },
    },
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
      text = getLS("L_Perfect_information"),
      textColor = tonumber(bjzt()),
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
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "22dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "25dp",
      src = "res/Metrial359.png",
    },
  },
};

activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)
openid = ...
bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end

bw(menu1, 0x5FFFFFFF)

menu1.onClick = function()
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(tostring(openid))
  SnackerBar.build()
      :msg(getLS("L_Has_been_copied_to_the_clipboard"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
end

nc.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      v2.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v2.setVisibility(View.VISIBLE)
      z1.setTextColor(tonumber(bjzt()))
    else
      v2.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v2.setVisibility(View.INVISIBLE)
      z1.setTextColor(TitleColor1)
    end
  end
}
csrq.setOnFocusChangeListener {
  onFocusChange = function(v, hasFocus)
    if hasFocus then
      v4.startAnimation(ScaleAnimation(0.0, 1.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v4.setVisibility(View.VISIBLE)
      z3.setTextColor(tonumber(bjzt()))
    else
      v4.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      v4.setVisibility(View.INVISIBLE)
      z3.setTextColor(TitleColor1)
    end
  end
}
v4.setVisibility(View.INVISIBLE)
m = {
  LinearLayout,
  orientation = "vertical",
  layout_height = "fill",
  layout_width = "fill",
  {
    DatePicker,
    id = "bb",
    layout_height = "fill",
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
csrq.onClick = function()
  s = AlertDialogBuilder(activity)
  s.setView(loadlayout(m))
  s.show()
  n.onClick = function()
    r = bb.getDayOfMonth()
    y1 = bb.getMonth()
    n = bb.getYear()
    y1 = y1 + "1"
    y = tointeger(y1)
    csrq.setText(n .. "-" .. y .. "-" .. r)
    s.hide()
  end
end
function CircleButton(view, InsideColor, radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(InsideColor)
  drawable.setCornerRadii({ radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu });
  view.setBackgroundDrawable(drawable)
end

CircleButton(ok, tonumber(bjzt()), 90)
ztt()
q.setOnCheckedChangeListener {
  onCheckedChanged = function(g, c)
    l = g.findViewById(c)
    xbb.setText(l.Text)
  end }
b = bmob("73669056f163f1e66a6deed81dff6e50", "8a2770b0663035f18c9e4260711873b8")
ok.onClick = function()
  if nc.Text == "" then
    SnackerBar.build()
        :msg(getLS("L_Please_enter_a_nickname"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  elseif xbb.Text == "1" then
    SnackerBar.build()
        :msg(getLS("L_Please_select_a_gender"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  else
    dialog5 = ProgressDialog(this)
    dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
    dialog5.setCancelable(true)
    dialog5.setCanceledOnTouchOutside(false)
    dialog5.show()
    b:upload(txx.Text, function(code, jon)
      txv = dump(jon):match('%["url"%]	= "(.-)" ;')
      Http.post("https://ly250.cn/andlua/reg.php",
        "openid=" .. openid .. "&xb=" .. xbb.Text .. "&csrq=" .. csrq.Text ..
        "&tx=" .. txv .. "&nc=" .. nc.Text .. "&sid=" .. sid(), function(a1, b, c, d)
        sid2 = b:match('%["ret"] = "(.-)%";')
        if sid2 == "1" then
          Http.post("https://ly250.cn/andlua/reg.php",
            "openid=" .. openid .. "&xb=" .. xbb.Text ..
            "&csrq=" .. csrq.Text .. "&tx=" .. txv .. "&nc=" .. nc.Text .. "&sid=" .. sid(), function(a1, b, c, d)
            sid2 = b:match('%["ret"] = "(.-)%";')
            if sid2 == "1" then
              SnackerBar.build()
                  :msg(getLS("L_You_submit"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid2 == "false" then
              SnackerBar.build()
                  :msg(getLS("L_Identity_expired"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid2 == "3" then
              SnackerBar.build()
                  :msg(getLS("L_You_submit"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              dialog5.hide()
            elseif sid2 == "ok" then
              dialog5.hide()
              u6 = activity.getLuaDir() .. "/res/set6.LY"
              io.open(u6, "w"):write("true"):close()
              activity.result({ "", "", "注销" })
            else
            end
          end)
        elseif sid2 == "false" then
          SnackerBar.build()
              :msg(getLS("L_Identity_expired"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
          dialog5.hide()
        elseif sid2 == "3" then
          SnackerBar.build()
              :msg(getLS("L_You_submit"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
          dialog5.hide()
        elseif sid2 == "ok" then
          dialog5.hide()
          u6 = activity.getLuaDir() .. "/res/set6.LY"
          io.open(u6, "w"):write("true"):close()
          activity.result({ "", "", "注销" })
        else
        end
      end)
    end)
  end
end

tx.onClick = function()
  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
  function onActivityResult(requestCode, resultCode, intent)
    if intent then
      local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
      cursor.moveToFirst()
      import "android.provider.MediaStore"
      local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
      fileSrc = cursor.getString(idx)
      bit = nil
      tx.setImageBitmap(loadbitmap(fileSrc))
      txx.setText(fileSrc)
      import "android.graphics.BitmapFactory"
      bit = BitmapFactory.decodeFile(fileSrc)
    end
  end
end
