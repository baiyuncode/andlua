require "import"
import "android.app.*"
import "android.os.*"
import "java.io.*"
import "android.widget.*"
import "android.view.*"
import "android.content.*"
import "com.androlua.*"
import "mods.SnackerBar"
import "loadlayout2"
require "xml2table"
import "mods.color1"
import "android.graphics.drawable.ColorDrawable"
import "android.text.SpannableString"
import "android.text.style.ForegroundColorSpan"
import "android.text.Spannable"
import "mods.andlua"
ztt()
layout = {
  main = {
    LinearLayout,
    orientation = "vertical",
  },
  ck = {
    LinearLayout,
    {
      RadioGroup,
      layout_weight = "1",
      id = "ck_rg",
    },
    {
      Button,
      Text = getLS("L_Determine"),
      layout_gravity = "right",
      id = "ck_bt",
    },
    orientation = "vertical",
  },
}
ztl()
luadir, luapath, hj11, pff, yyyy = ...
luadir = luadir or luapath:gsub("/[^/]+$", "")
package.path = package.path .. ";" .. luadir .. "/?.lua;"
if luapath:find("%.aly$") then
  local f = io.open(luapath)
  local s = f:read("*a")
  f:close()
  xpcall(function()
      layout.main = assert(loadstring("return " .. s))()
    end,
    function()
      activity.result({ getLS("L_This_layout_is_not_supported"), "", "2" })
    end)
  showsave = true
end

function onTouch(v, e)
  if e.getAction() == MotionEvent.ACTION_DOWN then
    getCurr(v)
    return true
  end
end

local TypedValue = luajava.bindClass("android.util.TypedValue")
local dm = activity.getResources().getDisplayMetrics()
function dp(n)
  return TypedValue.applyDimension(1, n, dm)
end

