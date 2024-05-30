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
  id = "ViewNight_lay1",
  layout_width = "fill",
  {
    ProgressBar,
    layout_centerInParent = "true",
    id = "jdt",
  },
  {
    GridView,
    numColumns = 4,
    layout_marginTop = "5dp",
    verticalSpacing = "0dp",
    layout_height = "fill",
    gravity = "center",
    fastScrollEnabled = true,
    id = "list",
    horizontalSpacing = "0dp",
    layout_width = "fill",
  },
  {
    TextView,
    textSize = "0sp",
    text = "1",
    textColor = "0x00ffffff",
    id = "gy",
    singleLine = true,
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
  id = "jku",
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
    layout_height = "fill",
    layout_weight = "1",
    orientation = "horizontal",
    id = "jrr",
    {
      TextView,
      layout_gravity = "center",
      textSize = "18sp",
      text = getLS("L_APK_extract_1"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
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

lb = {
  LinearLayout,
  layout_width = "fill",
  orientation = "vertical",
  layout_height = "fill",
  {
    LinearLayout,
    layout_width = "70dp",
    orientation = "vertical",
    layout_height = "85dp",
    layout_gravity = "center",
    {
      ImageView,
      layout_width = "45dp",
      id = "iv",
      layout_margin = "8dp",
      layout_height = "45dp",
      layout_gravity = "center",
      scaleType = "fitCenter",
    },
    {
      TextView,
      layout_marginTop = "-2dp",
      text = "src",
      id = "tv",
      textColor = TitleColor,
      singleLine = true,
      layout_gravity = "center",
    },
  },
};

activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)

bw(Sideslip, 0x5FFFFFFF)
bw(jik, 0x5FFFFFFF)
vvb.setVisibility(View.GONE)

Sideslip.onClick = function()
  activity.finish()
end

jik.onClick = function()
  if gy.Text == "1" then
    gy.setText("2")
    bt.setText("")
    Alpha = AlphaAnimation(1, 0)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    jrr.startAnimation(Alpha)
    Alpha = AlphaAnimation(0, 1)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    vvb.startAnimation(Alpha)
    task(500, function()
      jrr.setVisibility(View.GONE)
    end)
    vvb.setVisibility(View.VISIBLE)
  else
    gy.setText("1")
    Alpha = AlphaAnimation(1, 0)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    vvb.startAnimation(Alpha)
    Alpha = AlphaAnimation(0, 1)
    Alpha.setDuration(500)
    Alpha.setFillAfter(true)
    jrr.startAnimation(Alpha)
    task(500, function()
      vvb.setVisibility(View.GONE)
      bt.setText(getLS("L_APK_extract_1"))
    end)
    jrr.setVisibility(View.VISIBLE)
  end
end

list.setVisibility(View.GONE)

function a3(data)
  function GetAppInfo(bm)
    pm = activity.getPackageManager();
    tb = pm.getApplicationInfo(tostring(bm), 0)
    tb = tb.loadIcon(pm);
    pkg = activity.getPackageManager().getPackageInfo(bm, 0);
    yytb = pkg.applicationInfo.loadLabel(activity.getPackageManager())
    return tb, yytb
  end

  jdt.setVisibility(View.GONE)
  list.setVisibility(View.VISIBLE)

  list.onItemClick = function(parent, v, pos, id)
    dir = tostring(Environment.getExternalStorageDirectory()) .. "/AndLua/ext/"
    a, b = GetAppInfo(data[id].packname)
    AlertDialog.Builder(activity)
        .setTitle(getLS("L_Prompt"))
        .setMessage(getLS("L_Whether_to") .. dir .. b .. ".apk ？")
        .setPositiveButton(getLS("L_Determine"), {
          onClick = function(dialog)
            LuaUtil.copyDir(data[id].filedir, dir .. b .. ".apk")
            SnackerBar.build()
                :msg(getLS("L_Extraction_of_success"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          end
        })
        .setNegativeButton(getLS("L_Cancel"), nil)
        .setNeutralButton(getLS("L_Uninstall"), {
          onClick = function(v)
            import "android.net.Uri"
            import "android.content.Intent"
            uri = Uri.parse("package:" .. data[id].packname)
            intent = Intent(Intent.ACTION_DELETE, uri)
            activity.startActivity(intent)
          end
        })
        .show()
  end
end

function a1()
  adp = LuaAdapter(activity, lb)
  list.Adapter = adp
end

function a2(a, b)
  adp.add { iv = a, tv = b }
end

function LoadApp(Context)
  require "import"
  import "java.io.File"

  call("a1")

  function GetAppInfo(bm)
    pm = activity.getPackageManager();
    tb = pm.getApplicationInfo(tostring(bm), 0)
    tb = tb.loadIcon(pm);
    pkg = activity.getPackageManager().getPackageInfo(bm, 0);
    yytb = pkg.applicationInfo.loadLabel(activity.getPackageManager())
    return tb, yytb
  end

  t = activity.getPackageManager().getInstalledPackages(0)
  data = {}
  for n = 0, t.size() - 1 do
    count = t.get(n)
    app = {}
    a1, b1 = GetAppInfo((tostring(count.applicationInfo)):match(" (.-)}"))
    if tostring(b1):find(Context) then
      app.packname = (tostring(count.applicationInfo)):match(" (.-)}")
      app.filedir = count.applicationInfo.sourceDir
      table.insert(data, app)
    end
  end
  for k, v in pairs(data) do
    a, b = GetAppInfo(v.packname)
    if tostring(b):find(Context) then
      call("a2", a, b)
    end
  end
  call("a3", data)
end

thread(LoadApp, "")

gjc.addTextChangedListener {
  onTextChanged = function(s)
    thread(LoadApp, gjc.Text)
  end
}
