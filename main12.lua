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

main11 = {
  RelativeLayout,
  layout_width = "-1",
  id = "ViewNight_lay",
  layout_height = "-1",
  backgroundColor = AndLuaB,
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
    id = "ljjj",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "mzzz",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "aa",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "ab",
  },
  {
    TextView,
    layout_width = "0dp",
    layout_height = "0dp",
    id = "ac",
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
      {
        SwipeRefreshLayout,
        layout_marginLeft = "3dp",
        layout_marginRight = "3dp",
        layout_marginTop = "3dp",
        layout_marginBottom = "5dp",
        id = "sxlist",
        {
          YLListView,
          VerticalScrollBarEnabled = false,
          overScrollMode = 2,
          DividerHeight = 0,
          backgroundColor = AndLuaB,
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
    CardElevation = "4dp",
    layout_alignParentRight = "true",
    layout_alignParentBottom = "true",
    id = "button",
    Visibility = 8,
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

activity.setContentView(loadlayout(main11))

ViewNight(ViewNight_lay)

ztl()
btl = {
  LinearLayout,
  layout_width = "fill",
  elevation = "2dp",
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
      text = getLS("L_The_source_code_in_detail"),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "me3",
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

lb = {
  {
    RelativeLayout,
    layout_width = "-1",
    layout_height = "-1",
    {
      CardView,
      id = "ss",
      layout_width = "-1",
      layout_height = "80dp",
      backgroundColor = AndLuaB1,
      radius = AndLuaR,
      CardElevation = "0dp",
      layout_margin = "5dp",
      {
        RelativeLayout,
        layout_height = "-1",
        layout_width = "-1",
        {
          CardView,
          Elevation = "0dp",
          layout_height = "50dp",
          id = "tbk",
          layout_width = "50dp",
          backgroundColor = AndLuaB1,
          layout_centerVertical = "true",
          layout_marginLeft = "8dp",
          {
            ImageView,
            layout_margin = "3dp",
            layout_height = "-1",
            src = "icon.png",
            id = "ymtbb",
            layout_width = "-1",
            scaleType = "fitXY",
          },
        },
        {
          RelativeLayout,
          layout_toRightOf = "tbk",
          layout_height = "-1",
          layout_width = "-1",
          layout_alignBottom = "tbk",
          layout_alignTop = "tbk",
          {
            TextView,
            layout_marginTop = "3dp",
            textSize = "15sp",
            id = "mz",
            text = "加载中",
            textColor = TitleColor,
            layout_marginLeft = "8dp",
            singleLine = "true",
            ellipsize = "end",
          },
          {
            CardView,
            layout_toRightOf = "mz",
            backgroundColor = tonumber(bjzt()),
            layout_marginLeft = "5dp",
            layout_marginTop = "6dp",
            id = "classification00",
            radius = "1dp",
            elevation = "0dp",
            {
              TextView,
              layout_margin = "2px",
              paddingRight = "3dp",
              paddingLeft = "3dp",
              textColor = TitleColor3,
              text = "1",
              id = "classification0",
              gravity = "center",
              textSize = "10sp",
              layout_height = "-1",
            },
          },
          {
            TextView,
            layout_below = "mz",
            layout_marginTop = "4dp",
            id = "xzl",
            text = "0下载",
            textSize = "12sp",
            textColor = TitleColor1,
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            layout_below = "mz",
            layout_toRightOf = "xzl",
            layout_marginTop = "4dp",
            id = "hfl",
            text = "0评论",
            textSize = "12sp",
            textColor = TitleColor1,
            layout_marginLeft = "5dp",
          },
          {
            TextView,
            layout_below = "mz",
            layout_toRightOf = "hfl",
            layout_marginTop = "4dp",
            id = "dx8",
            text = "0KB",
            textColor = TitleColor1,
            textSize = "12sp",
            layout_marginLeft = "5dp",
          },
          {
            TextView,
            layout_below = "mz",
            layout_toRightOf = "dx8",
            layout_marginTop = "4dp",
            id = "hot",
            text = "0热度",
            textColor = TitleColor1,
            textSize = "12sp",
            layout_marginLeft = "5dp",
          },
          {
            CardView,
            layout_alignParentRight = "true",
            layout_marginRight = "8dp",
            layout_height = "26dp",
            id = "ff",
            Elevation = "0dp",
            backgroundColor = tonumber(bjzt()),
            layout_centerVertical = "true",
            {
              RippleLayout,
              rippleColor = 671088639,
              layout_height = "-1",
              --layout_width="-1";
              {
                TextView,
                gravity = "center",
                id = "txx",
                layout_marginRight = "5dp",
                layout_marginLeft = "5dp",
                layout_width = "-1",
                textSize = "12sp",
                textColor = TitleColor3,
                text = "下载源码",
                MaxEms = 15,
                layout_height = "-1",
                onClick = function(alo)
                  if ljjj.Text == "0" then
                    SnackerBar.build()
                        :msg(getLS("L_The_author_only_can_download_the_source_code"))
                        :actionText(getLS("L_OK"))
                        :action(function()
                        end)
                        :show()
                  elseif ljjj.Text == "2" then
                    AlertDialog.Builder(this)
                        .setTitle(getLS("L_Prompt"))
                        .setCancelable(false)
                        .setMessage([[1.每次下载付费源码都需要支付一次费用。
2.付费下载后可在五分钟内前往 我的>我的钱包>账单>点击付费下载的账单 即可重复下载，无需付费。
]])
                        .setPositiveButton(getLS("L_Agree_and_continue_to_release"), {
                          onClick = function()
                            AlertDialog.Builder(this)
                                .setTitle(getLS("L_Pay_to_download_the_source_code"))
                                .setMessage(getLS("L_Pay_Download_the_source_code") ..
                                alo.Text .. getLS("L_Pay_Download_the_source_code_1"))
                                .setPositiveButton(getLS("L_Determine"), {
                                  onClick = function(v)
                                    dialog5 = ProgressDialog(this)
                                    dialog5.setProgressStyle(ProgressDialog.STYLE_SPINNER)
                                    dialog5.setCancelable(true)
                                    dialog5.setCanceledOnTouchOutside(false)
                                    dialog5.show()
                                    uguid()
                                    Http.post("https://ly250.cn/andlua/payment.php",
                                      "id=" .. ymid .. "&uid1=" .. uid1 .. "&uid2=" ..
                                      uid2 .. "&uid3=" .. uid3 .. "&sid=" .. sid(), function(a1, hb, c, d)
                                      sid1 = hb:match('%["ret"] = "(.-)%";')
                                      uurrll = hb:match('%["url"] = "(.-)%";')
                                      if sid1 == "1" then
                                        SnackerBar.build()
                                            :msg(getLS("L_You_submit"))
                                            :actionText(getLS("L_OK"))
                                            :action(function()
                                            end)
                                            :show()
                                      elseif sid1 == "ok" then
                                        Http.post("https://ly250.cn/andlua/xzym.php",
                                          "uid1=" ..
                                          uid1 ..
                                          "&uid2=" .. uid2 ..
                                          "&uid3=" .. uid3 .. "&uid33=" .. zzid .. "&id=" .. ymid .. "&sid=" .. sid(),
                                          function(a1, hb, c, d)
                                            sid1 = hb:match('%["ret"] = "(.-)%";')
                                            if sid1 == "ok" then
                                              dowcode()
                                            else
                                              SnackerBar.build()
                                                  :msg(getLS("L_Identity_expired"))
                                                  :actionText(getLS("L_OK"))
                                                  :action(function()
                                                  end)
                                                  :show()
                                            end
                                          end)
                                        dialog5.hide()
                                      elseif sid1 == "no" then
                                        SnackerBar.build()
                                            :msg(getLS("L_Lack_of_balance"))
                                            :actionText(getLS("L_OK"))
                                            :action(function()
                                            end)
                                            :show()
                                      elseif sid1 == "2" then
                                        SnackerBar.build()
                                            :msg(getLS("L_System_error"))
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
                                      end
                                      dialog5.hide()
                                    end)
                                  end
                                })
                                .setNegativeButton(getLS("L_Cancel"), nil)
                                .show()
                          end
                        })
                        .setNegativeButton(getLS("L_Donot_agree_to_quit"), {
                          onClick = function()
                            activity.finish()
                          end
                        })
                        .show()
                  elseif ljjj.Text == "1" then
                    InputLayout = {
                      LinearLayout,
                      orientation = "vertical",
                      Focusable = true,
                      FocusableInTouchMode = true,
                      {
                        EditText,
                        hint = getLS("L_Enter_the_password_for_download"),
                        layout_marginTop = "5dp",
                        layout_marginLeft = "10dp",
                        layout_marginRight = "10dp",
                        layout_width = "match_parent",
                        layout_gravity = "center",
                        id = "edit",
                      },
                    };

                    AlertDialog.Builder(this)
                        .setTitle(getLS("L_Prompt"))
                        .setView(loadlayout(InputLayout))
                        .setPositiveButton(getLS("L_Determine"), {
                          onClick = function(v)
                            Http.post("https://ly250.cn/andlua/geturl.php",
                              "id=" .. ymid .. "&pass=" .. edit.Text .. "&sid=" .. sid(), function(a1, hb, c, d)
                              sid1 = hb:match('%["ret"] = "(.-)%";')
                              uurrll = hb:match('%["url"] = "(.-)%";')
                              if sid1 == "1" then
                                SnackerBar.build()
                                    :msg(getLS("L_You_submit"))
                                    :actionText(getLS("L_OK"))
                                    :action(function()
                                    end)
                                    :show()
                              elseif sid1 == "ok" then
                                Http.post("https://ly250.cn/andlua/xzym.php",
                                  "uid1=" ..
                                  uid1 .. "&uid2=" .. uid2 ..
                                  "&uid3=" .. uid3 .. "&uid33=" .. zzid .. "&id=" .. ymid .. "&sid=" .. sid(),
                                  function(a1, hb, c, d)
                                    sid1 = hb:match('%["ret"] = "(.-)%";')
                                    if sid1 == "ok" then
                                      dialog6 = ProgressDialog(this)
                                      dialog6.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
                                      dialog6.setTitle(getLS("L_Is_in_the_download") .. "...")
                                      dialog6.setCancelable(true)
                                      dialog6.setCanceledOnTouchOutside(false)
                                      dialog6.setOnCancelListener {
                                        onCancel = function(l)
                                          SnackerBar.build()
                                              :msg(getLS("L_Has_been_downloaded_into_the_background"))
                                              :actionText(getLS("L_OK"))
                                              :action(function()
                                              end)
                                              :show()
                                        end }
                                      dialog6.setMax(100)
                                      dialog6.show()
                                      url = uurrll
                                      path = "/sdcard/AndLua/download/" .. mzzz.Text .. ".alp"
                                      big(url, path)
                                    else
                                      SnackerBar.build()
                                          :msg(getLS("L_Identity_expired"))
                                          :actionText(getLS("L_OK"))
                                          :action(function()
                                          end)
                                          :show()
                                    end
                                  end)
                              elseif sid1 == "no" then
                                SnackerBar.build()
                                    :msg(getLS("L_Password_is_not_correct"))
                                    :actionText(getLS("L_OK"))
                                    :action(function()
                                    end)
                                    :show()
                              end
                            end)
                          end
                        })
                        .setNegativeButton(getLS("L_Cancel"), nil)
                        .show()
                    Typew(edit)
                  else
                    Http.post("https://ly250.cn/andlua/xzym.php",
                      "uid1=" .. uid1 .. "&uid2=" .. uid2 ..
                      "&uid3=" .. uid3 .. "&uid33=" .. zzid .. "&id=" .. ymid .. "&sid=" .. sid(), function(a1, hb, c, d)
                      sid1 = hb:match('%["ret"] = "(.-)%";')
                      if sid1 == "ok" then
                        dialog6 = ProgressDialog(this)
                        dialog6.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
                        dialog6.setTitle(getLS("L_Is_in_the_download") .. "...")
                        dialog6.setCancelable(true)
                        dialog6.setCanceledOnTouchOutside(false)
                        dialog6.setOnCancelListener {
                          onCancel = function(l)
                            SnackerBar.build()
                                :msg(getLS("L_Has_been_downloaded_into_the_background"))
                                :actionText(getLS("L_OK"))
                                :action(function()
                                end)
                                :show()
                          end }
                        dialog6.setMax(100)
                        dialog6.show()
                        url = ljjj.Text
                        path = "/sdcard/AndLua/download/" .. mzzz.Text .. ".alp"
                        big(url, path)
                      else
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
              },
            },
          },
        },
      },
    },
    {
      RelativeLayout,
      layout_below = "ss",
      layout_width = "-1",
      layout_height = "-2",
      id = "ggk",
      {
        CardView,
        layout_marginBottom = "5dp",
        layout_marginRight = "5dp",
        layout_marginTop = "2dp",
        layout_marginLeft = "5dp",
        radius = AndLuaR,
        CardElevation = "0dp",
        backgroundColor = AndLuaB1,
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            CardView,
            layout_below = "xzl",
            id = "hg",
            Elevation = "0dp",
            layout_width = "-2",
            layout_marginTop = "8dp",
            layout_marginLeft = "8dp",
            {
              LinearLayout,
              layout_width = "-1",
              backgroundColor = tonumber(bjzt()),
              layout_height = "-1",
              {
                TextView,
                layout_margin = "3dp",
                gravity = "center",
                layout_height = "-1",
                text = getLS("L_The_source_code_is_introduced"),
                textSize = "10sp",
                layout_width = "-1",
                textColor = "0xffffffff",
                id = "ti3tle",
              },
            },
          },
          {
            TextView,
            textSize = "12sp",
            layout_width = "-1",
            layout_below = "hg",
            layout_marginRight = "5dp",
            layout_marginTop = "5dp",
            id = "js",
            textColor = TitleColor1,
            text = "正在加载中",
            textIsSelectable = true,
            layout_marginBottom = "8dp",
            layout_marginLeft = "8dp",
          },
        },
      },
    },
    {
      RelativeLayout,
      layout_below = "ggk",
      layout_width = "-1",
      layout_height = "-2",
      id = "sskk",
      {
        CardView,
        layout_marginBottom = "5dp",
        layout_marginRight = "5dp",
        layout_marginTop = "2dp",
        radius = AndLuaR,
        CardElevation = "0dp",
        backgroundColor = AndLuaB1,
        layout_marginLeft = "5dp",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            CardView,
            layout_below = "xzl",
            Elevation = "0dp",
            id = "hgb",
            layout_width = "-2",
            layout_marginTop = "8dp",
            layout_marginLeft = "8dp",
            {
              LinearLayout,
              layout_width = "-1",
              backgroundColor = tonumber(bjzt()),
              layout_height = "-1",
              {
                TextView,
                layout_margin = "3dp",
                gravity = "center",
                layout_height = "-1",
                text = getLS("L_Source_screenshots"),
                textSize = "10sp",
                layout_width = "-1",
                textColor = "0xffffffff",
                id = "ti4tle",
              },
            },
          },
          {
            HorizontalScrollView,
            layout_below = "hgb",
            layout_marginRight = "8dp",
            horizontalScrollBarEnabled = false,
            layout_marginBottom = "8dp",
            layout_marginLeft = "8dp",
            layout_width = "-1",
            layout_marginTop = "5dp",
            layout_height = "220dp",
            {
              LinearLayout,
              layout_width = "-1",
              orientation = "horizontal",
              layout_height = "-1",
              {
                ImageView,
                layout_height = "-1",
                src = "icon.png",
                id = "tp1",
                layout_width = "120dp",
                scaleType = "fitXY",
                transitionName = "t11",
                onClick = function(v)
                  intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                  intent.putExtra("a", aa.Text);
                  intent.putExtra("a1", ab.Text);
                  intent.putExtra("a2", ac.Text);
                  intent.putExtra("a3", "1");
                  path = activity.getLuaDir() .. "/main14.lua"
                  intent.setData(Uri.parse("file://" .. path));
                  activity.startActivity(intent,
                    ActivityOptions.makeSceneTransitionAnimation(activity, v, "t11").toBundle());
                end,
              },
              {
                ImageView,
                layout_height = "-1",
                src = "icon.png",
                id = "tp2",
                layout_width = "120dp",
                scaleType = "fitXY",
                layout_marginLeft = "5dp",
                transitionName = "t2",
                onClick = function(v)
                  intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                  intent.putExtra("a", aa.Text);
                  intent.putExtra("a1", ab.Text);
                  intent.putExtra("a2", ac.Text);
                  intent.putExtra("a3", "2");
                  path = activity.getLuaDir() .. "/main14.lua"
                  intent.setData(Uri.parse("file://" .. path));
                  activity.startActivity(intent,
                    ActivityOptions.makeSceneTransitionAnimation(activity, v, "t2").toBundle());
                end,
              },
              {
                ImageView,
                layout_height = "-1",
                src = "icon.png",
                id = "tp3",
                layout_width = "120dp",
                scaleType = "fitXY",
                layout_marginLeft = "5dp",
                transitionName = "t3",
                onClick = function(v)
                  intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                  intent.putExtra("a", aa.Text);
                  intent.putExtra("a1", ab.Text);
                  intent.putExtra("a2", ac.Text);
                  intent.putExtra("a3", "3");
                  path = activity.getLuaDir() .. "/main14.lua"
                  intent.setData(Uri.parse("file://" .. path));
                  activity.startActivity(intent,
                    ActivityOptions.makeSceneTransitionAnimation(activity, v, "t3").toBundle());
                end,
              },
            },
          },
        },
      },
    },
    {
      RelativeLayout,
      layout_below = "sskk",
      layout_width = "-1",
      layout_height = "-2",
      id = "vv",
      {
        CardView,
        layout_marginBottom = "5dp",
        layout_marginRight = "5dp",
        layout_marginTop = "2dp",
        radius = AndLuaR,
        CardElevation = "0dp",
        backgroundColor = AndLuaB1,
        layout_marginLeft = "5dp",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            CardView,
            layout_below = "xzl",
            id = "hg6",
            layout_width = "-2",
            Elevation = "0dp",
            layout_marginTop = "8dp",
            layout_marginLeft = "8dp",
            {
              LinearLayout,
              layout_width = "-1",
              backgroundColor = tonumber(bjzt()),
              layout_height = "-1",
              {
                TextView,
                layout_margin = "3dp",
                gravity = "center",
                layout_height = "-1",
                text = getLS("L_Source_of_information"),
                textSize = "10sp",
                layout_width = "-1",
                textColor = TitleColor3,
                id = "title5",
              },
            },
          },
          {
            ImageView,
            layout_height = "28dp",
            layout_width = "80dp",
            src = "res/Original.png",
            rotation = 15,
            layout_alignParentRight = "true",
            layout_marginTop = "20dp",
            layout_marginRight = "10dp",
            id = "Original",
            Visibility = 8,
          },
          {
            TextView,
            layout_below = "hg6",
            layout_marginRight = "5dp",
            layout_marginTop = "5dp",
            text = "作者：加载中",
            textSize = "12sp",
            layout_width = "-1",
            layout_marginLeft = "8dp",
            textColor = TitleColor1,
            id = "zzmm",
          },
          {
            TextView,
            layout_width = "0dp",
            layout_height = "0dp",
            id = "jb",
          },
          {
            TextView,
            textSize = "12sp",
            layout_width = "-1",
            layout_below = "zzmm",
            layout_marginRight = "8dp",
            layout_marginTop = "2dp",
            id = "hot1",
            textColor = TitleColor1,
            text = "热度：加载中",
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            textSize = "12sp",
            layout_width = "-1",
            layout_below = "hot1",
            textColor = TitleColor1,
            layout_marginRight = "8dp",
            layout_marginTop = "2dp",
            id = "dxv",
            text = "大小：加载中",
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            textSize = "12sp",
            layout_width = "-1",
            layout_below = "dxv",
            textColor = TitleColor1,
            layout_marginRight = "8dp",
            layout_marginTop = "2dp",
            id = "source",
            text = "来源：加载中",
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            textSize = "12sp",
            layout_width = "-1",
            layout_below = "source",
            textColor = TitleColor1,
            layout_marginRight = "8dp",
            layout_marginTop = "2dp",
            id = "classification",
            text = "分类：加载中",
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            textSize = "12sp",
            layout_width = "-1",
            layout_below = "classification",
            layout_marginRight = "8dp",
            layout_marginTop = "2dp",
            id = "Label",
            textColor = TitleColor1,
            text = "标签：加载中",
            layout_marginLeft = "8dp",
          },
          {
            TextView,
            layout_below = "Label",
            layout_marginRight = "5dp",
            layout_marginTop = "2dp",
            textColor = TitleColor1,
            text = "上传时间：加载中",
            textSize = "12sp",
            layout_marginBottom = "5dp",
            layout_width = "-1",
            layout_marginLeft = "8dp",
            id = "fbsj",
          },
        },
      },
    },
  },
  {
    RelativeLayout,
    backgroundColor = AndLuaB,
    {
      CardView,
      radius = AndLuaR,
      CardElevation = "0dp",
      backgroundColor = AndLuaB1,
      layout_width = "-1",
      layout_marginLeft = "5dp",
      layout_marginBottom = "5dp",
      layout_marginRight = "5dp",
      layout_marginTop = "2dp",
      {
        RelativeLayout,
        layout_width = "fill",
        {
          RelativeLayout,
          id = "b2",
          layout_width = "-1",
          layout_marginTop = "10dp",
          layout_height = "40dp",
          {
            CircleImageView,
            layout_height = "30dp",
            src = "res/tx.png",
            layout_marginLeft = "10dp",
            layout_width = "30dp",
            layout_centerVertical = "true",
            id = "tztx1",
          },
          {
            TextView,
            layout_toRightOf = "tztx1",
            layout_marginTop = "2dp",
            layout_marginLeft = "10dp",
            id = "tznc1",
            text = "昵称",
            textColor = TitleColor,
            textSize = "14sp",
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
              text = getLS("L_The_author"),
              gravity = "center",
              textSize = "10sp",
              layout_height = "-1",
            },
          },
          {
            TextView,
            layout_below = "tznc1",
            layout_toRightOf = "tztx1",
            layout_marginLeft = "10dp",
            text = "2000-1-1",
            textColor = TitleColor1,
            textSize = "12sp",
            id = "tzrq1",
          },
          {
            TextView,
            textColor = "#757575",
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
          layout_width = "-1",
          layout_marginTop = "7dp",
          layout_marginBottom = "8dp",
          {
            TextView,
            gravity = "start",
            textSize = "15sp",
            layout_width = "-1",
            layout_marginBottom = "10dp",
            layout_marginRight = "10dp",
            layout_marginLeft = "10dp",
            text = "内容",
            textColor = TitleColor,
            textIsSelectable = true,
            id = "tzbt1",
          },
          {
            CardView,
            layout_below = "tzbt1",
            layout_marginBottom = "8dp",
            layout_marginRight = "10dp",
            layout_marginLeft = "10dp",
            radius = "15dp",
            backgroundColor = AndLuaB3,
            CardElevation = "0",
            {
              TextView,
              textSize = "12sp",
              layout_marginBottom = "3dp",
              layout_marginTop = "3dp",
              layout_marginLeft = "10dp",
              text = getLS("L_Reply_2"),
              textColor = TitleColor1,
              id = "Reply_reply",
              layout_marginRight = "10dp",
            },
          },

        },
      },
    },
  },
  {
    LinearLayout,
    backgroundColor = AndLuaB,
    onClick = function()
      activity.newActivity("main15", { zzid })
    end,
    orientation = "vertical",
    layout_width = "-1",
    {
      CardView,
      radius = AndLuaR,
      CardElevation = "0dp",
      backgroundColor = AndLuaB1,
      layout_width = "-1",
      layout_marginLeft = "5dp",
      layout_marginBottom = "5dp",
      layout_marginRight = "5dp",
      layout_marginTop = "2dp",
      {
        RelativeLayout,
        layout_width = "-1",
        layout_margin = "3dp",
        backgroundColor = AndLuaB1,
        {
          CircleImageView,
          layout_marginLeft = "8dp",
          layout_marginTop = "3dp",
          layout_height = "30dp",
          layout_marginBottom = "3dp",
          id = "ZZsr",
          layout_width = "30dp",
          src = "icon.png",
          onClick = function(v)
            intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
            intent.putExtra("uidd1", zzid);
            path = activity.getLuaDir() .. "/main15.lua"
            intent.setData(Uri.parse("file://" .. path));
            activity.startActivity(intent, ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
          end,
        },
        {
          TextView,
          layout_centerInParent = "true",
          layout_marginLeft = "10dp",
          textSize = "16sp",
          id = "ZZna",
          text = getLS("L_The_author"),
          textColor = TitleColor,
          layout_toRightOf = "ZZsr",
        },
        {
          ImageView,
          layout_centerVertical = "true",
          src = "res/Metrial541.png",
          layout_alignParentRight = "true",
          layout_height = "20dp",
          layout_width = "20dp",
          ColorFilter = TitleColor1,
          layout_marginRight = "5dp",
        },
      },
    },
  },
};


activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(0)
bw(Sideslip, 0x5FFFFFFF)
bw(me3, 0x5FFFFFFF)
me3.onClick = function()
  pop1.show()
end
Sideslip.onClick = function()
  activity.finish()
end
ztt()

button.setVisibility(View.GONE)

data2 = {}
adp = LuaMultiAdapter(activity, data2, lb)
list.setAdapter(adp)

ymid, zzid = ...
uguid()

function dowcode()
  dialog6 = ProgressDialog(this)
  dialog6.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
  dialog6.setTitle(getLS("L_Is_in_the_download") .. "...")
  dialog6.setCancelable(true)
  dialog6.setCanceledOnTouchOutside(true)
  dialog6.setMax(100)
  dialog6.show()
  url = uurrll
  path = "/sdcard/AndLua/download/" .. mzzz.Text .. ".alp"
  big(url, path)
end

if zzid == uid3 then
  pop1 = PopupMenu(activity, me3)
  menu11 = pop1.Menu
  menu11.add(getLS("L_Delete_the_source")).onMenuItemClick = function(a)
    if aa.Text == "" then
    else
      AlertDialog.Builder(this)
          .setTitle(getLS("L_Delete_the_source"))
          .setMessage(getLS("L_Sure_to_delete"))
          .setPositiveButton(getLS("L_Determine"), {
            onClick = function(v)
              uguid()
              Http.post("https://ly250.cn/andlua/sym.php",
                "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. ymid .. "&sid=" .. sid(),
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
  menu11.add(getLS("L_Source_permissions")).onMenuItemClick = function(a)
    if aa.Text == "" then
    else
      activity.newActivity("main57", { zzid, ymid })
    end
  end
  menu11.add(getLS("L_Share")).onMenuItemClick = function(a)
    if aa.Text == "" then
    else
      urlll = "https://ly250.cn/andlua/SourceCode.php?uid=" .. tostring(tointeger(ymid * 28265))
      text = urlll
      intent = Intent(Intent.ACTION_SEND);
      intent.setType("text/plain");
      intent.putExtra(Intent.EXTRA_SUBJECT, getLS("L_Share"));
      intent.putExtra(Intent.EXTRA_TEXT, text);
      intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
      activity.startActivity(Intent.createChooser(intent, getLS("L_Share_the")));
    end
  end
  menu11.add(getLS("L_To_report")).onMenuItemClick = function(a)
    if aa.Text == "" then
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
          .setTitle(getLS("L_To_report_the_source_code"))
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
                Http.post("https://ly250.cn/andlua/jb1.php",
                  "uid1=" .. uid1 .. "&uid2=" .. uid2 ..
                  "&uid3=" .. uid3 .. "&uid44=" .. ymid .. "&text=" .. jb.text .. "&sid=" .. sid(), function(a1, rhb, c,
                                                                                                             d)
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
else
  pop1 = PopupMenu(activity, me3)
  menu11 = pop1.Menu
  if ugad() == "true" then
    menu11.add(getLS("L_Delete")).onMenuItemClick = function(a)
      if aa.Text == "" then
      else
        AlertDialog.Builder(this)
            .setTitle(getLS("L_Delete_the_source"))
            .setMessage(getLS("L_Sure_to_delete"))
            .setPositiveButton(getLS("L_Determine"), {
              onClick = function(v)
                uguid()
                Http.post("https://ly250.cn/andlua/sym.php",
                  "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. ymid .. "&sid=" .. sid(),
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
    if aa.Text == "" then
    else
      urlll = "https://ly250.cn/andlua/SourceCode.php?uid=" .. tostring(tointeger(ymid * 28265))
      text = urlll
      intent = Intent(Intent.ACTION_SEND);
      intent.setType("text/plain");
      intent.putExtra(Intent.EXTRA_SUBJECT, getLS("L_Share"));
      intent.putExtra(Intent.EXTRA_TEXT, text);
      intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
      activity.startActivity(Intent.createChooser(intent, getLS("L_Share_the")));
    end
  end
  menu11.add(getLS("L_To_report")).onMenuItemClick = function(a)
    if aa.Text == "" then
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
          .setTitle(getLS("L_To_report_the_source_code"))
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
                Http.post("https://ly250.cn/andlua/jb1.php",
                  "uid1=" .. uid1 .. "&uid2=" .. uid2 ..
                  "&uid3=" .. uid3 .. "&uid44=" .. ymid .. "&text=" .. jb.text .. "&sid=" .. sid(), function(a1, rhb, c,
                                                                                                             d)
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
end

function sx()
  data2 = {}
  adp = LuaMultiAdapter(activity, data2, lb)
  Http.post("https://ly250.cn/andlua/kym.php",
    "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid33=" .. zzid .. "&id=" .. ymid .. "&sid=" .. sid(),
    function(a1, hb, c, d)
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
      elseif sid1 == "9" then
        SnackerBar.build()
            :msg(getLS("L_The_source_author_only_the_visible"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      elseif sid1 == "ok" then
        ymmz = hb:match('%["name"] = "(.-)%";')
        ymtb = hb:match('%["icon"] = "(.-)%";')
        xzlj = hb:match('%["url"] = "(.-)%";')
        xzl = hb:match('%["xzl"] = "(.-)%";')
        hl = hb:match('%["hfl"] = "(.-)%";')
        dx = hb:match('%["dx"] = "(.-)%";')
        text = hb:match('%["text"] = "(.-)%";')
        src1 = hb:match('%["src1"] = "(.-)%";')
        src2 = hb:match('%["src2"] = "(.-)%";')
        src3 = hb:match('%["src3"] = "(.-)%";')
        rq = hb:match('%["fbsj"] = "(.-)%";')
        hii = hb:match('%["hf"] = "(.-)%";')
        zmz = hb:match('%["fbz"] = "(.-)%";')
        Paid = hb:match('%["Paid"] = "(.-)%";')
        sr = hb:match('%["src"] = "(.-)%";')
        vhot = hb:match('%["hot"] = "(.-)%";')
        vclassification = hb:match('%["classification"] = "(.-)%";')
        Original1 = hb:match('%["Original"] = "(.-)%";')
        vLabel = hb:match('%["Label"] = "(.-)%";')
        vib = 8
        source1 = getLS("L_Handling")
        if Original1 == "true" then
          vib = 0
          source1 = getLS("L_Original")
        end
        if vLabel == "" then
          vLabel = getLS("L_Other")
        end
        if vclassification == "" then
          vclassification = getLS("L_Other")
        end
        lls = tointeger(hl + 1)
        if Paid == "0" then
          Paid1 = getLS("L_As_a_free_download")
        else
          Paid1 = "￥" .. Paid
        end
        aa.setText(src1)
        ab.setText(src2)
        ljjj.setText(xzlj)
        mzzz.setText(ymmz)
        ac.setText(src3)
        txcc.setText(ymtb)
        tzc.setText(zmz)
        btc.setText(ymmz)
        adp.add { __type = 1, classification0 = vclassification, classification = getLS("L_Classification") ..
        vclassification, Label = getLS("L_Tags") .. vLabel, source = getLS("L_Source") .. source1, hot = vhot ..
        getLS("L_The_heat"), hot1 = getLS("L_The_heat_1") .. vhot, Original = { Visibility = vib }, txx = Paid1, zzmm = {
          text = getLS("L_The_author_1") .. zmz }, ymtbb = { src = ymtb }, mz = { text = ymmz }, xzl = {
          text = xzl .. getLS("L_Download") }, hfl = { text = hl .. getLS("L_Reply") }, dx8 = { text = dx }, js = {
          text = text }, tp1 = { src = src1 }, tp2 = { src = src2 }, tp3 = { src = src3 }, fbsj = {
          text = getLS("L_Upload_time") .. rq }, dxv = { text = getLS("L_Size") .. dx } }
        adp.add { __type = 3, ZZsr = sr, ZZna = getLS("L_The_author_1") .. zmz }
        if hii == "0" then
        else
          uguid()
          Http.post("https://ly250.cn/andlua/kpl1.php",
            "uid1=" .. uid1 .. "&uid2=" .. uid2 .. "&uid3=" .. uid3 .. "&uid44=" .. ymid .. "&sid=" .. sid(),
            function(a1, b, c, d)
              sid2 = b:match('%["ret"] = "(.-)%";')
              if sid2 == "1" then
                SnackerBar.build()
                    :msg(getLS("L_Failed_to_get_comments"))
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
              elseif sid2 == "ok" then
                uguid()
                tx5 = b:gmatch('%["src"] = "(.-)%";')
                rq5 = b:gmatch('%["time"] = "(.-)%";')
                nr5 = b:gmatch('%["text"] = "(.-)%";')
                replyID = b:gmatch('%["id"] = "(.-)%";')
                ky = b:gmatch('%["uid"] = "(.-)%";')
                reply = b:gmatch('%["reply"] = "(.-)%";')
                for nc11 in b:gmatch('%["name"] = "(.-)%";') do
                  local tx6 = tx5()
                  local rq6 = rq5()
                  local nr6 = nr5()
                  local replyID_1 = replyID()
                  local keyy = ky()
                  reply_1 = reply()
                  local reply_3 = reply_1 .. getLS("L_Reply_2")
                  if reply_1 == "0" then
                    reply_3 = getLS("reply")
                  end
                  lls = lls - 1
                  if zzid == keyy then
                    adp.add { __type = 2, Reply_reply = {
                      text = reply_3,
                      onClick = function()
                        activity.newActivity("main62", { replyID_1, false })
                      end
                    }, ls = lls .. "#", lzz = { visibility = 0 }, tznc1 = { text = nc11 }, tzrq1 = { text = rq6 }, tzbt1 = {
                      text = nr6 }, tztx1 = {
                      src = tx6,
                      onClick = function(v)
                        intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                        intent.putExtra("uidd1", keyy);
                        path = activity.getLuaDir() .. "/main15.lua"
                        intent.setData(Uri.parse("file://" .. path));
                        activity.startActivity(intent,
                          ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
                      end
                    } }
                  else
                    adp.add { __type = 2, Reply_reply = {
                      text = reply_3,
                      onClick = function()
                        activity.newActivity("main62", { replyID_1, false })
                      end
                    }, ls = lls .. "#", lzz = { visibility = 8 }, tznc1 = { text = nc11 }, tzrq1 = { text = rq6 }, tzbt1 = {
                      text = nr6 }, tztx1 = {
                      src = tx6,
                      onClick = function(v)
                        intent = Intent(activity, luajava.bindClass("com.androlua.LuaActivity"));
                        intent.putExtra("uidd1", keyy);
                        path = activity.getLuaDir() .. "/main15.lua"
                        intent.setData(Uri.parse("file://" .. path));
                        activity.startActivity(intent,
                          ActivityOptions.makeSceneTransitionAnimation(activity, v, "tx1io").toBundle());
                      end
                    } }
                  end
                end
              else
                SnackerBar.build()
                    :msg(getLS("L_Failed_to_get_comments"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              end
            end)
        end
        task(500, function()
          list.setAdapter(adp)
          jz.setVisibility(View.GONE)
          button.setVisibility(View.VISIBLE)
          sxlist.setRefreshing(false);
        end)
      else
      end
    end)
end

sx()
data2 = {}
adp = LuaMultiAdapter(activity, data2, lb)
list.setAdapter(adp)

sxlist.setColorSchemeColors({ tonumber(bjzt()) });
sxlist.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  data2 = {}
  adp = LuaMultiAdapter(activity, data2, lb)
  list.setAdapter(adp)
  sx()
end })

butt.onClick = function()
  activity.newActivity("main13", { zzid, ymid, tzc.Text, btc.Text, txcc.Text })
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
