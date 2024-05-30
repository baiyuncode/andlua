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
main11 = {
  ScrollView,
  backgroundColor = AndLuaB,
  layout_width = "-1",
  id = "ViewNight_lay",
  VerticalScrollBarEnabled = false,
  overScrollMode = 2,
  layout_height = "-1",
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      CardView,
      layout_width = "-1",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      layout_height = "80dp",
      layout_margin = "8dp",
      elevation = "0dp",
      id = "ss",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_height = "-1",
        {
          CardView,
          layout_height = "55dp",
          id = "tbk",
          layout_width = "55dp",
          elevation = "0dp",
          radius = "4dp",
          backgroundColor = AndLuaB1,
          layout_centerVertical = "true",
          layout_marginLeft = "8dp",
          {
            ImageView,
            src = "icon.png",
            layout_margin = "3dp",
            id = "tb",
            layout_width = "-1",
            scaleType = "fitXY",
            layout_height = "-1",
          },
        },
        {
          RelativeLayout,
          layout_alignTop = "tbk",
          layout_height = "-1",
          layout_toRightOf = "tbk",
          layout_width = "-1",
          layout_alignBottom = "tbk",
          {
            TextView,
            textSize = "16sp",
            id = "mz",
            textColor = TitleColor,
            layout_marginTop = "3dp",
            text = getLS("L_Source_name"),
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            textSize = "13sp",
            id = "xzl",
            textColor = TitleColor1,
            text = "0KB",
            layout_marginTop = "5dp",
            layout_below = "mz",
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            layout_width = "0dp",
            layout_height = "0dp",
            text = "1",
            id = "pd",
          },
          {
            TextView,
            layout_width = "0dp",
            layout_height = "0dp",
            text = "0",
            id = "tp1",
          },
          {
            TextView,
            layout_width = "0dp",
            layout_height = "0dp",
            text = "0",
            id = "tp2",
          },
          {
            TextView,
            layout_width = "0dp",
            layout_height = "0dp",
            text = "0",
            id = "tp3",
          },
        },
      },
    },
    {
      RelativeLayout,
      layout_width = "-1",
      layout_below = "ss",
      layout_height = "-2",
      id = "ggk",
      {
        CardView,
        layout_marginRight = "8dp",
        layout_marginBottom = "8dp",
        layout_width = "-1",
        elevation = "0dp",
        layout_marginTop = "0dp",
        layout_marginLeft = "8dp",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        {
          RelativeLayout,
          layout_width = "-1",
          {
            CardView,
            layout_height = "17dp",
            id = "hg",
            layout_width = "-2",
            layout_marginTop = "8dp",
            layout_below = "xzl",
            elevation = "0dp",
            layout_marginLeft = "8dp",
            {
              LinearLayout,
              layout_width = "-2",
              layout_height = "-1",
              backgroundColor = tonumber(bjzt()),
              {
                TextView,
                layout_height = "-1",
                text = getLS("L_The_source_code_that"),
                layout_margin = "2dp",
                id = "ti3tle",
                layout_width = "-1",
                gravity = "center",
                textColor = TitleColor3,
                textSize = "10sp",
              },
            },
          },
          {
            EditText,
            layout_marginRight = "5dp",
            hint = getLS("L_Please_enter_the_source_is_introduced_and_illustrated"),
            textSize = "12sp",
            layout_below = "hg",
            background = "0",
            textColor = TitleColor,
            layout_width = "-1",
            id = "jss",
            layout_marginLeft = "5dp",
          },
        },
      },
    },
    {
      CardView,
      layout_below = "ggk",
      layout_marginRight = "8dp",
      layout_marginLeft = "8dp",
      layout_marginTop = "0dp",
      layout_marginBottom = "8dp",
      layout_width = "match_parent",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      elevation = "0dp",
      id = "lll",
      {
        LinearLayout,
        layout_height = "fill",
        layout_marginRight = "8dp",
        orientation = "vertical",
        layout_marginLeft = "8dp",
        layout_marginTop = "8dp",
        layout_marginBottom = "8dp",
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
          textColor = TitleColor,
          textSize = "14sp",
          layout_width = "-1",
          id = "ffjg",
        },
      },
    },
    {
      CardView,
      layout_below = "lll",
      layout_marginRight = "8dp",
      layout_marginLeft = "8dp",
      layout_marginTop = "0dp",
      layout_marginBottom = "8dp",
      layout_width = "match_parent",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      elevation = "0dp",
      id = "lll6",
      {
        LinearLayout,
        layout_height = "fill",
        layout_marginRight = "5dp",
        orientation = "vertical",
        layout_marginLeft = "5dp",
        layout_marginTop = "5dp",
        layout_marginBottom = "5dp",
        layout_width = "fill",
        {
          CheckBox,
          gravity = "right|center",
          layout_width = "match_parent",
          textColor = TitleColor,
          text = getLS("L_Original_source"),
          paddingRight = "8dp",
          id = "jz9",
        },
      },
    },
    {
      CardView,
      layout_below = "lll6",
      layout_marginRight = "8dp",
      layout_marginLeft = "8dp",
      layout_marginTop = "0dp",
      layout_marginBottom = "8dp",
      layout_width = "match_parent",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      elevation = "0dp",
      id = "lll66",
      {
        LinearLayout,
        layout_height = "fill",
        layout_marginRight = "5dp",
        orientation = "vertical",
        layout_marginLeft = "5dp",
        layout_marginTop = "5dp",
        layout_marginBottom = "5dp",
        layout_width = "fill",
        {
          Spinner,
          id = "classification",
          layout_width = "fill",
          layout_marginTop = "5dp",
          layout_marginBottom = "5dp",
        },
      },
    },
    {
      RelativeLayout,
      layout_width = "-1",
      layout_below = "lll66",
      layout_height = "-2",
      id = "lll5",
      {
        CardView,
        layout_marginRight = "8dp",
        layout_marginBottom = "8dp",
        layout_width = "-1",
        elevation = "0dp",
        layout_marginTop = "0dp",
        layout_marginLeft = "8dp",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        {
          RelativeLayout,
          layout_width = "-1",
          {
            CardView,
            layout_height = "17dp",
            id = "hg5",
            layout_width = "-2",
            layout_marginTop = "8dp",
            elevation = "0dp",
            layout_marginLeft = "8dp",
            {
              LinearLayout,
              layout_width = "-2",
              layout_height = "-1",
              backgroundColor = tonumber(bjzt()),
              {
                TextView,
                layout_height = "-1",
                text = getLS("L_The_source_code_label"),
                layout_margin = "2dp",
                id = "ti3tle5",
                layout_width = "-1",
                gravity = "center",
                textColor = "0xffffffff",
                textSize = "10sp",
              },
            },
          },
          {
            EditText,
            layout_marginRight = "5dp",
            hint = getLS("L_Multiple_tags_separated_by_Spaces"),
            textSize = "12sp",
            layout_below = "hg5",
            background = "0",
            layout_width = "-1",
            id = "Label",
            layout_marginLeft = "5dp",
            textColor = TitleColor,
          },
        },
      },
    },
    {
      RelativeLayout,
      layout_width = "-1",
      layout_below = "lll5",
      layout_height = "-2",
      id = "sskk",
      {
        CardView,
        layout_marginRight = "8dp",
        layout_marginBottom = "8dp",
        layout_width = "-1",
        elevation = "0dp",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        layout_marginTop = "0dp",
        layout_marginLeft = "8dp",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            CardView,
            layout_height = "17dp",
            id = "hgb",
            layout_width = "-2",
            layout_marginTop = "8dp",
            elevation = "0dp",
            layout_below = "xzl",
            layout_marginLeft = "8dp",
            {
              LinearLayout,
              layout_width = "-1",
              layout_height = "-1",
              backgroundColor = tonumber(bjzt()),
              {
                TextView,
                layout_height = "-1",
                text = getLS("L_Add_a_screenshot"),
                layout_margin = "2dp",
                id = "tjjt",
                layout_width = "-1",
                gravity = "center",
                textColor = "0xffffffff",
                textSize = "10sp",
              },
            },
          },
          {
            HorizontalScrollView,
            layout_marginRight = "8dp",
            layout_marginBottom = "8dp",
            layout_height = "220dp",
            layout_below = "hgb",
            layout_width = "-1",
            layout_marginTop = "5dp",
            layout_marginLeft = "8dp",
            horizontalScrollBarEnabled = false,
            {
              LinearLayout,
              layout_width = "-1",
              orientation = "horizontal",
              layout_height = "-1",
              {
                ImageView,
                layout_width = "120dp",
                scaleType = "fitXY",
                layout_height = "-1",
                id = "jt1",
              },
              {
                ImageView,
                layout_height = "-1",
                id = "jt2",
                layout_width = "120dp",
                scaleType = "fitXY",
                layout_marginLeft = "5dp",
              },
              {
                ImageView,
                layout_height = "-1",
                id = "jt3",
                layout_width = "120dp",
                scaleType = "fitXY",
                layout_marginLeft = "5dp",
              },
            },
          },
        },
      },
    },
    {
      ImageView,
      layout_height = "55dp",
      layout_marginTop = "20dp",
      backgroundColor = tonumber(bjzt()),
      ColorFilter = "#ffffffff",
      layout_marginBottom = "15dp",
      layout_below = "sskk",
      id = "ok",
      padding = "8dp",
      layout_centerHorizontal = "true",
      layout_width = "55dp",
      src = "res/Metrial50.png",
      elevation = "0dp",
    },
  },
};

