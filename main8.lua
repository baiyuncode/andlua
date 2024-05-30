require "import"
import "android.app.*"
import "android.os.*"
import "android.text.Html"
import "android.widget.*"
import "mods.SnackerBar"
import "java.util.regex.*"
import "android.text.Html"
import "android.text.method.LinkMovementMethod"
import "android.content.*"
import "android.view.inputmethod.InputMethodManager"
import "console"
import "android.view.*"
import "android.graphics.Typeface"
import "android.content.Context"
import "java.io.File"
import "bin"
import "android.view.animation.*"
import "android.view.animation.Animation"
import "android.graphics.*"
import "mods.andlua"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "android.graphics.drawable.ColorDrawable"
import "android.content.*"
import "android.graphics.Color"
import "android.support.v4.widget.*"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
import "cn.waps.*"

ztt()
lb = {
  {
    RelativeLayout,
    backgroundColor = AndLuaB,
    layout_height = "-2",
    layout_width = "-1",
    {
      CardView,
      radius = AndLuaR,
      CardElevation = "0dp",
      backgroundColor = AndLuaB1,
      layout_width = "-1",
      layout_marginLeft = "8dp",
      layout_marginBottom = "8dp",
      layout_marginRight = "8dp",
      layout_marginTop = "5dp",
      {
        RelativeLayout,
        backgroundColor = AndLuaB1,
        layout_height = "-2",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          id = "nj",
          {
            TextView,
            layout_marginTop = "8dp",
            text = "",
            textColor = TitleColor,
            textSize = "17sp",
            id = "btu",
            layout_marginLeft = "15dp",
            textIsSelectable = true,
            layout_marginRight = "15dp",
          },
        },
        {
          RelativeLayout,
          layout_below = "nj",
          layout_marginTop = "10dp",
          layout_height = "40dp",
          id = "b",
          layout_width = "-1",
          {
            CircleImageView,
            layout_height = "45dp",
            layout_centerVertical = "true",
            src = "res/tx.png",
            id = "tztx",
            layout_marginLeft = "10dp",
            layout_width = "45dp",
          },
          {
            TextView,
            layout_height = "45dp",
            layout_centerVertical = "true",
            id = "ki",
            layout_marginLeft = "10dp",
            layout_width = "45dp",
            textColor = "0x00ffffff",
            textSize = "0sp",
            onClick = function(v)
              activity.newActivity("main15", { v.Text })
            end
          },
          {
            TextView,
            layout_marginTop = "2dp",
            text = "昵称",
            textColor = TitleColor,
            textSize = "13sp",
            id = "tznc",
            layout_marginLeft = "10dp",
            layout_toRightOf = "tztx",
          },
          {
            TextView,
            layout_below = "tznc",
            text = "2000-1-1",
            textSize = "12sp",
            id = "tzrq",
            textColor = TitleColor1,
            layout_marginLeft = "10dp",
            layout_toRightOf = "tztx",
          },
          {
            CardView,
            layout_toRightOf = "tznc",
            backgroundColor = tonumber(bjzt()),
            layout_marginLeft = "5dp",
            layout_alignBottom = "tznc",
            layout_marginTop = "2dp",
            radius = "1dp",
            elevation = "0dp",
            layout_alignTop = "tznc",
            {
              TextView,
              layout_margin = "2px",
              paddingRight = "3dp",
              paddingLeft = "3dp",
              backgroundColor = AndLuaB1,
              textColor = tostring(bjzt()),
              text = getLS("L_The_original_poster"),
              gravity = "center",
              textSize = "9sp",
              layout_height = "-1",
            },
          },
        },
        {
          RelativeLayout,
          layout_below = "b",
          layout_marginTop = "10dp",
          id = "bcl",
          layout_width = "-1",
          {
            TextView,
            layout_marginLeft = "10dp",
            text = "内容",
            layout_width = "-1",
            layout_marginBottom = "5dp",
            textSize = "14sp",
            textColor = TitleColor,
            id = "tzbty",
            gravity = "start",
            layout_marginRight = "10dp",
            textIsSelectable = true
          },
        },
        {
          RelativeLayout,
          layout_below = "bcl",
          layout_marginBottom = "15dp",
          layout_width = "-1",
          id = "bb1",
          {
            TextView,
            layout_alignParentRight = "true",
            text = "0",
            layout_centerVertical = "true",
            textSize = "13sp",
            id = "lll",
            textColor = TitleColor1,
            layout_marginRight = "15dp",
          },
          {
            ImageView,
            layout_centerVertical = "true",
            layout_width = "17dp",
            layout_height = "18dp",
            layout_toLeftOf = "lll",
            colorFilter = TitleColor1,
            id = "gsd",
            src = "res/Metrial210.png",
            layout_marginRight = "5dp",
          },
          {
            TextView,
            textSize = "13sp",
            layout_toLeftOf = "gsd",
            layout_centerVertical = "true",
            textColor = TitleColor1,
            id = "hfl",
            layout_marginRight = "10dp",
            text = "0",
          },
          {
            ImageView,
            layout_toLeftOf = "hfl",
            layout_width = "15dp",
            layout_centerVertical = "true",
            colorFilter = TitleColor1,
            layout_height = "16dp",
            src = "res/Metrial314.png",
            layout_marginRight = "5dp",
          },
        },
      },
    },
  },
  {
    RelativeLayout,
    backgroundColor = AndLuaB,
    layout_width = "fill",
    {
      CardView,
      radius = AndLuaR,
      CardElevation = "0dp",
      backgroundColor = AndLuaB1,
      layout_width = "-1",
      layout_marginLeft = "8dp",
      layout_marginBottom = "8dp",
      layout_marginRight = "8dp",
      layout_marginTop = "2dp",
      {
        RelativeLayout,
        layout_width = "fill",
        {
          RelativeLayout,
          layout_height = "40dp",
          id = "b2",
          layout_width = "-1",
          layout_marginTop = "10dp",
          {
            TextView,
            layout_height = "45dp",
            layout_width = "45dp",
            layout_marginLeft = "10dp",
            layout_centerVertical = "true",
            id = "uid5",
            textColor = "0x00ffffff",
            textSize = "0sp",
            onClick = function(v)
              intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
              intent.putExtra("uidd1", v.Text);
              path = activity.getLuaDir() .. "/main15.lua"
              intent.setData(Uri.parse("file://" .. path));
              activity.startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
            end
          },
          {
            CircleImageView,
            layout_height = "45dp",
            layout_width = "45dp",
            layout_marginLeft = "10dp",
            src = "res/tx.png",
            transitionName = "tx1io",
            id = "tztx1",
            layout_centerVertical = "true",
          },
          {
            TextView,
            layout_marginTop = "2dp",
            layout_toRightOf = "tztx1",
            id = "tznc1",
            textSize = "13sp",
            text = "昵称",
            textColor = TitleColor,
            layout_marginLeft = "10dp",
          },
          {
            TextView,
            layout_marginTop = "2dp",
            layout_toRightOf = "tztx1",
            id = "plid",
            textSize = "14sp",
            text = "",
            textColor = "0x00ffffff",
            layout_marginLeft = "10dp",
            onClick = function(v)
              nbb = v.Text:match("2$#2(.-)2#$2")
              nbb1 = v.Text:match("1$#1(.-)1#$1")
              nbb2 = v.Text:match("4$#4(.-)4#$4")
              nbb3 = v.Text:match("3$#3(.-)3#$3")
              nbb4 = v.Text:match("#$$(.-)$$#")
              uguid()
              if nbb4 == uid3 then
              else
                activity.newActivity("main30", { uid33, uid44, nbb, nbb1, nbb2, nbb3 })
              end
            end
          },
          {
            CardView,
            layout_toRightOf = "tznc1",
            backgroundColor = tonumber(bjzt()),
            layout_marginLeft = "5dp",
            layout_alignBottom = "tznc1",
            layout_marginTop = "2dp",
            id = "lzz",
            radius = "1dp",
            elevation = "0dp",
            layout_alignTop = "tznc1",
            {
              TextView,
              layout_margin = "2px",
              paddingRight = "3dp",
              paddingLeft = "3dp",
              backgroundColor = AndLuaB1,
              textColor = tostring(bjzt()),
              text = getLS("L_The_original_poster"),
              gravity = "center",
              textSize = "8sp",
              layout_height = "-1",
            },
          },
          {
            TextView,
            layout_toRightOf = "tztx1",
            layout_marginLeft = "10dp",
            layout_below = "tznc1",
            text = "2000-1-1",
            textColor = TitleColor1,
            id = "tzrq1",
            textSize = "11sp",
          },
          {
            TextView,
            textColor = TitleColor1,
            layout_margin = "10dp",
            id = "ls",
            text = "1#",
            textSize = "12sp",
            layout_alignParentRight = "true",
          },
        },
        {
          RelativeLayout,
          layout_below = "b2",
          layout_marginTop = "2dp",
          layout_width = "-1",
          layout_marginBottom = "8dp",
          id = "ig",
          {
            TextView,
            textSize = "13sp",
            layout_marginRight = "10dp",
            layout_marginLeft = "65dp",
            id = "tzbt1",
            layout_marginBottom = "5dp",
            gravity = "start",
            text = "内容",
            MovementMethod = LinkMovementMethod.getInstance(),
            textColor = TitleColor,
            textIsSelectable = true,
            layout_width = "-1",
          },
        },
        {
          CardView,
          layout_marginRight = "20dp",
          backgroundColor = AndLuaB3,
          layout_width = "-1",
          layout_marginLeft = "65dp",
          layout_marginBottom = "10dp",
          radius = "5dp",
          elevation = "0dp",
          id = "gf",
          layout_below = "ig",
          {
            RelativeLayout,
            {
              TextView,
              text = getLS("L_Reply_0"),
              layout_marginTop = "8dp",
              id = "jj",
              textSize = "12sp",
              textColor = TitleColor,
              layout_marginRight = "8dp",
              layout_marginLeft = "8dp",
              layout_marginBottom = "8dp",
            },
            {
              TextView,
              textSize = "0sp",
              textColor = "0x00ffffff",
              id = "kku",
              layout_height = "0dp",
              layout_width = "0dp",
            },
          },
        },
      },
    },
  },
};

