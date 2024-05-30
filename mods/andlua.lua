import "java.lang.Integer"
import "android.graphics.Color"
import"android.view.inputmethod.InputMethodManager"
import "java.io.FileOutputStream"
import "java.util.zip.ZipFile"
import "bmob"
import "com.mycompany.myapp.Time"
import "android.content.Intent"
import "android.net.Uri"
import "android.transition.Explode"
import "android.graphics.PorterDuffColorFilter"
import "android.graphics.PorterDuff"
import "android.graphics.Color"

if io.open(activity.getLuaDir().."/res/debug"):read("*a")=="true" then
  activity.setDebug(true)
 else
  activity.setDebug(false)
end

Night_mode=false

wj=activity.getLuaDir().."/res/set219.LY"
hj=io.open(wj):read("*a")
if hj=="true" then
  Night_mode=true
end

if Night_mode then
  --夜间模式
  AndLuaB=0xff212121--背景颜色
  AndLuaB1=0xff303030--主要卡片颜色
  AndLuaB2=0xff212121--控件背景颜色
  AndLuaB3=0XFF232323--控件中的控件背景颜色
  RippleColor=0xFF444444--波纹颜色
  statusBar=0xff303030--状态栏
  TitleColor=0xffd6d6d6--标题
  TitleColor1=0xffbababa--二级标题
  TitleColor2=0xff808080--三级标题
  TitleColor3=0xffffffff--控件字体
  TitleColor4=0xffBBBBBB--中间字体颜色
  TitleColor5=0xFFFFFFFF--顶级字体颜色
  DialogColor=0xff424242--对话框背景
  RBackground=0xff313131--item背景
  AndLuaR="7dp"--卡片圆角
 else
  --日间模式
  AndLuaB=0xfff2f1f6--背景颜色
  AndLuaB1=0xffffffff--主要卡片颜色
  AndLuaB2=0XFFF2F2F2--控件背景颜色
  AndLuaB3=0XFFf3f3f3--控件中的控件背景颜色
  RippleColor=0xFFEEEEEE--波纹颜色
  statusBar=0xffffffff--状态栏
  TitleColor=0xff212121--标题
  TitleColor1=0xff757575--二级标题
  TitleColor2=0xffbebebe--三级标题
  TitleColor3=0xffffffff--控件字体
  TitleColor4=0xff444444--中间字体颜色
  TitleColor5=0xFF000000--顶级字体颜色
  DialogColor=0xffffffff--对话框背景
  RBackground=0x90eeeeee--item背景
  AndLuaR="7dp"--卡片圆角
end

import "android.graphics.Color"

function ColorDark(color)
  local color = Color.parseColor(color)
  local a = Color.alpha(color)
  local r = Color.red(color)-8
  local g = Color.green(color)-8
  local b =Color.blue(color)-8
  return tointeger(a<<24|r<<16|g<<8|b)
end

function ViewNight(value)
  if Build.VERSION.SDK_INT >= 23 then
    if Night_mode==true then
      accentColor=tointeger(bjzt())
      for i=0, value.getChildCount() do
        local child=value.getChildAt(i)
        if pcall(function child.getChildCount() end) then
          ViewNight(child)
         else
          switch(type(child))
           case "android.widget.ProgressBar"
            child.IndeterminateDrawable.setColorFilter(PorterDuffColorFilter(accentColor, PorterDuff.Mode.SRC_ATOP))
           case "android.widget.Button"
            child.getBackground().setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP))
           case "android.widget.EditText"
            child.getBackground().setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP))
           case "android.widget.Switch"
            child.ThumbDrawable.setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP));
            value.getChildAt(i).TrackDrawable.setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP))
           case "android.widget.SeekBar"
            child.ProgressDrawable.setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP))
            value.getChildAt(i).Thumb.setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP))
           case "android.widget.RadioButton"
            child.ButtonDrawable.setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP));
           case "android.widget.CheckBox"
            child.ButtonDrawable.setColorFilter(PorterDuffColorFilter(accentColor,PorterDuff.Mode.SRC_ATOP));
          end
        end
      end
    end
  end
end

function getLang()
  if io.open(activity.getLuaDir().."/res/set206.LY"):read("*a") == "chinese" then
    return true
  end
  return false
end

