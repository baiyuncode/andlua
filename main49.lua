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
import "mods.lay"
ztt()
main10 = {
  LinearLayout,
  layout_width = "fill",
  layout_height = "fill",
  backgroundColor = AndLuaB,
  {
    RelativeLayout,
    layout_width = "fill",
    layout_height = "fill",
    {
      TextView,
      textSize = "15sp",
      layout_centerInParent = "true",
      text = getLS("L_No_project"),
      textColor = "#000000",
      id = "wgc",
    },
    {
      SwipeRefreshLayout,
      layout_marginLeft = "5dp",
      layout_marginRight = "5dp",
      layout_marginTop = "5dp",
      id = "sxlist",
      {
        YLListView,
        VerticalScrollBarEnabled = false,
        overScrollMode = 2,
        id = "list",
        VerticalScrollBarEnabled = false,
        layout_width = "-1",
        layout_height = "-1",
        DividerHeight = 0
      },
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
      text = getLS("L_The_import_material"),
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

dz, dz1 = ...

bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
function gxlbb(ggh, bbt, bh, bmh, g)
  adp3.add { tb = ggh, bt = bbt, bb = bh, bmb = bmh, gcv = g, gcu = ggh }
end

sxlist.setRefreshing(true);
adp3 = LuaAdapter(activity, lap)
list.setAdapter(adp3)

function sjj()

end

function szlb(hkqq)
  if hkqq == "0" then
    wgc.setVisibility(View.VISIBLE)
  else
    wgc.setVisibility(View.GONE)
  end
  sxlist.setRefreshing(false);
end

function ddd()
  adp3.clear()
end

function sxgg()
  require "import"
  import "java.io.File"
  import "mods.andlua"
  call("sjj")
  function show(f)
    dir = f
    call("ddd")
    ls = luajava.astable(f.listFiles() or String {})
    table.sort(ls, function(a, b)
      return (a.isDirectory() ~= b.isDirectory() and a.isDirectory()) or
      ((a.isDirectory() == b.isDirectory()) and a.Name < b.Name)
    end)
    if #ls == 0 then
      hkqq = "0"
    else
      hkqq = "1"
      for n = 1, #ls do
        bbm = ls[n].Name
        gg = ("/sdcard/AndLua/project/" .. ls[n].Name .. "/init.lua")
        if File(gg).isFile() then
          pdd = ("/sdcard/AndLua/project/" .. ls[n].Name .. "/main.lua")
          file, err = io.open(pdd)
          if err == nil then
            ggh = ("/sdcard/AndLua/project/" .. ls[n].Name .. "/icon.png")
            if File(ggh).isFile() then
            else
              ggh = activity.getLuaDir() .. "/icon.png"
            end
            g = ("/sdcard/AndLua/project/" .. ls[n].Name)
            wj = io.open(gg):read("*a")
            bbt = wj:match('%appname="(.-)"')
            bh = getLS("L_Version") .. ": " .. wj:match('%appver="(.-)"')
            bmh = getLS("L_The_package_name") .. ": " .. wj:match('%kagename="(.-)"')
            call("gxlbb", ggh, bbt, bh, bmh, g)
          else
          end
        end
      end
    end
  end

  show(File("/sdcard/AndLua/project/"))
  call("szlb", hkqq)
end

thread(sxgg)
sxlist.setColorSchemeColors({ tonumber(bjzt()) });
sxlist.setOnRefreshListener(SwipeRefreshLayout.OnRefreshListener { onRefresh = function()
  thread(sxgg)
end })
list.onItemClick = function(l, v, p, i)
  pm = v.Tag.gcv.Text .. "/res/" .. dz1
  if File(v.Tag.gcv.Text).isDirectory() then
    if File(pm).isFile() then
      AlertDialog.Builder(this)
          .setTitle(getLS("L_Prompt"))
          .setMessage(getLS("L_Whether_the_material_has_been_in_existence"))
          .setPositiveButton(getLS("L_Cover"), {
            onClick = function(v)
              if LuaUtil.copyDir(dz, pm) then
                SnackerBar.build()
                    :msg(getLS("L_Import_success"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              else
                SnackerBar.build()
                    :msg(getLS("L_Import_failure"))
                    :actionText(getLS("L_OK"))
                    :action(function()
                    end)
                    :show()
              end
            end
          })
          .setNegativeButton(getLS("L_Cancel"), nil)
          .show()
    else
      if LuaUtil.copyDir(dz, pm) then
        SnackerBar.build()
            :msg(getLS("L_Import_success"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      else
        SnackerBar.build()
            :msg(getLS("L_Import_failure"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
      end
    end
  else
    SnackerBar.build()
        :msg(getLS("L_This_project_does_not_exist"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  end
end
