PluginunitText={
  LinearLayout;
  layout_width="fill";
  layout_height="fill";
  {
    TextView;
    layout_width="match_parent";
    layout_height="match_parent";
    textIsSelectable=true;
    textSize="12sp";
    Text=[==[--[[
可交互控件ID

LuaEditor 代码框ID
AndTitle 标题ID
AndSubTitle 副标题ID

]]

function onBin()
--自定义打包事件
end

function LuaEditorMonitor1()
--LuaEditor编辑框选择文本监听1
end

function LuaEditorMonitor2()
--LuaEditor编辑框选择文本监听2
end

function LuaEditorMonitor3()
--手册LuaEditor编辑框选择文本监听1
end

function LuaEditorMonitor4()
--手册LuaEditor编辑框选择文本监听2
end

function onBottomSymbol(text)
--返回底部符号栏符号
end

function onTopSymbol(text)
--返回顶部功能栏功能名称
end

--获取当前编辑的文件
getProjectFile()

--获取工程路径
getProjectPath()

--获取工程名称
getProjectName()

--获取工程版本
getProjectVer()

--获取工程版本号
getProjectCode()

--获取工程SDK
getProjectSDK()

--获取工程包名
getProjectPackageName()

--获取插件路径
getPluginPath("插件名称")

--导入插件内的文件
PluginImport("插件名称","需要导入的文件名")

--去除默认左侧滑
RemoveDrawerLayout()

--隐藏顶部功能栏
hideFunctionBar()

--隐藏文件标签栏
hideLabelBar()

--隐藏底部符号栏
hideSymbolBar()

--隐藏右下角按钮1
hideButton1()

--隐藏右下角按钮2
hideButton2()

--隐藏顶部按钮1
hideTopButton1()

--隐藏顶部按钮2
hideTopButton2()

--隐藏顶部按钮3
hideTopButton3()

--隐藏顶部按钮4
hideTopButton4()

--隐藏顶部按钮5
hideTopButton5()

--隐藏顶部按钮6
hideTopButton6()

--编译文件
CompileFile("文件路径")

--在编写页添加自己的控件
addPluginView(view)

--在左侧滑添加自己的控件
addPluginDrawerView(view)

--打开文件 注意：仅支持打开工程内的文件
openLuaFile("文件路径")

--设置右下角按钮1图片 参数2：是否进行图片着色
setImageButton1("图片路径",true)

--设置右下角按钮2图片 参数2：是否进行图片着色
setImageButton2("图片路径",true)

--设置顶部按钮1图片 参数2：是否进行图片着色
setImageTopButton1("图片路径",true)

--设置顶部按钮2图片 参数2：是否进行图片着色
setImageTopButton2("图片路径",true)

--设置顶部按钮3图片 参数2：是否进行图片着色
setImageTopButton3("图片路径",true)

--设置顶部按钮4图片 参数2：是否进行图片着色
setImageTopButton4("图片路径",true)

--设置顶部按钮5图片 参数2：是否进行图片着色
setImageTopButton5("图片路径",true)

--设置顶部按钮6图片 参数2：是否进行图片着色
setImageTopButton6("图片路径",true)

--设置顶部按钮1点击事件
setClickTopButton1(函数名)

--设置顶部按钮2点击事件
setClickTopButton2(函数名)

--设置顶部按钮3点击事件
setClickTopButton3(函数名)

--设置顶部按钮4点击事件
setClickTopButton4(函数名)

--设置顶部按钮5点击事件
setClickTopButton5(函数名)

--设置顶部按钮6点击事件
setClickTopButton6(函数名)

--设置顶部按钮1长按事件
setLongClickTopButton1(函数名)

--设置顶部按钮2长按事件
setLongClickTopButton2(函数名)

--设置顶部按钮3长按事件
setLongClickTopButton3(函数名)

--设置顶部按钮4长按事件
setLongClickTopButton4(函数名)

--设置顶部按钮5长按事件
setLongClickTopButton5(函数名)

--设置顶部按钮6长按事件
setLongClickTopButton6(函数名)

--设置右下角按钮1点击事件
setClickButton1(函数名)

--设置右下角按钮2点击事件
setClickButton2(函数名)

--设置右下角按钮1长按事件
setLongClickButton1(函数名)

--设置右下角按钮2长按事件
setLongClickButton2(函数名)

--打开左侧滑
openLeftDrawer()

--关闭左侧滑
closeLeftDrawer()

--打开右侧滑
openRightDrawer()

--关闭右侧滑
closeRightDrawer()

--获取AndLua+主题颜色
getThemeColor()

--通知AndLua+刷新插件列表
RefreshPluginList()]==];
  };
};

AlertDialog.Builder(this)
.setTitle("插件API文档")
.setView(loadlayout(PluginunitText))
.setPositiveButton("确定",nil)
.show()