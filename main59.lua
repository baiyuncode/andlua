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
  backgroundColor = AndLuaB1,
  layout_width = "fill",
  {
    ProgressBar,
    id = "js",
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
      text = getLS("L_Bill_management"),
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

page = 0
page1 = 1

lb = {
  LinearLayout,
  orientation = "vertical",
  {
    RelativeLayout,
    layout_width = "match_parent",
    {
      TextView,
      textColor = TitleColor,
      id = "title",
      text = "标题",
      layout_marginTop = "10dp",
      textSize = "16sp",
      layout_marginLeft = "10dp",
    },
    {
      TextView,
      id = "text",
      layout_below = "title",
      text = "副标题",
      textColor = TitleColor1,
      layout_marginTop = "5dp",
      textSize = "12sp",
      layout_marginLeft = "10dp",
    },
    {
      TextView,
      id = "time",
      layout_marginBottom = "10dp",
      layout_below = "text",
      text = "2018-01-01",
      textColor = TitleColor1,
      layout_marginTop = "5dp",
      textSize = "10sp",
      layout_marginLeft = "10dp",
    },
    {
      TextView,
      id = "typec",
      textSize = "0",
      layout_width = "0",
      layout_height = "0",
    },
    {
      TextView,
      id = "uid_1",
      textSize = "0",
      layout_width = "0",
      layout_height = "0",
    },
    {
      TextView,
      id = "uid3_1",
      textSize = "0",
      layout_width = "0",
      layout_height = "0",
    },
    {
      TextView,
      id = "id_1",
      textSize = "0",
      layout_width = "0",
      layout_height = "0",
    },
    {
      TextView,
      id = "code_name",
      textSize = "0",
      layout_width = "0",
      layout_height = "0",
    },
    {
      TextView,
      textColor = "#FF0000",
      layout_centerInParent = "true",
      text = "+1",
      id = "mon",
      Typeface = Typeface.defaultFromStyle(Typeface.BOLD),
      textSize = "15sp",
      layout_alignParentRight = "true",
      layout_marginRight = "10dp",
    },
  },
};

sxlist1.setColorSchemeColors({ tonumber(bjzt()) });
sxlist1.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  task(500, function()
    adp5 = LuaAdapter(activity, lb)
    list1.setAdapter(adp5)
    page = 0
    page1 = 1
    sxht(page1)
    sxlist1.setRefreshing(false);
  end)
end })

adp5 = LuaAdapter(activity, lb)
list1.setAdapter(adp5)

function sxht(i)
  uguid()
  Http.post("https://ly250.cn/andlua/bill.php",
    "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&page=" .. i .. "&uid3=" .. uid3 .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      js.setVisibility(View.GONE)

      type1 = b:gmatch('%["type"] = "(.-)%";')
      money1 = b:gmatch('%["money"] = "(.-)%";')
      text1 = b:gmatch('%["text"] = "(.-)%";')
      title1 = b:gmatch('%["title"] = "(.-)%";')
      Handle1 = b:gmatch('%["Handle"] = "(.-)%";')
      uid_1 = b:gmatch('%["uid1"] = "(.-)%";')
      uid_3 = b:gmatch('%["uid3"] = "(.-)%";')
      id_1_1 = b:gmatch('%["id"] = "(.-)%";')
      for time2 in b:gmatch('%["time"] = "(.-)%";') do
        type2 = type1()
        text2 = text1()
        title2 = title1()
        money2 = money1()
        Handle2 = Handle1()
        uid_2 = uid_1()
        uid_3_2 = uid_3()
        id_1_1_1 = id_1_1()
        if Handle2 == "0" then
          Handle2 = getLS("L_In_the_processing")
        else
          Handle2 = getLS("L_Have_to_deal_with")
        end
        if type2 == "1" then
          adp5.add { code_name = text2, id_1 = id_1_1_1, uid3_1 = uid_3_2, uid_1 = uid_2, typec = type2, title = title2, mon = {
            Text = "+" .. money2, TextColor = 0xffFF0000 }, time = time2, text = getLS("L_Card") .. text2 }
        elseif type2 == "2" then
          adp5.add { code_name = text2, id_1 = id_1_1_1, uid3_1 = uid_3_2, uid_1 = uid_2, typec = type2, title = title2, mon = {
            Text = "-" .. money2, TextColor = TitleColor }, time = time2 .. " | " .. Handle2, text = getLS("L_Fees") ..
          text2 }
        elseif type2 == "3" then
          adp5.add { code_name = text2, id_1 = id_1_1_1, uid3_1 = uid_3_2, uid_1 = uid_2, typec = type2, title = title2, mon = {
            Text = "+" .. money2, TextColor = 0xffFF0000 }, time = time2, text = getLS("L_Source_1") .. text2 }
        elseif type2 == "4" then
          adp5.add { code_name = text2, id_1 = id_1_1_1, uid3_1 = uid_3_2, uid_1 = uid_2, typec = type2, title = title2, mon = {
            Text = "-" .. money2, TextColor = TitleColor }, time = time2, text = getLS("L_Fees") .. text2 }
        elseif type2 == "5" then
          adp5.add { code_name = text2, id_1 = id_1_1_1, uid3_1 = uid_3_2, uid_1 = uid_2, typec = type2, title = title2, mon = {
            Text = "+" .. money2, TextColor = 0xffFF0000 }, time = time2, text = text2 }
        elseif type2 == "6" then
          adp5.add { code_name = text2, id_1 = id_1_1_1, uid3_1 = uid_3_2, uid_1 = uid_2, typec = type2, title = title2, mon = {
            Text = "-" .. money2, TextColor = TitleColor }, time = time2, text = getLS("L_Source_1") .. text2 }
        end
      end
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg(getLS("L_For_failure"))
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
    else
    end
    page = 0
    sxlist1.setRefreshing(false);
  end)
