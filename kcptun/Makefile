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
  DEPENDS:=$(GO_ARCH_DEPENDS) \
    +golang-golang-x-crypto-dev
endef

define Package/kcptun
$(call Package/kcptun/Default)
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=Web Servers/Proxies
endef

define Package/kcptun/Default/description
Simple UDP Tunnel Based On KCP.
endef

define Package/kcptun/description
$(call Package/kcptun/Default/description)

This package containes the kcptun client and server.
endef

define Package/kcptun/install
$(call GoPackage/Package/Install/Bin,$(1))
endef

$(eval $(call GoBinPackage,kcptun))
$(eval $(call BuildPackage,kcptun))
