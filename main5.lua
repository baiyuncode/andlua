require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.graphics.drawable.ColorDrawable"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "mods.andlua"
import "mods.SnackerBar"

import "com.tencent.connect.*"
import "com.tencent.connect.common.*"
import "com.tencent.tauth.*"
AppId = "101488083"
ztt()
main10 = {
  LinearLayout,
  layout_height = "fill",
  orientation = "vertical",
  layout_width = "fill",
  {
    RelativeLayout,
    layout_height = "fill",
    backgroundColor = AndLuaB1,
    layout_width = "-1",
    {
      ImageView,
      layout_height = "55dp",
      layout_width = "55dp",
      id = "baw",
      layout_centerInParent = "true",
      src = "res/qqdl.png",
    },
    {
      TextView,
      textSize = "15sp",
      layout_marginTop = "5dp",
      layout_below = "baw",
      text = getLS("L_QQ_login"),
      layout_centerHorizontal = "true",
      textColor = TitleColor1,
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
      text = getLS("L_The_login"),
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
bw(baw, 0xFFDDDDDD)
mTencent = Tencent.createInstance(AppId, this)
mIUiListener = IUiListener({
  onComplete = function(p1)
    if (null == p1) then
      SnackerBar.build()
          :msg(getLS("L_Login_failed"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      return
    end
    jsonResponse = p1;
    if (null ~= jsonResponse and jsonResponse.length() == 0) then
      SnackerBar.build()
          :msg(getLS("L_Login_failed"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      return;
    end
    a = jsonResponse.toString()
    sid3 = a:match('%"openid":"(.-)%","')
    Http.post("https://ly250.cn/andlua/admin.php", "openid=" .. sid3 .. "&sid=" .. sid(), function(a1, b, c, d)
      sid2 = b:match('%["ret"] = "(.-)%";')
      if sid2 == "0" then
        activity.newActivity("main6", { sid3 })
      elseif sid2 == "1" then
        Http.post("https://ly250.cn/andlua/admin.php", "openid=" .. sid3 .. "&sid=" .. sid(), function(a1, b, c, d)
          sid2 = b:match('%["ret"] = "(.-)%";')
          if sid2 == "0" then
            activity.newActivity("main6", { sid3 })
          elseif sid2 == "1" then
            SnackerBar.build()
                :msg(getLS("L_You_submit"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          elseif sid2 == "true" then
            u6 = activity.getLuaDir() .. "/res/set6.LY"
            io.open(u6, "w"):write("true"):close()
            activity.result({ "", "", "注销" })
          elseif sid2 == "false" then
            SnackerBar.build()
                :msg(getLS("L_Login_failed"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          else
          end
        end)
      elseif sid2 == "true" then
        u6 = activity.getLuaDir() .. "/res/set6.LY"
        io.open(u6, "w"):write("true"):close()
        activity.result({ "", "", "注销" })
      elseif sid2 == "false" then
        SnackerBar.build()
            :msg(getLS("L_Login_failed"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      else
      end
    end)
  end
})

function onActivityResult(requestCode, resultCode, data)
  if requestCode == Constants.REQUEST_LOGIN or requestCode == Constants.REQUEST_APPBAR then
    Tencent.onActivityResultData(requestCode, resultCode, data, mIUiListener);
  end
end

baw.onClick = function()
  SnackerBar.build()
      :msg(getLS("L_Is_to_raise_QQ_login"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
  mTencent.login(this, "all", mIUiListener, true)
end
function onResult(name, ...)
  a, b, c = ...
  activity.result({ a, b, c })
end
