#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=kcptun
PKG_VERSION:=20190109
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/xtaci/kcptun/tar.gz/v${PKG_VERSION}?
PKG_HASH:=2e6e8ba4d9ca4f2e4d108c5731e4ba71953555dc25bce4cf09cd6d50cc2dc4a2

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/xtaci/kcptun

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/kcptun/Default
  TITLE:=A Stable & Secure Tunnel Based On KCP with N:M Multiplexing.
  USERID:=kcptun=12900:kcptun=12900
  URL:=https://github.com/xtaci/kcptun
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Web Servers/Proxies
  DEPENDS:=$(GO_ARCH_DEPENDS) \
    +golang-golang-x-crypto-dev \
    +golang-github-golang-snappy-dev \
    +golang-github-urfave-cli-dev \
    +golang-github-xtaci-kcp-go-dev \
    +golang-github-xtaci-smux-dev
endef

define Package/kcptun-client
$(call Package/kcptun/Default)
  DEPENDS+=+golang-github-pkg-errors-dev
  GO_PKG_BUILD_PKG:=github.com/xtaci/kcptun/client/
endef

define Package/kcptun-server
$(call Package/kcptun/Default)
  GO_PKG_BUILD_PKG:=github.com/xtaci/kcptun/server/
endef

define Package/kcptun/Default/description
Simple UDP Tunnel Based On KCP.
endef

define Package/kcptun-client/description
$(call Package/kcptun/Default/description)

This package is the kcptun client.
endef

define Package/kcptun-server/description
$(call Package/kcptun/Default/description)

This package is the kcptun server.
endef

define Package/kcptun-client/install
  $(INSTALL_DIR) $(1)/usr/bin
  $(INSTALL_BIN) $(GO_PKG_BUILD_BIN_DIR)/client $(1)/usr/bin/kcptun-client
endef

define Package/kcptun-server/install
  $(INSTALL_DIR) $(1)/usr/bin
  $(INSTALL_BIN) $(GO_PKG_BUILD_BIN_DIR)/server $(1)/usr/bin/kcptun-server
endef

$(eval $(call GoBinPackage,kcptun-client))
$(eval $(call BuildPackage,kcptun-client))

$(eval $(call GoBinPackage,kcptun-server))
$(eval $(call BuildPackage,kcptun-server))
