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
  background = "#ffffff",
  layout_width = "fill",
  {
    TextView,
    textSize = "15sp",
    id = "js",
    text = "正在加载中...",
    layout_centerInParent = "true",
  },
  {
    SwipeRefreshLayout,
    id = "sxlist1",
    {
      YLListView,
      VerticalScrollBarEnabled = false,
      overScrollMode = 2,
      id = "list1",
      VerticalScrollBarEnabled = false,
      layout_width = "-1",
      layout_height = "-1",
      DividerHeight = 0
    },
  },
};

activity.setContentView(loadlayout(main10))
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
      text = "API接口",
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "tj",
    layout_height = "55dp",
    layout_marginRight = "-15dp",
    {
      ImageView,
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/Metrial351.png",
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
bw(tj, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
tj.onClick = function()
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
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      text = "APP名字：",
      singleLine = true,
      TextColor = tonumber(bjzt()),
    },
    {
      EditText,
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      id = "edit",
    },
  };

  tc = AlertDialog.Builder(this)
      .setTitle("添加后台")
      .setView(loadlayout(InputLayout))
      .setPositiveButton("添加", {
        onClick = function(v)
          if edit.Text == "" then
            SnackerBar.build()
                :msg("名字不能为空")
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          else
            uguid()
            Http.post("https://ly250.cn/api/zckey.php",
              "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&name=" .. edit.Text .. "&sid=" .. sid(),
              function(a1, b, c, d)
                sid1 = b:match('%["ret"] = "(.-)%";')
                if sid1 == "3" then
                  SnackerBar.build()
                      :msg("创建成功")
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                  sxht()
                elseif sid1 == "1" then
                  SnackerBar.build()
                      :msg("获取失败")
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                elseif sid1 == "7" then
                  SnackerBar.build()
                      :msg("后台数量已上限")
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                elseif sid1 == "4" then
                  SnackerBar.build()
                      :msg("创建失败")
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                elseif sid1 == "2" then
                  SnackerBar.build()
                      :msg(getLS("L_Identity_expired"))
                      :actionText(getLS("L_OK"))
                      :action(function()
                      end)
                      :show()
                end
              end)
          end
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  Typew1(edit)
  tc.getButton(tc.BUTTON_POSITIVE).setEnabled(false)
  edit.addTextChangedListener {
    onTextChanged = function(s)
      if edit.Text == "" then
        tc.getButton(tc.BUTTON_POSITIVE).setEnabled(false)
      else
        tc.getButton(tc.BUTTON_POSITIVE).setEnabled(true)
      end
    end
  }
end

lb = {
  LinearLayout,
  layout_height = "fill",
  orientation = "vertical",
  layout_width = "fill",
  {
    RelativeLayout,
    layout_height = "60dp",
    layout_width = "-1",
    {
      ImageView,
      id = "appsrc",
      scaleType = "fitCenter",
      src = "icon.png",
      layout_width = "50dp",
      layout_height = "50dp",
      layout_centerVertical = "true",
      layout_marginLeft = "8dp",
    },
    {
      RelativeLayout,
      layout_alignBottom = "appsrc",
      layout_alignTop = "appsrc",
      layout_toRightOf = "appsrc",
      layout_width = "-1",
      layout_height = "-1",
      layout_marginLeft = "5dp",
      {
        TextView,
        textSize = "16sp",
        textColor = "#666666",
        id = "user",
        text = "名字",
        layout_marginTop = "4dp",
      },
      {
        TextView,
        textSize = "12sp",
        textColor = "#757575",
        id = "cjsj",
        layout_marginTop = "2dp",
        text = "创建时间：2018-01-01",
        layout_below = "user",
      },
      {
        TextView,
        layout_height = "0dp",
        id = "dd",
        layout_width = "0dp",
      },
    },
  },
};

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  task(500, function()
    sxht()
    sxlist1.setRefreshing(false);
  end)
end })

adp5 = LuaAdapter(activity, lb)
list1.setAdapter(adp5)
function sxht()
  adp5 = LuaAdapter(activity, lb)
  list1.setAdapter(adp5)
  uguid()
  Http.post("https://ly250.cn/api/getkey.php", "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&sid=" ..
  sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      js.setText("")

      rq = b:gmatch('%["apprq"] = "(.-)%";')
      tb = b:gmatch('%["apptb"] = "(.-)%";')
      idd = b:gmatch('%["id"] = "(.-)%";')
      for mz in b:gmatch('%["appmz"] = "(.-)%";') do
        rq1 = rq()
        tb1 = tb()
        ids = idd()
        adp5.add { cjsj = rq1, user = mz, appsrc = tb1, dd = ids }
      end
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      js.setText("获取失败")
    elseif sid1 == "2" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "3" then
      SnackerBar.build()
          :msg("服务器维护中")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
    end
  end)
end

sxht()

list1.onItemClick = function(l, v, p, i)
  iff = v.Tag.dd.Text
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/yzkey.php", "uid1=" ..
  uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. iff .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      activity.newActivity("main34", { iff })
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("获取失败")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "2" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "no" then
      SnackerBar.build()
          :msg("该后台已被封禁")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "3" then
      SnackerBar.build()
          :msg("服务器维护中")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    else
    end
    dialog5.hide()
  end)
end
