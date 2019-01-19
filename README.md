# v2ray-vultr
在vultr上，在线自动部署v2ray

>只支持Ubuntu 18.04

使用方法
---

### 第一步
打开[Vultr](https://polr.liuboping.com/PrgTf)，登录之后，在`Servers`-`Startup Scripts`-`Add Startup Script`

`name` 随便填

`Type`->`Boot`

最后一项，打开，复制里面的内容，粘贴进去

第二行是参数

UUID填你自己的

VERSION是v2ray的版本号，和你用的客户端版本号一样就可以，最新的版本(https://github.com/v2ray/v2ray-core/releases)

PORT端口号

最后，点最下方蓝色按钮`Add Script`

### 第二步

新建服务器

`Server Type`选择Ubuntu 18.04

5.`Startup Script`，选中刚才新建的`Startup Script`

完成服务器的部署

### 