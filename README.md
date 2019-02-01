# openwrt-kcptun

Kcptun Client/Server for OpenWrt

OpenWrt/LEDE 上可用的 Kcptun 客户端/服务端

[![Release Version](https://img.shields.io/github/release/kuoruan/openwrt-kcptun.svg)](https://github.com/kuoruan/openwrt-kcptun/releases/latest) [![Latest Release Download](https://img.shields.io/github/downloads/kuoruan/openwrt-kcptun/total.svg)](https://github.com/kuoruan/openwrt-kcptun/releases/latest)

## 编译说明

请使用最新版的 OpenWrt SDK 或 master 版源代码。

编辑 ```feeds.conf.default``` 添加如下内容：

```
src-git kcptun https://github.com/kuoruan/openwrt-kcptun.git
```

编译流程：

```
./scripts/feeds update -a
./scripts/feeds install -a

make menuconfig

Languages  ---> Go  ---> <*> golang-github-xtaci-kcptun-dev
Network  ---> Web Servers/Proxies  ---> <*> kcptun-client
Network  ---> Web Servers/Proxies  ---> <*> kcptun-server

make package/kcptun/{clean,compile} V=s
```

## 安装说明

1. 到 [release](https://github.com/kuoruan/openwrt-kcptun/releases) 页面下载你路由器对应版本的 ```kcptun-client``` 或 ```kcptun-server```

```
opkg install kcptun-client_*.ipk
opkg install kcptun-server_*.ipk
```

安装完毕之后，你可以在 ```/usr/bin``` 目标下找到对应的二进制文件。

```
root@OpenWrt:~# kcptun-client -v
kcptun version 20190109-2_OpenWrt

root@OpenWrt:~# kcptun-server -v
kcptun version 20190109-2_OpenWrt
```

配合 [luci-app-kcptun](https://github.com/kuoruan/luci-app-kcptun) 使用时，请将 ```客户端文件``` 路径配置为 ```/usr/bin/kcptun-client```

* 注意：```luci-app-kcptun``` 并不支持 ```kcptun-server```。

## 版本特点

1. 支持 ```Soft Float```

2. 比官方版本占用空间更小

3. 随官方版本更新

## 卸载说明

```
opkg remove kcptun-client
opkg remove kcptun-server
```