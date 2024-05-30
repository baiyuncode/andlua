require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"

import "android.graphics.Paint"

activity.setTheme(R.AndLua1)
activity.setTitle("$AppName$")
activity.setContentView(loadlayout(layout))

activity.ActionBar.hide()

title.getPaint().setFakeBoldText(true)

RippleHelper(btn).RippleColor=0x1CFFFFFF
RippleHelper(btn1).RippleColor=0x1CFFFFFF
RippleHelper(btn2).RippleColor=0x1CFFFFFF
RippleHelper(btn3).RippleColor=0x1CFFFFFF

function btn.onClick()
  Toast.makeText(activity, "Toast",Toast.LENGTH_SHORT).show()
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