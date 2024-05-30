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
import "android.net.Uri"
import "android.content.Intent"
import "android.content.*"
import "android.view.inputmethod.InputMethodManager"
import "console"
import "android.view.*"
import "android.graphics.Typeface"
import "java.io.File"
import "android.view.animation.*"
import "android.view.animation.Animation"
import "android.graphics.*"
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

packageManager = activity.getPackageManager()
packInfo = packageManager.getPackageInfo(activity.getPackageName(), 0)
version = packInfo.versionName

if getLang() then
  update_text = io.open(tostring(activity.getLuaDir() .. "/res/Updatelog_Chinese")):read("*a")
else
  update_text = io.open(tostring(activity.getLuaDir() .. "/res/Updatelog_English")):read("*a")
end

main10 = {
  LinearLayout,
  layout_width = "fill",
  layout_height = "fill",
  orientation = "vertical",
  backgroundColor = AndLuaB,
  {
    ScrollView,
    layout_marginTop = "5dp",
    {
      RelativeLayout,
      layout_height = "-1",
      layout_width = "-1",
      {
        CardView,
        id = "tt",
        layout_marginLeft = "8dp",
        layout_marginRight = "8dp",
        layout_marginTop = "3dp",
        layout_marginBottom = "8dp",
        layout_width = "-1",
        layout_height = "145dp",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        elevation = "0dp",
        {
          RelativeLayout,
          layout_width = "-1",
          layout_height = "-1",
          layout_marginTop = "20dp",
          {
            TextView,
            id = "jfzx",
            layout_width = "0dp",
            layout_height = "0dp",
            layout_centerInParent = "true",
          },
          {
            ImageView,
            layout_above = "jfzx",
            src = "icon.png",
            layout_centerHorizontal = "true",
            layout_width = "50dp",
            layout_height = "50dp",
          },
          {
            TextView,
            id = "mm",
            textColor = tostring(bjzt()),
            textSize = "18sp",
            layout_centerHorizontal = "true",
            text = "AndLua+",
            layout_marginTop = "8dp",
            layout_below = "jfzx",
          },
        },
      },
      {
        CardView,
        layout_margin = "8dp",
        id = "t1t",
        layout_below = "tt",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        elevation = "0dp",
        layout_marginTop = "-1dp",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            TextView,
            text = "AndLua+",
            textSize = "16sp",
            layout_marginLeft = "12dp",
            textColor = tostring(bjzt()),
            layout_marginTop = "10dp",
            id = "rjg",
          },
          {
            TextView,
            layout_marginBottom = "8dp",
            text = getLS("about_text"),
            layout_below = "rjg",
            textColor = TitleColor1,
            layout_marginRight = "12dp",
            layout_marginLeft = "12dp",
          },
        },
      },
      {
        CardView,
        layout_below = "t1t",
        layout_margin = "8dp",
        backgroundColor = AndLuaB1,
        id = "tt26",
        radius = AndLuaR,
        layout_width = "-1",
        layout_marginTop = "-1dp",
        elevation = "0dp",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            TextView,
            id = "rjxg",
            textColor = tostring(bjzt()),
            textSize = "16sp",
            layout_marginLeft = "12dp",
            layout_marginTop = "10dp",
            text = getLS("software"),
          },
          {
            RelativeLayout,
            id = "aa1",
            layout_below = "rjxg",
            layout_width = "-1",
            layout_height = "50dp",
            layout_marginTop = "5dp",
            {
              TextView,
              id = "kfz",
              textColor = TitleColor4,
              textSize = "15sp",
              layout_marginLeft = "12dp",
              layout_marginTop = "5dp",
              text = getLS("developer"),
            },
            {
              TextView,
              layout_below = "kfz",
              textSize = "14sp",
              layout_marginLeft = "12sp",
              text = "Alone",
              textColor = TitleColor1,
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h1",
            },
          },
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "50dp",
            id = "aa2",
            layout_below = "aa1",
            {
              TextView,
              id = "hhh",
              textColor = TitleColor4,
              textSize = "15sp",
              layout_marginLeft = "12sp",
              layout_marginTop = "5dp",
              text = getLS("version"),
            },
            {
              TextView,
              layout_below = "hhh",
              textSize = "14sp",
              layout_marginLeft = "12sp",
              text = version,
              textColor = TitleColor1,
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h2",
            },
          },
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "50dp",
            id = "aa27",
            layout_below = "aa2",
            {
              TextView,
              id = "hhh27",
              textColor = TitleColor4,
              textSize = "15sp",
              layout_marginLeft = "12sp",
              layout_marginTop = "5dp",
              text = getLS("versionn"),
            },
            {
              TextView,
              layout_below = "hhh27",
              textSize = "14sp",
              layout_marginLeft = "12sp",
              id = "h28",
              textColor = TitleColor1,
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h27",
            },
          },
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "50dp",
            layout_below = "aa27",
            id = "aaa3",
            {
              TextView,
              id = "hhh1",
              textColor = TitleColor4,
              textSize = "15sp",
              layout_marginLeft = "12sp",
              layout_marginTop = "5dp",
              text = getLS("communication"),
            },
            {
              TextView,
              layout_below = "hhh1",
              textSize = "14sp",
              layout_marginLeft = "12sp",
              text = "574867511",
              textColor = TitleColor1,
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h3",
            },
          },
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "50dp",
            layout_below = "aaa3",
            id = "aaa30",
            layout_marginBottom = "5dp",
            {
              TextView,
              id = "hhh3",
              textColor = TitleColor4,
              textSize = "15sp",
              layout_marginLeft = "12sp",
              layout_marginTop = "5dp",
              text = getLS("official"),
            },
            {
              TextView,
              layout_below = "hhh3",
              textSize = "14sp",
              layout_marginLeft = "12sp",
              text = "https://ly250.cn/andlua/",
              textColor = TitleColor1,
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h5",
            },
          },
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "50dp",
            id = "luadoce",
            layout_below = "aaa30",
            layout_marginBottom = "5dp",
            {
              TextView,
              id = "hhh30",
              textColor = TitleColor4,
              textSize = "15sp",
              layout_marginLeft = "12sp",
              layout_marginTop = "5dp",
              text = getLS("L_Lua53_reference_manual"),
            },
            {
              TextView,
              layout_below = "hhh30",
              textSize = "14sp",
              layout_marginLeft = "12sp",
              text = "manual.html",
              textColor = TitleColor1,
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              id = "h50",
            },
          },
          {
            RelativeLayout,
            layout_width = "-1",
            layout_height = "50dp",
            layout_below = "luadoce",
            layout_marginBottom = "5dp",
            {
              TextView,
              id = "donation",
              textColor = TitleColor4,
              textSize = "15sp",
              layout_marginLeft = "12sp",
              layout_marginTop = "5dp",
              text = getLS("L_Donation"),
            },
            {
              TextView,
              layout_below = "donation",
              textSize = "14sp",
              layout_marginLeft = "12sp",
              text = getLS("L_Donation_Doce"),
              textColor = TitleColor1,
            },
            {
              Button,
              layout_width = "-1",
              style = "?android:attr/buttonBarButtonStyle",
              layout_height = "-1",
              layout_margin = "-20dp",
              onClick = function()
                layout = {
                  LinearLayout,
                  orientation = "vertical",
                  {
                    ImageView,
                    scaleType = "fitXY",
                    layout_width = "match_parent",
                    src = "res/donation.png",
                  },
                };

                AlertDialog.Builder(this)
                    .setTitle(getLS("L_Giving_the_author"))
                    .setMessage(getLS("L_Donation_0"))
                    .setPositiveButton(getLS("L_Pay_treasure"), {
                      onClick = function(v)
                        import "android.content.Intent"
                        import "android.net.Uri"
                        viewIntent = Intent("android.intent.action.VIEW",
                          Uri.parse("https://qr.alipay.com/fkx00937fkhctswypmwirb2?t=1582042047438"))
                        activity.startActivity(viewIntent)
                      end
                    })
                    .setNeutralButton(getLS("L_The_next_time_a_certain"), nil)
                    .setNegativeButton(getLS("L_Donation_1"), {
                      onClick = function(v)
                        AlertDialog.Builder(activity)
                            .setView(loadlayout(layout))
                            .show()
                      end
                    })
                    .show()
                return true
              end,
            },
          },
        },
      },
      {
        CardView,
        layout_margin = "8dp",
        layout_below = "tt26",
        radius = AndLuaR,
        backgroundColor = AndLuaB1,
        id = "t2t",
        elevation = "0dp",
        layout_marginTop = "-1dp",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            TextView,
            text = getLS("update"),
            textSize = "16sp",
            layout_marginLeft = "12dp",
            textColor = tostring(bjzt()),
            layout_marginTop = "10dp",
            id = "rjxg1",
          },
          {
            TextView,
            layout_marginBottom = "8dp",
            layout_marginTop = "5dp",
            text = update_text,
            layout_below = "rjxg1",
            textColor = TitleColor1,
            layout_marginRight = "12dp",
            layout_marginLeft = "12dp",
          },
        },
      },
      {
        CardView,
        layout_margin = "8dp",
        layout_below = "t2t",
        elevation = "0dp",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        id = "t3t",
        layout_marginTop = "-1dp",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            TextView,
            text = "软件使用许可协议",
            textSize = "16sp",
            layout_marginLeft = "12dp",
            textColor = tostring(bjzt()),
            layout_marginTop = "10dp",
            id = "rjxg4",
          },
          {
            TextView,
            layout_marginBottom = "8dp",
            text = [[
本软件许可使用协议（以下称"本协议"）由您与AndLua+官方（以下称“我们”）共同签署。

在使用“ AndLua+ ”软件（以下称许可软件）之前，请您仔细阅读本协议，特别是免除或者限制责任的条款、法律适用和争议解决条款。免除或者限制责任的条款将以粗体标识，您需要重点阅读。如您对协议有任何疑问，可向客服咨询。如果您同意接受本协议条款和条件的约束，您可下载安装使用许可软件。

由于互联网高速发展，您与我们签署的本协议列明的条款并不能完整罗列并覆盖您与我们所有权利与义务，现有的约定也不能保证完全符合未来发展的需求。因此，AndLua+开发软件平台《法律声明及隐私权政策》、AndLua+开发软件平台规则均为本协议的补充协议，与本协议不可分割且具有同等法律效力。如您使用许可软件，视为您同意上述补充协议。如您注册或登录AndLua+开发软件账户，针对您在使用AndLua+开发软件平台服务过程中与我们的权利义务，您与我们可适用《AndLua+开发软件平台服务协议》。

我们如修改本协议或其补充协议，协议条款修改后，请您仔细阅读并接受修改后的协议后再继续使用许可软件。



一、 定义

1.  许可软件：是指由我们开发的，供您从下载平台下载，并仅限在相应系统手持移动终端中安装、使用的软件系统。

2.  AndLua+开发软件服务：由陵阳开发者为您提供的服务。您可以通过许可软件在手持移动终端使用AndLua+开发软件服务。



二、 授权范围

1.  由于软件适配平台及终端限制，您理解您仅可在获授权的系统平台及终端使用许可软件，如您将许可软件安装在其他终端设备上（包括台式电脑、手提电脑、或授权终端外的其他手持移动终端、电视机及机顶盒等），可能会对您硬件或软件功能造成损害。

2.  您应该理解许可软件仅可用于非商业目的，您不可为商业运营目的安装、使用、运行许可软件。

3.  我们会对许可软件及其相关功能不时进行变更、升级、修改或转移，并会在许可软件系统中开发新的功能或其它服务。上述新的功能、软件服务如无独立协议的，您仍可取得相应功能或服务的授权，并可适用本协议。



三、 使用规范

1.  您应该规范使用许可软件，以下方式是违反使用规范的：

1)  从事违反法律法规政策、破坏公序良俗、损害公共利益的行为。

2)  对许可软件及其中的相关信息擅自出租、出借、复制、修改、链接、转载、汇编、发表、出版、建立镜像站点，借助许可软件发展与之有关的衍生产品、插件、外挂等。

3)  通过非由我们及其关联工作室或者个人开发、授权或认可的第三方兼容软件、系统登录或使用许可软件，或针对许可软件使用非我们及其关联工作室或者个人开发、授权或认证的插件和外挂。

