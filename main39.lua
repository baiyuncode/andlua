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
  backgroundColor = AndLuaB,
  layout_height = "fill",
  layout_width = "fill",
  id = "ViewNight_lay1",
  {
    TextView,
    textSize = "15sp",
    id = "js",
    text = getLS("L_Theres_no_backup_file"),
    layout_centerInParent = "true",
  },
  {
    YLListView,
    VerticalScrollBarEnabled = false,
    overScrollMode = 2,
    layout_width = "fill",
    layout_marginLeft = "5dp",
    layout_marginRight = "5dp",
    layout_marginTop = "5dp",
    layout_height = "fill",
    id = "list1",
    dividerHeight = "0",
  },
  {
    ProgressBar,
    layout_centerInParent = "true",
    id = "jdt",
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
      text = getLS("L_Backup_management"),
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

function d3()
  adp3 = LuaAdapter(activity, xzlb)
  list1.setAdapter(adp3)
end

function GetFileSize(path)
  import "java.io.File"
  import "android.text.format.Formatter"
  size = File(tostring(path)).length()
  Sizes = Formatter.formatFileSize(activity, size)
  return Sizes
end

xzlb = {
  LinearLayout,
  backgroundColor = AndLuaB,
  orientation = "vertical",
  layout_width = "fill",
  layout_height = "fill",
  {
    CardView,
    layout_margin = "5dp",
    Elevation = "0dp",
    backgroundColor = AndLuaB1,
    radius = AndLuaR,
    layout_width = "-1",
    {
      LinearLayout,
      orientation = "horizontal",
      layout_width = "-1",
      layout_height = "-1",
      {
        LinearLayout,
        layout_margin = "8dp",
        {
          ImageView,
          src = "res/A11.png",
          layout_width = "35dp",
          id = "ttx",
          layout_height = "35dp",
        },
      },
      {
        LinearLayout,
        orientation = "vertical",
        layout_width = "-1",
        layout_height = "-1",
        {
          TextView,
          textSize = "15sp",
          singleLine = "true",
          text = "icon",
          layout_marginLeft = "3dp",
          ellipsize = "end",
          layout_marginTop = "5dp",
          id = "wb",
          textColor = TitleColor,
        },
        {
          TextView,
          layout_width = "0dp",
          text = "",
          id = "bm",
          layout_height = "0dp",
        },
        {
          TextView,
          textSize = "12sp",
          text = "2000/0/0",
          textColor = TitleColor1,
          layout_marginLeft = "3dp",
          layout_marginTop = "2dp",
          id = "wb2",
        },
        {
          TextView,
          id = "wwp",
          layout_width = "0dp",
        },
        {
          TextView,
          id = "rjbb2",
          layout_width = "0dp",
        },
        {
          TextView,
          id = "kk",
          layout_width = "0dp",
        },
      },
    },
  },
};


function d1(g, sj, eg)
  adp3.add { wb = g, wb2 = sj, kk = eg }
  js.setText("")
  jdt.setVisibility(View.GONE)
end

function d2()
  jdt.setVisibility(View.GONE)
end

function show(f)
  require "import"
  import "android.app.*"
  import "android.os.*"
  import "android.widget.*"
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
  call("d3")
  dir = f
  ls = luajava.astable(f.listFiles() or String {})
  table.sort(ls, function(a, b)
    return (a.isDirectory() ~= b.isDirectory() and a.isDirectory()) or
    ((a.isDirectory() == b.isDirectory()) and a.Name < b.Name)
  end)

  function GetFilelastTime(path)
    f = File(path);
    cal = Calendar.getInstance();
    time = f.lastModified()
    cal.setTimeInMillis(time);
    return cal.getTime().toLocaleString()
  end

  if #ls == 0 then
    call("d2")
  else
    for n = 1, #ls do
      bbm = ls[n].Name
      if err == nil then
        g = (ls[n].Name)
        eg = ("/sdcard/AndLua/backup/" .. ls[n].Name)
        sj = GetFilelastTime(eg)
        call("d1", g, sj, eg)
      else
      end
    end
  end
end

thread(show, File("/sdcard/AndLua/backup/"))


list1.onItemClick = function(l, v, p, i)
  aa = v.Tag.kk.Text
  ab = v.Tag.wb.Text
  ac = math.random(1000000, 999999999999)
  dialog = AlertDialog.Builder(this)
      .setTitle(getLS("L_Operation_of_source_code"))
      .setMessage(v.Tag.kk.Text)
      .setPositiveButton(getLS("L_The_import"), {
        onClick = function(v)
          inj = string.sub(aa, -4, -1)
          if inj == ".alp" then
            if File("/sdcard/AndLua/project/" .. ac).isDirectory() == false then
              ZipUtil.unzip(aa, "/sdcard/AndLua/project/" .. ac .. "/")
              SnackerBar.build()
                  :msg(getLS("L_Import_success"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
            else
              SnackerBar.build()
                  :msg(getLS("L_Project_has_been_in_existence"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
            end
          else
            SnackerBar.build()
                :msg(getLS("L_Temporary_does_not_support_this_file"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          end
        end
      })
      .setNeutralButton(getLS("L_Delete"), {
        onClick = function(v)
          if File(aa).delete() then
            SnackerBar.build()
                :msg(getLS("L_Delete_the_success"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          else
            SnackerBar.build()
                :msg(getLS("L_Delete_failed"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          end
          thread(show, File("/sdcard/AndLua/backup/"))
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  dialog.create()
end