main = {
  RelativeLayout,
  layout_width = "-1",
  backgroundColor = AndLuaB,
  id = "ViewNight_lay",
  layout_height = "-1",
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "tzc",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "jb",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "btc",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "bqu2",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "txcc",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "nrc",
  },
  {
    FrameLayout,
    {
      LinearLayout,
      layout_width = "-1",
      orientation = "vertical",
      {
        SwipeRefreshLayout,
        id = "sxlist",
        layout_marginTop = "4dp",
        {
          YLListView,
          VerticalScrollBarEnabled = false,
          overScrollMode = 2,
          DividerHeight = 0,
          layout_width = "-1",
          layout_height = "-1",
          id = "list",
          VerticalScrollBarEnabled = false,
        },
      },
    },
  },
  {
    CardView,
    layout_width = "50dp",
    backgroundColor = tostring(bjzt()),
    layout_margin = "16dp",
    CardElevation = "1dp",
    layout_alignParentRight = "true",
    layout_alignParentBottom = "true",
    id = "button",
    layout_height = "50dp",
    radius = "25dp",
    {
      LinearLayout,
      layout_width = "74dp",
      style = "?android:attr/buttonBarButtonStyle",
      id = "butt",
      layout_gravity = "center",
      layout_height = "74dp",
      {
        ImageView,
        layout_width = "24dp",
        layout_gravity = "center",
        ColorFilter = "#FFFFFF",
        layout_height = "24dp",
        src = "res/Metrial362.png",
      },
    },
  },
  {
    ProgressBar,
    id = "jz",
    layout_centerInParent = "true",
  },
};