4)  删除许可软件及其他副本上关于版权的信息、内容。修改、删除或避开应用产品中我们为保护知识产权而设置的任何技术措施。

5)  未经我们的书面同意，擅自将许可软件出租、出借或再许可给第三方使用，或在获得许可软件的升级版本的许可使用后，同时使用多个版本的许可使用版本，或分开转让。

6)  复制、反汇编、修改许可软件或其任何部分或制造其衍生作品；对许可软件或者许可软件运行过程中释放在终端中的任何数据及许可软件运行过程中终端与服务器端的交互数据进行复制、修改、挂接运行或创作任何衍生作品，包括使用插件、外挂或非经授权的第三方工具/服务接入许可软件和相关系统等形式。

7)  进行任何危害信息网络安全的行为，包括使用许可软件时以任何方式损坏或破坏许可软件或使其不能运行或超负荷或干扰第三方对许可软件的使用；未经允许进入他人计算机系统并删除、修改、增加存储信息；故意传播恶意程序或病毒以及其他破坏、干扰正常网络信息服务的行为。

8)  利用许可软件发表、传送、传播、储存侵害他人知识产权、商业秘密权等合法权利的内容，或从事欺诈、盗用他人账户、资金等违法犯罪活动。

9)  通过修改或伪造许可软件运行中的指令、数据、数据包，增加、删减、变动许可软件的功能或运行效果，及/或将具有上述用途的软件通过信息网络向公众传播或者运营。