function to(n)
  return string.format("%ddp", n // dn)
end

dn = dp(1)
lastX = 0
lastY = 0
vx = 0
vy = 0
vw = 0
vh = 0
zoomX = false
zoomY = false
function move(v, e)
  curr = v.Tag
  currView = v
  ry = e.getRawY() --获取触摸绝对Y位置
  rx = e.getRawX() --获取触摸绝对X位置
  if e.getAction() == MotionEvent.ACTION_DOWN then
    lp = v.getLayoutParams()
    vy = v.getY()      --获取视图的Y位置
    vx = v.getX()      --获取视图的X位置
    lastY = ry         --记录按下的Y位置
    lastX = rx         --记录按下的X位置
    vw = v.getWidth()  --记录控件宽度
    vh = v.getHeight() --记录控件高度
    if vw - e.getX() < 20 then
      zoomX = true     --如果触摸右边缘启动缩放宽度模式
    elseif vh - e.getY() < 20 then
      zoomY = true     --如果触摸下边缘启动缩放高度模式
    end
  elseif e.getAction() == MotionEvent.ACTION_MOVE then
    --lp.gravity=Gravity.LEFT|Gravity.TOP --调整控件至左上角
    if zoomX then
      lp.width = (vw + (rx - lastX))  --调整控件宽度
    elseif zoomY then
      lp.height = (vh + (ry - lastY)) --调整控件高度
    else
      lp.x = (vx + (rx - lastX))      --移动的相对位置
      lp.y = (vy + (ry - lastY))      --移动的相对位置
    end
    v.setLayoutParams(lp)             --调整控件到指定的位置
    --v.Parent.invalidate()
  elseif e.getAction() == MotionEvent.ACTION_UP then
    if (rx - lastX) ^ 2 < 100 and (ry - lastY) ^ 2 < 100 then
      getCurr(v)
    else
      curr.layout_x = to(v.getX())
      curr.layout_y = to(v.getY())
      if zoomX then
        curr.layout_width = to(v.getWidth())
      elseif zoomY then
        curr.layout_height = to(v.getHeight())
      end
    end
    zoomX = false --初始化状态
    zoomY = false --初始化状态
  end
  return true
end

function getCurr(v)
  curr = v.Tag
  currView = v
  fd_dlg.setView(View(activity))
  fd_dlg.Title = tostring(v.Class.getSimpleName())
  if luajava.instanceof(v, GridLayout) then
    fd_dlg.setItems(fds_grid)
  elseif luajava.instanceof(v, LinearLayout) then
    fd_dlg.setItems(fds_linear)
  elseif luajava.instanceof(v, ViewGroup) then
    fd_dlg.setItems(fds_group)
  elseif luajava.instanceof(v, TextView) then
    fd_dlg.setItems(fds_text)
  elseif luajava.instanceof(v, ImageView) then
    fd_dlg.setItems(fds_image)
  else
    fd_dlg.setItems(fds_view)
  end
  if luajava.instanceof(v.Parent, LinearLayout) then
    fd_list.getAdapter().add("layout_weight")
  elseif luajava.instanceof(v.Parent, AbsoluteLayout) then
    fd_list.getAdapter().insert(5, "layout_x")
    fd_list.getAdapter().insert(6, "layout_y")
  elseif luajava.instanceof(v.Parent, RelativeLayout) then
    local adp = fd_list.getAdapter()
    for k, v in ipairs(relative) do
      adp.add(v)
    end
  end
  fd_list.setDividerHeight(0)
  fd_dlg.show()
end

function adapter(t)
  local ls = ArrayList()
  for k, v in ipairs(t) do
    ls.add(v)
  end
  return ArrayAdapter(activity, android.R.layout.simple_list_item_1, ls)
end

import "android.graphics.drawable.*"
gd = GradientDrawable()
gd.setColor(0x00ffffff)
gd.setStroke(2, 0x66000000, 5, 5)
gd.setGradientRadius(700)
gd.setGradientType(1)


curr = nil
xpcall(function()
    activity.setContentView(loadlayout2(layout.main, {}))
  end,
  function()
    activity.result({ getLS("L_This_layout_is_not_supported"), "", "2" })
  end)

relative = {
  "layout_above", "layout_alignBaseline", "layout_alignBottom", "layout_alignEnd", "layout_alignLeft",
  "layout_alignParentBottom", "layout_alignParentEnd", "layout_alignParentLeft", "layout_alignParentRight",
  "layout_alignParentStart", "layout_alignParentTop", "layout_alignRight", "layout_alignStart", "layout_alignTop",
  "layout_alignWithParentIfMissing", "layout_below", "layout_centerHorizontal", "layout_centerInParent",
  "layout_centerVertical", "layout_toEndOf", "layout_toLeftOf", "layout_toRightOf", "layout_toStartOf"
}

--属性列表对话框
fd_dlg = AlertDialogBuilder(activity)
fd_list = fd_dlg.getListView()
fds_grid = {
  getLS("L_Add"), getLS("L_Delete"), getLS("L_The_parent"), getLS("L_Child_controls"),
  "id", "orientation",
  "columnCount", "rowCount",
  "layout_width", "layout_height", "layout_gravity", "onClick", "onLongClick",
  "backgroundColor", "background", "gravity", "visibility", "alpha",
  "layout_margin", "layout_marginLeft", "layout_marginTop", "layout_marginRight", "layout_marginBottom",
  "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingButtom", "Ration", "RationX", "RationY",
  "CardElevation", "radius",
}

fds_linear = {
  getLS("L_Add"), getLS("L_Delete"), getLS("L_The_parent"), getLS("L_Child_controls"),
  "id", "orientation", "layout_width", "layout_height", "layout_gravity", "onClick", "onLongClick",
  "backgroundColor", "background", "gravity", "visibility", "alpha",
  "layout_margin", "layout_marginLeft", "layout_marginTop", "layout_marginRight", "layout_marginBottom",
  "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingButtom", "Ration", "RationX", "RationY",
  "CardElevation", "radius",
}

fds_group = {
  getLS("L_Add"), getLS("L_Delete"), getLS("L_The_parent"), getLS("L_Child_controls"),
  "id", "layout_width", "layout_height", "layout_gravity", "onClick", "onLongClick",
  "backgroundColor", "background", "gravity", "visibility", "alpha",
  "layout_margin", "layout_marginLeft", "layout_marginTop", "layout_marginRight", "layout_marginBottom",
  "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingButtom", "Ration", "RationX", "RationY",
  "CardElevation", "radius",
}

fds_text = {
  getLS("L_Delete"), getLS("L_The_parent"),
  "id", "layout_width", "layout_height", "layout_gravity", "onClick", "onLongClick",
  "backgroundColor", "background", "text", "ellipsize", "hint", "textColor", "hintTextColor", "textSize", "singleLine",
  "gravity", "error", "visibility", "alpha", "singleLine", "maxLines", "maxEms", "maxHeight", "maxWidth", "minWidth",
  "layout_margin", "layout_marginLeft", "layout_marginTop", "layout_marginRight", "layout_marginBottom",
  "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingButtom", "Ration", "RationX", "RationY",
  "CardElevation", "radius",
}

fds_image = {
  getLS("L_Delete"), getLS("L_The_parent"),
  "id", "layout_width", "layout_height", "layout_gravity", "onClick", "onLongClick",
  "backgroundColor", "background", "src", "scaleType", "gravity", "visibility", "alpha",
  "layout_margin", "layout_marginLeft", "layout_marginTop", "layout_marginRight", "layout_marginBottom",
  "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingButtom", "Ration", "RationX", "RationY",
  "CardElevation", "radius",
}

fds_view = {
  getLS("L_Delete"), getLS("L_The_parent"),
  "id", "layout_width", "layout_height", "layout_gravity", "onClick", "onLongClick",
  "backgroundColor", "background", "gravity", "visibility", "alpha",
  "layout_margin", "layout_marginLeft", "layout_marginTop", "layout_marginRight", "layout_marginBottom",
  "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingButtom", "Ration", "RationX", "RationY",
  "CardElevation", "radius",
}
--属性选择列表
checks = {}
checks.visibility = { "VISIBLE", "INVISIBLE", "GONE" }
checks.singleLine = { "true", "false" }
checks.ellipsize = { "start", "end", "middle", "marquee" }
checks.layout_height = { "match_parent", "wrap_content", "Fixed size... " }
checks.layout_width = { "match_parent", "wrap_content", "Fixed size..." }
checks.orientation = { "vertical", "horizontal" }
checks.gravity = { "left", "top", "right", "bottom", "start", "center", "end" }
checks.layout_gravity = { "left", "top", "right", "bottom", "start", "center", "end" }
checks.scaleType = {
  "matrix",
  "fitXY",
  "fitStart",
  "fitCenter",
  "fitEnd",
  "center",
  "centerCrop",
  "centerInside" }


function addDir(out, dir, f)
  local ls = f.listFiles()
  for n = 0, #ls - 1 do
    local name = ls[n].getName()
    if ls[n].isDirectory() then
      addDir(out, dir .. name .. "/", ls[n])
    elseif name:find("%.j?pn?g$") then
      table.insert(out, dir .. name)
    end
  end
end

function checkid()
  local cs = {}
  local parent = currView.Parent.Tag
  for k, v in ipairs(parent) do
    if v == curr then
      break
    end
    if type(v) == "table" and v.id then
      table.insert(cs, v.id)
    end
  end
  return cs
end

rbs = { "layout_alignParentBottom", "layout_alignParentEnd", "layout_alignParentLeft", "layout_alignParentRight",
  "layout_alignParentStart", "layout_alignParentTop", "layout_centerHorizontal", "layout_centerInParent",
  "layout_centerVertical" }
ris = { "layout_above", "layout_alignBaseline", "layout_alignBottom", "layout_alignEnd", "layout_alignLeft",
  "layout_alignRight", "layout_alignStart", "layout_alignTop", "layout_alignWithParentIfMissing", "layout_below",
  "layout_toEndOf", "layout_toLeftOf", "layout_toRightOf", "layout_toStartOf" }
for k, v in ipairs(rbs) do
  checks[v] = { "true", "false", "none" }
end

for k, v in ipairs(ris) do
  checks[v] = checkid
end

if luadir then
  checks.src = function()
    local src = {}
    addDir(src, "", File(luadir))
    return src
  end
end

fd_list.onItemClick = function(l, v, p, i)
  fd_dlg.hide()
  local fd = tostring(v.Text)
  if checks[fd] then
    if type(checks[fd]) == "table" then
      check_dlg.Title = fd
      check_dlg.setItems(checks[fd])
      check_dlg.show()
    else
      check_dlg.Title = fd
      check_dlg.setItems(checks[fd](fd))
      check_dlg.show()
    end
  else
    func[fd]()
  end
end

--子视图列表对话框
cd_dlg = AlertDialogBuilder(activity)
cd_list = cd_dlg.getListView()
cd_list.setDividerHeight(0)
cd_list.onItemClick = function(l, v, p, i)
  getCurr(chids[p])
  cd_dlg.hide()
end

--可选属性对话框
check_dlg = AlertDialogBuilder(activity)
check_list = check_dlg.getListView()
check_list.setDividerHeight(0)
check_list.onItemClick = function(l, v, p, i)
  local v = tostring(v.Text)
  if #v == 0 or v == "none" then
    v = nil
  elseif v == "GONE" then
    v = View.GONE
    local fld = check_dlg.Title
    local old = curr[tostring(fld)]
    curr[tostring(fld)] = v
    check_dlg.hide()
    local s, l = pcall(loadlayout2, layout.main, {})
    if s then
      activity.setContentView(l)
    else
      curr[tostring(fld)] = old
      SnackerBar.build()
          :msg(l)
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
  elseif v == "VISIBLE" then
    v = View.VISIBLE
    local fld = check_dlg.Title
    local old = curr[tostring(fld)]
    curr[tostring(fld)] = v
    check_dlg.hide()
    local s, l = pcall(loadlayout2, layout.main, {})
    if s then
      activity.setContentView(l)
    else
      curr[tostring(fld)] = old
      SnackerBar.build()
          :msg(l)
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
  elseif v == "INVISIBLE" then
    v = View.INVISIBLE
    local fld = check_dlg.Title
    local old = curr[tostring(fld)]
    curr[tostring(fld)] = v
    check_dlg.hide()
    local s, l = pcall(loadlayout2, layout.main, {})
    if s then
      activity.setContentView(l)
    else
      curr[tostring(fld)] = old
      SnackerBar.build()
          :msg(l)
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
  elseif v == "Fixed size..." then
    check_dlg.hide()
    local fd = tostring(v)
    if checks[fd] then
      if type(checks[fd]) == "table" then
        check_dlg.Title = fd
        check_dlg.setItems(checks[fd])
        check_dlg.show()
      else
        check_dlg.Title = fd
        check_dlg.setItems(checks[fd](fd))
        check_dlg.show()
      end
    else
      func["layout_width"]()
    end
  elseif v == "Fixed size... " then
    check_dlg.hide()
    local fd = tostring(v)
    if checks[fd] then
      if type(checks[fd]) == "table" then
        check_dlg.Title = fd
        check_dlg.setItems(checks[fd])
        check_dlg.show()
      else
        check_dlg.Title = fd
        check_dlg.setItems(checks[fd](fd))
        check_dlg.show()
      end
    else
      func["layout_height"]()
    end
  else
    local fld = check_dlg.Title
    local old = curr[tostring(fld)]
    curr[tostring(fld)] = v
    check_dlg.hide()
    local s, l = pcall(loadlayout2, layout.main, {})
    if s then
      activity.setContentView(l)
    else
      curr[tostring(fld)] = old
      SnackerBar.build()
          :msg(l)
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
    end
  end
end

Z_fld_TRUE = true

function EDIT()
  sfd_dlg = AlertDialogBuilder(activity)
  sfd_dlg.setView(loadlayout(Edit_Layout))
  sfd_dlg.setPositiveButton(getLS("L_Determine"), { onClick = ok })
  sfd_dlg.setNegativeButton(getLS("L_Cancel"), nil)
  sfd_dlg.setNeutralButton(getLS("L_There_is_no"), { onClick = none })

  fld_TRUE = true

  fld.addTextChangedListener {
    onTextChanged = function(s)
      if Z_fld_TRUE then
        fld_TRUE = false
        flds.Progress = tointeger(tostring(string.sub(fld.Text, 1, -3)))
        fld_TRUE = true
      end
    end
  }

  flds.setOnSeekBarChangeListener {
    onProgressChanged = function()
      if Z_fld_TRUE then
        if fld_TRUE then
          fld.Text = flds.Progress .. string.sub(fld.Text, -2, -1)
        end
      end
    end
  }
end

function EDIT1()
  fld = EditText(activity)
  sfd_dlg = AlertDialogBuilder(activity)
  sfd_dlg.setView(fld)
  sfd_dlg.setPositiveButton(getLS("L_Determine"), { onClick = ok })
  sfd_dlg.setNegativeButton(getLS("L_Cancel"), nil)
  sfd_dlg.setNeutralButton(getLS("L_There_is_no"), { onClick = none })
end

vipE = { "layout_width", "layout_height", "textSize", "maxHeight", "maxWidth", "minWidth",
  "layout_margin", "layout_marginLeft", "layout_marginTop", "layout_marginRight", "layout_marginBottom",
  "padding", "paddingLeft", "paddingTop", "paddingRight", "paddingButtom", "Ration", "RationX", "RationY",
  "CardElevation", "radius" }

function is_include(value, tab)
  for k, v in ipairs(tab) do
    if v == value then
      return true
    end
  end
  return false
end

function updateID(TipsIDNum, idNane)
  task(225, function()
    if idNane == fld.Text then
      fld.Text = fld.Text .. TipsIDNum
    end
  end)
end

function getTipsIDFor(TipsIDNum, idNane)
  if not dump(layout.main):find("(.)[%[\"id\"%]](.)[=](.)\"" .. idNane .. TipsIDNum .. "\"") then
    updateID(TipsIDNum, idNane)
  else
    TipsIDNum = TipsIDNum + 1
    getTipsIDFor(TipsIDNum, idNane)
  end
end

function getTipsID(idNane)
  TipsIDNum = 1
  getTipsIDFor(TipsIDNum, idNane)
end

func = {}
setmetatable(func, {
  __index = function(t, k)
    return function()
      --tostring(currView.Class.getSimpleName())
      --sfd_dlg.Message=k
      if is_include(k, vipE) then
        if tostring(curr[k]):find("^[0-9]*dp$") or tostring(curr[k]):find("^[0-9]*sp$") or tostring(curr[k]):find("^[0-9]*%%w$") or tostring(curr[k]):find("^[0-9]*%%h$") then
          Z_fld_TRUE = true
          EDIT()
          fld.Text = curr[k]
        elseif curr[k] == nil or curr[k] == "" then
          Z_fld_TRUE = true
          fld_TRUE = true
          EDIT()
          if k == "textSize" then
            fld.Text = "10sp"
          else
            fld.Text = "10dp"
          end
        else
          getTipsID("m" .. tostring(currView.Class.getSimpleName()))
          Z_fld_TRUE = false
          EDIT1()
          if k == "id" then
            fld.Text = curr[k] or "m" .. tostring(currView.Class.getSimpleName())
          else
            fld.Text = curr[k] or ""
          end
        end
      else
        getTipsID("m" .. tostring(currView.Class.getSimpleName()))
        Z_fld_TRUE = false
        EDIT1()
        if k == "id" then
          fld.Text = curr[k] or "m" .. tostring(currView.Class.getSimpleName())
        else
          fld.Text = curr[k] or ""
        end
      end
      sfd_dlg.Title = k
      sfd_dlg.show()
      Typew(fld)
    end
  end
})

func[getLS("L_Add")] = function()
  add_dlg.Title = tostring(currView.Class.getSimpleName())
  for n = 0, #ns - 1 do
    if n ~= i then
      el.collapseGroup(n)
    end
  end
  add_dlg.show()
end

func[getLS("L_Delete")] = function()
  if hj11 == "true" then
    dialog = AlertDialog.Builder(this)
        .setTitle(getLS("L_Delete_control"))
        .setMessage(getLS("L_Sure_to_delete_2") .. tostring(currView.Class.getSimpleName()) ..
          getLS("L_Sure_to_delete_3"))
        .setPositiveButton(getLS("L_Determine"), {
          onClick = function(v)
            local gp = currView.Parent.Tag
            if gp == nil then
              SnackerBar.build()
                  :msg(getLS("L_Canot_delete_the_controls_at_the_top"))
                  :actionText(getLS("L_OK"))
                  :action(function()
                  end)
                  :show()
              return
            end
            for k, v in ipairs(gp) do
              if v == curr then
                table.remove(gp, k)
                break
              end
            end
            activity.setContentView(loadlayout2(layout.main, {}))
          end
        })
        .setNegativeButton(getLS("L_Cancel"), nil)
        .show()
    dialog.create()
  else
    local gp = currView.Parent.Tag
    if gp == nil then
      SnackerBar.build()
          :msg(getLS("L_Cant_delete_the_controls_at_the_top"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
      return
    end
    for k, v in ipairs(gp) do
      if v == curr then
        table.remove(gp, k)
        break
      end
    end
    activity.setContentView(loadlayout2(layout.main, {}))
  end
end


func[getLS("L_The_parent")] = function()
  local p = currView.Parent
  if p.Tag == nil then
    SnackerBar.build()
        :msg(getLS("L_Is_at_the_top_of_the_controls"))
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  else
    getCurr(p)
  end
end

chids = {}
func[getLS("L_Child_controls")] = function()
  chids = {}
  local arr = {}
  for n = 0, currView.ChildCount - 1 do
    local chid = currView.getChildAt(n)
    chids[n] = chid
    table.insert(arr, chid.Class.getSimpleName())
  end
  cd_dlg.Title = tostring(currView.Class.getSimpleName())
  cd_dlg.setItems(arr)
  cd_dlg.show()
end

--添加视图对话框
add_dlg = Dialog(activity)
add_dlg.Title = getLS("L_Add")
wdt_list = ListView(activity)

ns2 = {
  "Widget", "Check view", "Adapter view", "Advanced Widget", "Layout", "Advanced Layout", "Other Widget",
}

ns = {
  "小部件", "检查视图", "适配器视图", "高级控件", "布局", "高级布局", "其他控件",
}

wds = {
  { "Button", "EditText", "TextView",
    "ImageButton", "ImageView", "CircleImageView" },
  { "CheckBox", "RadioButton", "ToggleButton", "Switch" },
  { "ListView", "GridView",    "PageView",     "ExpandableListView", "Spinner" },
  { "VideoView", "SeekBar", "ProgressBar", "RatingBar",
    "DatePicker", "TimePicker", "NumberPicker" },
  { "LinearLayout", "AbsoluteLayout", "FrameLayout", "RelativeLayout" },
  { "CardView", "RadioGroup", "GridLayout",
    "ScrollView", "HorizontalScrollView" },
  { "LuaWebView", "MarText", "AutoCompleteTextView", "SearchView", "PullingLayout", "FlexibleListView",
    "SearchView",
    "HorizontalListView",
    "RippleLayout",
    "LuaEditor",
    "TextClock",
    "PhotoView",
    "SwipeMenuListView" },
}

wds2 = {
  { "按钮", "编辑框", "文本", "图片按钮", "图片", "圆形图" },
  { "复选框", "单选按钮", "按钮开关", "开关" },
  { "列表视图", "网格视图", "滑动窗体", "多级列表", "下拉框" },
  { "视频控件", "拖动条", "进度条", "评分栏", "日期选择器", "时间选择器", "数字选择器" },
  { "线性布局", "绝对布局", "框架布局", "相对布局" },
  { "卡片视图", "单选视图", "网格布局", "纵向滚动视图", "横向滚动视图" },
  { "浏览器", "跑马灯文本", "自动补全文本框", "搜索框", "下拉刷新", "弹性列表", "搜索框",
    "横向列表", "波纹布局", "Lua编辑框", "时间文本", "缩放图控件", "滑动Menu列表" },
}

if getLang() then
  for k, v in ipairs(ns) do
    for i = 1, #wds2[k] do
      wds2[k][i] = wds[k][i] .. " - " .. wds2[k][i]
    end
  end

  for i = 1, #ns do
    ns[i] = ns2[i] .. " - " .. ns[i]
  end

  mAdapter = ArrayExpandableListAdapter(activity)
  for k, v in ipairs(ns) do
    mAdapter.add(v, wds2[k])
  end
else
  mAdapter = ArrayExpandableListAdapter(activity)
  for k, v in ipairs(ns2) do
    mAdapter.add(v, wds[k])
  end
end

el = ExpandableListView(activity)
el.setAdapter(mAdapter)
add_dlg.setContentView(el)
el.setDividerHeight(0)

el.onChildClick = function(l, v, g, c)
  local w = { _G[wds[g + 1][c + 1]] }
  table.insert(curr, w)
  local s, l = pcall(loadlayout2, layout.main, {})
  if s then
    activity.setContentView(l)
  else
    table.remove(curr)
    print(l)
  end
  add_dlg.hide()
end



function ok()
  local v = tostring(fld.Text)
  if #v == 0 then
    v = nil
  end
  local fld = sfd_dlg.Title
  local old = curr[tostring(fld)]
  curr[tostring(fld)] = v
  --sfd_dlg.hide()
  local s, l = pcall(loadlayout2, layout.main, {})
  if s then
    activity.setContentView(l)
  else
    curr[tostring(fld)] = old
    SnackerBar.build()
        :msg(l)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  end
end

function none()
  local old = curr[tostring(sfd_dlg.Title)]
  curr[tostring(sfd_dlg.Title)] = nil
  --sfd_dlg.hide()
  local s, l = pcall(loadlayout2, layout.main, {})
  if s then
    activity.setContentView(l)
  else
    curr[tostring(sfd_dlg.Title)] = old
    SnackerBar.build()
        :msg(l)
        :actionText(getLS("L_OK"))
        :action(function()
        end)
        :show()
  end
end

Edit_Layout = {
  LinearLayout,
  orientation = "vertical",
  layout_height = "fill",
  layout_width = "fill",
  {
    EditText,
    layout_marginLeft = "10dp",
    layout_marginRight = "10dp",
    singleLine = "true",
    text = "10dp",
    id = "fld",
    layout_width = "match_parent",
  },
  {
    LinearLayout,
    layout_marginLeft = "10dp",
    layout_marginRight = "10dp",
    orientation = "horizontal",
    layout_width = "match_parent",
    gravity = "center",
    layout_height = "50dp",
    {
      Button,
      text = "-",
      id = "fldb1",
      layout_height = "match_parent",
      layout_width = "50dp",
      onClick = function()
        fld.Text = tostring(tointeger(string.sub(fld.Text, 1, -3)) - 1) .. tostring(string.sub(fld.Text, -2, -1))
        return true
      end,
    },
    {
      SeekBar,
      layout_weight = "1",
      Progress = 10,
      Max = 100,
      id = "flds",
      layout_width = "match_parent",
    },
    {
      Button,
      text = "+",
      id = "fldb2",
      layout_height = "match_parent",
      layout_width = "50dp",
      onClick = function()
        fld.Text = tostring(tointeger(string.sub(fld.Text, 1, -3)) + 1) .. tostring(string.sub(fld.Text, -2, -1))
        return true
      end,
    },
  },
};

function dumparray(arr)
  local ret = {}
  table.insert(ret, "{\n")
  for k, v in ipairs(arr) do
    table.insert(ret, string.format("\"%s\";\n", v))
  end
  table.insert(ret, "};\n")
  return table.concat(ret)
end

function dumplayout(t)
  table.insert(ret, "{\n")
  table.insert(ret, tostring(t[1].getSimpleName() .. ";\n"))
  for k, v in pairs(t) do
    if type(k) == "number" then
      --do nothing
    elseif type(v) == "table" then
      table.insert(ret, k .. "=" .. dumparray(v))
    elseif type(v) == "string" then
      if v:find("[\"\'\r\n]") then
        table.insert(ret, string.format("%s=[==[%s]==];\n", k, v))
      else
        table.insert(ret, string.format("%s=\"%s\";\n", k, v))
      end
    else
      table.insert(ret, string.format("%s=%s;\n", k, tostring(v)))
    end
  end
  for k, v in ipairs(t) do
    if type(v) == "table" then
      dumplayout(v)
    end
  end
  table.insert(ret, "};\n")
end

function dumplayout2(t)
  ret = {}
  dumplayout(t)
  return table.concat(ret)
end

function save(s)
  local f = io.open(luapath, "w")
  f:write(s)
  f:close()
end

import "android.content.*"
cm = activity.getSystemService(activity.CLIPBOARD_SERVICE)

function onKeyDown(c, e)
  if c == 4 then
    AlertDialog.Builder(this)
        .setTitle(getLS("L_Prompt"))
        .setMessage(getLS("L_Whether_to_save_the_current_layout"))
        .setPositiveButton(getLS("L_Save"), {
          onClick = function(v)
            activity.result({ getLS("L_The_saved"), dumplayout2(layout.main), "1" })
          end
        })
        .setNegativeButton(getLS("L_Do_not_save"), {
          onClick = function(v)
            activity.finish()
          end
        })
        .show()
    return true
  end
end

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
      text = File(luapath).getName(),
      textColor = tonumber(bjzt()),
      id = "bt",
      singleLine = true,
    },
  },
  {
    LinearLayout,
    layout_width = "55dp",
    gravity = "center",
    id = "c2",
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
  {
    LinearLayout,
    layout_width = "0dp",
    gravity = "center",
    id = "menu2",
    layout_height = "0dp",
  },
};
activity.ActionBar.setDisplayShowCustomEnabled(true)
activity.ActionBar.setCustomView(loadlayout(btl))
activity.ActionBar.setBackgroundDrawable(ColorDrawable(AndLuaB1))
activity.ActionBar.setElevation(6)
bw(Sideslip, 0x5FFFFFFF)
bw(c2, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
pop1 = PopupMenu(activity, c2)
menu3 = pop1.Menu
menu3.add(getLS("L_Copy")).onMenuItemClick = function(a)
  local cd = ClipData.newPlainText("label", dumplayout2(layout.main))
  cm.setPrimaryClip(cd)
  SnackerBar.build()
      :msg(getLS("L_Has_been_copied_to_the_clipboard"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
end
menu3.add(getLS("L_The_editor")).onMenuItemClick = function(a)
  activity.newActivity("main60", { dumplayout2(layout.main) })
end
menu3.add(getLS("L_Preview")).onMenuItemClick = function(a)
  show(dumplayout2(layout.main))
end
menu3.add(getLS("L_The_palette_1")).onMenuItemClick = function(a)
  yss(getLS("L_The_palette_1"), "0xFFFFFFFF")
end
menu3.add(getLS("L_Save")).onMenuItemClick = function(a)
  activity.result({ getLS("L_The_saved"), dumplayout2(layout.main), "1" })
end
c2.onClick = function()
  pop1.show()
end

function onResult(name, ...)
  a, b = ...
  if a == "0" then
    local str = b
    layout.main = loadstring("return " .. str)()
    activity.setContentView(loadlayout2(layout.main, {}))
  end
end
