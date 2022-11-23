系统要求：
- win-x64：运行于 64 位 Windows 操作系统（Win7 SP1+、Win8.1、Win10 1607+、WinServer 2012 R2+、NanoServer 1809+）
- linux-x64：运行于 64 位 Linux 操作系统（RH7+，CentOS7+，Fedora33+，Debian10+、Ubuntu16.04+、SLES12 SP2+、openSUSE15+、Alpine3.12+）
- osx-x64：运行于 64 位 macOS 操作系统（10.14+）
- universal：通用版本，可以运行于上述操作系统的32位版本以及arm32/arm64版本中

各版本使用方法：
- win: 直接双击打开lkb-configurator-server.exe
- osx: 
  1. 在当前文件夹下打开终端，输入 chmod +x ./lkb-configurator-server 然后回车，为此文件添加可执行权限
  2. 输入 ./lkb-configurator-server 然后回车
  3. 会弹出“不受信任的开发者”的提示，请点击右上角问号，打开配置点击接受。
- linux: 
  1. 在当前文件夹下打开终端，输入 chmod +x ./lkb-configurator-server 然后回车，为此文件添加可执行权限
  2. 输入 sudo ./lkb-configurator-server 然后回车
- Universal: 安装 .net core 运行环境（https://dotnet.microsoft.com/download/dotnet-core/current/runtime，选择download hosting bundle），在命令行环境（终端）下输入 dotnet lkb-configurator-server.dll 然后回车

在能连接互联网的情况下，请通过 https://keyboard.lotlab.org 配置键盘；
在无法连接互联网的情况下，请通过 http://127.0.0.1:5000 配置键盘

如果访问 http://127.0.0.1:5000 可以正确找到键盘而使用 https://keyboard.lotlab.org 提示无法连接到本地服务器时，请检查本地防火墙，并关闭代理软件重试。

若有更多疑问，请查询 https://keyboard.lotlab.org/help 帮助页面。