10) 其他以任何不合法的方式、为任何不合法的目的、或以任何与本协议不一致的方式使用许可软件。

2.  您理解并同意

1)  我们会对您是否涉嫌违反上述使用规范做出认定，并根据认定结果中止、终止对您的使用许可或采取其他依约可采取的限制措施。

2)  对于您使用许可软件时发布的涉嫌违法或涉嫌侵犯他人合法权利或违反本协议的信息，我们会直接予以删除。

3)  对于您违反上述使用规范的行为对任意第三方造成损害的，您需要以自己的名义独立承担法律责任，并应确保我们免于因此产生损失或增加费用。

4)  如您违反有关法律或者本协议之规定，使我们遭受任何损失，或受到任何第三方的索赔，或受到任何行政管理部门的处罚，您应当赔偿我们因此造成的损失及（或）发生的费用，包括合理的律师费用、调查取证费用。



四、 第三方软件或服务

1.  许可软件可能使用或包含了由第三方提供的软件或服务（以下称该等服务），该等服务是为了向您提供便利而设置，是取得该第三方的合法授权的。

2.  由于第三方为其软件或服务的提供者，您使用该等服务时，应另行与该第三方达成服务协议，支付相应费用并承担可能的风险。您应理解我们并无权在本协议中授予您使用该等服务的任何权利，也无权对该等服务提供任何形式的保证。我们无法对该等服务提供客户支持，如果您需要获取支持，您可直接与该第三方联系。因您使用该等服务引发的任何纠纷，您可直接与该第三方协商解决。

