#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=kcptun
PKG_VERSION:=20190809
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/xtaci/kcptun/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=79dc1c31320552fcd76a31a83a515debb9ab7dbcf831c39346512f590d6b150d

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.md
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/xtaci/kcptun

GO_PKG_LDFLAGS:=-s -w
GO_PKG_LDFLAGS_X:='main.VERSION=$(PKG_VERSION)-$(PKG_RELEASE) for OpenWrt'

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/kcptun/Default
  define Package/kcptun-$(1)
    USERID:=kcptun=12900:kcptun=12900
    SECTION:=net
    CATEGORY:=Network
    SUBMENU:=Web Servers/Proxies
    DEPENDS:=$$(GO_ARCH_DEPENDS)
    TITLE:=Simple UDP Tunnel Based On KCP ($1)
    URL:=https://github.com/xtaci/kcptun
  endef

  define Package/kcptun-$(1)/description
  A Stable & Secure Tunnel Based On KCP with N:M Multiplexing.

  This package contains the kcptun $(1).
  endef

  define Package/kcptun-$(1)/install
	$$(INSTALL_DIR) $$(1)/usr/bin
	$$(INSTALL_BIN) $$(GO_PKG_BUILD_BIN_DIR)/$(1) $$(1)/usr/bin/kcptun-$(1)
  endef
endef

KCPTUN_COMPONENTS:=client server

$(foreach component,$(KCPTUN_COMPONENTS), \
  $(eval $(call Package/kcptun/Default,$(component))) \
  $(eval $(call GoBinPackage,kcptun-$(component))) \
  $(eval $(call BuildPackage,kcptun-$(component))) \
)