activity.setContentView(loadlayout(main11))

ViewNight(ViewNight_lay)

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
      text = getLS("L_Fill_in_the_information"),
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
ztt()

item = { "其他", "系统工具", "实用工具", "社交聊天", "资讯阅读", "通讯网络", "摄影图片",
  "影音娱乐", "生活服务", "金融财经", "文档商务", "运动健康", "学习教育", "旅行交通", "主题美化",
  "购物" }
adp = ArrayAdapter(activity, android.R.layout.simple_spinner_item, item)
adp.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
classification.setAdapter(adp)

classification1 = "其他"

classification.onItemSelected = function(p, v, s, i)
  classification1 = v.Text
end

tjjt.onClick = function()
  import "android.content.Intent"
  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end


function onActivityResult(requestCode, resultCode, intent)
  if intent then
    local cursor = this.getContentResolver().query(intent.getData(), nil, nil, nil, nil)
    cursor.moveToFirst()
    import "android.provider.MediaStore"
    local idx = cursor.getColumnIndex(MediaStore.Images.ImageColumns.DATA)
    fileSrc = cursor.getString(idx)
    bit = nil
    hh = pd.Text
    if hh == "1" then
      if fileSrc != nil then
        jt1.setImageBitmap(loadbitmap(fileSrc))
        pd.setText("2")
        tp1.setText(fileSrc)
      end
    else
      if hh == "2" then
        if fileSrc != nil then
          jt2.setImageBitmap(loadbitmap(fileSrc))
          pd.setText("3")
          tp2.setText(fileSrc)
        end
      else
        if hh == "3" then
          if fileSrc != nil then
            jt3.setImageBitmap(loadbitmap(fileSrc))
            tp3.setText(fileSrc)
          end
        else
        end
      end
    end
    import "android.graphics.BitmapFactory"
    bit = BitmapFactory.decodeFile(fileSrc)
  end