3.  您理解许可软件仅在当前使用或包含该等服务，我们无法保证许可软件将会永久地使用或包含该等服务，也无法保证将来不会使用或包含该第三方的同类型或不同类型的软件或服务或其他第三方的软件或服务，一旦我们在许可软件中使用或包含前述软件或服务，相应的软件或服务同样适用本条约定。

4.  您理解第三方需要与我们进行您的信息交互以便更好地为您提供服务，您同意在使用许可软件时如使用该等服务的，您授权我们依据《法律声明及隐私权政策》将您使用许可软件的信息传递给该第三方，或从该第三方获取您注册或使用该等服务时提供或产生的信息。如果您不希望第三方获取您的信息的，您可停止使用该等服务.

5.  您同意，如果该第三方确认您违反了您与其之间关于使用该等服务的协议约定停止对您提供该等服务并要求我们处理的，由于停止该等服务可能会影响您继续使用许可软件，我们可能会中止、终止对你的使用许可或采取其他我们可对您采取的限制措施。



五、 隐私政策与数据

保护您的个人信息对我们很重要。我们制定了《法律声明及隐私权政策》对知识产权归属及保护、您的信息收集、使用、共享、存储、保护等方面关系您切身利益的内容进行了重要披露。我们建议您完整地阅读《法律声明及隐私权政策》（点击查看 ），以帮助您更好的保护您的个人信息。



