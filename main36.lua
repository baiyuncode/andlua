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
  LinearLayout,
  layout_height = "fill",
  orientation = "vertical",
  layout_width = "fill",
  {
    ScrollView,
    layout_height = "fill",
    layout_width = "fill",
    {
      LinearLayout,
      orientation = "vertical",
      layout_height = "fill",
      layout_width = "fill",
      {
        CardView,
        layout_margin = "5dp",
        radius = "4dp",
        elevation = "1dp",
        layout_width = "-1",
        layout_height = "-2",
        {
          LinearLayout,
          orientation = "vertical",
          layout_width = "-1",
          layout_height = "-1",
          background = "#ffffffff",
          {
            TextView,
            layout_marginTop = "10dp",
            layout_marginLeft = "10dp",
            TextColor = tonumber(bjzt()),
            text = "通用",
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "后台开关",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              Switch,
              layout_gravity = "right",
              layout_marginRight = "10dp",
              layout_height = "-1",
              id = "s1",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h1",
            },
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "修改名字",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              TextView,
              layout_gravity = "right",
              layout_marginRight = "22dp",
              text = "加载中",
              layout_height = "-1",
              id = "s4",
              gravity = "center",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h4",
            },
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "修改图标",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              LinearLayout,
              layout_gravity = "right",
              layout_marginRight = "20dp",
              layout_height = "-1",
              gravity = "center",
              {
                ImageView,
                layout_height = "30dp",
                id = "s5",
                layout_width = "30dp",
                src = "icon.png",
                layout_gravity = "center",
              },
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h5",
            },
          },
        },
      },
      {
        CardView,
        layout_margin = "5dp",
        layout_width = "-1",
        radius = "4dp",
        elevation = "1dp",
        layout_height = "-2",
        {
          LinearLayout,
          orientation = "vertical",
          layout_width = "-1",
          layout_height = "-1",
          background = "#ffffffff",
          {
            TextView,
            layout_marginTop = "10dp",
            layout_marginLeft = "10dp",
            TextColor = tonumber(bjzt()),
            text = "加密",
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "sid1",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              TextView,
              layout_gravity = "right",
              layout_marginRight = "22dp",
              text = "1",
              layout_height = "-1",
              id = "s2",
              gravity = "center",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h2",
            },
          },
          {
            FrameLayout,
            layout_width = "-1",
            layout_height = "50dp",
            {
              ImageView,
              src = "res/Metrial394.png",
              layout_width = "23dp",
              ColorFilter = "#757575",
              layout_marginLeft = "10dp",
              layout_height = "-1",
            },
            {
              TextView,
              text = "sid2",
              layout_marginLeft = "50dp",
              textSize = "13sp",
              gravity = "center",
              layout_height = "-1",
            },
            {
              TextView,
              layout_gravity = "right",
              layout_marginRight = "22dp",
              text = "1",
              layout_height = "-1",
              id = "s3",
              gravity = "center",
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h3",
            },
          },
        },
      },
    },
  },
};

activity.setContentView(loadlayout(main10))
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
      text = "后台设置",
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

dialog5 = ProgressDialog(this)
dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
dialog5.show()