end

lj, btk, tby = ...
if LuaUtil.zip(lj, "/sdcard/AndLua/cache/") then
  sjc = os.date("%Y%m%d%H%M%S")
  yj = File(lj).getName()
  wjh = io.open(lj .. "/init.lua"):read("*a")
  btt = wjh:match('%appname="(.-)"')
  wjg = btt .. "_" .. sjc
  File("/sdcard/AndLua/cache/" .. yj .. ".zip").renameTo(File("/sdcard/AndLua/cache/" .. wjg .. ".alp"))
  lja = ("/sdcard/AndLua/cache/" .. wjg .. ".alp")
  function GetFileSize(path)
    import "java.io.File"
    import "android.text.format.Formatter"
    size = File(tostring(path)).length()
    Sizes = Formatter.formatFileSize(activity, size)
    return Sizes
  end

  xzl.setText(GetFileSize(lja))
else
  activity.result({ "打包失败" })
end
mz.setText(btk)
tb.setImageBitmap(loadbitmap(tby))
function CircleButton(view, InsideColor, radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(InsideColor)
  drawable.setCornerRadii({ radiu, radiu, radiu, radiu, radiu, radiu, radiu, radiu });
  view.setBackgroundDrawable(drawable)
end

CircleButton(ok, tonumber(bjzt()), 90)

b = bmob("73669056f163f1e66a6deed81dff6e50", "8a2770b0663035f18c9e4260711873b8")

import "bmob"

b0 = bmob("73669056f163f1e66a6deed81dff6e50", "8a2770b0663035f18c9e4260711873b8")

IC = lj .. "/icon.png"
if File(IC).isFile() == false then
  IC = activity.getLuaDir() .. "/icon.png"
end

ok.onClick = function()
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
      if tp1.Text == "0" then
        SnackerBar.build()
            :msg(getLS("L_Please_upload_three_source_screenshots"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif tp2.Text == "0" then
        SnackerBar.build()
            :msg(getLS("L_Please_upload_three_source_screenshots"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif tp3.Text == "0" then
        SnackerBar.build()
            :msg(getLS("L_Please_upload_three_source_screenshots"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      else
        if jss.Text == "" then
          js = "这家伙很懒，什么都没写！"
        else
          js = jss.Text
        end
        SnackerBar.build()
            :msg(getLS("L_Is_being_issued"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
        dialog5 = ProgressDialog(this)
        dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
        dialog5.setCancelable(true)
        dialog5.setCanceledOnTouchOutside(false)
        dialog5.show()
        b0:upload(tp1.Text, function(code, j1)
          t1 = dump(j1):match('%["url"%]	= "(.-)" ;')
          b0:upload(tp2.Text, function(code, j2)
            t2 = dump(j2):match('%["url"%]	= "(.-)" ;')
            b0:upload(tp3.Text, function(code, j3)
              t3 = dump(j3):match('%["url"%]	= "(.-)" ;')
              b0:upload(tby, function(code, j5)
                icon = dump(j5):match('%["url"%]	= "(.-)" ;')
                b0:upload(lja, function(code, j4)
                  xzlj = dump(j4):match('%["url"%]	= "(.-)" ;')
                  dx6 = xzl.Text
                  mz6 = mz.Text
                  text = js
                  uguid()
                  jzxz = "0"
                  jzck = "0"
                  Original = "false"
                  if jz9.isChecked() then
                    Original = "true"
                  end
                  if jz1.isChecked() then
                    jzxz = "1"
                  end
                  if jz2.isChecked() then
                    jzck = "1"
                  end
                  if ffjg.Text == "" then
                    PA = "0"
                  else
                    PA = tostring(string.format("%.2f", ffjg.Text))
                  end
                  task(100, function()
                    if icon == nil or xzlj == nil or t1 == nil or t2 == nil or t3 == nil then
                      dialog5.hide()
                      AlertDialog.Builder(this)
                          .setTitle(getLS("L_Prompt"))
                          .setMessage(getLS("L_Upload_error"))
                          .setPositiveButton(getLS("L_Determine"), { onClick = function(v) end })
                          .show()
                    else
                      Http.post("https://ly250.cn/andlua/fym.php",
                        "uid1=" ..
                        uid1 ..
                        "&uid2=" ..
                        uid2 ..
                        "&uid3=" ..
                        uid3 ..
                        "&jzxz=" ..
                        jzxz ..
                        "&jzck=" ..
                        jzck ..
                        "&src1=" ..
                        t1 ..
                        "&src2=" ..
                        t2 ..
                        "&src3=" ..
                        t3 ..
                        "&icon=" ..
                        icon ..
                        "&url=" ..
                        xzlj ..
                        "&dx=" ..
                        dx6 ..
                        "&name=" ..
                        mz6 ..
                        "&text=" ..
                        text ..
                        "&money=" ..
                        PA ..
                        "&pass=" ..
                        xzmm.Text ..
                        "&Original=" ..
                        encrypt(Original) ..
                        "&Label=" .. encrypt(Label.Text) .. "&classification=" ..
                        encrypt(classification1) .. "&sid=" .. sid(), function(a1, b, c, d)
                        sid1 = b:match('%["ret"] = "(.-)%";')
                        dialog5.hide()
                        if sid1 == "ok" then
                          activity.result({ "发布成功" })
                        elseif sid1 == "4" then
                          SnackerBar.build()
                              :msg(getLS("L_Identity_expired"))
                              :actionText(getLS("L_OK"))
                              :action(function()
                              end)
                              :show()
                        else
                          SnackerBar.build()
                              :msg(getLS("L_You_submit"))
                              :actionText(getLS("L_OK"))
                              :action(function()
                              end)
                              :show()
                        end
                      end)
                    end
                  end)
                end)
              end)
            end)
          end)
        end)
      end
    end
  end
end

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