六、 特别授权

您对您的个人信息依法拥有权利，并且可以通过查阅《法律声明及隐私权政策》了解我们对您的个人信息的保护及处理方式。对您提供的除个人信息外的信息，为了向您提供您使用的各项服务，并维护、改进这些服务，及优化我们的服务质量等用途，对于您提交的文字、图片和视频等受知识产权保护的内容，您同意授予我们排他的、可转让、可分发次级许可、无使用费的全球性许可，用于我们及我们关联公司使用、复制、修订、改写、发布、翻译、分发、执行和展示您提交的资料数据或制作派生作品。



七、 无担保和责任限制

1.  除法律法规有明确规定外，我们将尽最大努力确保许可软件及其所涉及的技术及信息安全、有效、准确、可靠，但受限于现有技术，您理解我们不能对此进行担保。

2.  您理解，对于不可抗力及第三方原因导致的您的直接或间接损失，我们无法承担责任。

3.  由于您因下述任一情况所引起或与此有关的人身伤害或附带的、间接的损害赔偿，包括但不限于利润损失、资料损失、业务中断的损害赔偿或其它商业损害赔偿或损失，需由您自行承担：

1)  使用或未能使用许可软件；

2)  第三方未经批准的使用许可软件或更改您的数据；

3)  使用许可软件进行的行为产生的费用及损失；

4)  您对许可软件的误解；

5)  非因我们的原因而引起的与许可软件有关的其它损失。

4.  非经我们或我们授权开发并正式发布的其它任何由许可软件衍生的软件均属非法，下载、安装、使用此类软件，可能导致不可预知的风险，由此产生的法律责任与纠纷与我们无关，我们有权中止、终止使用许可和/或其他一切服务。

5.  您与其他使用许可软件的用户之间通过许可软件进行时，因您受误导或欺骗而导致或可能导致的任何心理、生理上的伤害以及经济上的损失，均应由过错方依法承担所有责任。



八、 知识产权

1.  我们拥有许可软件的著作权、商业秘密以及其他相关的知识产权，包括与许可软件有关的各种文档资料。

2.  许可软件的相关标识属于我们及我们的关联工作室或者个人的知识产权，并受到相关法律法规的保护。未经我们明确授权，您不得复制、模仿、使用或发布上述标识，也不得修改或删除应用产品中体现我们及其关联工作室的任何标识或身份信息。

3.  未经我们及我们的关联工作室或者个人事先书面同意，您不得为任何营利性或非营利性的目的自行实施、利用、转让或许可任何第三方实施、利用、转让上述知识产权。



九、 协议终止和违约责任

1.  您应理解按授权范围使用许可软件、尊重软件及软件包含内容的知识产权、按规范使用软件、按本协议约定履行义务是您获取我们授权使用软件的前提，如您严重违反本协议，我们将终止使用许可。

2.  您对软件的使用有赖于我们关联工作室为您提供的配套服务，您违反与我们或我们关联工作室的条款、协议、规则、通告等相关规定，而被上述任一网站终止提供服务的，可能导致您无法正常使用许可软件，我们有权终止使用许可。

3． 您理解出于维护平台秩序及保护消费者权益的目的，如果您向我们及（或）我们的关联工作室作出任何形式的承诺，且相关公司已确认您违反了该承诺并通知我们依据您与其相关约定进行处理的，则我们可按您的承诺或协议约定的方式对您的使用许可及其他我们可控制的权益采取限制措施，包括中止或终止对您的使用许可。

