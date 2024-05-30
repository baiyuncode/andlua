require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "mods.SnackerBar"
import "android.content.Intent"
import "android.net.Uri"
import "mods.andlua"
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
import "mods.SnackerBar"
ztt()
intent = Intent(activity.getIntent())
a = intent.getStringExtra("a");
a1 = intent.getStringExtra("a1");
a2 = intent.getStringExtra("a2");
a3 = intent.getStringExtra("a3");
main11 = {
  RelativeLayout,
  background = "#000000",
  layout_height = "fill",
  {
    ImageView,
    layout_width = "-1",
    id = "t1",
    layout_height = "-1",
    transitionName = "t11",
    onClick = function()
      activity.finishAfterTransition()
    end,
  },
  {
    ImageView,
    layout_width = "-1",
    id = "t2",
    transitionName = "t2",
    layout_height = "-1",
    onClick = function()
      activity.finishAfterTransition()
    end,
  },
  {
    ImageView,
    transitionName = "t3",
    layout_width = "-1",
    id = "t3",
    layout_height = "-1",
    onClick = function()
      activity.finishAfterTransition()
    end,
  },
  {
    CardView,
    layout_width = "50%w",
    layout_centerHorizontal = "true",
    backgroundColor = "0x50000000",
    radius = "18dp",
    layout_alignParentBottom = "true",
    Elevation = "0dp",
    layout_height = "36dp",
    layout_marginBottom = "60dp",
    {
      LinearLayout,
      layout_height = "match_parent",
      layout_width = "match_parent",
      {
        TextView,
        layout_weight = "1",
        layout_height = "match_parent",
        gravity = "center",
        text = "1",
        id = "n1",
        textColor = "0xffffffff",
        layout_width = "match_parent",
        onClick = function()
          n1.setTextColor(0xffffffff)
          n2.setTextColor(0x80ffffff)
          n3.setTextColor(0x80ffffff)
          t1.setVisibility(View.VISIBLE)
          t2.setVisibility(View.GONE)
          t3.setVisibility(View.GONE)
        end,
      },
      {
        TextView,
        layout_weight = "1",
        layout_height = "match_parent",
        gravity = "center",
        id = "n2",
        text = "2",
        textColor = "0x80ffffff",
        layout_width = "match_parent",
        onClick = function()
          n2.setTextColor(0xffffffff)
          n1.setTextColor(0x80ffffff)
          n3.setTextColor(0x80ffffff)
          t2.setVisibility(View.VISIBLE)
          t1.setVisibility(View.GONE)
          t3.setVisibility(View.GONE)
        end,
      },
      {
        TextView,
        layout_weight = "1",
        layout_height = "match_parent",
        gravity = "center",
        id = "n3",
        onClick = function()
          n3.setTextColor(0xffffffff)
          n2.setTextColor(0x80ffffff)
          n1.setTextColor(0x80ffffff)
          t1.setVisibility(View.GONE)
          t2.setVisibility(View.GONE)
          t3.setVisibility(View.VISIBLE)
        end,
        text = "3",
        textColor = "0x80ffffff",
        layout_width = "match_parent",
      },
    },
  },
};

activity.setContentView(loadlayout(main11))
--activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN)
t1.setImageBitmap(loadbitmap(a))
t2.setImageBitmap(loadbitmap(a1))
t3.setImageBitmap(loadbitmap(a2))
activity.ActionBar.hide()
if a3 == "1" then
  t2.setVisibility(View.GONE)
  t3.setVisibility(View.GONE)
elseif a3 == "2" then
  t1.setVisibility(View.GONE)
  t3.setVisibility(View.GONE)
  n2.setTextColor(0xffffffff)
  n3.setTextColor(0x80ffffff)
  n1.setTextColor(0x80ffffff)
else
  t1.setVisibility(View.GONE)
  t2.setVisibility(View.GONE)
  n3.setTextColor(0xffffffff)
  n2.setTextColor(0x80ffffff)
  n1.setTextColor(0x80ffffff)
end

if Build.VERSION.SDK_INT >= 21 then
  activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xff000000);
end