function Refresh_language()
  if io.open(activity.getLuaDir().."/res/set206.LY"):read("*a") == "chinese" then

    Language = {
      search = "搜索关键词",
      not_project = "无工程 点击右上角创建",
      sign = "点击头像登录",
      sign1 = "查看个人主页或编辑资料",
      post = "帖子",
      source = "源码",
      reply = "回复",
      project = "项目",
      forum = "论坛",
      share = "共享",
      my = "我的",
      wallet = "我的钱包",
      message = "消息中心",
      download = "下载管理",
      software = "软件相关",
      developer = "开发者",
      version = "软件版本",
      versionn = "版本号",
      communication = "交流群",
      official = "官网",
      about = "关于软件",
      about_text = [[是基于开源项目lua开发的轻型脚本编程工具使用简洁优美的lua语言简化了繁琐的Java语句同时支持使用大部分安卓api免安装调试使你在手机上开发更加轻松快捷程序申请的权限是为了你编写程序使用请大家放心使用。

使用该软件完全免费，如果你喜欢这个项目欢迎捐赠或者宣传他。在使用之前建议详细阅读程序自带手册。

用户协议：
作者不对使用该软件产生的任何直接或间接损失负责。
勿使用该程序编写恶意程序以损害他人。

注意：
未经允许，禁止盗取AndLua+的资源文件，禁止模仿AndLua+的界面以及功能。
若已经同意模仿，则只授权当时版本,不包括后续更新版本!
模仿的用户需要在软件中声明。
禁止使用AndLua+开发外挂，破解，入侵等政治敏感，破坏网络的软件。
继续使用表示你已知晓并同意该协议。]],
      update = "更新日志",
      L_AndLuaPlus_About = [[AndLua+是基于开源项目lua开发的轻型脚本编程工具使用简洁优美的lua语言简化了繁琐的Java语句同时支持使用大部分安卓api免安装调试使你在手机上开发更加轻松快捷程序申请的权限是为了你编写程序使用请大家放心使用。

使用该软件完全免费，如果你喜欢这个项目欢迎捐赠或者宣传他。在使用之前建议详细阅读程序自带手册。

用户协议：
作者不对使用该软件产生的任何直接或间接损失负责。
勿使用该程序编写恶意程序以损害他人。


注意：
未经允许，禁止盗取AndLua+的资源文件，禁止模仿AndLua+的界面以及功能。
若已经同意模仿，则只授权当时版本,不包括后续更新版本!
模仿的用户需要在软件中声明。
禁止使用AndLua+开发外挂，破解，入侵等政治敏感，破坏网络的软件。
继续使用表示你已知晓并同意该协议。]],
      open = "打开",
      L_New = "新建",
      L_Formatting = "格式化",
      L_Formatting_1 = "格式化",
      L_Packaging = "打包",
      L_The_backup = "备份",
      L_Attribute = "属性",
      L_The_log = "日志",
      L_Search_character = "搜索字符",
      L_Jump_to_specify_rows = "跳指定行",
      L_Layout_of_the_assistant = "布局助手",
      L_Layout_of_the_assistant_1 = "布局助手",
      L_The_palette = "调色板",
      L_Characters_to_replace = "字符替换",
      L_Import_the_resource = "导入资源",
      L_Simulation_to_submit = "模拟提交",
      L_Code_error = "代码查错",
      L_The_import_analysis = "导入分析",
      L_Save_the_code = "保存代码",
      L_Compile_the_file = "编译文件",
      L_Chinese_function = "中文函数",
      L_Code_manual = "代码手册",
      L_Material_warehouse = "素材仓库",
      L_A_key_to_replace = "一键替换",
      L_The_color_reference = "配色参考",
      L_APK_extract = "APK提取",
      L_The_default = "默认",
      L_The_name_of_the = "名称",
      L_The_package_name = "包名",
      L_Version = "版本",
      L_The_author = "作者",
      L_Since_the_launch = "自启动",
      L_The_path = "路径",
      L_Installing_a_plugin = "安装插件",
      L_The_installation = "安装",
      L_Prompt = "提示",
      L_Installation_plugin_already_exists= "插件已存在,是否覆盖安装?",
      L_Cover = "覆盖",
      L_Successful_installation = "安装成功",
      L_OK = "确定",
      L_Cancel = "取消",
      L_Installation_failed = "安装失败",
      L_Plugin_error = "插件错误",
      L_Program_error = "程序错误",
      L_Please_select_a_template = "请选择一个模板",
      L_New_construction = "新建工程",
      L_Create = "创建",
      L_The_project_name_already_exists = "工程名称已存在",
      L_Creating_a_successful = "创建成功",
      L_Create_a_failure = "创建失败",
      L_Random = "随机",
      L_As_a_free_download = "免费下载",
      L_Program_crashes = "程序发生崩溃,请检查工程文件夹名称是否包含特殊字符或已安装的第三方插件,请尝试修改工程文件夹名称或卸载第三方插件。",
      L_Please_enter_a_new_folder_name = "请输入新文件夹名称",
      L_Modify_the = "修改",
      L_The_folder_is = "文件夹已存在",
      L_Modify_the_success = "修改成功",
      L_Modify_the_failure = "修改失败",
      L_For_failure = "获取失败",
      L_Backup_management = "备份管理",
      L_The_tutorial_manual = "教程手册",
      L_Tool_set = "工具集合",
      L_Browsing_history = "浏览记录",
      L_API_interface = "API 接口",
      L_The_software_Settings = "软件设置",
      L_About_the_software = "关于软件",
      L_Auxiliary_tool = "辅助工具",
      L_Another_press_return_key_to_exit = "再按一次返回键退出",
      L_Exit = "退出",
      L_Import_the_project = "导入工程",
      L_New_construction = "新建工程",
      L_Identity_expired = "身份信息已过期",
      L_Post = "发布帖子",
      L_Post_0 = "帖子",
      L_Upload_the_source_code = "上传源码",
      L_Installing_a_plugin = "安装插件",
      L_Engineering_does_not_exist = "工程不存在",
      L_Automatic_login_failed = "自动登录失败",
      L_The_administrator_welcome_back = "管理员 欢迎回来",
      L_Welcome_back = "欢迎回来",
      L_Automatic_login_failed = "自动登录失败",
      L_Log_back_in = "身份信息已过期，请重新登录",
      L_Donation = "👉捐赠👈",
      L_Donation_Doce = "您可以通过捐赠向我投食，用金钱催更。",
      L_Donation_0 = "本App的开发离不开您的支持。如果您能为我提供一些援助，我将十分感激。",
      L_Giving_the_author = "捐赠作者",
      L_Pay_treasure = "支付宝",
      L_Agree_to_continue = "同意并继续",
      L_Exit = "退出",
      L_Plugin_run_error = "插件运行错误",
      L_Search_character_1 = "搜索字符",
      L_Set_up_the = "设置",
      L_Commonly_used_functions = "常用功能",
      L_Code = "代码",
      L_Engineering = "工程",
      L_Navigation = "导航",
      L_Manual = "手册",
      L_Tool = "工具",
      L_The_plugin = "插件",
      L_The_file_name = "文件名",
      L_Backup_project = "备份工程",
      L_Determine = "确定",
      L_The_backup_successful = "备份成功",
      L_Backup_failure = "备份失败",
      L_Automatic_backup = "自动备份",
      L_Detect_your_current_file = "检测到你当前文件",
      L_Save_the_code_is_empty = "保存的代码为空，是否继续保存?",
      L_Save = "保存",
      L_The_file_does_not_exist = "该文件不存在",
      L_Copy_the_name = "复制名称",
      L_Copy_path = "复制路径",
      L_Copy_the_file = "复制文件",
      L_Enter_the_new_file_name = "输入新的文件名称",
      L_Copy = "复制",
      L_The_file_name_to_repeat = "文件名字重复",
      L_Copy_success = "复制成功",
      L_Copy_the_failure = "复制失败",
      L_A_closing_tag = "关闭标签",
      L_Rename_the_file = "重命名文件",
      L_Rename_the_success = "重命名成功",
      L_Rename_the_failure = "重命名失败",
      L_Delete_the_file = "删除文件",
      L_Sure_to_delete = "确定删除?删除将后不可恢复！",
      L_Delete_the_success = "删除成功",
      L_Delete_failed = "删除失败",
      L_Import_the_resource_1 = "导入资源",
      L_The_size_of_the = "大小",
      L_The_resource_has_been_in_existence = "该资源文件已存在",
      L_Import_success = "导入成功",
      L_Import_failure = "导入失败",
      L_Open_the_file = "打开文件",
      L_The_file_has_been_compiled = "文件已编译",
      L_Temporary_does_not_support_open_the_file = "暂不支持打开此文件，是否强制以文本方式打开?",
      L_Open_the = "打开",
      L_Sure_to_delete_5 = "确定删除",
      L_The_file_5 = "文件吗？",
      L_Rename = "重命名",
      L_Delete_the_folder = "删除文件夹",
      L_Sure_to_delete_1 = "确定删除",
      L_Folder_1 = "文件夹吗？",
      L_Type_a_new_folder_name = "输入新的文件夹名称",
      L_Rename_the_folder = "重命名文件夹",
      L_The_file_or_folder_name = "文件或文件夹名称",
      L_The_new_file = "新建文件",
      L_File_name_cannot_be_empty = "文件名不能为空",
      L_Redo = "重做",
      L_Check_the_wrong = "查错",
      L_Analysis_of_the = "分析",
      L_Compile = "编译",
      L_Packaging = "打包",
      L_The_backup = "备份",
      L_Chinese_function = "中文函数",
      L_The_tutorial_manual_1 = "教程手册",
      L_Remove_the_label = "清除标签",
      L_Folder = "文件夹",
      L_Plugin_run_error = "插件运行错误",
      L_Unload_the_plugin = "卸载插件",
      L_Sure_uninstall_plugins = "确定卸载插件吗",
      L_Uninstall_the_success = "卸载成功",
      L_Unloading_failure = "卸载失败",
      L_Plugin_information = "插件信息",
      L_To_view_the_document = "查看文档",
      L_Temporarily_no_documentation = "暂时没有说明文档呢",
      L_The_first = "第",
      L_Line = "行",
      L_No_mistakes_in_grammar = "没有语法错误",
      L_The_saved = "已保存",
      L_Compile_successfully = "编译成功",
      L_Compile_error = "编译出错",
      L_Start_backup_automatically_after_5_seconds = "5秒后开始自动备份",
      L_An_error_prompt = "报错提示",
      L_The_original_string = "原字符串",
      L_The_replacement_string = "替换字符串",
      L_Substitution_characters = "替换字符",
      L_Replace = "替换",
      L_Replace_the_success = "替换成功",
      L_Without_the_characters_in_the_code = "代码中没有该字符",
      L_The_number_of_rows = "行数",
      L_The_last_line = "最后行",
      L_The_unknown_function = "未知功能",
      L_Has_been_copied_to_the_clipboard = "已复制到剪切板",
      L_May_need_to_import_the_classes = "可能需要导入的类",
      L_Enter_a_new_file_name = "输入新的文件名称",
      L_Project_has_been_in_existence_1 = "工程已存在,是否覆盖导入？",
      L_At_the_same_time_there_is = "同时存在",
      L_Is_the_latest_version = "已是最新版本",
      L_Permissions = "权限",
      L_Cloning = "克隆",
      L_Repair = "修复",
      L_Delete = "删除",
      L_Information = "信息",
      L_The_project_need_to_repair = "该工程无需修复",
      L_Repair_complete = "修复完成",
      L_Cloned = "克隆成功",
      L_Cloning_failed = "克隆失败",
      L_Shut_down = "关闭",
      L_Open = "开启",
      L_The_version_number = "版本号",
      L_Debug_mode = "调试模式",
      L_Engineering_path = "工程路径",
      L_Being_loaded_in = "正在加载中",
      L_Server_error = "服务器错误",
      L_Color_replicated = "颜色已复制",
      L_Color_duplicate_failure = "颜色复制失败",
      L_Guess_you_like = "猜你喜欢",
      L_Search_the_tutorial = "搜索教程",
      L_Search_the_note = "搜索笔记",
      L_Successful = "成功",
      L_Are_packaged = "正在打包...",
      L_Error = "出错",
      L_Are_compiling = "正在编译",
      L_Is_the_signature = "正在签名",
      L_About_to_open = "正在打开",
      L_Packaging_success = "打包成功",
      L_Packaging_error = "打包出错",
      L_Packaged_wrong_password_error_or_the_private_sign_does_not_exist = "打包出错 密码错误或私签不存在",
      L_Project_profile_error = "工程配置文件错误",
      L_Select_the_folder = "选择文件夹",
      L_Return_to_the_superior_directory = "返回上级目录",
      L_Select_the_file = "选择文件",
      L_Select_the_plugin = "选择插件",
      L_Choose_engineering = "选择源码",
      L_No_project = "无工程",
      L_Select_the_source_code = "选择源码",
      L_This_project_does_not_exist = "此工程不存在",
      L_Source_name = "源码名字",
      L_The_source_code_that = "源码说明",
      L_Please_enter_the_source_is_introduced_and_illustrated = "请填写源码介绍和说明",
      L_Other_users_to_download_is_forbidden = "禁止其他用户下载",
      L_To_ban_other_users_to_view = "禁止其他用户查看",
      L_Set_the_password_to_download = "设置密码下载",
      L_Set_the_download_password = "请输入下载密码",
      L_Set_the_downloads = "设置付费下载",
      L_Please_input_the_price = "请输入价格(元)",
      L_Original_source = "原创源码",
      L_The_source_code_label = "源码标签",
      L_Multiple_tags_separated_by_Spaces = "多个标签用空格分开 列如：标签1 标签2 标签3",
      L_Add_a_screenshot = "添加截图",
      L_Fill_in_the_information = "填写信息",
      L_Please_download_the_password = "请设置下载密码",
      L_The_password_is_too_long = "密码过长",
      L_Ban_the_word = "禁止设置关键词",
      L_Please_set_the_price = "请设置价格",
      L_Amount_of_error = "金额错误",
      L_Amount_is_too_large = "金额过大",
      L_The_lowest_price_of = "价格最低0.10元",
      L_Please_upload_three_source_screenshots = "请上传三张源码截图",
      L_Is_being_issued = "正在上传中",
      L_Upload_error = "上传错误，请重试。",
      L_You_submit = "提交失败",
      L_Agree_and_continue_to_release = "同意并继续",
      L_Donot_agree_to_quit = "不同意退出",
      L_The_download_is_complete = "下载完成",
      L_The_source_code_in_detail = "源码详细",
      L_The_author_only_can_download_the_source_code = "该源码仅作者可以下载",
      L_Pay_to_download_the_source_code = "付费下载源码",
      L_Pay_Download_the_source_code = "是否支付 ",
      L_Pay_Download_the_source_code_1 = " 下载该源码？",
      L_Lack_of_balance = "余额不足",
      L_System_error = "系统错误",
      L_Enter_the_password_for_download = "请输入下载密码",
      L_Is_in_the_download = "正在下载中",
      L_Has_been_downloaded_into_the_background = "已进入后台下载",
      L_Password_is_not_correct = "密码不正确",
      L_Download_failed = "下载失败？",
      L_To_download = "重新下载",
      L_Delete_the_source = "删除源码",
      L_No_permission_operation = "无权限操作",
      L_Source_permissions = "源码权限",
      L_Share = "分享",
      L_Share_the = "分享到：",
      L_To_report = "举报",
      L_To_report_the_source_code = "举报源码",
      L_Please_select_a_report_content = "请选择举报内容",
      L_To_report_success = "举报成功",
      L_The_source_author_only_the_visible = "该源码仅作者可见",
      L_Handling = "搬运",
      L_Original = "原创",
      L_Classification = "分类：",
      L_Tags = "标签：",
      L_Source = "来源：",
      L_The_heat = "热度",
      L_The_heat_1 = "热度：",
      L_The_author_1 = "作者：",
      L_Download = "下载",
      L_Reply = "评论",
      L_Upload_time = "上传时间：",
      L_Size = "大小：",
      L_Failed_to_get_comments = "获取评论失败",
      L_Other = "其他",
      L_Violence = "暴力、血腥、政治等敏感内容",
      L_Pornographic_and_vulgar_content = "色情、低俗内容",
      L_Small_AD = "小广告",
      L_Abuse = "辱骂他人，恶意攻击",
      L_Issued_false_information = "发表虚假信息，制造传播谣言",
      L_Plugins_cracking_and_other_illegal_content = "外挂、破解等违规内容",
      L_Other_content = "其他内容",
      L_Source_of_information = "源码信息",
      L_Source_screenshots = "源码截图",
      L_The_source_code_is_introduced = "源码介绍",
      L_Reply_content = "回复内容",
      L_Review_the_source_code = "评论源码",
      L_Reply_content_words_do_not_conform_to_the_requirements = "字数过低",
      L_Personal_information = "个人信息",
      L_Nickname = "昵称",
      L_Active = "活跃",
      L_Individuality_signature = "个性签名",
      L_The_latest_development_of = "最新动态",
      L_The_man_is_lazy = "这个人很懒，啥都没写！",
      L_The_source_code = "源码",
      L_My_post = "我的帖子",
      L_Ta_post = "Ta的帖子",
      L_The_source_code_of_Ta = "Ta的源码",
      L_My_source = "我的源码",
      L_Ta_to_reply = "Ta的回帖",
      L_Load_failed = "加载失败",
      L_Post_1 = "帖子：",
      L_Reply_1 = "回复：",
      L_Reply_2 = "条回复",
      L_My_response = "我的回复",
      L_Replicated_the_clipboard = "已复制的剪切板",
      L_Head_portrait = "头像",
      L_Personal_home_page_background = "个人主页背景",
      L_The_balance_RMB = "余额(元)",
      L_Withdrawal = "提现",
      L_Payment_code = "收款码设置",
      L_Bill = "账单",
      L_The_user_name = "用户名",
      L_In_the_load = "加载中",
      L_Gender = "性别",
      L_Birthday = "生日",
      L_Registration_time = "注册时间",
      L_My_profile = "我的资料",
      L_Change_character_signature = "修改个性签名",
      L_Modify_the_user_name = "修改用户名",
      L_Modify_the_user_name_1 = "由于系统原因，用户名只能修改一次，您还有",
      L_Modify_the_user_name_2 = "次机会",
      L_User_name_already_exists = "用户名已存在",
      L_The_user_name_is_too_long = "用户名过长",
      L_Modify_the_number_has_been_finished = "修改次数已用完",
      L_Please_enter_the_prepaid_phone_CARDS = "请输入充值卡密",
      L_Topup_balance = "充值余额",
      L_Camilo_error = "卡密错误",
      L_Card_has_been_used = "卡密已被使用",
      L_Using_the_successful = "充值成功",
      L_Purchase_card_secret = "购买卡密",
      L_Amount_is_too_large = "金额过大",
      L_Please_set_up_a_payment_code = "请先设置一张收款码",
      L_Has_applied_for_withdrawal = "已申请提现",
      L_Please_enter_the_withdrawal_amount = "请输入提现金额",
      L_Cash_balance = "提现余额",
      L_Withdrawal_amount_is_too_large = "提现金额过大",
      L_All_withdrawal = "全部提现",
      L_Expected_to_deduct_fees = "预计扣除手续费",
      L_Yuan = "元",
      L_Please_upload_a_payment_code = "请先上传一张收款码",
      L_Replace_the_payment_code = "更换收款码",
      L_Modify_the_gender = "修改性别",
      L_Male = "男",
      L_Female = "女",
      L_A_message_to_all_have_no = "一条消息都没有！",
      L_The_message_center = "消息中心",
      L_Theres_no_backup_file = "还没有备份的文件呢！",
      L_Theres_no_download_file = "还没有下载的文件呢！",
      L_Download_manager = "下载管理",
      L_Operation_of_source_code = "操作源码",
      L_The_import = "导入",
      L_Project_has_been_in_existence = "工程已存在",
      L_Temporary_does_not_support_this_file = "暂不支持此文件",
      L_You_havenot_seen_post = "你居然没看过帖子",
      L_General = "通用",
      L_Being_pushed = "消息推送",
      L_Check_the_update = "检查更新",
      L_The_navigation_bar_following_the_theme_colors = "导航栏跟随主题颜色",
      L_At_the_bottom_of_the_Toast = "MD Toast",
      L_Theme = "主题风格",
      L_Theme_colors = "主题颜色",
      L_Code_editor = "代码编辑器",
      L_Code_save_anomaly_detection = "代码保存异常检测",
      L_Function_of_quick_bar = "快捷功能栏",
      L_Popup_window_to_confirm_delete_control = "删除控件时弹窗确认",
      L_Write_a_page_suspend_button = "右侧悬浮按钮",
      L_Write_a_page_suspend_button_3 = "快捷工具按钮",
      L_Write_a_page_suspend_button_4 = "智能辅助按钮",
      L_Write_a_page_suspend_button_2 = "左侧悬浮按钮",
      L_Realtime_error = "实时报错",
      L_Word_wrap = "自动换行",
      L_Compact_package = "精简打包",
      L_Automatic_backup = "自动备份",
      L_Shut_down_1 = "关闭",
      L_Open_1 = "开启",
      L_The_font_size = "字体大小",
      L_The_background_color = "背景颜色",
      L_The_font_color = "字体颜色",
      L_The_keyword_color = "关键字颜色",
      L_Function_of_color = "函数颜色",
      L_The_class_library_color = "类库颜色",
      L_String_color = "字符串颜色",
      L_Annotation_color = "注释颜色",
      L_The_color_code_completion = "代码补全背景颜色",
      L_Code_completion_border_text_color = "代码补全边框文字颜色",
      L_Other_1 = "其他",
      L_Language = "语言",
      L_Custom_syntax_highlighting = "自定义语法高亮",
      L_Custom_syntax_highlighting_separated_by_a_newline = "自定义语法高亮，用换行分开。",
      L_Save_success = "保存成功",
      L_Custom_signature_key = "自定义签名密钥",
      L_A_custom_bar_symbols = "自定义符号栏",
      L_The_custom_function_bar = "自定义功能栏",
      L_Log_out = "注销登录",
      L_Clear_the_cache = "清除缓存",
      L_File_already_exists = "文件已存在",
      L_The_signature_key = "签名密钥",
      L_Generate_the_private = "生成私密",
      L_The_alias = "别名",
      L_Password = "密码",
      L_The_alias_password = "别名密码",
      L_Cannot_be_left_blank = "请输入完整内容",
      L_In_the_create = "创建中",
      L_Enter_a_custom_symbols_separated_by_Spaces = "请输入自定义符号，用空格分开",
      L_Please_enter_the_custom_symbols = "请输入自定义符号",
      L_Please_enter_the_function_name_separated_by_Spaces = "请输入快捷功能名称，用空格分开",
      L_Canot_be_empty = "不能为空",
      L_Please_enter_the_automatic_backup_time_the_unit_milliseconds_0_to_shut_down = "请输入自动备份时间,单位毫秒，输入0关闭。",
      L_Seconds = "秒",
      L_Hours = "小时",
      L_Minutes = "分钟",
      L_Not_less_than_1_second = "不能低于1秒",
      L_Giving_the_author = "捐赠作者",
      L_Clear_success = "清除成功",
      L_Please_enter_a_search_keyword = "请输入搜索关键词",
      L_Select_the_text = "选择代码",
      L_Review_images = "查看图片",
      L_Reply_to_comment = "回复评论",
      L_Word_too_little = "字数过少",
      L_Tool_list = "工具列表",
      L_Interface = "接口",
      L_The_application_name = "应用名称",
      L_The_name_of_packages = "应用包名",
      L_Engineering_properties = "工程属性",
      L_Save_exception = "保存异常",
      L_Permissions_1 = "查看权限",
      L_Permissions_2 = "权限",
      L_This_layout_is_not_supported = "不支持此布局",
      L_Add = "添加...",
      L_The_parent = "父视图...",
      L_Child_controls = "子视图...",
      L_Delete_control = "删除控件",
      L_Sure_to_delete_2 = "确定删除 ",
      L_Sure_to_delete_3 = " 吗？",
      L_Canot_delete_the_controls_at_the_top = "不可以删除顶部控件",
      L_Is_at_the_top_of_the_controls = "已是顶部控件",
      L_There_is_no = "无",
      L_Whether_to_save_the_current_layout = "是否保存当前布局？",
      L_Do_not_save = "不保存",
      L_The_editor = "编辑",
      L_Preview = "预览",
      L_The_palette_1 = "调色板",
      L_Material_warehouse_1 = "素材仓库",
      L_The_import_material = "导入素材",
      L_Whether_the_material_has_been_in_existence = "该素材已存在,是否覆盖?",
      L_QQ_login = "QQ登录",
      L_The_login = "登录",
      L_Login_failed = "登录失败",
      L_Is_to_raise_QQ_login = "正在唤起QQ登录",
      L_Please_select_a_folder_path = "请选择一个文件夹路径",
      L_Need_to_replace_the_characters = "需要替换的字符",
      L_Replace_the_characters = "替换成的字符",
      L_Modify_the_type = "修改类型",
      L_Information_output = "信息输出",
      L_Please_enter_the_need_to_perform_file_suffix_separated_by_Spaces = "请输入需要执行的文件后缀,用空格分开",
      L_Began_to_replace = "开始替换",
      L_Please_select_a_valid_path = "请选择一个有效的路径",
      L_This_folder_is_performed_within_the_file = "该文件夹内无可执行的文件",
      L_The_end_of_the_substitution = "结束替换",
      L_A_total_of_execution = "总共执行",
      L_A_total_of_execution_1 = "次",
      L_A_key_to_replace_1 = "一键替换",
      L_The_target_address = "目标地址",
      L_POST_data = "POST数据",
      L_Content_encoding = "内容编码",
      L_Fill_the_beginning = "填充开头",
      L_A_key_to_empty = "一键清空",
      L_View_the_source_code = "查看源码",
      L_Simulation_to_submit_1 = "模拟提交",
      L_The_user = "用户",
      L_Please_enter_a_search_keyword_1 = "请输入搜索关键词",
      L_No_more = "没有更多了",
      L_Send_a_message = "发消息",
      L_APK_extract_1 = "APK提取",
      L_Extraction_of_success = "提取成功",
      L_Uninstall = "卸载",
      L_Whether_to = "是否提取到",
      L_Bill_management = "账单管理",
      L_In_the_processing = "处理中",
      L_Have_to_deal_with = "已处理",
      L_Card = "卡密：",
      L_Fees = "手续费：",
      L_Source_1 = "源码：",
      L_Please_enter_a_nickname = "请输入昵称",
      L_Please_upload_the_picture = "请上传头像",
      L_Please_select_a_gender = "请选择性别",
      L_Perfect_information = "完善信息",
      L_Date_of_birth = "出生日期",
      L_Edit_the_layout = "编辑布局",
      L_The_layout_error = "布局错误",
      L_Conversion = "转换",
      L_Preview_the_layout = "预览布局",
      L_Select_the_label = "选择标签",
      L_The_label_is_too_long = "标签过长",
      L_The_title = "标题",
      L_Content = "内容",
      L_Reply_to_posts = "回复帖子",
      L_The_original_poster = "楼主",
      L_Reply_0 = "回复：",
      L_Post_the_detailed = "帖子详细",
      L_Report_post = "举报帖子",
      L_Delete_posts = "删除帖子",
      L_Copy_the_title = "复制标题",
      L_Duplicate_content = "复制内容",
      L_Copy_the_nickname = "复制昵称",
      L_Plugin_management = "插件管理",
      L_Whether_to_remove_the_plugin = "是否卸载该插件？",
      L_Share_the_source_code_space = "分享到源码空间",
      L_Share_the_QQ = "分享到QQ",
      L_The_bill_for_more_than_five_minutes_download_has_failed = "该账单已超过五分钟 下载已失效",
      L_Directly_open_the_Android_installation_package = "直接打开 Android 安装包",
      L_Code_style = "切换代码风格",
      L_Switch_success = "切换成功",
      L_Comment_in_detail = "查看评论",
      Landlord = "楼主",
      Latest_reply = "评论回复",
      L_Donation_1 = "其他",
      L_The_next_time_a_certain = "下次一定",
      L_According_to_the_line_Numbers = "显示行号",
      L_Copy_down = "重复行",
      L_Delete_rows = "删除行",
      L_Shear_line = "剪切行",
      L_Copy_the_line = "复制行",
      L_Select_rows = "选择行",
      L_Comment_lines = "注释行",
      L_To_uppercase = "转为大写",
      L_Converted_to_lowercase = "转为小写",
      L_Replace_the_code = "替换",
      L_Before_replacement_string = "替换前字符串：",
      L_Replacement_string = "替换后字符串：",
      L_The_layout_properties = "布局属性",
      L_Lua53_reference_manual = "Lua文档",
      L_Preview_the_layout_table = "编辑布局表",
      L_Lua_warehouse = "全局Lua依赖库",
      L_So_warehouse = "全局So依赖库",
      L_Please_enter_the_Lua_global_support_library_folder_path = "请输入全局Lua依赖库存放目录",
      L_Please_enter_the_So_global_support_library_folder_path = "请输入全局So依赖库存放目录",
      L_Restore_the_default_Settings = "恢复默认设置",
      L_The_lua_file_encryption = "Lua文件加密",
      L_Use_tip = "使用小技巧",
      L_Use_tip_1 = [[1.点击工程标题跳到工程属性
2.点击工程路径打开文件对话框
3.长按工程标题跳到工程Log
4.长按工程路径打开新建文件对话框
5.长按布局助手按钮快速复制布局属性
6.长按运行按钮打包工程
7.长按撤销按钮隐藏左右侧浮动按钮
8.长按重做按钮显示左右侧浮动按钮
9.点击左侧浮动按钮操作当前行代码
[重复行]
[删除行]
[剪切行]
[复制行]
[选择行]
[注释行]
10.长按左侧浮动按钮插入大文本注释
11.选中代码后长按左侧浮动按钮对选中的代码注释
12.点击右侧第一个浮动按钮打开新建文件对话框
13.长按右侧第一个浮动按钮隐藏符号栏
14.点击右侧第二个浮动按钮打开文件对话框
15.长按右侧第二个浮动按钮格式化代码
16.点击右侧第三个浮动按钮极速补全代码
使用方法：输入指定补全符后点击按钮即可补全
目前支持的补全符有：
Httpp,Httpg,fort,main,ilck,text,hint,luad,task,ife,lck,ick,isd,gck,cck,for,whi,prs,nac,dfe,tos,ton,toi,thr,tas,acf,oet,acr,stt,scv,wfe,rfe,dia,ck,pr,sm,sg,sf,ss,te,id,lb,la,or,lw,lh,gr,al,lm,vi,lg,pa,pt,pb,ra,pr,pl,rx,ry,ce,rs,tc,ts,sl,er,ml,me,mh,mw,st,ba,src,lab,lae,lal,lar,las,lat,lch,lcp,lcv,bac,lml,lmr,lmb,lmt,htc,miw,labl,lapb,lape,lapl,lapr,laps,lapt,ltoe,ltol,ltor,ltos,rowc,colc
17.长按右侧第三个浮动按钮粘贴代码
18.选中代码时长按右侧第三个浮动按钮可对选中的代码进行操作
[转为大写]
[转为小写]
[替换]
[格式化]
[编辑布局表]
[运行代码]
19.在代码中选中数字,颜色,布尔值,大小单位可快速进行修改
20.长按符号栏符号插入一对符号或比较运算符
...
]],
      L_No_longer_display = "不再显示",
      L_Java_API = "Java API",
      L_Please_enter_the_name_of_the_class = "搜索",
      L_Automatic_formatting = "自动格式化代码",
      L_Caton = "开启该功能后你将会在编写代码的过程中造成卡顿，请谨慎开启。",
      L_Close_the_other = "关闭其他",
      L_New_notes = "新建笔记",
      L_New_title = "标题：",
      L_New_text = "内容：",
      L_On_the_left_side_of_the_slide_show_by_default = "左侧滑默认显示",
      L_Drawable_text_1 = "手册",
      L_Drawable_text_2 = "笔记",
      CheckError = "运行时检查错误",
      L_Night_mode = "夜间模式",
      L_Generate_the_key = "生成密钥",
      L_Being_compiled_Java = "正在编译Java...",
      L_compiled_Java_Error = "编译Java错误！",
      L_Being_Bin_Java = "正在构建Dex...",
      L_compiled_Dex_Error = "构建Dex错误!",
      L_Being_Merge_Java = "正在合并Dex...",
      L_Being_Merge_Java_Error = "合并Dex错误!",
      Streamlining_packaging = "开启该功能后你将会失去一部分功能，列如QQ登录、ZIP4J等，请谨慎开启。",
      L_Lua_to_dex = "Lua文件打包到Dex",
      L_Lua_to_dex_Tips = "该功能还在测试阶段，Bug较多，请谨慎开启。\n\n注意：开启此功功能后，请自行加固安装包！",
      L_RunCode = "运行代码",
      L_RunCodeError = "运行代码错误",
      L_RunCodeS = "运行成功",
      L_Download_system = "系统下载",
      L_QQ_download = "QQ下载",
      L_WeChat_download = "微信下载",
      L_Internal_storage = "内部存储",
      L_Check_the_file = "查看文件",
    }

   else

    Language = {
      L_Check_the_file = "Check the file",
      L_Internal_storage = "Internal storage",
      L_WeChat_download = "WeChat download",
      L_QQ_download = "QQ download",
      L_Download_system = "Download system",
      L_RunCodeS = "Run successful",
      L_RunCodeError = "Run code error",
      L_RunCode = "Run code",
      L_Lua_to_dex_Tips = "This function is still in the testing stage, there are many bugs, please be careful to open.\n\nNote: after this function is enabled, please reinforce the installation package by yourself!",
      L_Lua_to_dex = "Lua files packed in Dex",
      Streamlining_packaging = "If this function is enabled, you will lose some functions, such as QQ login, ZIP4J, etc. Please be careful to open it.",
      L_Being_Merge_Java = "Merging Dex...",
      L_Being_Merge_Java_Error = "Merge Dex Error!",
      L_compiled_Dex_Error = "Error building Dex!",
      L_Being_Bin_Java = "Building Dex...",
      L_compiled_Java_Error = "Error compiling java!",
      L_Being_compiled_Java = "Compiling Java...",
      L_Generate_the_key = "Generating key",
      L_Night_mode = "Night mode",
      CheckError = "Runtime check error",
      L_Drawable_text_1 = "manual",
      L_Drawable_text_2 = "note",
      L_On_the_left_side_of_the_slide_show_by_default = "Default display of left drawer",
      L_New_title = "Title:",
      L_New_text = "Content:",
      L_New_notes = "New notes",
      L_Close_the_other = "Close other",
      L_Caton = "If you turn this feature on, you will get stuck in the middle of writing code. Be careful to turn it on.",
      L_Automatic_formatting = "Auto Format Code",
      L_Please_enter_the_name_of_the_class = "Search",
      L_Java_API = "Java API",
      L_No_longer_display = "No longer displayed",
      L_Use_tip_1 = [[1. Click the project title to jump to the project property
2. Click the project path to open the file dialog box
3. Long press project title to jump to project log
4. Long press the project path to open the new file dialog box
5. Press and hold the Layout Assistant button to quickly copy layout properties
6. Long press the operation button to package the project
7. Press and hold the undo button to hide the left and right floating buttons
8. Press and hold the redo button to display the left and right floating buttons
9. Click the left floating button to operate the current line code
[duplicate line]
[delete row]
[shear line]
[copy line]
[Select row]
[notes line]
10. Long press the left floating button to insert a large text note
11. After selecting the code, press and hold the left floating button to comment on the selected code
12. Click the first floating button on the right to open the new file dialog box
13. Long press the first floating button on the right to hide the symbol bar
14. Click the second floating button on the right to open the file dialog box
15. Press and hold the second floating button on the right to format the code
16. Click the third floating button on the right to quickly complete the code
Usage: input the specified complement and click the button to complete
Currently supported completors are:
Httpp,Httpg,fort,main,ilck,text,hint,luad,task,ife,lck,ick,isd,gck,cck,for,whi,prs,nac,dfe,tos,ton,toi,thr,tas,acf,oet,acr,stt,scv,wfe,rfe,dia,ck,pr,sm,sg,sf,ss,te,id,lb,la,or,lw,lh,gr,al,lm,vi,lg,pa,pt,pb,ra,pr,pl,rx,ry,ce,rs,tc,ts,sl,er,ml,me,mh,mw,st,ba,src,lab,lae,lal,lar,las,lat,lch,lcp,lcv,bac,lml,lmr,lmb,lmt,htc,miw,labl,lapb,lape,lapl,lapr,laps,lapt,ltoe,ltol,ltor,ltos,rowc,colc
17. Press and hold the third floating button on the right to paste the code
18. Press the third floating button on the right to operate the selected code
[capitalize]
[to lowercase]
[replace]
[formatting]
[edit layout table]
[Run code]
19. Select numbers, colors, Booleans and size units in the code to modify them quickly
20. Long press symbol bar symbol to insert a pair of symbols or comparison operators
...]],
      L_Use_tip = "Use tip",
      L_The_lua_file_encryption = "Lua file encryption",
      L_Restore_the_default_Settings = "Restore default settings",
      L_Lua_warehouse = "Global Lua dependency Library",
      L_So_warehouse = "Global So dependency Library",
      L_Please_enter_the_Lua_global_support_library_folder_path = "Please enter global Lua dependent inventory drop directory",
      L_Please_enter_the_So_global_support_library_folder_path = "Please enter global So dependent inventory drop directory",
      L_Preview_the_layout_table = "Edit layout table",
      L_Lua53_reference_manual = "Lua document",
      L_The_layout_properties = "Layout properties",
      L_Replacement_string = "Replaced string:",
      L_Before_replacement_string = "String before replace:",
      L_Replace_the_code = "Replace",
      L_Converted_to_lowercase = "Convert to lowercase",
      L_To_uppercase = "Convert to uppercase",
      L_Comment_lines = "Comment line",
      L_Select_rows = "Select line",
      L_Copy_the_line = "Copy line",
      L_Shear_line = "Shear line",
      L_Delete_rows = "Delete line",
      L_Copy_down = "Duplicate line",
      L_According_to_the_line_Numbers = "Show Line Numbers",
      L_Donation_1 = "Other",
      L_The_next_time_a_certain = "Next time",
      Latest_reply = "Comment reply",
      Landlord = "Landlord",
      L_Comment_in_detail = "View comments",
      L_Switch_success = "Switch success",
      L_Code_style = "Switch code style",
      L_Directly_open_the_Android_installation_package = "Open the Android installer directly",
      L_The_bill_for_more_than_five_minutes_download_has_failed = "The bill has been over five minutes and the download has expired.",
      L_Share_the_QQ = "Share to QQ",
      L_Share_the_source_code_space = "Share to source space",
      L_Whether_to_remove_the_plugin = "Do you want to uninstall the plug-in?",
      L_Plugin_management = "Plugin management",
      L_Copy_the_nickname = "Copy nickname",
      L_Duplicate_content = "Copy content",
      L_Copy_the_title = "Copy title",
      L_Delete_posts = "Delete posts",
      L_Report_post = "Report post",
      L_Post_the_detailed = "View posts",
      L_Reply_0 = "Reply:",
      L_The_original_poster = "Landlord",
      L_Reply_to_posts = "Reply to posts",
      L_Content = "Content",
      L_The_title = "Title",
      L_The_label_is_too_long = "The label is too long",
      L_Select_the_label = "Select label",
      L_Preview_the_layout = "Preview layout",
      L_Conversion = "Transformation",
      L_The_layout_error = "The layout error",
      L_Edit_the_layout = "Edit layout",
      L_Date_of_birth = "Date of birth",
      L_Perfect_information = "Perfect information",
      L_Please_select_a_gender = "Please select a gender",
      L_Please_upload_the_picture = "Please upload the picture",
      L_Please_enter_a_nickname = "Please enter a nickname",
      L_Source_1 = "Source:",
      L_Fees = "Fees:",
      L_Card = "Card:",
      L_Have_to_deal_with = "Processing completed",
      L_In_the_processing = "In processing",
      L_Bill_management = "Bill management",
      L_Whether_to = "Extract to",
      L_Uninstall = "uninstall",
      L_Extraction_of_success = "Extraction of success",
      L_APK_extract_1 = "APK extract",
      L_Send_a_message = "Send message",
      L_No_more = "No more",
      L_Please_enter_a_search_keyword_1 = "Please enter a search keyword",
      L_The_user = "User",
      L_Simulation_to_submit_1 = "Http",
      L_View_the_source_code = "View code",
      L_A_key_to_empty = "A key to empty",
      L_Fill_the_beginning = "Fill in the beginning",
      L_Content_encoding = "Content encoding",
      L_POST_data = "POST data",
      L_The_target_address = "Destination address",
      L_A_key_to_replace_1 = "One key replacement",
      L_A_total_of_execution = "It's been replaced ",
      L_A_total_of_execution_1 = "times",
      L_The_end_of_the_substitution = "Replacement completed",
      L_This_folder_is_performed_within_the_file = "There are no executable files in this folder",
      L_Please_select_a_valid_path = "Please select a valid path",
      L_Began_to_replace = "Began to replace",
      L_Please_enter_the_need_to_perform_file_suffix_separated_by_Spaces = "Please enter the need to perform file suffix, separated by Spaces",
      L_Information_output = "Information output",
      L_Modify_the_type = "Modify type",
      L_Replace_the_characters = "Replaced character",
      L_Need_to_replace_the_characters = "Need to replace the characters",
      L_Please_select_a_folder_path = "Please select a folder path",
      L_Is_to_raise_QQ_login = "Calling QQ login",
      L_Login_failed = "Login failed",
      L_The_login = "Login",
      L_QQ_login = "QQ login",
      L_Whether_the_material_has_been_in_existence = "This material already exists. Do you want to overwrite it?",
      L_The_import_material = "Import material",
      L_Material_warehouse_1 = "Material warehouse",
      L_The_palette_1 = "Palette",
      L_Preview = "Preview",
      L_The_editor = "Editor",
      L_Do_not_save = "Do not save",
      L_Whether_to_save_the_current_layout = "Do you want to save the current layout?",
      L_There_is_no = "None",
      L_Is_at_the_top_of_the_controls = "Is at the top of the controls",
      L_Canot_delete_the_controls_at_the_top = "Can't delete the controls at the top",
      L_Sure_to_delete_2 = "Are you sure you want to delete the ",
      L_Sure_to_delete_3 = " control?",
      L_Delete_control = "Delete control",
      L_Child_controls = "Child View...",
      L_The_parent = "Parent View...",
      L_Add = "Add...",
      L_This_layout_is_not_supported = "This layout is not supported",
      L_Permissions_1 = "View permission",
      L_Save_exception = "Save exception",
      L_Engineering_properties = "Engineering properties",
      L_The_name_of_packages = "Package name",
      L_The_application_name = "Name",
      L_Interface = "interface",
      L_Tool_list = "Tool list",
      L_Word_too_little = "Word too little",
      L_Reply_to_comment = "Reply to comment",
      L_Review_images = "Review images",
      L_Select_the_text = "Selection code",
      L_Please_enter_a_search_keyword = "Search keyword",
      L_Clear_success = "Clear success",
      L_Giving_the_author = "Giving author",
      L_Not_less_than_1_second = "Not less than 1 second",
      L_Minutes = "minutes",
      L_Hours = "hours",
      L_Seconds = "seconds",
      L_Please_enter_the_automatic_backup_time_the_unit_milliseconds_0_to_shut_down = "Please enter the automatic backup time in milliseconds. Enter 0 to close.",
      L_Canot_be_empty = "Can't be empty",
      L_Please_enter_the_function_name_separated_by_Spaces = "Please enter the function name, separated by Spaces",
      L_Please_enter_the_custom_symbols = "Please enter the custom symbols",
      L_Enter_a_custom_symbols_separated_by_Spaces = "Please enter custom symbols separated by spaces",
      L_In_the_create = "Being created",
      L_Cannot_be_left_blank = "Please enter the full content",
      L_The_alias_password = "Alias password",
      L_Password = "Password",
      L_The_alias = "Alias",
      L_Generate_the_private = "Generating key",
      L_The_signature_key = "Signature key",
      L_File_already_exists = "File already exists",
      L_Clear_the_cache = "Clear cache",
      L_Log_out = "Log out",
      L_The_custom_function_bar = "Custom function bar",
      L_A_custom_bar_symbols = "Custom symbol bar",
      L_Custom_signature_key = "Custom signature key",
      L_Save_success = "Save success",
      L_Custom_syntax_highlighting_separated_by_a_newline = "Custom syntax highlighting, separated by a newline.",
      L_Custom_syntax_highlighting = "Custom syntax highlighting",
      L_Language = "Language",
      L_Other_1 = "Other",
      L_Code_completion_border_text_color = "Code completion border text color",
      L_The_color_code_completion = "Code completion background color",
      L_Annotation_color = "Annotation color",
      L_String_color = "String color",
      L_The_class_library_color = "Class library color",
      L_Function_of_color = "Function color",
      L_The_keyword_color = "Keyword color",
      L_The_font_color = "Font color",
      L_The_background_color = "Background color",
      L_The_font_size = "Font size",
      L_Automatic_backup = "Automatic backup",
      L_Compact_package = "Streamlined construction",
      L_Word_wrap = "Word wrap",
      L_Realtime_error = "Real-time error reporting",
      L_Write_a_page_suspend_button = "Right Floating button",
      L_Write_a_page_suspend_button_2 = "Left Floating button",
      L_Write_a_page_suspend_button_3 = "Shortcut tool button",
      L_Write_a_page_suspend_button_4 = "Intelligent assistance button",
      L_Popup_window_to_confirm_delete_control = "Delete control pop up confirmation",
      L_Function_of_quick_bar = "Shortcut bar",
      L_Code_save_anomaly_detection = "Code save exception detection",
      L_Code_editor = "Code editor",
      L_Theme_colors = "Theme colors",
      L_Theme = "Theme",
      L_At_the_bottom_of_the_Toast = "MD Toast",
      L_The_navigation_bar_following_the_theme_colors = "Navigation bar follow theme color",
      L_Check_the_update = "Check update",
      L_Being_pushed = "Message push",
      L_General = "General",
      L_You_havenot_seen_post = "You haven't seen post",
      L_Temporary_does_not_support_this_file = "Temporary does not support this file",
      L_Project_has_been_in_existence_1 = "Project has been in existence",
      L_The_import = "Import",
      L_Operation_of_source_code = "Source code",
      L_Download_manager = "Download",
      L_Theres_no_download_file = "No files downloaded!",
      L_Theres_no_backup_file = "There are no backup files yet!",
      L_The_message_center = "Message",
      L_A_message_to_all_have_no = "A message to all have no!",
      L_Female = "female",
      L_Male = "male",
      L_Modify_the_gender = "Modify the gender",
      L_Replace_the_payment_code = "Replace the payment code",
      L_Please_upload_a_payment_code = "Please upload a payment code",
      L_Yuan = "Yuan",
      L_Expected_to_deduct_fees = "Expected to deduct fees",
      L_All_withdrawal = "All withdrawal",
      L_Withdrawal_amount_is_too_large = "Withdrawal amount is too large",
      L_Cash_balance = "Cash balance",
      L_Please_enter_the_withdrawal_amount = "Please enter the withdrawal amount",
      L_Has_applied_for_withdrawal = "Cash withdrawal applied",
      L_Please_set_up_a_payment_code = "Please set up a payment code",
      L_Amount_is_too_large = "Amount is too large",
      L_Purchase_card_secret = "Purchase card secret",
      L_Using_the_successful = "Recharge success",
      L_Card_has_been_used = "Card has been used",
      L_Camilo_error = "Camilo error",
      L_Topup_balance = "Top-up balance",
      L_Please_enter_the_prepaid_phone_CARDS = "Please enter the prepaid phone CARDS",
      L_Modify_the_number_has_been_finished = "Modify the number has been finished",
      L_The_user_name_is_too_long = "The user name is too long",
      L_User_name_already_exists = "User name already exists",
      L_Modify_the_user_name_1 = "Due to system reasons, the user name can only be modified once, and you have ",
      L_Modify_the_user_name_2 = " more opportunities",
      L_Modify_the_user_name = "Modify user name",
      L_Change_character_signature = "Modify personal signature",
      L_My_profile = "My profile",
      L_Registration_time = "Registration time",
      L_Birthday = "Birthday",
      L_Gender = "Gender",
      L_In_the_load = "Loading",
      L_The_user_name = "User name",
      L_Bill = "Bill management",
      L_Payment_code = "Payment code",
      L_Withdrawal = "Withdrawal",
      L_The_balance_RMB = "Balance (RMB)",
      L_Personal_home_page_background = "Personal homepage background",
      L_Head_portrait = "Head portrait",
      L_Replicated_the_clipboard = "Copied clipboard",
      L_My_response = "My reply",
      L_Reply_1 = "Reply:",
      L_Reply_2 = "Reply",
      L_Post_1 = "Post:",
      L_Load_failed = "Load failed",
      L_Ta_to_reply = "His comments",
      L_My_source = "My source code",
      L_The_source_code_of_Ta = "His source code",
      L_Ta_post = "His post",
      L_My_post = "My post",
      L_The_source_code = "Source code",
      L_The_man_is_lazy = "The man is lazy, nothing to write!",
      L_The_latest_development_of = "Latest developments",
      L_Individuality_signature = "Personalized signature",
      L_Active = "active",
      L_Nickname = "Name",
      L_Personal_information = "Personal information",
      L_Reply_content_words_do_not_conform_to_the_requirements = "Too low word number",
      L_Review_the_source_code = "Comment source",
      L_Reply_content = "comment content",
      L_The_source_code_is_introduced = "Introduction to source code",
      L_Source_screenshots = "Source screenshots",
      L_Source_of_information = "Source of information",
      L_Other_content = "Other content",
      L_Plugins_cracking_and_other_illegal_content = "Plugins, cracking and other illegal content",
      L_Issued_false_information = "Issued false information, spreading rumours",
      L_Abuse = "Abuse, malicious attacks",
      L_Small_AD = "Small AD",
      L_Pornographic_and_vulgar_content = "Pornographic and vulgar content",
      L_Violence = "Violence, bloody, political and other sensitive content",
      L_Other = "other",
      L_Failed_to_get_comments = "Failed to get comments",
      L_Size = "Size:",
      L_Upload_time = "Upload time:",
      L_Reply = "Comment",
      L_Download = "Download",
      L_The_author_1 = "Author:",
      L_The_heat_1 = "Hot:",
      L_The_heat = "Hot",
      L_Source = "Source:",
      L_Tags = "Tags:",
      L_Classification = "Classification:",
      L_Original = "original",
      L_Handling = "handling",
      L_The_source_author_only_the_visible = "The source author only the visible",
      L_For_failure = "Acquisition failure",
      L_To_report_success = "To report success",
      L_Please_select_a_report_content = "Please select a report content",
      L_To_report_the_source_code = "To report the source code",
      L_To_report = "Report",
      L_Share_the = "Share to:",
      L_Share = "share",
      L_Source_permissions = "Source permissions",
      L_No_permission_operation = "No permission operation",
      L_Sure_to_delete = "Are you sure to delete? It will not be recovered after deletion!",
      L_Delete_the_source = "Delete source code",
      L_To_download = "Re Download",
      L_Download_failed = "Download failed?",
      L_Password_is_not_correct = "Password is not correct",
      L_Has_been_downloaded_into_the_background = "Entered background download",
      L_Is_in_the_download = "Downloading",
      L_Enter_the_password_for_download = "Enter the password for download",
      L_System_error = "System error",
      L_Lack_of_balance = "Sorry, your credit is running low",
      L_Pay_Download_the_source_code = "Pay ",
      L_Pay_Download_the_source_code_1 = " to download the source code?",
      L_Pay_to_download_the_source_code = "Pay to download the source code",
      L_The_author_only_can_download_the_source_code = "The author only can download the source code",
      L_The_source_code_in_detail = "Source code details",
      L_The_download_is_complete = "Download complete",
      L_Donot_agree_to_quit = "Don't agree to quit",
      L_Agree_and_continue_to_release = "Agree and continue",
      L_You_submit = "Failure to submit",
      L_Upload_error = "Upload error, please try again.",
      L_Is_being_issued = "Uploading",
      L_Please_upload_three_source_screenshots = "Please upload three source screenshots",
      L_The_lowest_price_of = "The lowest price of 0.10 yuan",
      L_Amount_is_too_large = "Amount is too large",
      L_Amount_of_error = "Amount of error",
      L_Please_set_the_price = "Please set the price",
      L_Ban_the_word = "Disable keyword setting",
      L_The_password_is_too_long = "The password is too long",
      L_Please_download_the_password = "Please download the password",
      L_Fill_in_the_information = "Fill in the information",
      L_Add_a_screenshot = "Add screenshots",
      L_Multiple_tags_separated_by_Spaces = "Multiple labels are separated by spaces. For example, label1 label2 label3",
      L_The_source_code_label = "The source code label",
      L_Original_source = "Original source",
      L_Please_input_the_price = "Please input the price (RMB)",
      L_Set_the_downloads = "Set up paid Downloads",
      L_Set_the_download_password = "Please enter the download password",
      L_Set_the_password_to_download = "Set the password to download",
      L_To_ban_other_users_to_view = "To ban other users to view",
      L_Other_users_to_download_is_forbidden = "Other users to download is forbidden",
      L_Please_enter_the_source_is_introduced_and_illustrated = "Please fill in the source introduction and description",
      L_The_source_code_that = "Source specification",
      L_Source_name = "Source name",
      L_This_project_does_not_exist = "This project does not exist",
      L_Select_the_source_code = "Select the source code",
      L_No_project = "No project",
      L_Select_the_plugin = "Select the plugin",
      L_Choose_engineering = "Choose source code",
      L_Select_the_file = "Select the file",
      L_Return_to_the_superior_directory = "Return to parent directory",
      L_Select_the_folder = "Select the folder",
      L_Project_profile_error = "Project profile error",
      L_Packaged_wrong_password_error_or_the_private_sign_does_not_exist = "Packaged wrong password error or the private sign does not exist",
      L_Packaging_error = "Packaging error",
      L_Packaging_success = "Package success",
      L_About_to_open = "Opening",
      L_Is_the_signature = "Signature",
      L_Are_compiling = "Compiling",
      L_Error = "Error",
      L_Are_packaged = "Building...",
      L_Successful = "success",
      L_Search_the_tutorial = "Search tutorial",
      L_Search_the_note = "Search notes",
      L_Guess_you_like = "Guess you like",
      L_Color_duplicate_failure = "Color duplicate failure",
      L_Color_replicated = "Color copied successfully",
      L_Server_error = "Server error",
      L_Being_loaded_in = "Being loaded in",
      L_Engineering_does_not_exist = "Project not found",
      L_Engineering_path = "Project path",
      L_Debug_mode = "Debug mode",
      L_The_version_number = "Version number",
      L_Open = "true",
      L_Open_1 = "open",
      L_Shut_down = "false",
      L_Shut_down_1 = "close",
      L_Cloning_failed = "Cloning failed",
      L_Cloned = "Clone success",
      L_Repair_complete = "Repair complete",
      L_The_project_need_to_repair = "The project does not need to be repaired",
      L_Information = "information",
      L_Delete = "delete",
      L_Repair = "repair",
      L_Cloning = "cloning",
      L_Permissions = "permissions",
      L_Permissions_2 = "Permissions",
      L_Is_the_latest_version = "Is the latest version",
      L_At_the_same_time_there_is = "meanwhile",
      L_Project_has_been_in_existence = "Project has been in existence, whether to cover the import?",
      L_Enter_a_new_file_name = "Enter a new file name",
      L_May_need_to_import_the_classes = "May need to import the classes",
      L_Has_been_copied_to_the_clipboard = "Has been copied to the clipboard",
      L_The_unknown_function = "The unknown function",
      L_The_last_line = "last",
      L_The_number_of_rows = "The number of rows",
      L_Without_the_characters_in_the_code = "Without the characters in the code",
      L_Replace_the_success = "Replace the success",
      L_Replace = "replace",
      L_Substitution_characters = "Substitution characters",
      L_The_replacement_string = "The replacement string",
      L_The_original_string = "The original string",
      L_An_error_prompt = "Error prompt",
      L_Start_backup_automatically_after_5_seconds = "Start automatic backup in 5 seconds",
      L_Compile_error = "Compile error",
      L_Compile_successfully = "Compile successfully",
      L_The_saved = "Save successfully",
      L_No_mistakes_in_grammar = "No mistakes in grammar",
      L_Line = "row",
      L_The_first = "In the",
      L_Temporarily_no_documentation = "Temporarily no documentation",
      L_To_view_the_document = "document",
      L_Plugin_information = "Plugin information",
      L_Unloading_failure = "Unloading failure",
      L_Uninstall_the_success = "Uninstall the success",
      L_Sure_uninstall_plugins = "Are you sure to uninstall the plug-in",
      L_Unload_the_plugin = "uninstall",
      L_Plugin_run_error = "Plug-in run error",
      L_Folder = "folder",
      L_Remove_the_label = "delete",
      L_The_tutorial_manual = "manual",
      L_Chinese_function = "chinese",
      L_The_backup = "backup",
      L_Packaging = "build",
      L_Compile = "compile",
      L_Analysis_of_the = "analysis",
      L_Check_the_wrong = "check",
      L_Redo = "redo",
      L_File_name_cannot_be_empty = "File name cannot be empty",
      L_The_new_file = "New file",
      L_The_file_or_folder_name = "The file or folder name",
      L_Rename_the_folder = "Rename the folder",
      L_Type_a_new_folder_name = "Enter a new folder name",
      L_Folder_1 = "Folder?",
      L_Sure_to_delete_1 = "Are you sure to delete",
      L_Delete_the_folder = "Delete the folder",
      L_Rename = "Rename",
      L_The_file_5 = "file?",
      L_Sure_to_delete_5 = "Are you sure you want to delete",
      L_Open_the = "open",
      L_Temporary_does_not_support_open_the_file = "Temporary does not support open the file, are forced to open the text way?",
      L_The_file_has_been_compiled = "The file has been compiled",
      L_Open_the_file = "Open file",
      L_Import_failure = "Import failure",
      L_Import_success = "Import success",
      L_The_resource_has_been_in_existence = "The resource file already exists",
      L_The_size_of_the = "Size",
      L_Delete_failed = "Delete failed",
      L_Delete_the_success = "Delete the success",
      L_Delete_the_file = "Delete",
      L_Rename_the_failure = "Rename failed",
      L_Rename_the_success = "Rename successful",
      L_Rename_the_file = "Rename",
      L_A_closing_tag = "Close",
      L_Copy_the_failure = "Copy failed",
      L_Copy_success = "Copy success",
      L_The_file_name_to_repeat = "The file name to repeat",
      L_Copy = "Copy",
      L_Enter_the_new_file_name = "Enter the new file name",
      L_Copy_the_file = "Copy file",
      L_Copy_path = "Copy path",
      L_Copy_the_name = "Copy name",
      L_The_file_does_not_exist = "The file does not exist",
      L_Save = "Save",
      L_Save_the_code_is_empty = "Do you want to continue saving?",
      L_Detect_your_current_file = "It is detected that the current file saving code is empty",
      L_Automatic_backup = "AutomaticBackup",
      L_Backup_failure = "Backup failure",
      L_The_backup_successful = "Backup success",
      L_Determine = "OK",
      L_Backup_project = "Backup project",
      L_The_file_name = "File name",
      L_The_plugin = "plugin",
      L_Tool = "Tools",
      L_Manual = "manual",
      L_Engineering = "Project",
      L_Navigation = "Navigation",
      L_Code = "Code",
      L_Commonly_used_functions = "Commonly used functions",
      L_Set_up_the = "settings",
      L_Search_character_1 = "Search character",
      L_Plugin_run_error = "Plug-in run error",
      L_Exit = "exit",
      L_Agree_to_continue = "Agree to continue",
      L_Pay_treasure = "Pay treasure",
      L_Giving_the_author = "Giving author",
      L_Donation = "Donation",
      L_Donation_Doce = "You can support me through donation.",
      L_Donation_0 = "Your support is indispensable for the development of this app. I would be very grateful if you could give me some help.",
      L_Log_back_in = "The identity has expired. Please log in again.",
      L_Automatic_login_failed = "Automatic login failed",
      L_Welcome_back = "Welcome back",
      L_The_administrator_welcome_back = "Administrator welcome back",
      L_Automatic_login_failed = "Automatic login failed",
      L_Installing_a_plugin = "Installing plugin",
      L_Upload_the_source_code = "Upload source code",
      L_Post = "Post",
      L_Post_0 = "Post",
      L_Identity_expired = "Identity expired",
      L_New_construction = "New project",
      L_Import_the_project = "Import project",
      L_Exit = "exit",
      L_Another_press_return_key_to_exit = "Another press return key to exit.",
      L_Auxiliary_tool = "Auxiliary",
      L_About_the_software = "About",
      L_The_software_Settings = "Settings",
      L_API_interface = "Api",
      L_Browsing_history = "History",
      L_Tool_set = "Tools",
      L_The_tutorial_manual_1 = "Tutorial manual",
      L_Backup_management = "Backups",
      L_Modify_the_failure = "Modify failure",
      L_Modify_the_success = "Modify success",
      L_The_folder_is = "Folder already exists",
      L_Modify_the = "Modify",
      L_Please_enter_a_new_folder_name = "Please enter a new folder name",
      L_Program_crashes = "Program crash. Please check whether the project folder name contains special characters or installed third-party plug-ins. Try to modify the project folder name or uninstall the third-party plug-ins.",
      L_As_a_free_download = "Free",
      L_Random = "random",
      L_Create_a_failure = "Create failure",
      L_Creating_a_successful = "Creating successful",
      L_The_project_name_already_exists = "project name already exists",
      L_Create = "create",
      L_New_construction = "New project",
      L_The_package_name = "Package name",
      L_Please_select_a_template = "Please select a template",
      L_Program_error = "Program error",
      L_Plugin_error = "Plugin error",
      L_Cancel = "Cancel",
      L_Installation_failed = "Installation failed",
      L_OK = "OK",
      L_Successful_installation = "Successful installation",
      L_Cover = "cover",
      L_Installation_plugin_already_exists = "Plug in already exists. Do you want to overwrite the installation?",
      L_Prompt = "Tips",
      L_The_installation = "install",
      L_Installing_a_plugin = "Installing plugin",
      L_The_path = "Path",
      L_Since_the_launch = "Starting",
      L_The_author = "Author",
      L_Version = "Version",
      L_The_name_of_the = "Name",
      L_The_default = "Default",
      L_APK_extract = "apk",
      L_The_color_reference = "color",
      L_A_key_to_replace = "replaces",
      L_Material_warehouse = "material",
      L_Code_manual = "manual",
      L_Chinese_function = "chinese",
      L_Compile_the_file = "compile",
      L_Save_the_code = "save",
      L_The_import_analysis = "analysis",
      L_Code_error = "inspect",
      L_Simulation_to_submit = "http",
      L_Import_the_resource = "resource",
      L_Import_the_resource_1 = "Import resources",
      L_Characters_to_replace = "replace",
      L_The_palette = "palette",
      L_Layout_of_the_assistant = "layout",
      L_Layout_of_the_assistant_1 = "Layout Assistant",
      L_Jump_to_specify_rows = "line",
      L_Search_character = "search",
      L_The_log = "log",
      L_Attribute = "attribute",
      L_The_backup = "backup",
      L_Packaging = "build",
      L_Formatting = "format",
      L_Formatting_1 = "Format",
      search = "Search keywords",
      not_project = "No project,Click the top right corner to create a project.",
      sign = "Sign in",
      sign1 = "View personal homepage or edit materials",
      post = "Post",
      source = "Source code",
      reply = "Reply",
      project = "Project",
      forum = "Forum",
      share = "Share",
      my = "My",
      wallet = "Wallet",
      message = "Message",
      download = "Download",
      software = "Software related",
      developer = "developer",
      version = "version",
      versionn = "version number",
      communication = "group",
      official = "official website",
      about = "About software",
      L_AndLuaPlus_About = [[AndLua+ is a light script programming tool developed based on the open source project Lua. The simple and elegant Lua language simplifies the tedious Java statements and supports the use of most Android APIs. Installation free debugging makes it easier for you to develop fast programs on your mobile phone. The permission is for you to write programs and use them. Please rest assured.
It's free to use this software. If you like this project, you are welcome to donate or publicize it. It is recommended to read the manual of the program before use.
User agreement
The author shall not be liable for any direct or indirect loss arising from the use of the software.
Do not use this program to write malicious programs to harm others.
Without permission, it is forbidden to imitate the pages and functions of AndLua+.
It is forbidden to use andlua + to develop software that is politically sensitive and damages the network, such as plug-in, crack, invasion, etc.
By continuing to use, you are aware of and agree to the agreement.]],
      about_text = [[It is a light script programming tool developed based on the open source project Lua. Using the simple and beautiful Lua language, it simplifies the tedious Java statements and supports the use of most Android APIs. No installation and debugging makes it easier for you to develop fast programs on your mobile phone. The right to apply is for you to write programs and use them. Please feel free to use them.
It is free to use the software. If you like this project, you are welcome to donate or promote it. It is recommended to read the manual of the program before use.
User agreement
The author shall not be liable for any direct or indirect loss arising from the use of the software.
Do not use this program to write malicious programs to harm others.
Without permission, it is forbidden to imitate the pages and functions of AndLua+.
It is forbidden to use AndLua+ to develop software that is politically sensitive and damages the network, such as plug-in, crack, invasion, etc.
By continuing to use, you are aware of and agree to the agreement.]],
      update = "Update log",
      open = "open",
      L_New = "new",
    }

  end