4.  一旦您违反本协议或与我们签订的其他协议的约定，我们可通知我们关联工作室或者个人，要求其对您的权益采取限制措施，包括要求关联公司中止、终止对您提供部分或全部服务，且在其经营或实际控制的网站依法公示您的违约情况。

5.  许可软件由您自下载平台下载取得，您需要遵守下载平台、系统平台、终端厂商对您使用许可软件方式与限制的约定，如果上述第三方确认您违反该约定需要我们处理的，我们可能会因第三方要求终止对您的使用许可。

6.  在本使用许可终止时，您应停止对许可软件的使用行为, 并销毁许可软件的全部副本。

7.  如您违反本协议规定的条款，给我们或其他用户造成损失，您必须承担全部的赔偿责任。如我们承担了上述责任，则您同意赔偿我们的相关支出和损失，包括合理的律师费用。



十、 管辖法律和可分割性

1.  本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，如无相关法律规定的，则应参照通用国际商业惯例和（或）行业惯例。

2.  本协议由您与我们于我们服务器所在地签署。因本协议产生或与本协议有关的争议，您可与我们以友好协商的方式予以解决或提交有管辖权的人民法院予以裁决。

3.  本协议任何条款被有管辖权的人民法院裁定为无效，不应影响其他条款或其任何部分的效力，您与我们仍应善意履行。



十一、   其他

1.  我们可能根据业务调整而变更向您提供软件服务的主体，变更后的主体与您共同履行本协议并向您提供服务，以上变更不会影响您本协议项下的权益。发生争议时，您可根据您具体使用的服务及对您权益产生影响的具体行为对象确定与您履约的主体及争议相对方。

