1. 刷入本固件,只支持**TPLink-TL-WR703n**,如果需要刷到**MERCURY-MW151RM3G**或者**FAST-FWR171-3G**请到网上寻找修改固件的工具,不支持其它任何路由器

1. 连接**OpenWRT**这个接入点

1. 访问 [10.0.3.1](http://10.0.3.1) 请自行修改web界面登录密码

1. 如果您使用PPPoE连网,请到**网络->接口->WAN**中配置,否则只要将路由器接入上一级路由自动获取即可

1. 进入**网络->接口->VPN** 点**修改** 基本设置中填入vpn服务器的地址(**只支持PPtP,不支持L2TP和OpenVPN**),用户名和密码,可以去[Tenacy]上找寻,如果希望自动连接,请去高级设置中选中开机自动运行,保存并应用,否则每次重启后需到该页面点连接

1. 进入**网络->无线->接口配置** 在基本设置中可以设置接入点名称(*ESSID*),在无线安全中设置无线密码,建议使用更安全的*WPA2-PSK*

1. 保存并应用即可生效