end

Refresh_language()

function Cleardata(bool)
  if bool then
    os.execute("rm -r "..tostring(activity.getLuaDir().."/log/"))
    os.execute("mkdir "..tostring(activity.getLuaDir().."/log/"))
    io.open(tostring(activity.getLuaDir().."/log/LY"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/background.time"),"w"):write("500000"):close()
    io.open(tostring(activity.getLuaDir().."/res/jz"),"w"):write("0"):close()
    io.open(tostring(activity.getLuaDir().."/res/jz1"),"w"):write("0"):close()
    io.open(tostring(activity.getLuaDir().."/res/tips"),"w"):write("0"):close()
    io.open(tostring(activity.getLuaDir().."/res/log"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/log.ly"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/post1"),"w"):write(".txt .aly .lua 一键替换"):close()
    io.open(tostring(activity.getLuaDir().."/res/post2"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/post3"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/post4"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/s"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/set1.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set2.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set3.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set5.LY"),"w"):write("↹ Fun ( ) [ ] { } \" = : . , ; ! _ + - * / \\ | % # $ ? < > ~ ; @ ' AndLua+@LY"):close()
    io.open(tostring(activity.getLuaDir().."/res/set6.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set7.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set8.LY"),"w"):write([[[TextSize]="40"
[BackgroundColor]="0xffffffff"
[TextColor]="0xff333333"
[KeywordColor]="0xff3f7fb5"
[BasewordColor]="0xff6e81d9"
[StringColor]="0xFF2196F3"
[CommentColor]="0xffa0a0a0"
[UserwordColor]="0xff6e81d9"
[PanelBackgroundColor]="0xffFFFFFF"
[PanelTextColor]="0xFF2196F3"]]):close()
    io.open(tostring(activity.getLuaDir().."/res/set9.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set10.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set11.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set12.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set13.LY"),"w"):write("5"):close()
    io.open(tostring(activity.getLuaDir().."/res/set14.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set15.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set16.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set17.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set18.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set19.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set119"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/set119.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set200.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set11.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/str1"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/str2"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/str3"),"w"):write("UTF-8"):close()
    io.open(tostring(activity.getLuaDir().."/res/str4"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/str5"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/uid1.LY"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/uid2.LY"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/uid4.LY"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/uid3.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/uid5.LY"),"w"):write(""):close()
    io.open(tostring(activity.getLuaDir().."/res/update"),"w"):write(tostring(os.date("%Y%m%d001"))):close()
    io.open(tostring(activity.getLuaDir().."/res/admin"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set201.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set202.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set203.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set204.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/Highlight.lua"),"w"):write('return {\n"HelloWorld",\n}'):close()
    io.open(tostring(activity.getLuaDir().."/res/set205.LY"),"w"):write("0xFF2196F3"):close()
    io.open(tostring(activity.getLuaDir().."/res/set206.LY"),"w"):write("chinese"):close()
    io.open(tostring(activity.getLuaDir().."/res/set207.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set208.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set209.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set210.LY"),"w"):write("/storage/emulated/0/AndLua/lualibs"):close()
    io.open(tostring(activity.getLuaDir().."/res/set211.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set212.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set213.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set214.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set215.LY"),"w"):write("/storage/emulated/0/AndLua/solibs"):close()
    io.open(tostring(activity.getLuaDir().."/res/set216.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set217.LY"),"w"):write("1"):close()
    io.open(tostring(activity.getLuaDir().."/res/set218.LY"),"w"):write("true"):close()
    io.open(tostring(activity.getLuaDir().."/res/set219.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/set220.LY"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/debug"),"w"):write("false"):close()
    io.open(tostring(activity.getLuaDir().."/res/LastPath_alp"),"w"):write("/sdcard/"):close()
    io.open(tostring(activity.getLuaDir().."/res/LastPath_Any"),"w"):write("/sdcard/"):close()
    io.open(tostring(activity.getLuaDir().."/res/LastPath_AP"),"w"):write("/sdcard/"):close()
  end
  io.open(tostring(activity.getLuaDir().."/res/s1.LY"),"w"):write(getLS("open").." "..getLS("L_New").." "..getLS("L_Formatting").." "..getLS("L_Packaging").." "..getLS("L_The_backup").." "..getLS("L_Attribute").." "..getLS("L_The_log").." "..getLS("L_Search_character").." "..getLS("L_Jump_to_specify_rows").." "..getLS("L_Layout_of_the_assistant").." "..getLS("L_The_palette").." "..getLS("L_Characters_to_replace").." "..getLS("L_Import_the_resource").." "..getLS("L_Simulation_to_submit").." "..getLS("L_Code_error").." "..getLS("L_The_import_analysis").." "..getLS("L_Save_the_code").." "..getLS("L_Compile_the_file").." "..getLS("L_Chinese_function").." "..getLS("L_Code_manual").." "..getLS("L_Material_warehouse").." "..getLS("L_A_key_to_replace").." "..getLS("L_The_color_reference").." "..getLS("L_APK_extract").." AndLua+@LY"):close()
  io.open(tostring(activity.getLuaDir().."/res/jks"),"w"):write(getLS("L_The_default")):close()
end

function DeFile(zippath,outfilepath,filename)
  local file = File(zippath)
  local outFile = File(outfilepath)
  local zipFile = ZipFile(file)
  local entry = zipFile.getEntry(filename)
  local input = zipFile.getInputStream(entry)
  local output = FileOutputStream(outFile)
  local byte=byte[entry.getSize()]
  local temp=input.read(byte)
  while temp ~= -1 do
    output.write(byte)
    temp=input.read(byte)
  end
  input.close()
  output.close()
end

function getLS(l)
  return Language[l]
end

import "android.text.method.LinkMovementMethod"

function StringBuilderUI(v,builder)
  v.setText(builder);
  --v.setHighlightColor(tointeger(bjzt()));
  v.setMovementMethod(LinkMovementMethod.getInstance());
end

function Suilder(t,s)
  if t=="code" then
   elseif t=="user" then
    activity.newActivity("main15",{s,true})
  end
end

function StringBuilder(v,s,bol)
  require "import"
  import "android.text.style.ClickableSpan"
  import "android.text.SpannableString"
  import "android.text.style.URLSpan"
  import "android.text.Spanned"
  import "android.text.style.ClickableSpan"
  import "android.text.SpannableStringBuilder"
  import "android.graphics.Color"
  import "android.text.style.ForegroundColorSpan"
  import "android.text.Spannable"
  if bol==nil then
    import "mods.andlua"
  end

  str=s
  s=String(s)
  url={}
  typ={}
  position1={}
  position2={}
  i=0

  for label in str:gmatch("%[label%](.-)%[%/label%]") do
    i=i+1

    loadstring("label_table="..label)()

    label=string.gsub(label,"+","%%+")
    label=string.gsub(label,"-","%%-")
    label=string.gsub(label,"=","%%=")
    label=string.gsub(label,"*","%%*")
    label=string.gsub(label,"#","%%#")
    label=string.gsub(label,"?","%%?")

    url[i]=label_table["url"]
    typ[i]=label_table["type"]

    if typ[i]=="code" then
      s=string.gsub(str,"%[label%]"..label.."%[%/label%]","【"..label_table["text"].."】",1)
      position1[i]=String(str).indexOf("[label]")
      position2[i]=String(str).indexOf("[label]") + String(label_table["text"]).length() + 2
     elseif typ[i]=="user" then
      s=string.gsub(str,"%[label%]"..label.."%[%/label%]","@"..label_table["text"],1)
      position1[i]=String(str).indexOf("[label]")
      position2[i]=String(str).indexOf("[label]") + String(label_table["text"]).length() + 1
    end

    str=s
  end

  builder = SpannableStringBuilder(s);

  for i=1,#position1 do
    builder.setSpan(ForegroundColorSpan(tointeger(bjzt())),position1[i],position2[i],Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
    builder.setSpan(ClickableSpan{onClick=function()
        if bol==nil then
          call("Suilder",typ[i-1],url[i-1])
         else
          Suilder(typ[i-1],url[i-1])
        end
      end}, position1[i], position2[i],Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
    i=i+1
  end

  if bol==nil then
    call("StringBuilderUI",v,builder)
   else
    return builder
  end

end

function NewProject(a,bbb)
  a=string.gsub(a,"/external_files","")
  ProFile="/sdcard/AndLua/project/"
  b=math.random(11111111,88888888)
  c=activity.getLuaDir().."/res/"..b..".lua"
  DeFile(a,c,"init.lua")
  import ("res."..b)
  os.remove(c)
  ConText=getLS("L_The_name_of_the").."："..tostring(appname).."\n"..getLS("L_Version").."："..tostring(appver).."\n"..getLS("L_The_package_name").."："..tostring(packagename).."\n"..getLS("L_The_path").."："..tostring(a)
  AlertDialog.Builder(this)
  .setTitle(getLS("L_Import_the_project"))
  .setMessage(ConText)
  .setPositiveButton(getLS("L_Determine"),{onClick=function(v)
      if File(ProFile..tostring(appname)).exists() then
        AlertDialog.Builder(this)
        .setTitle(getLS("L_Prompt"))
        .setMessage(getLS("L_Project_has_been_in_existence_1"))
        .setPositiveButton(getLS("L_Cover"),{onClick=function(v)
            if ZipUtil.unzip(a,ProFile..tostring(appname).."/") then
              SnackerBar.build()
              :msg(getLS("L_Import_success"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
              if bbb==nil then
                thread(sxgg)
                activity.newActivity("main1",{"/sdcard/AndLua/project/"..tostring(appname)})
              end
             else
              SnackerBar.build()
              :msg(getLS("L_Import_failure"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
            end
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .setNeutralButton(getLS("L_At_the_same_time_there_is"),{onClick=function(v)
            if ZipUtil.unzip(a,ProFile..tostring(appname).."_Clone/") then
              SnackerBar.build()
              :msg(getLS("L_Import_success"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
              if bbb==nil then
                thread(sxgg)
                activity.newActivity("main1",{"/sdcard/AndLua/project/"..tostring(appname)})
              end
             else
              SnackerBar.build()
              :msg(getLS("L_Import_failure"))
              :actionText(getLS("L_OK"))
              :action(function()
              end)
              :show()
            end
          end})
        .show()
       else
        if ZipUtil.unzip(a,ProFile..tostring(appname).."/") then
          SnackerBar.build()
          :msg(getLS("L_Import_success"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
          if bbb==nil then
            thread(sxgg)
            activity.newActivity("main1",{"/sdcard/AndLua/project/"..tostring(appname)})
          end
         else
          SnackerBar.build()
          :msg(getLS("L_Import_failure"))
          :actionText(getLS("L_OK"))
          :action(function()
          end)
          :show()
        end
      end
    end})
  .setNegativeButton(getLS("L_Cancel"),nil)
  .show()
end

function bqq(a)
  local function adds()
    require "import"
    local classes=require "android"
    local LuaHighlight=require "res.Highlight"
    local ms={"onCreate",
      "onStart",
      "onResume",
      "onPause",
      "onStop",
      "onDestroy",
      "onActivityResult",
      "onResult",
      "onCreateOptionsMenu",
      "onOptionsItemSelected",
      "onClick",
      "onTouch",
      "onLongClick",
      "onItemClick",
      "提示()",
      'MD提示("andlua","#2196F3","#ffffffff","4","10")',
      "窗口标题()",
      "载入页面()",
      "隐藏标题栏()",
      "设置主题()",
      "打印()",
      "截取()",
      "替换()",
      "字符串长度()",
      "状态栏颜色()",
      "沉浸状态栏()",
      "设置文本()",
      "跳转页面()",
      "关闭页面()",
      "获取文本()",
      "结束程序()",
      "控件圆角()",
      "获取设备标识码()",
      "获取IMEI()",
      "控件背景渐变动画()",
      "获取屏幕尺寸()",
      "安装判断()",
      "设置中划线()",
      "设置下划线()",
      "设置字体加粗()",
      "设置斜体()",
      "分享()",
      "加群()",
      "QQ聊天()",
      "发送短信()",
      "获取剪切板()",
      "写入剪切板()",
      "开启WIFI()",
      "关闭WIFI()",
      "断开网络()",
      "创建文件()",
      "创建文件夹()",
      "创建多级文件夹()",
      "移动文件()",
      "写入文件()",
      "按钮颜色()",
      "编辑框颜色()",
      "进度条颜色()",
      "控件颜色()",
      "获取手机存储路径()",
      "获取屏幕宽()",
      "获取屏幕高()",
      "文件是否存在()",
      "关闭侧滑()",
      "打开侧滑()",
      "显示()",
      "隐藏()",
      "播放本地音乐()",
      "在线播放音乐()",
      "播放本地视频()",
      "在线本地视频()",
      "打开app()",
      "卸载app()",
      "安装app()",
      "系统下载文件()",
      "弹窗1()",
      "波纹()",
      "随机数()",
      "删除控件()",
      "状态栏亮色()",
      "AndLua1",
      "AndLua2",
      "AndLua3",
      "AndLua4",
      "AndLua5",
      "AndLua6",
      "AndLua7",
      "AndLua8",
      "AndLua9",
      "AndLua10",
      "AndLua11",
      "AndLua12",
      "AndLua13",
      "AndLua14",
      "AndLua15",
      "AndLua16",
      "AndLua17",
      "AndLua18",
      "AndLua",
      "AndLua+",
      "AndLuaPlus",
      "andlua",
      "this",
      "onItemLongClick",
      "api",
      "MarText",
      "sid()",
      "key()",
      "窗口全屏()",
      "取消全屏()",
      "返回桌面()",
      "重构页面()",
      "YLListView",
      "FlexibleListView",
      "PhotoView",
      "QQIUiListener",
      "QQlogin",
      "SwipeMenuListView",
      "zip4j",
      "gif",
      "loadGif",
      "void",
      "static",
      "class",
      "public",
      "new",
      "boolean",
      "char",
      "int",
      "private",
      "trim",
      "toString",
      "length",
      "IOException",
      "FileNotFoundException",
      "out",
      "println",
      "util",
      "append",
      "R"
    }
    Num=0
    for i=0,#LuaHighlight do
      ms[#ms+1]=LuaHighlight[Num]
      Num=Num+1
    end
    local buf=String[#ms+#classes]
    for k,v in ipairs(ms) do
      buf[k-1]=v
    end
    local l=#ms
    for k,v in ipairs(classes) do
      buf[l+k-1]=string.match(v,"%w+$")
    end
    return buf
  end
  task(adds,function(buf)a.addNames(buf)end)
end

function bw(id)
  import "android.content.res.ColorStateList"
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
  local typedArray =activity.obtainStyledAttributes(attrsArray)
  ripple=typedArray.getResourceId(0,0)
  aoos=activity.Resources.getDrawable(ripple)
  aoos.setColor(ColorStateList(int[0].class{int{}},int{RippleColor}))
  id.setBackground(aoos.setColor(ColorStateList(int[0].class{int{}},int{RippleColor})))
end

function dialog1(a)
  dialoglayout={
    LinearLayout;
    layout_height="fill";
    layout_width="fill";
    {
      RelativeLayout;
      layout_width="match_parent";
      {
        TextView;
        textSize="15sp";
        layout_margin="15dp";
        layout_width="match_parent";
        textColor=TitleColor;
        text=a;
      };
    };
  };
  AlertDialog.Builder(this)
  .setView(loadlayout(dialoglayout))
  .setPositiveButton(getLS("L_Determine"),nil)
  .setNegativeButton(getLS("L_Copy"),{onClick=function(v)
      import "android.content.Context"
      activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(xxx)
    end})
  .show()
end

function Typew(view)
  view.setFocusable(true);
  view.setFocusableInTouchMode(true);
  view.requestFocus();
  task(50,function()
    im=view.getContext().getSystemService(this.INPUT_METHOD_SERVICE);
    im.toggleSoftInput(0,InputMethodManager.HIDE_NOT_ALWAYS);
    if view.Text:find("%.") then
      view.setSelection(0,#view.Text-tointeger(#view.Text:match(view.Text:match("(.+)%.").."(.+)")))
     else
      view.setSelection(0,#view.Text)
    end
  end)
end

function filter_spec_chars(s)
  local ss = {}
  for k = 1, #s do
    local c = string.byte(s,k)
    if not c then break end
    if (c>=48 and c<=57) or (c>= 65 and c<=90) or (c>=97 and c<=122) then
      if not string.char(c):find("%w") then
        table.insert(ss, string.char(c))
      end
     elseif c>=228 and c<=233 then
      local c1 = string.byte(s,k+1)
      local c2 = string.byte(s,k+2)
      if c1 and c2 then
        local a1,a2,a3,a4 = 128,191,128,191
        if c == 228 then a1 = 184
         elseif c == 233 then a2,a4 = 190,c1 ~= 190 and 191 or 165
        end
        if c1>=a1 and c1<=a2 and c2>=a3 and c2<=a4 then
          k = k + 2
          table.insert(ss, string.char(c,c1,c2))
        end
      end
    end
  end
  return tointeger(#s-#table.concat(ss)+tointeger(#table.concat(ss)/3))
end

function Typew2(view)
  view.setFocusable(true);
  view.setFocusableInTouchMode(true);
  view.requestFocus();
  task(50,function()
    view.setSelection(0,filter_spec_chars(view.Text))
  end)
end

function Typew1(view)
  view.setFocusable(true);
  view.setFocusableInTouchMode(true);
  view.requestFocus();
  task(50,function()
    im=view.getContext().getSystemService(this.INPUT_METHOD_SERVICE);
    im.toggleSoftInput(0,InputMethodManager.HIDE_NOT_ALWAYS);
  end)
end

function tt(a)
  Toast.makeText(activity, a,Toast.LENGTH_SHORT).show()
end

function PtionShow(array,Title)
  if array[1]!=nil then
    PtionPro={
      LinearLayout;
      layout_height="50dp";
      layout_width="match_parent";
      {
        TextView;
        layout_marginLeft="25dp";
        layout_gravity="center";
        textSize="15sp";
        id="PtionTitle";
        singleLine=true;
        textColor=TitleColor,
        text="Title";
      };
    };
    Ption={
      LinearLayout;
      {
        ListView;
        layout_width="match_parent";
        id="PtionList";
        DividerHeight=0;
        VerticalScrollBarEnabled=false;
        overScrollMode=2;
      };
    };
    PtionView=AlertDialog.Builder(this)
    .setTitle(Title)
    .setView(loadlayout(Ption))
    .show()
    adp=LuaAdapter(activity,PtionPro)
    PtionList.setAdapter(adp)
    for index,content in pairs(array) do
      adp.add{PtionTitle=content}
    end
  end
end

function jcgx(trr)
  wj55=activity.getLuaDir().."/res/set3.LY"
  hj55=tostring(io.open(wj55):read("*a"))
  if hj55=="true" then
    uguid()
    Http.get("https://ly250.cn/andlua/update6600.php?uid="..uid3,function(a1,b,c,d)
      sid2=b:match('%["ret"] = "(.-)%";')
      sid5=b:match('%["ret2"] = "(.-)%";')
      if tostring(sid5)=="ok" then
        url=b:match('%["url2"] = "(.-)%";')
        dx=b:match('%["date2"] = "(.-)%";')
        wj=activity.getLuaDir().."/res/update"
        hj=io.open(wj):read("*a")
        if tointeger(dx)>tointeger(hj) then
          if http.download(url,tostring(activity.getLuaDir().."/update.lua"))==200 then
            import "update"
            if type(AndluaUpdate)=="function" then
              AndluaUpdate()
              os.remove(activity.getLuaDir().."/update.lua")
            end
          end
        end
      end
      if sid2=="1" then
        if trr=="true" then
          Toast.makeText(activity, getLS("L_Is_the_latest_version"),Toast.LENGTH_SHORT).show()
        end
       elseif sid2=="ok" then
        url=b:match('%["url"] = "(.-)%";')
        text=b:match('%["text"] = "(.-)%";')
        dxh=b:match('%["size"] = "(.-)%";')
        dxh1=b:match('%["title"] = "(.-)%";')
        AlertDialog.Builder(this)
        .setTitle(dxh1)
        .setMessage(text)
        .setPositiveButton(dxh,{onClick=function(v)
            if dxh==getLS("L_Determine") then
             else
              import "android.content.Context"
              import "android.net.Uri"
              downloadManager=activity.getSystemService(Context.DOWNLOAD_SERVICE);
              url=Uri.parse(url);
              request=DownloadManager.Request(url);
              request.setAllowedNetworkTypes(DownloadManager.Request.NETWORK_MOBILE|DownloadManager.Request.NETWORK_WIFI);
              request.setDestinationInExternalPublicDir("/sdcard/AndLua/","AndLua+.apk");
              request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
              downloadManager.enqueue(request);
            end
          end})
        .setNegativeButton(getLS("L_Cancel"),nil)
        .show()
      end
    end)
   else
  end
end

function bw1(id)
  import "android.content.res.ColorStateList"
  local attrsArray = {android.R.attr.selectableItemBackgroundBorderless}
  local typedArray =activity.obtainStyledAttributes(attrsArray)
  ripple=typedArray.getResourceId(0,0)
  aoos=activity.Resources.getDrawable(ripple)
  aoos.setColor(ColorStateList(int[0].class{int{}},int{RippleColor}))
  id.setBackground(aoos.setColor(ColorStateList(int[0].class{int{}},int{RippleColor})))
  id.onClick=function()
    if id.Text=="Fun" then
      LuaEditor.paste("function ()")
     else
      LuaEditor.paste(id.Text)
    end
  end
end

function ztt()
  --activity.setRequestedOrientation(1)
  if Night_mode then
    activity.setTheme(android.R.style.Theme_Material)
   else
    wjuu=activity.getLuaDir().."/res/set13.LY"
    hjg=io.open(wjuu):read("*a")
    if hjg=="1" then
      activity.setTheme(R.AndLua1)
     elseif hjg=="2" then
      activity.setTheme(R.AndLua2)
     elseif hjg=="3" then
      activity.setTheme(R.AndLua3)
     elseif hjg=="4" then
      activity.setTheme(R.AndLua4)
     elseif hjg=="5" then
      activity.setTheme(R.AndLua5)
     elseif hjg=="6" then
      activity.setTheme(R.AndLua6)
     elseif hjg=="7" then
      activity.setTheme(R.AndLua7)
     elseif hjg=="8" then
      activity.setTheme(R.AndLua8)
     elseif hjg=="9" then
      activity.setTheme(R.AndLua9)
     elseif hjg=="10" then
      activity.setTheme(R.AndLua10)
     elseif hjg=="11" then
      activity.setTheme(R.AndLua11)
     elseif hjg=="12" then
      activity.setTheme(R.AndLua12)
     elseif hjg=="13" then
      activity.setTheme(R.AndLua13)
     elseif hjg=="14" then
      activity.setTheme(R.AndLua14)
     elseif hjg=="15" then
      activity.setTheme(R.AndLua15)
     elseif hjg=="16" then
      activity.setTheme(R.AndLua16)
     elseif hjg=="17" then
      activity.setTheme(R.AndLua17)
     elseif hjg=="18" then
      activity.setTheme(R.AndLua18)
     elseif hjg=="19" then
      activity.setTheme(R.AndLua19)
     elseif hjg=="20" then
      activity.setTheme(R.AndLua20)
     else
      activity.setTheme(R.AndLua5)
    end
  end
  wjuu1=activity.getLuaDir().."/res/set19.LY"
  hjg1=io.open(wjuu1):read("*a")
  if hjg1=="false" then
    activity.getWindow().setNavigationBarColor(0xffffffff)
  end
end

function ztt1()
  if Night_mode then
    return android.R.style.Theme_Material
   else
    wjuu=activity.getLuaDir().."/res/set13.LY"
    hjg=io.open(wjuu):read("*a")
    if hjg=="1" then
      return R.AndLua1
     elseif hjg=="2" then
      return R.AndLua2
     elseif hjg=="3" then
      return R.AndLua3
     elseif hjg=="4" then
      return R.AndLua4
     elseif hjg=="5" then
      return R.AndLua5
     elseif hjg=="6" then
      return R.AndLua6
     elseif hjg=="7" then
      return R.AndLua7
     elseif hjg=="8" then
      return R.AndLua8
     elseif hjg=="9" then
      return R.AndLua9
     elseif hjg=="10" then
      return R.AndLua10
     elseif hjg=="11" then
      return R.AndLua11
     elseif hjg=="12" then
      return R.AndLua12
     elseif hjg=="13" then
      return R.AndLua13
     elseif hjg=="14" then
      return R.AndLua14
     elseif hjg=="15" then
      return R.AndLua15
     elseif hjg=="16" then
      return R.AndLua16
     elseif hjg=="17" then
      return R.AndLua17
     elseif hjg=="18" then
      return R.AndLua18
     elseif hjg=="19" then
      return R.AndLua19
     elseif hjg=="20" then
      return R.AndLua20
     else
      return R.AndLua5
    end
  end
end

ztt()

function bjzt()
  --[[
  array=activity.getTheme().obtainStyledAttributes({android.R.attr.colorBackground,android.R.attr.textColorPrimary,android.R.attr.colorPrimary,android.R.attr.colorPrimaryDark,android.R.attr.colorAccent,});
  colorBackground=array.getColor(0, 0xFF00FF);
  textColorPrimary=array.getColor(1, 0xFF00FF);
  colorPrimary=array.getColor(2, 0xFF00FF);
  colorPrimaryDark=array.getColor(3, 0xFF00FF);
  colorAccent=array.getColor(4, 0xFF00FF);
  return tostring("0x"..tostring(string.upper(Integer.toHexString(colorPrimary))))
]]
  wj=activity.getLuaDir().."/res/set205.LY"
  hj=io.open(wj):read("*a")
  return hj
end

function bjzt1()
  --[[
  array=activity.getTheme().obtainStyledAttributes({android.R.attr.colorBackground,android.R.attr.textColorPrimary,android.R.attr.colorPrimary,android.R.attr.colorPrimaryDark,android.R.attr.colorAccent,});
  colorBackground=array.getColor(0, 0xFF00FF);
  textColorPrimary=array.getColor(1, 0xFF00FF);
  colorPrimary=array.getColor(2, 0xFF00FF);
  colorPrimaryDark=array.getColor(3, 0xFF00FF);
  colorAccent=array.getColor(4, 0xFF00FF);
  return tostring("0x"..string.upper(Integer.toHexString(colorPrimary)))
]]
  wj=activity.getLuaDir().."/res/set205.LY"
  hj=io.open(wj):read("*a")
  return hj
end

function bjzt2()
  --[[
  array=activity.getTheme().obtainStyledAttributes({android.R.attr.colorBackground,android.R.attr.textColorPrimary,android.R.attr.colorPrimary,android.R.attr.colorPrimaryDark,android.R.attr.colorAccent,});
  colorBackground=array.getColor(0, 0xFF00FF);
  textColorPrimary=array.getColor(1, 0xFF00FF);
  colorPrimary=array.getColor(2, 0xFF00FF);
  colorPrimaryDark=array.getColor(3, 0xFF00FF);
  colorAccent=array.getColor(4, 0xFF00FF);
  return tostring("0x"..string.upper(Integer.toHexString(colorPrimary)))
]]
  wj=activity.getLuaDir().."/res/set205.LY"
  hj=io.open(wj):read("*a")
  return "#"..string.sub(hj,1,4)
end

function bj(id)
  import "android.graphics.drawable.Drawable"
  import "android.graphics.PorterDuff"
  fCursorDrawableRes = TextView.getDeclaredField("mCursorDrawableRes");
  fCursorDrawableRes.setAccessible(true);
  mCursorDrawableRes = fCursorDrawableRes.getInt(id);
  fEditor = TextView.getDeclaredField("mEditor");
  fEditor.setAccessible(true);
  editor = fEditor.get(id);
  clazz = editor.getClass();
  fCursorDrawable = clazz.getDeclaredField("mCursorDrawable");
  fCursorDrawable.setAccessible(true);
  drawables =Drawable[1];
  drawables[0]=id.getContext().getResources().getDrawable(mCursorDrawableRes);
  drawables[0].setColorFilter(tonumber(bjzt()), PorterDuff.Mode.SRC_IN);
  fCursorDrawable.set(editor,drawables);
end

function th(str,str1,str2)
  str1=str1:gsub("%p",function(s) return("%"..s) end)
  str2=str2:gsub("%%","%%%%")
  return(str:gsub(str1,str2))
end

function sid()
  sjb=os.date("%H%M")
  sjn="155785"
  sjv=sjb*sjn
  return tointeger(sjv)
end

function uguid()
  ui1=activity.getLuaDir().."/res/uid1.LY"
  ui2=activity.getLuaDir().."/res/uid2.LY"
  ui3=activity.getLuaDir().."/res/uid4.LY"
  uid1=io.open(ui1):read("*a")
  uid2=io.open(ui2):read("*a")
  uid3=io.open(ui3):read("*a")
end

function ugad()
  ui1=activity.getLuaDir().."/res/admin"
  return io.open(ui1):read("*a")
end

function ztl(color)
  if Night_mode == false then
    if Build.VERSION.SDK_INT >= 23 then
      activity.getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
    end
  end
  if color~=nil then
    activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(color);
   else
    activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(statusBar);
  end
end

function qys(a)
  wj21=activity.getLuaDir().."/res/set8.LY"
  hj21=io.open(wj21):read("*a")
  if a=="BackgroundColor" then
  end
  return hj21:match("%["..a..'%]="(.-)"')
end

function bss(a)
  a.setTextSize(tonumber(qys("TextSize")))
  a.setTextColor(tonumber(qys("TextColor")))
  a.setKeywordColor(tonumber(qys("KeywordColor")))
  a.setBasewordColor(tonumber(qys("BasewordColor")))
  a.setStringColor(tonumber(qys("StringColor")))
  a.setCommentColor(tonumber(qys("CommentColor")))
  a.setBackgroundColor(tonumber(qys("BackgroundColor")))
  a.setUserwordColor(tonumber(qys("UserwordColor")))
  --a.setTextHighlightColor(0x9fffffff)
  a.setPanelBackgroundColor(tonumber(qys("PanelBackgroundColor")))--补全背景
  a.setPanelTextColor(tonumber(qys("PanelTextColor")))--补全文字、边框
  wj23=activity.getLuaDir().."/res/set9.LY"
  hj23=io.open(wj23):read("*a")
  if hj23=="true" then
    a.WordWrap=true
  end
  wj=activity.getLuaDir().."/res/set208.LY"
  hj=io.open(wj):read("*a")
  if hj=="false" then
    a.setShowLineNumbers(false)
  end
end

import "java.lang.Character$UnicodeBlock"
import "java.lang.Integer"
local base64chars = {
  [0]='A', [1]='B', [2]='C', [3]='D', [4]='E', [5]='F', [6]='G', [7]='H',
  [8]='I', [9]='J', [10]='K', [11]='L', [12]='M', [13]='N', [14]='O', [15]='P',
  [16]='Q', [17]='R', [18]='S', [19]='T', [20]='U', [21]='V', [22]='W', [23]='X',
  [24]='Y', [25]='Z', [26]='a', [27]='b', [28]='c', [29]='d', [30]='e', [31]='f',
  [32]='g', [33]='h', [34]='i', [35]='j', [36]='k', [37]='l', [38]='m', [39]='n',
  [40]='o', [41]='p', [42]='q', [43]='r', [44]='s', [45]='t', [46]='u', [47]='v',
  [48]='w', [49]='x', [50]='y', [51]='z', [52]='0', [53]='1', [54]='2', [55]='3',
  [56]='4', [57]='5', [58]='6', [59]='7', [60]='8', [61]='9', [62]='-', [63]='_'
}

function encode(data)
  local bytes = {}
  local result = ""
  for i = 0, data:len()-1, 3 do
    for byte = 1, 3 do bytes[byte] = string.byte(data:sub(i+byte)) or 0 end
    result =
    string.format( '%s%s%s%s%s',
    result,
    base64chars[ math.floor(bytes[1]/4) ] or "=",
    base64chars[(bytes[1] % 4) * 16 + math.floor(bytes[2] / 16)] or "=",
    ( {
      [true] = base64chars[(bytes[2] % 16) * 4 + math.floor(bytes[3] / 64)] or "=",
      [false] = "="
    }
    ) [(data:len() - i) > 1],
    ( {
      [true] = base64chars[(bytes[3] % 64)] or "=",
      [false] = "="
    }
    ) [(data:len(data) - i) > 2]
    )
  end
  return result
end

local base64bytes = {
  ['A']= 0, ['B'] =1, ['C'] =2, ['D'] =3, ['E'] =4, ['F'] =5, ['G'] =6, ['H'] =7,
  ['I']=8, ['J'] =9, ['K']=10, ['L']=11, ['M']=12, ['N']=13, ['O']=14, ['P']=15,
  ['Q']=16, ['R']=17, ['S']=18, ['T']=19, ['U']=20, ['V']=21, ['W']=22, ['X']=23,
  ['Y']=24, ['Z']=25, ['a']=26, ['b']=27, ['c']=28, ['d']=29, ['e']=30, ['f']=31,
  ['g']=32, ['h']=33, ['i']=34, ['j']=35, ['k']=36, ['l']=37, ['m']=38, ['n']=39,
  ['o']=40, ['p']=41, ['q']=42, ['r']=43, ['s']=44, ['t']=45, ['u']=46, ['v']=47,
  ['w']=48, ['x']=49, ['y']=50, ['z']=51, ['0']=52, ['1']=53, ['2']=54, ['3']=55,
  ['4']=56, ['5']=57, ['6']=58, ['7']=59, ['8']=60, ['9']=61, ['-']=62, ['_']=63,
  ['=']=nil
}

function decode(data)
  local chars = {}
  local result = ""
  for i = 0, data:len()-1, 4 do
    for c = 1, 4 do chars[c] = base64bytes[ (string.sub(data,(i+c),(i+c)) or "=") ] end
    result =
    string.format( '%s%s%s%s',
    result, string.char(chars[1]*4 + math.floor(chars[2]/16)),
    ( {
      [true] = string.char(((chars[2] or 0) % 16)*16 + math.floor((chars[3] or 0)/4)),
      [false] = ""
    }
    ) [chars[3] ~= nil],
    ( {
      [true] = string.char(((chars[3] or 0)%4) * 64 + (chars[4] or 0)),
      [false] = ""}
    ) [chars[4] ~= nil]
    )
  end
  return result
end

function m(inStr)
  local inStr=String(inStr)
  local myBuffer=inStr.toCharArray();
  local sb =StringBuffer();
  for i=0,inStr.length()-1 do
    local ub=UnicodeBlock.of(myBuffer[i]);
    if(ub == UnicodeBlock.BASIC_LATIN) then
      local hexS=Integer.toHexString(myBuffer[i]);
      local unicode ="\\u00"..hexS;
      sb.append(unicode);
     elseif(ub == UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) then
      local hexS =Integer.toHexString(myBuffer[i]);
      local unicode = "\\u"..hexS;
      sb.append(unicode);
     else
      local s=myBuffer[i];
      local hexS=Integer.toHexString(s);
      local unicode = "\\u"..hexS;
      sb.append(unicode);
    end
  end
  return tostring(sb.toString())
end

function m1(data)
  local Base64=luajava.bindClass("android.util.Base64")
  aaa=Base64.encodeToString(String(data).getBytes(),Base64.NO_WRAP);
  return tostring(m(aaa))
end

function Sharing(path)
  import "android.webkit.MimeTypeMap"
  import "android.content.Intent"
  import "android.net.Uri"
  import "java.io.File"
  import "android.content.FileProvider"
  intent = Intent()
  intent.setAction(Intent.ACTION_SEND)
  intent.setType("*/*")
  uri=FileProvider.getUriForFile(activity,activity.getPackageName(),File(path));
  intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
  intent.putExtra(Intent.EXTRA_STREAM,uri)
  activity.startActivity(Intent.createChooser(intent, "["..File(path).getName().."] "..getLS("L_Share_the")))
end

function backup7(lj,edit,toa)
  require "import"
  import "android.app.*"
  import "android.os.*"
  import "android.widget.*"
  import "android.content.*"
  import "android.view.*"
  import "java.io.*"
  import "mods.andlua"
  if LuaUtil.zip(lj,"/sdcard/AndLua/cache/") then
    yj=File(lj).getName()
    wjh=io.open(lj.."/init.lua"):read("*a")
    btt=wjh:match('%appname="(.-)"')
    File("/sdcard/AndLua/cache/"..yj..".zip").renameTo(File("/sdcard/AndLua/backup/"..edit..".alp"))
    if toa==nil then
      call("toast",getLS("L_The_backup_successful").."/sdcard/AndLua/backup/"..edit..".alp")
    end
    return "/sdcard/AndLua/backup/"..edit..".alp"
   else
    if toa==nil then
      call("toast",getLS("L_Backup_failure"))
    end
    return ""
  end
end

function toast(text)
  SnackerBar.build()
  :msg(text)
  :actionText(getLS("L_OK"))
  :action(function()
  end)
  :show()
end

function GChome(li,bbb)
  li.onItemLongClick=function(l,v,p,i)
    if File(v.Tag.gcv.Text).isDirectory() then
      lkn2=p
      lkn=v.Tag.gcv.Text
      lkn1=v.Tag.gcwj.Text
      Title=v.Tag.bt.Text
      bbm=v.Tag.bb.Text
      bmm=v.Tag.bmb.Text

      if File(lkn.."/icon.png").isFile() then
        sr=lkn.."/icon.png"
       else
        sr=activity.getLuaDir().."/icon.png"
      end

      InputLayout={
        LinearLayout;
        layout_height="fill";
        backgroundColor=DialogColor;
        layout_width="fill";
        {
          RelativeLayout;
          layout_width="match_parent";
          {
            RelativeLayout;
            id="shux";
            elevation="1dp";
            backgroundColor=DialogColor;
            layout_width="match_parent";
            {
              ImageView;
              scaleType="fitXY";
              id="tp";
              layout_marginTop="20dp";
              layout_height="55dp";
              src=sr;
              layout_centerHorizontal="true";
              layout_width="55dp";
            };
            {
              TextView;
              text=Title;
              id="mc";
              layout_marginTop="5dp";
              textColor=TitleColor;
              layout_below="tp";
              layout_centerHorizontal="true";
              --Typeface=Typeface.defaultFromStyle(Typeface.BOLD);
            };
            {
              TextView;
              text="1.0";
              layout_marginTop="0dp";
              layout_below="mc";
              text=bbm:match(getLS("L_Version")..":(.+)");
              id="bb";
              layout_centerHorizontal="true";
              textSize="13sp";
              textColor=TitleColor1;
            };
            {
              TextView;
              text="com.andlua.demo";
              layout_marginTop="0dp";
              layout_marginBottom="20dp";
              layout_below="bb";
              textColor=TitleColor1;
              textSize="13sp";
              text=bmm:match(getLS("L_The_package_name")..":(.+)");
              layout_centerHorizontal="true";
            };
          };
          {
            RelativeLayout;
            layout_below="shux";
            layout_width="match_parent";
            layout_marginTop="10dp";
            {
              GridView;
              numColumns=4;
              verticalSpacing="15dp";
              gravity="center";
              id="grid";
              horizontalSpacing="0dp";
              layout_width="fill";
              layout_marginBottom="10dp";
            };
          };
        };
      };

      aao=AlertDialog.Builder(this)
      .setView(loadlayout(InputLayout))
      .show()

      item={
        LinearLayout;
        gravity="center";
        backgroundColor=DialogColor;
        layout_width="55dp";
        layout_height="55dp";
        {
          CardView;
          radius="8dp";
          CardElevation="0dp";
          layout_width="53dp";
          backgroundColor=RBackground;
          layout_height="53dp";
          {
            LinearLayout;
            gravity="center";
            orientation="vertical";
            layout_width="fill";
            layout_height="fill";
            {
              ImageView;
              id="img";
              layout_width="21dp";
              layout_height="21dp";
              layout_marginBottom="3dp";
              colorFilter=TitleColor1;
            };
            {
              TextView;
              TextColor=TitleColor1;
              id="bt";
              singleLine=true,
              textSize="12sp";
            };
          };
        };
      };

      data={}
      adp=LuaAdapter(activity,data,item)
      adp.add{img="res/Metrial441.png",bt=getLS("L_Attribute")}
      adp.add{img="res/Metrial922.png",bt=getLS("L_Share")}
      adp.add{img="res/Metrial352.png",bt=getLS("L_The_backup")}
      adp.add{img="res/Metrial745.png",bt=getLS("L_Cloning")}
      adp.add{img="res/Metrial30.png",bt=getLS("L_Repair")}
      adp.add{img="res/Metrial363.png",bt=getLS("L_Delete")}
      adp.add{img="res/Metrial822.png",bt=getLS("L_Packaging")}
      adp.add{img="res/Metrial485.png",bt=getLS("L_Information")}
      grid.Adapter=adp

      grid.onItemClick=function(l,v,p,i)
        aao.hide()
        Context=v.Tag.bt.Text
        if Context==getLS("L_Repair") then
          hha=activity.getLuaDir().."/res/log.ly"
          hhb=io.open(hha):read("*a")
          idhh=hhb:match("【@@"..lkn.."/main.lua@@】★【§(.-)§】")
          if idhh==nil then
            SnackerBar.build()
            :msg(getLS("L_The_project_need_to_repair"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
           else
            css="【@@"..lkn.."/main.lua@@】★【§"..idhh.."§】"
            hhc=string.gsub(hhb,css,"")
            io.open(hha,"w"):write(hhc):close()
            SnackerBar.build()
            :msg(getLS("L_Repair_complete"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end
         elseif Context==getLS("L_Permissions") then
          activity.newActivity("main4",{lkn})
         elseif Context==getLS("L_Share") then
          AlertDialog.Builder(this)
          .setMessage(Title)
          .setPositiveButton(getLS("L_Share_the_source_code_space"),{onClick=function(v)
              LoadSignin(function()
                activity.newActivity("main11",{lkn,Title,sr})
              end)
            end})
          .setNegativeButton(getLS("L_Share_the_QQ"),{onClick=function(v)
              Sharing_path = Title.."_"..os.date("%Y%m%d%H%M%S")
              thread(backup7,lkn,Sharing_path,false)
              Sharing("/sdcard/AndLua/backup/"..Sharing_path..".alp")
            end})
          .show()
         elseif Context==getLS("L_The_backup") then
          thread(backup7,lkn,Title.."_"..os.date("%Y%m%d%H%M%S"))
         elseif Context==getLS("L_Cloning") then
          if LuaUtil.copyDir(lkn,"/sdcard/AndLua/project/"..lkn1.."_clone") then
            SnackerBar.build()
            :msg(getLS("L_Cloned"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
            gggv="/sdcard/AndLua/project/"..lkn1.."_clone/init.lua"
            wjh1=io.open(gggv):read("*a")
            bt8=wjh1:match('%appname="(.-)"')
            ggv=string.gsub(wjh1,bt8,bt8.."_clone")
            io.open(gggv,"w"):write(ggv):close()
           else
            SnackerBar.build()
            :msg(getLS("L_Cloning_failed"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end
         elseif Context==getLS("L_Attribute") then
          activity.newActivity("main4",{lkn,"1"})
         elseif Context==getLS("L_Delete") then
          if LuaUtil.rmDir(File(lkn)) then
            SnackerBar.build()
            :msg(getLS("L_Delete_the_success"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()

            hha=activity.getLuaDir().."/res/log.ly"
            hhb=io.open(hha):read("*a")
            idhh=hhb:match("【@@"..lkn.."/main.lua@@】★【§(.-)§】")
            if idhh==nil then
             else
              css="【@@"..lkn.."/main.lua@@】★【§"..idhh.."§】"
              hhc=string.gsub(hhb,css,"")
              io.open(hha,"w"):write(hhc):close()
            end
           else
            SnackerBar.build()
            :msg(getLS("L_Delete_failed"))
            :actionText(getLS("L_OK"))
            :action(function()
            end)
            :show()
          end
          if bbb==1 then
            thread(sxgg)
          end
         elseif Context==getLS("L_Packaging") then
          bin(lkn.."/")
         elseif Context==getLS("L_Information") then
          btt,bmm,bbb,bbh,sdkh,qxx=""
          wjh=io.open(lkn.."/init.lua"):read("*a")
          btt=wjh:match('%appname="(.-)"')
          bmm=wjh:match('%agename="(.-)"')
          bbb=wjh:match('%appver="(.-)"')
          bbh=wjh:match('%appcode="(.-)"')
          sdkh=wjh:match('%appsdk="(.-)"')
          hhaa=tostring(math.random(11111111,99999999999))
          hha=hhaa..".lua"
          LuaUtil.copyDir(lkn.."/init.lua",tostring(activity.getLuaDir().."/"..hha))
          import (hhaa)
          lll=getLS("L_Shut_down")
          if debugmode==true then
            lll=getLS("L_Open")
          end
          qxx=#user_permission
          os.remove(tostring(activity.getLuaDir().."/"..hha))
          if sdkh=="8" then
            sdkk="Android 2.2"
           else
            if sdkh=="9" then
              sdkk="Android 2.3"
             else
              if sdkh=="10" then
                sdkk="Android 2.3.3"
               else
                if sdkh=="11" then
                  sdkk="Android 3.0"
                 else
                  if sdkh=="12" then
                    sdkk="Android 3.1"
                   else
                    if sdkh=="13" then
                      sdkk="Android 3.2"
                     else
                      if sdkh=="14" then
                        sdkk="Android 4.0"
                       else
                        if sdkh=="15" then
                          sdkk="Android 4.0.3"
                         else
                          if sdkh=="16" then
                            sdkk="Android 4.1"
                           else
                            if sdkh=="17" then
                              sdkk="Android 4.2"
                             else
                              if sdkh=="18" then
                                sdkk="Android 4.3"
                               else
                                if sdkh=="19" then
                                  sdkk="Android 4.4"
                                 else
                                  if sdkh=="20" then
                                    sdkk="Android 4.5"
                                   else
                                    if sdkh=="21" then
                                      sdkk="Android 5.0"
                                     else
                                      if sdkh=="22" then
                                        sdkk="Android 5.1"
                                       else
                                        if sdkh=="23" then
                                          sdkk="Android 6.0"
                                         else
                                          if sdkh=="24" then
                                            sdkk="Android 7.0"
                                           else
                                            if sdkh=="25" then
                                              sdkk="Android 7.1"
                                             else
                                              if sdkh=="26" then
                                                sdkk="Android 8.0"
                                               else
                                                if sdkh=="27" then
                                                  sdkk="Android 9.0"
                                                 else
                                                  sdkk="Error!"
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
          xxx=getLS("L_The_name_of_the").."："..tostring(btt).."\n\n"..getLS("L_The_package_name").."："..tostring(bmm).."\n\n"..getLS("L_Version").."："..tostring(bbb).."\n\n"..getLS("L_The_version_number").."："..tostring(bbh).."\n\n".."SDK："..tostring(sdkh).."  ( "..tostring(sdkk).." )".."\n\n"..getLS("L_Permissions_2").."："..tostring(qxx).."\n\n"..getLS("L_Debug_mode").."："..tostring(lll).."\n\n"..getLS("L_Engineering_path").."："..lkn.."/"
          dialog1(xxx)
        end
      end
     else
      SnackerBar.build()
      :msg(getLS("L_Engineering_does_not_exist"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
    end

    return true

  end
end

import "java.lang.Character$UnicodeBlock"
import "java.lang.Integer"
function utf8ToUnicode(inStr)
  local inStr=String(inStr)
  local myBuffer=inStr.toCharArray();--数组
  local sb =StringBuffer();
  for i=0,inStr.length()-1 do
    local ub=UnicodeBlock.of(myBuffer[i]);
    if(ub == UnicodeBlock.BASIC_LATIN) then
      --英文及数字等
      local hexS=Integer.toHexString(myBuffer[i]);--16进制
      local unicode ="\\u00"..hexS;
      sb.append(unicode);
     elseif(ub == UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS) then
      --全角半角字符
      local hexS =Integer.toHexString(myBuffer[i]);
      local unicode = "\\u"..hexS;
      sb.append(unicode);
     else
      --汉字
      local s=myBuffer[i];
      local hexS=Integer.toHexString(s);
      local unicode = "\\u"..hexS;
      sb.append(unicode);
    end
  end
  return sb.toString();
end

require "import"
import "java.lang.String"
import "javax.crypto.Cipher"
import "javax.crypto.spec.IvParameterSpec"
import "javax.crypto.spec.SecretKeySpec"
import "android.util.Base64"

VIPARA = "1234567876543210";
CODE_TYPE = "UTF-8";
AES_TYPE = "AES/ECB/PKCS5Padding";
AES_KEY="1111222233334444";
consult = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G"};

function encrypt(cleartext)
  AES_KEY="2826587025andlua"
  local zeroIv = IvParameterSpec(String(VIPARA).getBytes());
  local key = SecretKeySpec(String(AES_KEY).getBytes(), "AES");
  local cipher = Cipher.getInstance(AES_TYPE);
  cipher.init(Cipher.ENCRYPT_MODE, key,zerolv);
  local encryptedData = cipher.doFinal(String(cleartext).getBytes());
  local result= Base64.encodeToString(encryptedData,1)
  return string.sub(utf8ToUnicode(result),1,-6)
end

import "com.andlua.unicode"

function decrypt(encrypted)
  encrypted=unicode.unicodeDecode(encrypted)
  AES_KEY="2826587025andlua"
  local byteMi = Base64.decode(String(encrypted).getBytes(),1);
  local zeroIv = IvParameterSpec(String(VIPARA).getBytes());
  local key = SecretKeySpec(String(AES_KEY).getBytes(), "AES");
  local cipher = Cipher.getInstance(AES_TYPE);
  cipher.init(Cipher.DECRYPT_MODE, key,zerolv);
  local decryptedData = cipher.doFinal(byteMi);
  local result = String(decryptedData, CODE_TYPE);
  return result
end

import "java.io.FileInputStream"
import "java.io.BufferedInputStream"
import "java.io.FileOutputStream"
import "android.content.Context"
import "javax.crypto.CipherOutputStream"

function encryptFile(int,out,AES_KEY)
  local key = SecretKeySpec(String(AES_KEY).getBytes(), "AES");
  local cipher = Cipher.getInstance(AES_TYPE);
  cipher.init(Cipher.ENCRYPT_MODE, key);
  local cipherOutputStream = CipherOutputStream( FileOutputStream(out), cipher);
  local bufferedInputStream = BufferedInputStream( FileInputStream(int));
  local buffer = byte[1024];
  local bufferLength=0
  while bufferLength ~= -1 do
    cipherOutputStream.write(buffer, 0, bufferLength);
    bufferLength = bufferedInputStream.read(buffer)
  end
  bufferedInputStream.close();
  cipherOutputStream.close();
end

function decryptFile(int,out,AES_KEY)
  local key = SecretKeySpec(String(AES_KEY).getBytes(), "AES");
  local cipher = Cipher.getInstance(AES_TYPE);
  cipher.init(Cipher.DECRYPT_MODE, key);
  local cipherOutputStream = CipherOutputStream( FileOutputStream(out), cipher);
  local bufferedInputStream =BufferedInputStream( FileInputStream(int));
  local buffer = byte[1024];
  local bufferLength=0
  while bufferLength ~= -1 do
    cipherOutputStream.write(buffer, 0, bufferLength);
    bufferLength = bufferedInputStream.read(buffer)
  end
  bufferedInputStream.close();
  cipherOutputStream.close();
end

function sidPro()
  sjb=os.date("%H%M")
  sjn="155785"
  sjv=sjb*sjn
  return encrypt(tostring(tointeger(sjv)))
end

function uguidPro()
  ui1=activity.getLuaDir().."/res/uid1.LY"
  ui2=activity.getLuaDir().."/res/uid2.LY"
  ui3=activity.getLuaDir().."/res/uid4.LY"
  uid1=encrypt(io.open(ui1):read("*a"))
  uid2=encrypt(io.open(ui2):read("*a"))
  uid3=encrypt(io.open(ui3):read("*a"))
end

function LoadSignin(fun)
  localdialog = ProgressDialog(this)
  localdialog.setTitle(getLS("L_Prompt"))
  localdialog.setMessage(getLS("L_Being_loaded_in").."...")
  localdialog.setCancelable(true)
  localdialog.setCanceledOnTouchOutside(false)
  localdialog.show()
  uguidPro()
  Http.post("https://ly250.cn/andlua/validateLogon.php","uid1="..uid1.."&uid2="..uid2.."&uid3="..uid3.."&sid="..sidPro(),function(a1,b,c,d)
    b=tostring(decrypt(b))
    sid1=b:match('%["ret"] = "(.-)%";')
    if sid1=="4" then
      SnackerBar.build()
      :msg(getLS("L_Identity_expired"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
     elseif sid1=="ok" then
      fun()
     else
      SnackerBar.build()
      :msg(getLS("L_Server_error"))
      :actionText(getLS("L_OK"))
      :action(function()
      end)
      :show()
    end
    localdialog.hide()
  end)
end


import "android.view.animation.AccelerateDecelerateInterpolator"
import "android.view.animation.BounceInterpolator"
import "android.animation.ObjectAnimator"
import "android.view.animation.AnimationUtils"
import "android.transition.ArcMotion"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.drawable.GradientDrawable"
import "android.graphics.Color"
import "android.graphics.drawable.ColorDrawable"
import "android.graphics.Typeface"

function randoms()
  return _G["andlua"..math.random(10000000,99999999)]
end

function Gesture(dialog,id,yy)

  velocityTracker=random()

  A1=random()

  downY=random()

  moveY=random()

  Y=random()

  vsd=random()

  upY=random()

  _G[velocityTracker] = VelocityTracker.obtain();

  _G[id].onTouch=function(v,e)

    _G[A1]=e.getAction()&255

    if _G[A1]==MotionEvent.ACTION_DOWN then

      _G[velocityTracker].addMovement(e)

      _G[downY]=e.getY()

     elseif _G[A1]==MotionEvent.ACTION_MOVE then

      _G[velocityTracker].addMovement(e)

      _G[velocityTracker].computeCurrentVelocity(1000);

      _G[moveY]=e.getY()

      _G[Y]=_G[moveY] - _G[downY]

      if _G[Y]>0 then

        v.setTranslationY(_G[Y]/2)--跟手度

      end

      _G[vsd] = _G[velocityTracker].getYVelocity()

     elseif _G[A1]==MotionEvent.ACTION_UP then

      _G[upY]=e.getY()

      _G[upY]=_G[upY]-_G[downY]

      if _G[upY]>0 then

        if _G[upY]>yy || _G[vsd]>5000 then

          ObjectAnimator.ofFloat(_G[id],"translationY",{_G[upY]/2,activity.getWidth()}).setDuration(300).start()
          _G[dialog].dismiss()

          _G[velocityTracker].recycle()
         else

          ObjectAnimator.ofFloat(_G[id],"translationY",{_G[upY]/2,0}).setDuration(300).start()

        end

      end

    end

    return true
  end

end

function radius(view,a)
  drawable = GradientDrawable()
  drawable.setShape(GradientDrawable.RECTANGLE)
  drawable.setColor(tonumber(qys("BackgroundColor")))
  drawable.setCornerRadii({a,a,a,a,a,a,a,a});
  _G[view].setBackgroundDrawable(drawable)
end

function DialogShow(DownLayout,A,IDD,IDD1,IDD2,op)

  IDD = AlertDialog.Builder(this)

  _G[IDD1]=IDD.show()

  _G[IDD1].getWindow().setContentView(loadlayout(DownLayout));

  _G[IDD1].getWindow().setBackgroundDrawable(ColorDrawable(0x00000000));

  IDD2 = _G[IDD1].getWindow();

  IDD2.setGravity(Gravity.BOTTOM);

  _G[IDD1].setCanceledOnTouchOutside(true)

  _G[IDD1].getWindow().getAttributes().width=(activity.Width);

  _G[IDD1].getWindow().clearFlags(WindowManager.LayoutParams.FLAG_ALT_FOCUSABLE_IM);

  if op==true then
    _G[IDD1].getWindow().setDimAmount(0)
  end

  _G[IDD1].setOnKeyListener{
    onKey=function(dialog,keyCode,event)
      if keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount()==0 then
        CloseDialog(_G[A],_G[IDD1],300)
        return true
      end
    end
  }

  Gesture(IDD1,A,100)

  radius(A,25)

  ObjectAnimator.ofFloat(_G[A],"translationY",{activity.getWidth(),0}).setDuration(380).start()

end

function startLayoutAnim(view,time,anim)
  if not anim then
    anim=android.R.anim.slide_in_left
  end
  animation = AnimationUtils.loadAnimation(activity,anim)
  lac = LayoutAnimationController(animation);
  lac.setOrder(LayoutAnimationController.ORDER_NORMAL);
  lac.setDelay(time)
  view.setLayoutAnimation(lac)
end

function CloseDialog(A,B,C)
  ObjectAnimator.ofFloat(A,"translationY",{0,activity.getWidth()}).setDuration(C).start()
  B.dismiss()
  return true
end

function random()
  return tostring("andlua"..math.random(10000000,99999999))
end