function sxd()
  uguid()
  Http.post("https://ly250.cn/api/getsz.php", "uid1=" .. uid1 ..
  "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. lj .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    if sid1 == "ok" then
      kg = b:match('%["kg"] = "(.-)%";')
      j = b:match('%["j"] = "(.-)%";')
      c = b:match('%["c"] = "(.-)%";')
      mz = b:match('%["name"] = "(.-)%";')
      tb = b:match('%["src"] = "(.-)%";')
      s2.setText(j)
      s3.setText(c)
      s4.setText(mz)
      s5.setImageBitmap(loadbitmap(tb))
      if kg == "1" then
        s1.setChecked(true)
      else
        s1.setChecked(false)
      end
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

sxd()

h1.onClick = function()
  dialog5 = ProgressDialog(this)
  dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
  dialog5.setCancelable(true)
  dialog5.setCanceledOnTouchOutside(false)
  dialog5.show()
  uguid()
  Http.post("https://ly250.cn/api/kgfwq.php", "uid1=" .. uid1 ..
  "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. lj .. "&sid=" .. sid(), function(a1, b, c, d)
    sid1 = b:match('%["ret"] = "(.-)%";')
    dialog5.hide()
    if sid1 == "ok" then
      SnackerBar.build()
          :msg("修改成功")
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      sxd()
    elseif sid1 == "1" then
      SnackerBar.build()
          :msg("提交失败")
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
  end)
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
      textSize = "15sp",
      layout_marginTop = "10dp",
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      text = "请输入1-9之间的数字",
    },
    {
      EditText,
      layout_marginTop = "5dp",
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      id = "edit",
      InputType = "number",
      singleLine = true,
    },
  };

  AlertDialog.Builder(this)
      .setTitle("修改sid1")
      .setView(loadlayout(InputLayout))
      .setPositiveButton("确定", {
        onClick = function(v)
          if edit.Text == "0" or edit.Text == "" then
            SnackerBar.build()
                :msg("sid1不能为空/0")
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
            uguid()
            Http.post("https://ly250.cn/api/xgj.php",
              "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" ..
              lj .. "&text=" .. edit.Text .. "&sid=" .. sid(), function(a1, b, c, d)
              sid1 = b:match('%["ret"] = "(.-)%";')
              dialog5.hide()
              if sid1 == "ok" then
                sxd()
                SnackerBar.build()
                    :msg("修改成功")
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              elseif sid1 == "1" then
                SnackerBar.build()
                    :msg("提交失败")
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
            end)
          end
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  Typew(edit)
  edit.setText(s2.Text)
  edit.addTextChangedListener {
    onTextChanged = function(s)
      if #edit.Text >= 2 then
        edit.setText(string.sub(edit.Text, 0, 1))
      else
      end
    end
  }
end

h3.onClick = function()
  InputLayout = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      TextView,
      id = "Prompt",
      textSize = "15sp",
      layout_marginTop = "10dp",
      layout_marginLeft = "3dp",
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      text = "请输入1-9之间的数字",
    },
    {
      EditText,
      layout_marginTop = "5dp",
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      id = "edit1",
      InputType = "number",
      singleLine = true,
    },
  };

  AlertDialog.Builder(this)
      .setTitle("修改sid2")
      .setView(loadlayout(InputLayout))
      .setPositiveButton("确定", {
        onClick = function(v)
          if edit1.Text == "0" or edit1.Text == "" then
            SnackerBar.build()
                :msg("sid2不能为空/0")
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
            uguid()
            Http.post("https://ly250.cn/api/xgc.php",
              "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" ..
              lj .. "&text=" .. edit1.Text .. "&sid=" .. sid(), function(a1, b, c, d)
              sid1 = b:match('%["ret"] = "(.-)%";')
              dialog5.hide()
              if sid1 == "ok" then
                sxd()
                SnackerBar.build()
                    :msg("修改成功")
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              elseif sid1 == "1" then
                SnackerBar.build()
                    :msg("提交失败")
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
            end)
          end
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  Typew(edit1)
  edit1.setText(s3.Text)
  edit1.addTextChangedListener {
    onTextChanged = function(s)
      if #edit1.Text >= 2 then
        edit1.setText(string.sub(edit1.Text, 0, 1))
      else
      end
    end
  }
end


h4.onClick = function()
  InputLayout = {
    LinearLayout,
    orientation = "vertical",
    Focusable = true,
    FocusableInTouchMode = true,
    {
      TextView,
      id = "Prompt",
      textSize = "15sp",
      layout_marginTop = "10dp",
      layout_marginLeft = "3dp",
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      text = "请输入新后台名字",
    },
    {
      EditText,
      layout_marginTop = "5dp",
      layout_marginLeft = "10dp",
      layout_marginRight = "10dp",
      layout_width = "match_parent",
      layout_gravity = "center",
      id = "edit2",
      singleLine = true,
    },
  };

  AlertDialog.Builder(this)
      .setTitle("修改名字")
      .setView(loadlayout(InputLayout))
      .setPositiveButton("确定", {
        onClick = function(v)
          if edit2.Text == "" then
            SnackerBar.build()
                :msg("名字不能为空")
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
            uguid()
            Http.post("https://ly250.cn/api/xmz.php",
              "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" ..
              lj .. "&text=" .. edit2.Text .. "&sid=" .. sid(), function(a1, b, c, d)
              sid1 = b:match('%["ret"] = "(.-)%";')
              dialog5.hide()
              if sid1 == "ok" then
                sxd()
                SnackerBar.build()
                    :msg("修改成功")
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              elseif sid1 == "1" then
                SnackerBar.build()
                    :msg("提交失败")
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
            end)
          end
        end
      })
      .setNegativeButton(getLS("L_Cancel"), nil)
      .show()
  edit2.setText(s4.Text)
  Typew(edit2)
end

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
    b:upload(fileSrc, function(code, jon)
      txv = dump(jon):match('%["url"%]	= "(.-)" ;')
      uguid()
      Http.post("https://ly250.cn/api/xtp.php",
        "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&id=" .. lj .. "&text=" .. txv .. "&sid=" .. sid(),
        function(a1, b, c, d)
          sid1 = b:match('%["ret"] = "(.-)%";')
          dialog5.hide()
          if sid1 == "ok" then
            sxd()
            SnackerBar.build()
                :msg("修改成功")
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          elseif sid1 == "1" then
            SnackerBar.build()
                :msg("提交失败")
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
        end)
    end)
    import "android.graphics.BitmapFactory"
    bit = BitmapFactory.decodeFile(fileSrc)
  end
end

h5.onClick = function()
  local intent = Intent(Intent.ACTION_PICK)
  intent.setType("image/*")
  this.startActivityForResult(intent, 1)
end
