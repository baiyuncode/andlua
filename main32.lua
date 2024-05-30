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
import "android.graphics.BitmapFactory"
import "android.graphics.Color"
import "android.content.Intent"
import "android.net.Uri"
import "java.net.URLDecoder"
import "android.content.*"
import "android.view.inputmethod.InputMethodManager"
import "console"
import "android.content.Context"
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
import "android.content.Intent"
import "android.net.Uri"
import "java.net.URLDecoder"
import "java.io.File"
import "android.graphics.drawable.GradientDrawable"
import "android.provider.MediaStore"
import "android.graphics.BitmapFactory"

ztt()
main10 = {
  LinearLayout,
  layout_width = "fill",
  layout_height = "fill",
  {
    RelativeLayout,
    id = "bj",
    layout_width = "fill",
    layout_height = "fill",
    {
      RelativeLayout,
      layout_alignParentBottom = "true",
      id = "dll",
      layout_width = "-1",
      layout_height = "60dp",
      {
        RelativeLayout,
        id = "yls",
        layout_width = "30dp",
        layout_height = "30dp",
        layout_centerVertical = "true",
        layout_marginLeft = "22dp",
      },
      {
        TextView,
        textColor = "#757575",
        textSize = "18sp",
        layout_centerVertical = "true",
        text = "#ffffff",
        layout_toRightOf = "yls",
        layout_marginLeft = "20dp",
        id = "yss",
      },
      {
        TextView,
        background = "#dddddd",
        layout_width = "-1",
        layout_height = "1dp",
      },
      {
        RelativeLayout,
        id = "xtp",
        layout_height = "38dp",
        layout_width = "38dp",
        layout_alignParentRight = "true",
        layout_centerVertical = "true",
        layout_marginRight = "20dp",
        {
          ImageView,
          layout_height = "30dp",
          layout_width = "30dp",
          colorFilter = "#757575",
          layout_centerInParent = "true",
          src = "res/Metrial692.png",
          layout_centerInParent = "true",
        },
      },
      {
        RelativeLayout,
        layout_height = "38dp",
        layout_width = "38dp",
        layout_toLeftOf = "xtp",
        layout_centerVertical = "true",
        layout_marginRight = "20dp",
        id = "fz",
        {
          ImageView,
          layout_width = "25dp",
          colorFilter = "#757575",
          layout_height = "25dp",
          src = "res/ic_copy.png",
          layout_centerInParent = "true",
        },
      },
    },
    {
      RelativeLayout,
      id = "bjtt",
      layout_above = "dll",
      {
        LinearLayout,
        layout_height = "fill",
        orientation = "vertical",
        layout_width = "fill",
        gravity = "center",
        {
          ImageView,
          layout_height = "fill",
          id = "tp",
          layout_width = "fill",
        },
      },
      {
        CardView,
        CardElevation = "4dp",
        radius = "30dp",
        layout_width = "35dp",
        background = "0",
        layout_height = "35dp",
        layout_marginTop = "90dp",
        layout_marginLeft = "100dp",
        id = "ho",
        {
          Button,
          textColor = "#FFFFFF",
          layout_width = "fill",
          layout_height = "fill",
          background = "res/Metrial778.png",
          textSize = "30dp",
          id = "hy",
        },
      },
    },
  },
};



activity.setContentView(loadlayout(main10))
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
      text = "颜色提取器",
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

function CircleButton(view, InsideColor, radiu)
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(InsideColor)
  drawable.setCornerRadii({ radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu });
  view.setBackgroundDrawable(drawable)
end

function ARGB(x, y)
  pixelColor = src.getPixel(x, y);
  A = Color.alpha(pixelColor);
  R = Color.red(pixelColor);
  G = Color.green(pixelColor);
  B = Color.blue(pixelColor);
  CircleButton(yls, Color.argb(A, R, G, B), 90)
  yss.setText("0x" .. Integer.toHexString(Color.argb(A, R, G, B)))
  return Color.argb(A, R, G, B)
end

lastX = 0; lastY = 0; vx = 0; vy = 0
hy.onTouch = function(v, e)
  ry = e.getRawY()
  rx = e.getRawX()
  if e.getAction() == MotionEvent.ACTION_DOWN then
    vy = ry - e.getY()
    vx = rx - e.getX()
    lastY = ry
    lastX = rx
  elseif e.getAction() == MotionEvent.ACTION_MOVE then
    if vx + (rx - lastX) <= activity.getWidth() - ho.getWidth() then
      ho.setX(vx + (rx - lastX))
      if vx + (rx - lastX) <= 0 then
        ho.setX(0)
      end
    end
    if vy + (ry - lastY) <= activity.getHeight() - ho.getWidth() then
      ho.setY(vy + (ry - lastY) - 250)
      if vy + (ry - lastY) <= 0 then
        ho.setY(0)
      end
    end
  end
  ARGB(ry, rx)
end

function onActivityResult(requestCode, resultCode, intent)
  if intent then
    local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
    cursor.moveToFirst()
    local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
    fileSrc = cursor.getString(idx)
    src = BitmapFactory.decodeFile(fileSrc)
    tp.setImageBitmap(src)
  end
end

function ChooseFile()
  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end

ChooseFile()


CircleButton(yls, 0xFF09639C, 90)

bw(xtp, 0xff999999)
bw(fz, 0xff999999)

xtp.onClick = function()
  activity.newActivity("main32")
  activity.finish()
end

fz.onClick = function()
  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(yss.Text)
  SnackerBar.build()
      :msg("已复制到剪切板")
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
end