activity.setContentView(loadlayout(main))

ViewNight(ViewNight_lay)

ztt()
ztl()

button.setVisibility(View.GONE)

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
      text = getLS("L_Post_the_detailed"),
      textColor = tonumber(bjzt()),
      id = "btt",
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
      layout_height = "25dp",
      colorFilter = tonumber(bjzt()),
      layout_width = "28dp",
      src = "res/ic_dots_vertical.png",
    },
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(0)
uid33, uid44 = ...
bw(Sideslip, 0x5FFFFFFF)
bw(menu1, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
uguid()
if uid3 == uid33 then
  pop1 = PopupMenu(activity, menu1)
  menu11 = pop1.Menu
  menu11.add(getLS("L_Copy")).onMenuItemClick = function(a)
    if btc.Text == "" then
    else
      pop2.show()
    end
  end
  menu11.add(getLS("L_To_report")).onMenuItemClick = function(a)
    if btc.Text == "" then
    else
      dxlb = {}
      table.insert(dxlb, getLS("L_Violence"))
      table.insert(dxlb, getLS("L_Pornographic_and_vulgar_content"))
      table.insert(dxlb, getLS("L_Small_AD"))
      table.insert(dxlb, getLS("L_Abuse"))
      table.insert(dxlb, getLS("L_Issued_false_information"))
      table.insert(dxlb, getLS("L_Plugins_cracking_and_other_illegal_content"))
      table.insert(dxlb, getLS("L_Other_content"))
      local dx = AlertDialog.Builder(this)
          .setTitle(getLS("L_Report_post"))
          .setPositiveButton(getLS("L_Determine"), {
            onClick = function(v, p)
              if jb.Text == "" then
                SnackerBar.build()
                    :msg(getLS("L_Please_select_a_report_content"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              else
                uguid()
                Http.post("https://ly250.cn/andlua/jb.php",
                  "uid1=" .. uid1 .. "&uid2=" ..
                  uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. uid44 .. "&text=" .. jb.text .. "&sid=" .. sid(),
                  function(a1, rhb, c, d)
                    sid1 = rhb:match('%["ret"] = "(.-)%";')
                    if sid1 == "1" then
                      SnackerBar.build()
                          :msg(getLS("L_You_submit"))
                          :actionText(getLS("L_OK"))
                          :action(function()
                          end)
                          :show()
                    elseif sid1 == "4" then
                      SnackerBar.build()
                          :msg(getLS("L_Identity_expired"))
                          :actionText(getLS("L_OK"))
                          :action(function()
                          end)
                          :show()
                    elseif sid1 == "ok" then
                      SnackerBar.build()
                          :msg(getLS("L_To_report_success"))
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
          .setSingleChoiceItems(dxlb, -1, {
            onClick = function(v, p)
              jb.setText(dxlb[p + 1])
            end
          })
      dx.show();
    end
  end
  menu11.add(getLS("L_Delete")).onMenuItemClick = function(a)
    if btc.Text == "" then
    else
      AlertDialog.Builder(this)
          .setTitle(getLS("L_Delete_posts"))
          .setMessage(getLS("L_Sure_to_delete"))
          .setPositiveButton(getLS("L_Determine"), {
            onClick = function(v)
              uguid()
              Http.post("https://ly250.cn/andlua/sacu.php",
                "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. uid44 .. "&sid=" .. sid(),
                function(a1, rhb, c, d)
                  sid1 = rhb:match('%["ret"] = "(.-)%";')
                  if sid1 == "1" then
                    SnackerBar.build()
                        :msg(getLS("L_You_submit"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                  elseif sid1 == "4" then
                    SnackerBar.build()
                        :msg(getLS("L_Identity_expired"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                  elseif sid1 == "ok" then
                    activity.finish()
                  elseif sid1 == "6" then
                    SnackerBar.build()
                        :msg(getLS("L_No_permission_operation"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                  else
                  end
                end)
            end
          })
          .setNegativeButton(getLS("L_Cancel"), nil)
          .show()
    end
  end
  menu11.add(getLS("L_Share")).onMenuItemClick = function(a)
    if btc.Text == "" then
    else
      urlll = "https://ly250.cn/andlua/index.php?id=" .. tostring(tointeger(uid44 * 28265))
      text = urlll
      intent = Intent(Intent.ACTION_SEND);
      intent.setType("text/plain");
      intent.putExtra(Intent.EXTRA_SUBJECT, getLS("L_Share"));
      intent.putExtra(Intent.EXTRA_TEXT, text);
      intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
      activity.startActivity(Intent.createChooser(intent, getLS("L_Share_the")));
    end
  end
  pop2 = PopupMenu(activity, menu1)
  menu111 = pop2.Menu
  menu111.add(getLS("L_Copy_the_title")).onMenuItemClick = function(a)
    activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(btc.Text)
  end
  menu111.add(getLS("L_Duplicate_content")).onMenuItemClick = function(a)
    activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(nrc.Text)
  end
  menu111.add(getLS("L_Copy_the_nickname")).onMenuItemClick = function(a)
    activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(tzc.Text)
  end
else
  pop1 = PopupMenu(activity, menu1)
  menu11 = pop1.Menu
  menu11.add(getLS("L_Copy")).onMenuItemClick = function(a)
    if btc.Text == "" then
    else
      pop2.show()
    end
  end
  menu11.add(getLS("L_To_report")).onMenuItemClick = function(a)
    if btc.Text == "" then
    else
      dxlb = {}
      table.insert(dxlb, getLS("L_Violence"))
      table.insert(dxlb, getLS("L_Pornographic_and_vulgar_content"))
      table.insert(dxlb, getLS("L_Small_AD"))
      table.insert(dxlb, getLS("L_Abuse"))
      table.insert(dxlb, getLS("L_Issued_false_information"))
      table.insert(dxlb, getLS("L_Plugins_cracking_and_other_illegal_content"))
      table.insert(dxlb, getLS("L_Other_content"))
      local dx = AlertDialog.Builder(this)
          .setTitle(getLS("L_Report_post"))
          .setPositiveButton(getLS("L_Determine"), {
            onClick = function(v, p)
              if jb.Text == "" then
                SnackerBar.build()
                    :msg(getLS("L_Please_select_a_report_content"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              else
                uguid()
                Http.post("https://ly250.cn/andlua/jb.php",
                  "uid1=" .. uid1 .. "&uid2=" ..
                  uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. uid44 .. "&text=" .. jb.text .. "&sid=" .. sid(),
                  function(a1, rhb, c, d)
                    sid1 = rhb:match('%["ret"] = "(.-)%";')
                    if sid1 == "1" then
                      SnackerBar.build()
                          :msg(getLS("L_You_submit"))
                          :actionText(getLS("L_OK"))
                          :action(function()
                          end)
                          :show()
                    elseif sid1 == "4" then
                      SnackerBar.build()
                          :msg(getLS("L_Identity_expired"))
                          :actionText(getLS("L_OK"))
                          :action(function()
                          end)
                          :show()
                    elseif sid1 == "ok" then
                      SnackerBar.build()
                          :msg(getLS("L_To_report_success"))
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
          .setSingleChoiceItems(dxlb, -1, {
            onClick = function(v, p)
              jb.setText(dxlb[p + 1])
            end
          })
      dx.show();
    end
  end
  if ugad() == "true" then
    menu11.add(getLS("L_Delete")).onMenuItemClick = function(a)
      if btc.Text == "" then
      else
        AlertDialog.Builder(this)
            .setTitle(getLS("L_Delete_posts"))
            .setMessage(getLS("L_Sure_to_delete"))
            .setPositiveButton(getLS("L_Determine"), {
              onClick = function(v)
                uguid()
                Http.post("https://ly250.cn/andlua/sacu.php",
                  "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. uid44 .. "&sid=" .. sid(),
                  function(a1, rhb, c, d)
                    sid1 = rhb:match('%["ret"] = "(.-)%";')
                    if sid1 == "1" then
                      SnackerBar.build()
                          :msg(getLS("L_You_submit"))
                          :actionText(getLS("L_OK"))
                          :action(function()
                          end)
                          :show()
                    elseif sid1 == "4" then
                      SnackerBar.build()
                          :msg(getLS("L_Identity_expired"))
                          :actionText(getLS("L_OK"))
                          :action(function()
                          end)
                          :show()
                    elseif sid1 == "ok" then
                      activity.finish()
                    elseif sid1 == "6" then
                      SnackerBar.build()
                          :msg(getLS("L_No_permission_operation"))
                          :actionText(getLS("L_OK"))
                          :action(function()
                          end)
                          :show()
                    else
                    end
                  end)
              end
            })
            .setNegativeButton(getLS("L_Cancel"), nil)
            .show()
      end
    end
  end
  menu11.add(getLS("L_Share")).onMenuItemClick = function(a)
    if btc.Text == "" then
    else
      urlll = "https://ly250.cn/andlua/index.php?id=" .. tostring(tointeger(uid44 * 28265))
      text = urlll
      intent = Intent(Intent.ACTION_SEND);
      intent.setType("text/plain");
      intent.putExtra(Intent.EXTRA_SUBJECT, getLS("L_Share"));
      intent.putExtra(Intent.EXTRA_TEXT, text);
      intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
      activity.startActivity(Intent.createChooser(intent, getLS("L_Share_the")));
    end
  end
  pop2 = PopupMenu(activity, menu1)
  menu111 = pop2.Menu
  menu111.add(getLS("L_Copy_the_title")).onMenuItemClick = function(a)
    activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(btc.Text)
  end
  menu111.add(getLS("L_Duplicate_content")).onMenuItemClick = function(a)
    activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(nrc.Text)
  end
  menu111.add(getLS("L_Copy_the_nickname")).onMenuItemClick = function(a)
    activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(tzc.Text)
  end
end
menu1.onClick = function()
  pop1.show()
end

data2 = {}
adp = LuaMultiAdapter(activity, data2, lb)
list.setAdapter(adp)

function sxd()
  data2 = {}
  adp = LuaMultiAdapter(activity, data2, lb)
  list.setAdapter(adp)
  uguid()
  Http.post("https://ly250.cn/andlua/ktz.php",
    "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid33=" .. uid33 .. "&uid44=" .. uid44 .. "&sid=" ..
    sid(), function(a1, hb, c, d)
    sid1 = hb:match('%["ret"] = "(.-)%";')
    if sid1 == "1" then
      SnackerBar.build()
          :msg(getLS("L_For_failure"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "4" then
      SnackerBar.build()
          :msg(getLS("L_Identity_expired"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    elseif sid1 == "ok" then
      nc8 = hb:match('%["name"] = "(.-)%";')
      bt8 = hb:match('%["title"] = "(.-)%";')
      tx8 = hb:match('%["src"] = "(.-)%";')
      nr8 = hb:match('%["text"] = "(.-)%";')
      bq88 = hb:match('%["bq"] = "(.-)%";')
      nrc.setText(nr8)
      bqu2.setText(bq88)
      tzc.setText(nc8)
      btc.setText(bt8)
      txcc.setText(tx8)
      uguid()
      Http.post("https://ly250.cn/andlua/kpl.php",
        "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. uid44 .. "&sid=" .. sid(),
        function(a1, b, c, d)
          sid2 = b:match('%["ret"] = "(.-)%";')
          if sid2 == "1" then
            SnackerBar.build()
                :msg(getLS("L_For_failure"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          elseif sid2 == "4" then
            SnackerBar.build()
                :msg(getLS("L_Identity_expired"))
                :actionText(getLS("L_OK"))
                :action(function()
                end)
                :show()
          elseif sid2 == nil then
            bty = hb:match('%["title"] = "(.-)%";')
            hyaa = hb:match('%["hfss"] = "(.-)%";')
            tx4 = hb:match('%["src"] = "(.-)%";')
            nr4 = hb:match('%["text"] = "(.-)%";')
            nc4 = hb:match('%["name"] = "(.-)%";')
            rq4 = hb:match('%["time"] = "(.-)%";')
            hfl4 = hb:match('%["hfl"] = "(.-)%";')
            lll4 = hb:match('%["lll"] = "(.-)%";')
            kii = hb:match('%["kl"] = "(.-)%";')
            bq8 = hb:match('%["bq"] = "(.-)%";')
            lls = tointeger(hyaa + 1)
            bt9 = "<font color='" ..
            "#" ..
            tostring(tostring(bjzt1()):match("0xFF(.+)")) ..
            "" .. "'>" .. bq8 .. "&nbsp;" .. "</font><font color='" .. TitleColor .. "'>" .. bty .. "</font>";
            adp.add { __type = 1, btu = { Text = Html.fromHtml(bt9) }, ki = { text = kii }, hff = {
              text = "最新回复(" .. hyaa .. ")" }, tztx = { src = tx4 }, tzbty = { text = nr4 }, tznc = { text = nc4 }, tzrq = {
              text = rq4 }, lll = { text = lll4 }, hfl = { text = hfl4 } }
            jz.setVisibility(View.GONE)
            button.setVisibility(View.VISIBLE)
          elseif sid2 == "ok" then
            bty = hb:match('%["title"] = "(.-)%";')
            hyaa = hb:match('%["hfss"] = "(.-)%";')
            tx4 = hb:match('%["src"] = "(.-)%";')
            nr4 = hb:match('%["text"] = "(.-)%";')
            nc4 = hb:match('%["name"] = "(.-)%";')
            rq4 = hb:match('%["time"] = "(.-)%";')
            hfl4 = hb:match('%["hfl"] = "(.-)%";')
            lll4 = hb:match('%["lll"] = "(.-)%";')
            kii = hb:match('%["kl"] = "(.-)%";')
            bq8 = hb:match('%["bq"] = "(.-)%";')
            lls = tointeger(hyaa + 1)
            bt47 = "<font color='" ..
            "#" ..
            tostring(tostring(bjzt1()):match("0xFF(.+)")) ..
            "" .. "'>" .. bq8 .. "&nbsp;" .. "</font><font color='" .. TitleColor .. "'>" .. bty .. "</font>";
            adp.add { __type = 1, btu = { Text = Html.fromHtml(bt47) }, ki = { text = kii }, hff = {
              text = "最新回复(" .. hyaa .. ")" }, tztx = { src = tx4 }, tzbty = { text = nr4 }, tznc = { text = nc4 }, tzrq = {
              text = rq4 }, lll = { text = lll4 }, hfl = { text = hfl4 } }
            tx5 = b:gmatch('%["src"] = "(.-)%";')
            rq5 = b:gmatch('%["time"] = "(.-)%";')
            key = b:gmatch('%["key"] = "(.-)%";')
            nr5 = b:gmatch('%["text"] = "(.-)%";')
            lxx = b:gmatch('%["lx"] = "(.-)%";')
            tte5 = b:gmatch('%["tte"] = "(.-)%";')
            plid5 = b:gmatch('%["plid"] = "(.-)%";')
            nc55 = b:gmatch('%["tte1"] = "(.-)%";')
            uguid()
            for nc11 in b:gmatch('%["name"] = "(.-)%";') do
              tx6 = tx5()
              rq6 = rq5()
              nr6 = nr5()
              plid1 = plid5()
              lxc = lxx()
              tte = tte5()
              ncg = nc55()
              keyy = key()
              text2 = nr6
              pk = Pattern.compile("http(s)?://(www.)?[a-zA-Z_0-9]*.?[a-z]*(/[a-zA-Z_0-9]*)*[.]?[a-zA-Z_0-9]*");
              while (true)
              do
                nm = pk.matcher(text2)
                find = nm.find()
                if find == false then
                  break
                end
                host = nm.group()
                LUAstart, LUAend = string.find(text2, host)
                pending = string.gsub(host, "http", "ht`tp")
                html = '<a href="' .. pending .. '">' .. pending .. '</a>'
                text2 = string.gsub(text2, host, html)
              end
              oktext = string.gsub(text2, "ht`tp", "http")
              oktext = string.gsub(oktext, "\n", "<br />")
              if lxc == "1" then
                lls = lls - 1
                if kii == keyy then
                  adp.add { __type = 2, ls = lls .. "#", gf = { visibility = 8 }, lzz = { visibility = 0 }, fj = {
                    visibility = 8 }, uid5 = { text = keyy }, plid = {
                    text = "2$#2" ..
                    nc11 .. "2#$2" .. "1$#1" ..
                    nr6 .. "1#$1" .. "4$#4" .. tx6 .. "4#$4" .. "3$#3" .. plid1 .. "3#$3" .. "#$$" .. keyy .. "$$#" }, tznc1 = {
                    text = nc11 }, tzrq1 = { text = rq6 }, tzbt1 = { text = Html.fromHtml(oktext) }, tztx1 = { src = tx6 } }
                else
                  adp.add { __type = 2, ls = lls .. "#", lzz = { visibility = 8 }, gf = { visibility = 8 }, fj = {
                    visibility = 8 }, uid5 = { text = keyy }, plid = {
                    text = "2$#2" ..
                    nc11 .. "2#$2" .. "1$#1" ..
                    nr6 .. "1#$1" .. "4$#4" .. tx6 .. "4#$4" .. "3$#3" .. plid1 .. "3#$3" .. "#$$" .. keyy .. "$$#" }, tznc1 = {
                    text = nc11 }, tzrq1 = { text = rq6 }, tzbt1 = { text = Html.fromHtml(oktext) }, tztx1 = { src = tx6 } }
                end
              elseif lxc == "2" then
                lls = lls - 1
                if keyy == kii then
                  adp.add { __type = 2, ls = lls .. "#", gf = { visibility = 0 }, lzz = { visibility = 0 }, fj = {
                    visibility = 8 }, uid5 = { text = keyy }, jj = { text = getLS("L_Reply") .. " " .. ncg .. "\n" .. tte }, plid = {
                    text = "2$#2" ..
                    nc11 .. "2#$2" .. "1$#1" ..
                    nr6 .. "1#$1" .. "4$#4" .. tx6 .. "4#$4" .. "3$#3" .. plid1 .. "3#$3" .. "#$$" .. keyy .. "$$#" }, tznc1 = {
                    text = nc11 }, tzrq1 = { text = rq6 }, tzbt1 = { text = Html.fromHtml(oktext) }, tztx1 = { src = tx6 } }
                else
                  adp.add { __type = 2, ls = lls .. "#", lzz = { visibility = 8 }, gf = { visibility = 0 }, fj = {
                    visibility = 8 }, uid5 = { text = keyy }, jj = { text = getLS("L_Reply") .. " " .. ncg .. "\n" .. tte }, plid = {
                    text = "2$#2" ..
                    nc11 .. "2#$2" .. "1$#1" ..
                    nr6 .. "1#$1" .. "4$#4" .. tx6 .. "4#$4" .. "3$#3" .. plid1 .. "3#$3" .. "#$$" .. keyy .. "$$#" }, tznc1 = {
                    text = nc11 }, tzrq1 = { text = rq6 }, tzbt1 = { text = Html.fromHtml(oktext) }, tztx1 = { src = tx6 } }
                end
              end
            end
            button.setVisibility(View.VISIBLE)
            jz.setVisibility(View.GONE)
          else
          end
        end)
    else
    end
  end)
end

ztt()
butt.onClick = function()
  activity.newActivity("main9", { uid33, uid44, tzc.Text, btc.Text, txcc.Text })
end
sxlist.setColorSchemeColors({ tonumber(bjzt()) });
sxlist.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  task(800, function()
    sxd()
    sxlist.setRefreshing(false);
  end)
end })

function onResult(name, ...)
  a = ...
  if a == "ok" then
    sxd()
  else
  end
end

import "android.view.animation.*"
import "android.view.animation.Animation$AnimationListener"

list.setOnScrollListener {
  onScrollStateChanged = function(l, s)
    if list.getLastVisiblePosition() == list.getCount() - 1 then
      if button.getVisibility() == View.GONE then
      else
        button.startAnimation(ScaleAnimation(1.0, 0.0, 1.0, 0.0, 1, 0.5, 1, 0.5).setDuration(200).setAnimationListener(
        AnimationListener {
          onAnimationEnd = function()
            button.setVisibility(View.GONE)
          end }))
      end
    else
      if button.getVisibility() == View.GONE then
        button.setVisibility(View.VISIBLE)
        button.startAnimation(ScaleAnimation(0.0, 1.0, 0.0, 1.0, 1, 0.5, 1, 0.5).setDuration(200))
      else
      end
    end
  end }

sxd()
