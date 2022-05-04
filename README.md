# openwrt-kcptun

Kcptun Client/Server for OpenWrt

OpenWrt/LEDE 上可用的 Kcptun 客户端/服务端

[![Release Version](https://img.shields.io/github/release/nautiluschan/openwrt-kcptun.svg)](https://github.com/nautiluschan/openwrt-kcptun/releases/latest) [![Latest Release Download](https://img.shields.io/github/downloads/nautiluschan/openwrt-kcptun/total.svg)](https://github.com/nautiluschan/openwrt-kcptun/releases/latest)

## 安装说明

1. 到 [release](https://github.com/nautiluschan/openwrt-kcptun/releases) 页面下载最新版的```kcptun-client``` 或 ```kcptun-server```（注：请根据你的路由器架构下载对应版本）

2. 将文件上传到你的路由器上，进行安装

```sh
opkg install kcptun-client_*.ipk
opkg install kcptun-server_*.ipk
```

安装完毕，你可以在 ```/usr/bin``` 目录下找到对应的二进制文件。

```
root@OpenWrt:~# kcptun-client -v
kcptun version 20190109-2_OpenWrt

root@OpenWrt:~# kcptun-server -v
kcptun version 20190109-2_OpenWrt
```

配合 [luci-app-kcptun](https://github.com/kuoruan/luci-app-kcptun) 使用时，请将 ```客户端文件``` 路径配置为 ```/usr/bin/kcptun-client```

* 注意：```luci-app-kcptun``` 并不支持 ```kcptun-server```。

## 编译说明

请使用最新版的 OpenWrt SDK 或 master 版源代码。

进入 SDK 根目录或源码根目录，执行命令下载 Makefile：

```sh
git clone https://github.com/kuoruan/openwrt-kcptun.git package/kcptun
```

编译流程：

```sh
./scripts/feeds update -a
./scripts/feeds install -a
```
由于openwrt官方仓库中有kcptun-client和kcptun-server，会导致本项目不可见。建议用 package/kcptun 替换/feeds/packages/net/kcptun
```sh
rm -rf ./feeds/packages/net/kcptun
cp -r ./package/kcptun ./feeds/packages/net/
```
替换后再选择编译
```sh
make menuconfig

Network  ---> Web Servers/Proxies  ---> <*> kcptun-client
Network  ---> Web Servers/Proxies  ---> <*> kcptun-server

make package/kcptun/{clean,compile} V=s
```

## 卸载说明

```sh
opkg remove kcptun-client
opkg remove kcptun-server
```
