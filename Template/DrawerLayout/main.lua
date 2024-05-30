require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"

result = 0
resourceId = this.getResources().getIdentifier("status_bar_height", "dimen", "android");

if resourceId > 0 then
  result = this.getResources().getDimensionPixelSize(resourceId);
end

import "drawer"
import "content"
import "items"

layout={DrawerLayout,id="mDrawer"}

activity.setTheme(R.AndLua1)
activity.setTitle("$AppName$")

activity.ActionBar.hide()
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);

table.insert(layout,content)
table.insert(layout,drawer)

activity.setContentView(loadlayout(layout))

title.getPaint().setFakeBoldText(true)

RippleHelper(btn).RippleColor=0x1CFFFFFF
RippleHelper(btn1).RippleColor=0x1CFFFFFF
RippleHelper(btn2).RippleColor=0x1CFFFFFF
RippleHelper(btn3).RippleColor=0x1CFFFFFF

function btn.onClick()
  mDrawer.openDrawer(3)
end

function btn1.onClick()
  Toast.makeText(activity, "Toast",Toast.LENGTH_SHORT).show()
end

function btn2.onClick()
  Toast.makeText(activity, "Toast",Toast.LENGTH_SHORT).show()
end

function btn3.onClick()
  Toast.makeText(activity, "Toast",Toast.LENGTH_SHORT).show()
end


pop=PopupMenu(activity,menu)
menu=pop.Menu

menu.add("菜单1").onMenuItemClick=function(v)
  Toast.makeText(activity, "Toast",Toast.LENGTH_SHORT).show()
end
menu.add("菜单2").onMenuItemClick=function(v)
  Toast.makeText(activity, "Toast",Toast.LENGTH_SHORT).show()
end
menu.add("菜单3").onMenuItemClick=function(v)
  Toast.makeText(activity, "Toast",Toast.LENGTH_SHORT).show()
end

btn3.onClick=function()
  pop.show()
end

datas={}

titles={"设置","清空","消息","下载","退出","分享","捐赠"}
images={"icon/ic_cog.png","icon/ic_delete.png","icon/ic_message_processing.png","icon/ic_download.png","icon/ic_power.png","icon/ic_share_variant.png","icon/ic_nature_people.png"}

for i=1,#titles do
  table.insert(datas,{src=images[i],title=titles[i]})
end

adp=LuaAdapter(activity,datas,items)
drawer_list.Adapter=adp

drawer_list.onItemClick=function(p,v,i,s)
  Toast.makeText(activity, v.Tag.title.Text,Toast.LENGTH_SHORT).show()
  mDrawer.closeDrawer(3)
  return true
end

function onKeyDown(c,e)
  if c==4 then
    if mDrawer.isDrawerOpen(3) then
      mDrawer.closeDrawer(3)
      return true
    end
  end
end