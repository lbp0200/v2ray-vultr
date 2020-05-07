# v2ray-vultr
在[vultr](https://www.vultr.com/?ref=6879156)上，在线自动部署v2ray

>只支持Ubuntu 18.04

使用方法
---

### 第一步

打开[Vultr](https://www.vultr.com/?ref=6879156)，登录之后，在`Servers`-`Startup Scripts`-`Add Startup Script`

`name` 随便填

`Type`->`Boot`

最后一项，打开[VultrStartupScript.sh](https://raw.githubusercontent.com/lbp0200/v2ray-vultr/master/VultrStartupScript.sh)，复制里面的内容，粘贴进去

第二行是参数

UUID填你自己的

VERSION是v2ray的版本号，和你用的客户端版本号一样就可以，最新的版本(https://github.com/v2ray/v2ray-core/releases)

PORT端口号

最后，点最下方蓝色按钮`Add Script`

### 第二步 部署服务器

新建服务器

`Server Type`选择Ubuntu 18.04

5.`Startup Script`，选中刚才新建的`Startup Script`

> 完成服务器的部署，等待服务器部署完成

### 第三步 配置客户端

官方版：https://github.com/v2ray/v2ray-core/releases

第三方（带界面）：https://www.v2ray.com/ui_client/

配置文件：https://raw.githubusercontent.com/lbp0200/v2ray-vultr/master/client.json

修改配置文件里面的`VPS_IP`为你刚刚部署好的VPS的IP，`80`修改为你在第一步设置的PORT端口号

最后启动客户端

效果
---
刚刚测试了Vultr东京，跑满了20M宽带，不知道还能不能更高。
