require "import"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "layout"

activity.setTheme(R.AndLua1)
activity.setTitle("$AppName$")
activity.setContentView(loadlayout(layout))