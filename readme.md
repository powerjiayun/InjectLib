<p align="center" style="font-size: 21px">QiuChenly InjectShell</p>
<p align="center">Creative & Design</p>
<p align="center">2023@MacBook Pro</p>


# 概览

<!-- TOC -->

- [概览](#概览)
- [关注我](#关注我)
- [先TM点Star](#先tm点star)
- [免责声明](#免责声明)
    - [让你们看看原神的力量 去吧 芭芭拉](#让你们看看原神的力量-去吧-芭芭拉)
- [使用](#使用)
- [问题](#问题)
- [环境](#环境)
- [兼容](#兼容)
- [激活注意](#激活注意)
  - [Sublime Text Dev](#sublime-text-dev)
  - [Stash](#stash)
  - [ELPass](#elpass)
  - [Surge](#surge)
  - [拦截激活部分App](#拦截激活部分app)
- [提示](#提示)
- [警告](#警告)
- [目的](#目的)
- [交流](#交流)
- [~~停更~~](#停更)

<!-- TOC -->

# 关注我

关注我的Twitter(X) 平台ID OK？关注落叶喵，关注QiuChenly谢谢喵

[QiuChenly](https://twitter.com/QiuChenly)

# 先TM点Star
先TM点Star！别光几把点你那b fork按钮了 老子不更新你光fork项目有几把用？留着当互联网活化石？

# 免责声明

致来自中国大陆的各位学习研究爱好者:
   根据大陆中华人民共和国《计算机软件保护条例》第十七条规定：“为了学习和研究软件内含的设计思想和原理，通过安装、显示、传输或者存储软件等方式使用软件的，可以不经软件著作权人许可，不向其支付报酬。”您需知晓本仓库所有内容资源均来源于网络，仅供用户交流学习与研究使用，版权归属原版权方所有，版权争议与本仓库本作者无关，用户本人下载后不能用作商业或非法用途，需在24小时之内删除，否则后果均由用户承担责任。如果你不删,请发邮件到qiuchenly@outlook.com, 我做个登记, 然后让这些喜欢发律师函的事务所一对一指导你。

我是来自北美的独立IOS应用开发者, 是二次元南桐. 从早稻田毕业的那一天, 我的青春也永远留在了京都.

对了,下次发律师函的时候记得发往我住的地方: 华盛顿特区第35大道林肯大街15号-501, John Albet收.

### 让你们看看原神的力量 去吧 芭芭拉

[![启动](https://i2.hdslb.com/bfs/archive/966fe6fe2c1329919bb8972d69fb8c09d17047cc.jpg@100w_100h_1c.png)](https://ipfs.lanyundev.com/ipfs/bafybeigpm6ocaba2wlgi7zgio3lu7hzqxgrviiicuwc5xbddlo77leabcy/6e51fccaeb5343bda366d42e68c3c705.MP4)

# 使用

1. 下载整个仓库并解压，双击运行"原神_启动.command"并输入密码，按照提示操作。
   <br>
   小白不知道点哪里下载整个仓库？[点我下载](https://github.com/QiuChenlyOpenSource/InjectLib/archive/refs/heads/main.zip)
2. 要是你不差这几分钟时间，从头到尾先认真读一遍这个readme，可能你看完之后会解决你的部分疑惑。

# 问题

这里列举一下可能会遇到的问题。

1. 遇到"xxx想要访问你的机密信息"<br>
   ![img.png](img.png)<br>
   原因:<br>
   补丁对某些App会自动签名以保证能在SIP打开的情况下使用.但是保存在钥匙串里的信息只能被官方签名的app读取
   自己签名App后会造成丢失权限<br><br>
   解决方案:<br>
   去钥匙串删除这个App用到的几个“机密信息”,说实话就你那破b电脑上能有什么机密信息啊？都用云上贵州了你的那点b信息谁不知道啊？

2. 我不会用终端<br>
   解决方案:<br>
   没脑子？不会百度？动手破解软件不会可以理解，用别人写好的脚本一键破解也不会？21世纪怎么还会有这么废物的人啊？

3. 需要移到垃圾篓
   
   应该是App没有打开过就直接执行注入了。这可能会导致检查不通过，不过影响不是很大。建议App在注入前先运行一次。

   ![移到垃圾桶](image-3.png)

   这是正常的，因为SIP打开的情况下如果修改了App会导致校验不通过，你只需要手动从Finder中右击点开一次就好了:<br>
   ![打开](image-4.png)
   ![进一步打开](image-5.png)

   此时就能正常打开。如果还出现问题，请检查自己的注入操作有没有问题。

4. Operation not permitted<br>
   如下所示。<br>
   ![simple](image-7.png)<br>
   ```
   开始注入App: com.nssurge.surge-mac
   /System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/fileutils.rb:1387:in `initialize': Operation not permitted @ rb_sysopen - /Applications/Surge.app/Contents/Frameworks/Bugsnag.framework/Versions/A/Bugsnag_backup (Errno::EPERM)
   ```
   这是很多人会遇到的问题。<br>Operation not permitted就是终端app需要修改app，但是没权限 所以会崩溃。<br>
   原因：终端没有给操作权限<br>
   解决办法：<br>
   1. 打开设置<br>
   2. 隐私和安全性<br>
   3. 开发者工具 和 App管理<br>
   4. 两个地方都要打开终端开关，重启终端即可正常执行。<br>
   ![terminal](image-6.png)<br>
   ![还有这个](image-8.png)

# 环境

代码运行最低操作系统要求&此代码编译环境

- 最低运行 macOS High Sierra 10.13
- 编译SDK macOS 14.0
- 目标部署平台 macOS 10.13
- CMakeLists 环境变量
  - set(CMAKE_OSX_DEPLOYMENT_TARGET "10.13")
- 检查二进制文件的最低macOS版本兼容性
  - ```find . -name "*.*" | xargs otool -l | grep -E "(minos|sdk)"```

# 兼容

新增的SIP栏说明:<br>

- ❌: 只能关闭SIP使用<br>
- ✅: 可以在打开SIP的机器上使用<br>

| App                                            | 版本                                                                                                                                                                      | ARM64 | Intel | SIP | 特殊要求                                                                                                                                                                            |
|:-----------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----:|:-----:|-----|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| iShot                                          | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   | 交个朋友 不杀了 大家支持正版吧 又不贵                                                                                                                                                            | 
| Infuse Pro                                     | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   |                                                                                                                                                                                 | 
| MWEB Pro                                       | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   |                                                                                                                                                                                 | 
| 解优2                                            | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   |                                                                                                                                                                                 | 
| Omi录屏专家                                        | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ❌   | 需要从Mac AppStore 下载                                                                                                                                                              | 
| OmniPlayer                                     | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   | 需要从Mac AppStore 下载                                                                                                                                                              |
| Navicat Premium                                | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   | 需要从Mac AppStore 下载                                                                                                                                                              |
| Navicat 16 ForOracle                           | 通杀                                                                                                                                                                      |   ❌   |   ✅   | ✅   | 需要从Mac AppStore 下载 我下不到ARM64的版本                                                                                                                                                 |
| Sublime Text                                   | [通杀](https://download.sublimetext.com/sublime_text_build_4154_mac.zip)                                                                                                  |   ✅   |   ✅   | ✅   | 授权信息下面找。                                                                                                                                                                        |
| Elpass                                         | [通杀](https://elpass.app/macos/Elpass-1.5.6-490.zip)                                                                                                                     |   ✅   |   ✅   | ✅   | 无法使用云同步 签名后的app通病 无解 搭配Surge脚本可以做到5138年授权                                                                                                                                       |
| Surge 5                                        | [Surge-5.4.0-2400](https://dl.nssurge.com/mac/v5/Surge-5.4.0-2399-2f5d6d5312f554ca144ec6d2436cdd8f.zip)                                                                 |   ✅   |   ✅   | ✅   | 年度好戏我愿称之为 《窃听风云8:赛博卧底》                                                                                                                                                          | 
| CleanMyMac X                                   | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   | com.macpaw.CleanMyMac4.Menu 单独也要注入 Helper每个版本不一样还是需要单独处理 暂时不弄了 不要下大陆特供版 更新地址: https://s3-us-west-2.amazonaws.com/updateinfo.devmate.com/com.macpaw.CleanMyMac4/beta/updates.xml | 
| Microsoft Office Word/PowerPoint/Excel/Outlook | 通杀                                                                                                                                                                      |   ✅   |   ✅   | ✅   | 365订阅版 需要从Mac AppStore 下载                                                                                                                                                       |
| Stash                                          | [2.3.0](https://mac-release-static.stash.ws/Stash-build-221.zip)                                                                                                        |   ❌   |   ✅   | ❌   | 无法设置全局代理 不知道哪里有问题 总体体验较差 不如surge                                                                                                                                                |
| Paste                                          | 4.0.9                                                                                                                                                                   |   ✅   |   ✅   | ✅   |     通杀特征码变了 下次再说                                                                                                                                                                            | 
| App Cleaner & Uninstaller                      | 8.2.2                                                                                                                                                                   |   ✅   |   ✅   | ✅   | 因为签名会导致提示盗版，有空在再弄。                                                                                                                                                              | 
| Affinity Photo 2/Designer 2/Publisher 2 全家桶    | 2.1.1                                                                                                                                                                   |   ✅   |   ✅   | ✅   | 需要从Mac AppStore 下载                                                                                                                                                              |
| ProxyMan                                       | [通杀](https://download.proxyman.io/49100/Proxyman_4.10.0.dmg)                                                                                                            |   ✅   |   ✅   | ✅   | 更新地址: https://proxyman.io/osx/version.xml                                                                                                                                       |
| BuhoCleaner                                    | [通杀](https://www.drbuho.com/buho-public-files/buhocleaner/buhocleaner197150.dmg)                                                                                        |   ✅   |   ✅   | ✅   | 更新地址:https://www.drbuho.com/buho-public-files/buhocleaner/appcast.xml                                                                                                           |
| Macs Fan Control                                    | [通杀](https://crystalidea.com/downloads/macsfancontrol.zip)                                                                                                              |   ✅   |   ✅   | ✅   | |
| TablePlus                                    | [通杀](https://tableplus.com/release/osx/tableplus_latest)                                                                                                                |   ✅   |   ✅   | ✅   | 老子第一次喷App: 傻逼App 做的跟shit一样 我伪造的授权信息在内存数据结构被篡改成不知道哪来的ObjectC对象引起崩溃 浪费老子时间 真的垃圾App 作者能不能几把优化一下？？ 就这破App 老子弄到凌晨三点 真的狗都不用 而且连个汉化都没有 格局Down Down了 |
|Transmit 5| 5.9.2                                                                                                                                                                   |✅|✅|✅| 需要从App Store下载
|DevUtils| [1.17.0](https://devutils.com/archives/DevUtils-1.17.0.dmg)                                                                                                             |✅|✅|✅| 功能可用 但是激活状态我懒得改了 作者写的这个App代码质量之烂令人无语 不想多说什么了
|MP3Tag| [1.8.6 (86)](https://updates.mp3tag.app/Mp3tag-1.8.6.zip)                                                                                                               |❌|✅|✅| 序列号随便输入 全部激活
|Widgetter| [通杀](https://apps.apple.com/cn/app/widgetter-%E5%B0%8F%E5%B7%A5%E5%85%B7-%E6%A1%8C%E9%9D%A2%E5%A3%81%E7%BA%B8-%E4%B8%BB%E9%A2%98-%E5%B1%8F%E4%BF%9D/id1553223588?mt=12) |✅|✅|✅| MAS下载 激活全部功能
|Bartender 5| [5.0.36-通杀](https://macbartender.com/B2/updates/5-0-31/Bartender%205.zip)                                                                                               |✅|✅|✅| 更新地址 https://www.macbartender.com/B2/updates/AppcastB5.xml

| Adobe 全家桶               | 版本           | ARM64 | Intel | 特殊说明 全家桶全部支持打开SIP下使用                         |
|:------------------------|:-------------|:-----:|:-----:|:-----------------------------|
| Adobe PhotoShop         | 通杀           |   ❌   |   ✅   | PS:神经滤镜已经完美可用                |
| Adobe PhotoShop Beta    | 通杀           |   ❌   |   ✅   | 支持创意填充/神经滤镜 需要随便登录个账户        |
| Adobe Acrobat Pro           | 23.006.20320 |   ✅   |   ✅   |                              |
| Adobe Illustrator       | 27.9.0       |   ✅   |   ✅   | ARM64 测试通过 X86没有测试过 大家自行测试   |
| Adobe Lightroom      | 6.5         |   ❌    |   ✅   | 部分人有效 比如我 似乎是账户权限问题 |
| Adobe Lightroom Classic | 12.6         |   ❌   |   ✅   | 部分人有效 比如我 似乎是账户权限问题                 |
| Adobe InCopy 2023      | 18.5.0.57         |   ✅    |   ✅   | 我下载不到ARM64版本的包 |
| Adobe InDesign 2023      | 18.5.0.57         |   ✅    |   ✅   | 我下载不到ARM64版本的包 |
| Adobe Premiere Pro      | 23.6         |   ❌    |   ✅   | 我下载不到ARM64版本的包 |
| Adobe After Effects 2023      | 23.6         |   ❌    |   ✅   | 我下载不到ARM64版本的包 |
| Adobe Animate 2023      | 23.0.2.103         |   ❌    |   ✅   | 我下载不到ARM64版本的包 |
| Adobe Audition 2023      | 23.6.1.3         |   ❌    |   ✅   | 我下载不到ARM64版本的包 |
| Adobe Media Encoder 2023      | 23.6         |   ❌    |   ✅   | 我下载不到ARM64版本的包 |

# 激活注意

## Sublime Text Dev

```
----- BEGIN LICENSE -----
秋城落叶@52pojie.com
Unlimited User License
EA7E-8888
88888888888888888888888888888888
88888888888888888888888888888888
88888888888888888888888888888888
88888888888888888888888888888888
88888888888888888888888888888888
88888888888888888888888888888888
88888888888888888888888888888888
88888888888888888888888888888888
------ END LICENSE ------
```

## Stash

https://mac-release.stash.ws/appcast.xml

## ELPass

hey,bro,what's up?

ElPass: https://elpass.app/macos/appcast-beta.xml

## Surge

laoliu，good morning. not good also fine, follow u.

Surge盗版用户请支持正版。<br>
我对开发者致敬说个早上好也被某些无脑用户过度解读是嘲讽开发者是吧？那我直接说操你妈是不是你全家骨灰都被我扬了？<br>
Surge是非常好的一个产品，我发我的补丁 你支持你自己的正版，who care u?<br>
有的人不要两头带节奏 在正版群对开发者那边截图破解版嘲笑还打着为开发者着想的幌子拱火 另一边下破解版在别的电脑上用
这种人你的米线很低我就不评价了 但是你的🐎肯定必死。<br>

对开发者团队我无意冒犯，早上好。<br>

Surge 更新地址: https://www.nssurge.com/mac/v5/appcast-signed-beta.xml <br>

一切完美。感谢QQ 302***3398 用户无偿提供授权信息。<br>
目前错误已全部修正。<br>
之前安装过旧版本的用户进Surge后先卸载一遍Helper帮助程序才能正常安装帮助程序挂上代理。点击安装帮助程序没反应的不是破解的问题，能不能先去点一下卸载帮助程序呢？<br>
如果你因为某些软件缺陷第一反应质疑是破解的问题，那么我只能说“SB 你是对的 都是破解的问题 你说的太对了 完全不是你的问题
完全不是原始软件的问题”因为跟蠢货争论只会浪费我的生命。<br>

## 拦截激活部分App

Surge可以利用拦截修改http返回值的方式破解下面的app而无需修改原始App。下面是脚本破解步骤，如果你不需要用下面的App，看到这里就可以关闭网页了。

Surge开启MitM和脚本功能，然后: <br>

1. 在你的配置文件中加入例子中提供文件中的Script字段信息:
   [Surge脚本配置例子.conf](Surge%E6%BF%80%E6%B4%BB%E8%84%9A%E6%9C%AC%2FSurge%E8%84%9A%E6%9C%AC%E9%85%8D%E7%BD%AE%E4%BE%8B%E5%AD%90.conf)
   ![img.png](imgs/img.png)
   ![img_1.png](imgs/img_1.png)
   ![img_1.png](imgs/img_2.png)

2. [paddle_act.js](Surge%E6%BF%80%E6%B4%BB%E8%84%9A%E6%9C%AC%2Fpaddle_act.js)这个文件一定要复制到conf文件所在目录中。

3. 记得Https解密打开，并且信任证书，MitM域名加入*.paddleapi.com保存即可。<br>
   如果要实现五千年授权需要打开增强模式并加入新的域名: api.elpass.app<br>
   ![img.png](imgs/img3.png)

4. 在App中随意输入序列号和邮箱，点击激活后秒激活。

已测试支持以下App:

| App           | 版本     | 特殊说明                                           |
|:--------------|:-------|:-----------------------------------------------|
| AlDente Pro   | 1.22   |                                                |
| AirBuddy      | 2.7.1  |                                                |
| Downie 4      | 4.6.27 | `B7EE3D3C-B7EE3D3C-B7EE3D3C-B7EE3D3C-B7EE3D3C` |
| One Switch    | 1.31   |                                                |
| Rectangle Pro | 3.0.8  |                                                |
| Swish         | 1.10.2 |                                                |
| TG Pro        | 2.8.2  |                                                |
| Timemator     | 3.0.3  |                                                |

# 提示

1. 会自动扫描本地安装的App，你只需要在想注入的App后面输入y即可。
2. Adobe App如果不想让官方ACC乱拉屎，可以用这个仓库下载v6版本的离线安装包: https://github.com/Drovosek01/adobe-packager,
   然后配合AntiCC之类的组件运行Adobe产品。
3. 激活之后由于App还需要依赖我的注入代码，所以不要移动注入文件夹或者删除注入文件夹，有的人用完就把注入文件夹删了，第二天就到处说破解不稳定第二次就崩溃。
   这种人你动动你那个🐷脑子想想为什么第一次能用删了我的注入文件夹第二次打开就崩溃？
4. 脚本如果没有权限执行注入操作终端报错类似于下面这样:<br>
   ![示例](image-2.png)
   那是因为SIP的安全策略限制不允许运行不符合安全策略的代码执行，所以你需要先打开:<br>
   设置 - 隐私与安全性 - 开发者工具:<br>
   ![开发者工具](image.png)<br>
   并打开终端执行代码策略:<br>
   ![策略](image-1.png)<br>

   最后重新执行即可正常注入。这是MacOS的安全策略，麻烦你动动你那个b手点一下好吗？


# 警告

一定要关闭SIP，因为我使用的注入方式依赖于关闭SIP。
但是有例外，上方表格中App的SIP状态为"✅"则可以不用关闭SIP即可使用,并且注入下载文件夹不需要保留，注入后可以删除。
本库中几乎所有的App都建议你在打开SIP状态下使用，不建议用户关闭SIP，除非你很懂这块。

# 目的

本项目是Free的、开源的、基于互联网最原始的共享精神的、不接受任何打赏的、无所不包的、令人感叹的、无与伦比的、精妙绝伦的、化腐朽为神奇的、逆天的、养生的、抽象的、二次元的、OP的。

在2023年，所有人都逐渐觉得打赏、付费才是理所应当的，哪怕是某些人只做了一件从外网搬运到国内的工作，也应该得到鼓励。
我不能说这种行为是完全错误的，只能说有些人恬不知耻见利忘义。哪怕是打赏也应该基于双方意愿的基础上，而不是用“打赏后才能下载”这种理由强奸用户的使用习惯，把用户变成必须付费的蠢驴，并辅以几十元的超低价注册会员费用钝刀割肉式的强奸用户。

当然，这种用户也确实是个蠢货。有这种钱你买正版得了，别跟我说太贵，你出去跟朋友吃一顿好点的饭200起步，大部分好软件正版才不到100块钱。抽包烟软中煊赫门起步，面对19.9年费会员时却面露难色，好像杀了你的🐎一样。相信我，你也并不是真的需要这些软件，只是人云亦云盲目从众罢了。

我认为，共享精神不应该建立在物质上，我深刻的理解金钱对人的吸引和动力，但这种精神本身就超越了物质。

# 交流

别让欲望击穿你の意志

加加我的群组,挑战互联网米线下限。
https://t.me/+zndAx24TgadkY2E1

下方小作文阅前预警:

- 大家都知道楼主一向是有话直说 比较单纯
- 喷人解决不了问题 但是能解决一部分人潜在会提出的问题
- 但是请大家放心，楼主素质是很高的 爱恨分明。
- 玻璃心的人现在立刻关闭当前网页，继续阅读我怕你被我喷的到处散布谣言说我坏话败我路人缘。
- 有些人不专门写小作文喷一下真的就是为所欲为，本来不想搭理但是有的人真的该喷。

本群欢迎以下人群进入:

- 愿意学习交流安全共享知识技术的人 不区分大佬和新手 一律欢迎
- 不抄ChatGPT答案的人
  - 他妈的ChatGPT给的答案都是0x1000为例子 有的人猪脑子直接复制答案 完全看不到gpt说了是“例如” 还他妈把0xFFFC这种答案复制粘贴
      你这种人确实没脑子 别进了
  - 真想进就认真答题 错了也会放 我最鄙视的就是没脑子抄答案的人

本群禁止以下人群进入:

- 因为“7.11”停更事件被动引流而来的围观群众
- 进来只为发一句“慕名而来”的人
- 加群原因写一句“不知道”/“从xxx地方看到的”/“进来看18岁妹妹后续”这种傻逼

符合以上条件的人先掂量一下你的🐎有几个。<br>
有些傻逼进来就为发一句“慕名而来”或者发一张截图，配文“从xxx地方看到的”，极其影响老子心情。<br>
本来18岁妹妹g了老子心情就很不好，反复在老子眼前刷要不是老子素质高早他妈喷你了，你是个什么东西要你在这“慕名而来”？<br>
你给老子上眼药老子还不能喷你的？在我看不见的地方刷刷算了，别tm来老子群里刷。<br>

之前还看到有人说老子利用这件事给这个群引流的那些傻逼你听好：<br>

* 首先为接下来的话我给你先道个歉。<br>
* 我引你妈了个b流呢？老子跟18岁妹妹郎才女貌要你在这围观评价？你是个什么臭鱼烂虾？引流？老子谈恋爱跟你有几把关系？傻逼。<br>
*

祝福我的人我虚心感谢，嘲笑我的人先照镜子看看自己单身二十多年天天躲房间里看日本黄片到处求二次元h漫N刷天天做梦自己能碰到女神小姐姐主动倒贴实际上除了同学朋友也很少月薪三千最后没办法找个190kg坦克还要忍受小仙女作妖27、8岁除了会躲房间里打胶其他什么都不会一事无成的失败人生，你这种废物也好意思评价我？我要是你早他妈从长江大桥上跳下去remake别在这浪费父母资源当个真孝子。

* 你没有脑子不要觉得所有人都没脑子，群里全是(大部分，小部分确实不行)
  安全行业的兴趣爱好者或者安全行业的专家,我需要一窍不通的围观群众拉低我群含金量？<br>
* 我不需要没脑子的人加进群，ok？这种劣质流量等于垃圾，在我眼里这种人一点价值都没有，除了挨喷没有任何作用。
* 最后声明: 我热烈欢迎安全爱好者一起学习研究，但是没脑子的围观党禁止加群。这种人你非要加群可以，我没事就喷你。看是你的赛博🐎多还是我的键盘厉害。

# ~~停更~~

~~最近想追个19岁的小妹妹。<br>
项目基本上不会更新了，增加的新项目基本上是工作💻需要才做的。<br>
也不会去维护下面App的新版本了，等我追到手🧑‍🤝‍🧑再说罢！<br>~~

~~为了追💗妹妹👧，MD，跟米哈游原神铁道星穹崩坏王者荣耀蛋仔二次元拼了😡👊！<br>
这下不得不成为农P/原P/穹P了🙏🙏<br>~~

~~无知时诋毁原神🫤🙏<br>
成熟时理解原神😭🙏<br>
恋爱时成为原神😋🙏<br>~~

~~原神助我！喝唉！🖐大荒天陨！️<br>
任何邪恶！终将绳之以法👮！<br>~~

~~原神，启动！~~

失败了，大家别问了。 <br>
她不是不喜欢玩游戏，她只是不想和不喜欢的人玩游戏。<br/>

这段Repo不会删，警钟长鸣。但是你要问我如果再给我一次机会还会不会选18岁妹妹，我的回答是“yes i do.”