2.  本协议的所有标题仅仅是为了醒目及阅读方便，本身并没有实际涵义，不能作为解释本协议涵义的依据。]],
            layout_below = "rjxg4",
            textColor = TitleColor1,
            layout_marginRight = "12dp",
            layout_marginLeft = "12dp",
          },
        },
      },
      {
        CardView,
        layout_margin = "8dp",
        layout_below = "t3t",
        elevation = "0dp",
        backgroundColor = AndLuaB1,
        radius = AndLuaR,
        layout_marginTop = "-1dp",
        layout_width = "-1",
        {
          RelativeLayout,
          layout_width = "-1",
          {
            TextView,
            text = "隐私政策",
            textSize = "16sp",
            layout_marginLeft = "12dp",
            textColor = tostring(bjzt()),
            layout_marginTop = "10dp",
            id = "rjxg5",
          },
          {
            TextView,
            layout_marginBottom = "8dp",
            text = [[
我们尊重和保护用户的隐私。本隐私政策将告诉您我们如何收集和使用有关您的信息，以及我们如何保护这些信息的安全。

您成为用户前务必仔细阅读本隐私条款并同意所有隐私条款。本隐私政策条款在您注册成为AndLua+用户后立即生效，并对您及AndLua+产生约束力。

一、我们可能收集的用户信息

我们提供服务时，可能会收集、储存和使用下列与您有关的信息。如果您不提供相关信息，可能无法注册成为我们的用户或无法享受我们提供的某些服务，或者无法达到相关服务拟达到的效果。

1、您提供的信息

•您在注册账户或使用我们的服务时，向我们提供的相关个人信息，例如电话号码、性别、出生日期等。

•您通过我们的服务向其他方提供的共享信息，以及您使用我们的服务时所储存的信息。

2、其他方分享的您的信息

•其他方使用我们的服务时所提供有关您的共享信息。

3、我们获取的您的信息

您使用服务时我们可能收集如下信息：

•日志信息，指您使用我们的服务时，系统可能通过cookies、web beacon或其他方式自动采集的技术信息，包括：设备或软件信息，例如您的移动设备、网页浏览器或用于接入我们服务的其他程序所提供的配置信息、您的IP地址和移动设备所用的版本和设备识别码；以及您在使用我们服务时要求提供的其他信息和内容详情。

•位置信息，指您开启设备定位功能并使用我们基于位置提供的相关服务时，收集的有关您位置的信息。您可以通过关闭定位功能，停止对您的地理位置信息的收集。

•交易信息，指我们对您在AndLua+平台上形成的交易数据信息进行分析并形成用户信用数据库。

二、我们可能如何使用用户信息

•在我们提供服务时，用于身份验证、客户服务、安全防范、诈骗监测、存档和备份用途，确保我们向您提供的产品和服务的安全性；

•帮助我们设计新服务，改善我们现有服务；

•使我们更加了解您如何接入和使用我们的服务，从而针对性地回应您的个性化需求；

•软件认证或管理软件升级；

•让您参与有关我们产品和服务的调查。

为了让您有更好的体验、改善我们的服务或您同意的其他用途，在符合相关法律法规的前提下，我们可能将通过某一项服务所收集的信息，以汇集信息或者个性化的方式，用于我们的其他服务。例如，在您使用我们的一项服务时所收集的信息，可能在另一服务中用于向您提供特定内容，或向您展示与您相关的、非普遍推送的信息。如果我们在相关服务中提供了相应选项，您也可以授权我们将该服务所提供和储存的信息用于我们的其他服务。

三、我们可能与第三方共享的用户信息

在下列情况下，我们可能会共享您的个人信息：

•其他注册用户就您在AndLua+活动中的违约行为发起诉讼程序时，我们将应该等注册用户的请求向该等注册用户披露您的用户信息；

•应行政、司法部门的要求向该等机构提供您的用户信息；

•您通过AndLua+平台向第三方合作机构申请相关产品服务时，我们将根据您的授权向第三方提供您的用户信息；

•我们以及我们的关联公司，可能将您的个人信息与我们的关联公司、合作伙伴及第三方服务供应商、承包商及代理（例如代表我们发出短信或推送通知的通讯服务提供商、为我们提供位置数据的地图服务供应商）分享（他们可能并非位于您所在的法域），为了我们向您提供或改善我们的服务；

•随着我们业务的持续发展，我们以及我们的关联公司有可能进行合并、收购、资产转让或类似的交易，您的个人信息有可能作为此类交易的一部分而被转移；

•依据法律要求必须向第三方提供您的用户信息的情形；

四、我们如何保护用户信息

我们使用各种安全技术和程序，以防信息的丢失、不当使用、未经授权阅览或披露。但请您理解，由于技术的限制以及可能存在的各种恶意手段，在互联网行业，即便竭尽所能加强安全措施，也不可能始终保证信息百分之百的安全。您需要了解，您接入我们的服务所用的系统和通讯网络，有可能因我们可控范围外的因素而出现问题。

五、隐私政策的修改

由于法律法规的变更，以及为了与互联网的新发展和可能的发展趋势保持同步，我们可能会不定时修改本政策。因此，我们保留自行决定实施此类修改的权利，如该等修订造成您在本《隐私政策》下权利的实质减少，我们将在修订生效前通过在主页上显著位置提示或向您推送通知或以其他方式通知您。在该种情况下，若您继续使用我们的服务，即表示同意受经修订的本《隐私政策》的约束。]],
            layout_below = "rjxg5",
            textColor = TitleColor1,
            layout_marginRight = "12dp",
            layout_marginLeft = "12dp",
          },
        },
      },
    },
  },
};

activity.setContentView(loadlayout(main10))
ztl()
btl = {
  LinearLayout,
  layout_width = "fill",
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
      text = getLS("about"),
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
bw(Sideslip, 0x5FFFFFFF)
Sideslip.onClick = function()
  activity.finish()
end
h1.onClick = function()
  url = "mqqwpa://im/chat?chat_type=wpa&uin=2826587025"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end
h3.onClick = function()
  url = "mqqapi://card/show_pslcard?src_type=internal&version=1&uin=574867511&card_type=group&source=qrcode"
  activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)))
end
h5.onClick = function()
  activity.newActivity("main33")
end
h50.onClick = function()
  activity.newActivity("main65")
end
wj = activity.getLuaDir() .. "/res/update"
hj = io.open(wj):read("*a")
h28.Text = hj

h2.onClick = function()
  jcgx("true")
end