end

localdialog = ProgressDialog(this)
localdialog.setTitle(getLS("L_Prompt"))
localdialog.setMessage(getLS("L_Being_loaded_in") .. "...")
localdialog.setCancelable(true)
localdialog.setCanceledOnTouchOutside(false)

list1.onItemClick = function(p, v, i, s)
  if v.Tag.typec.Text == "3" then
    activity.newActivity("main12", { v.Tag.uid_1.Text, v.Tag.uid3_1.Text })
  elseif v.Tag.typec.Text == "6" then
    localdialog.show()
    uguidPro()
    Http.post("https://ly250.cn/andlua/DuplicateDownload.php",
      "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&sid=" .. sidPro() .. "&id=" ..
      encrypt(v.Tag.id_1.Text), function(a1, b, c, d)
      b = tostring(decrypt(b))
      sid1 = b:match('%["ret"] = "(.-)%";')
      code_url = b:match('%["url"] = "(.-)%";')
      if sid1 == "4" then
        SnackerBar.build()
            :msg(getLS("L_Identity_expired"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif sid1 == "5" then
        SnackerBar.build()
            :msg(getLS("L_The_bill_for_more_than_five_minutes_download_has_failed"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif sid1 == "ok" then
        dowcode(code_url, v.Tag.code_name.Text)
      else
        SnackerBar.build()
            :msg(getLS("L_Server_error"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      end
      localdialog.hide()
    end)
  end
  return true
end

list1.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list1.getLastVisiblePosition() == list1.getCount() - 1 then
      if page == 0 then
        page = 1
        page1 = page1 + 1
        sxlist1.setRefreshing(true);
        sxht(page1)
      end
    end
  end }

function inapk(path)
  intent = Intent(Intent.ACTION_VIEW);
  intent.setDataAndType(Uri.parse("file:///" .. path), "application/vnd.android.package-archive")
  intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
  activity.startActivity(intent);
end

function down(url, path)
  import "android.content.*"
  import "android.net.*"
  local tt = Ticker()
  tt.start()
  Http.download(url, path, function(code, data, cookie, header)
    tt.stop()
    dialog6.incrementProgressBy(100)
    dialog6.incrementSecondaryProgressBy(100)
    dialog6.hide()
    SnackerBar.build()
        :msg(getLS("L_The_download_is_complete"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
    NewProject(path, true)
  end)

  function tt.onTick()
    local f = io.open(path, "r")
    if f ~= nil then
      local len = f:read("a")
      local s = #len / lens
      dialog6.incrementProgressBy(math.ceil(s * 100))
      dialog6.incrementSecondaryProgressBy(math.ceil(s * 100))
    end
  end
end

function big(url, path)
  import "java.net.URL"
  realUrl = URL(url)
  con = realUrl.openConnection();
  con.setRequestProperty("accept", "*/*");
  con.setRequestProperty("connection", "Keep-Alive");
  con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
  lens = con.getContentLength()
  dialog6.incrementProgressBy(0)
  dialog6.incrementSecondaryProgressBy(0)
  down(url, path)
end

function down1(url, path)
  local tt = Ticker()
  tt.start()
  Http.download(url, path, function(code, data, cookie, header)
    tt.stop()
    dialog6.incrementProgressBy(100)
    dialog6.incrementSecondaryProgressBy(100)
    dialog6.hide()
    SnackerBar.build()
        :msg(getLS("L_The_download_is_complete"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
    inapk(path)
  end)

  function tt.onTick()
    local f = io.open(path, "r")
    if f ~= nil then
      local len = f:read("a")
      local s = #len / lens
      dialog6.incrementProgressBy(math.ceil(s * 100))
      dialog6.incrementSecondaryProgressBy(math.ceil(s * 100))
    end
  end
end

function big1(url, path)
  import "java.net.URL"
  realUrl = URL(url)
  con = realUrl.openConnection();
  con.setRequestProperty("accept", "*/*");
  con.setRequestProperty("connection", "Keep-Alive");
  con.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
  lens = con.getContentLength()
  dialog6.incrementProgressBy(0)
  dialog6.incrementSecondaryProgressBy(0)
  down1(url, path)
end

function dowcode(url, name)
  dialog6 = ProgressDialog(this)
  dialog6.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
  dialog6.setTitle(getLS("L_Is_in_the_download") .. "...")
  dialog6.setCancelable(true)
  dialog6.setCanceledOnTouchOutside(true)
  dialog6.setMax(100)
  dialog6.show()
  path = "/sdcard/AndLua/download/" .. name .. ".alp"
  big(url, path)
end

sxht(page1)
