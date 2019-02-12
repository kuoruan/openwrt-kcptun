#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=kcptun
PKG_VERSION:=20190109
PKG_SOURCE_DATE:=2019-02-03
PKG_SOURCE_VERSION:=456232eafdd9cd50ea908eeefa96004ceaa8d2bd
PKG_RELEASE:=2

PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_DATE).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/xtaci/kcptun/tar.gz/$(PKG_SOURCE_VERSION)?
PKG_HASH:=e311a756ed7145cae405d17c220e364c7f8714b799dc38ab9bb14a1c8c62915d
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_SOURCE_VERSION)

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
  TITLE:=Simple UDP Tunnel Based On KCP
  URL:=https://github.com/xtaci/kcptun
endef

define Package/kcptun/Default/description
A Stable & Secure Tunnel Based On KCP with N:M Multiplexing.
endef

define kcptun/templates
  define Package/kcptun-$(1)
  $$(call Package/kcptun/Default)
    TITLE+= ($(1))
    USERID:=kcptun=12900:kcptun=12900
    SECTION:=net
    CATEGORY:=Network
    SUBMENU:=Web Servers/Proxies
    DEPENDS:=$$(GO_ARCH_DEPENDS)
  endef

  define Package/kcptun-$(1)/description
  $(call Package/kcptun/Default/description)

  This package contains the kcptun $(1).
  endef

  define Package/kcptun-$(1)/install
	$$(INSTALL_DIR) $$(1)/usr/bin
	$$(INSTALL_BIN) $$(GO_PKG_BUILD_BIN_DIR)/$(1) $$(1)/usr/bin/kcptun-$(1)
  endef
endef

define Package/golang-github-xtaci-kcptun-dev
$(call Package/kcptun/Default)
$(call GoPackage/GoSubMenu)
  TITLE+= (source files)
  PKGARCH:=all
endef

define Package/golang-github-xtaci-kcptun-dev/description
$(call Package/kcptun/Default/description)

This package provides the source files for the kcptun client/server.
endef

define Build/Compile
$(call GoPackage/Build/Compile,-ldflags "-X 'main.VERSION=$(PKG_VERSION)-$(PKG_RELEASE) for OpenWrt' -s -w")
endef

KCPTUN_COMPONENTS:=client server

$(foreach component,$(KCPTUN_COMPONENTS), \
  $(eval $(call kcptun/templates,$(component))) \
  $(eval $(call GoBinPackage,kcptun-$(component))) \
  $(eval $(call BuildPackage,kcptun-$(component))) \
)

$(eval $(call GoSrcPackage,golang-github-xtaci-kcptun-dev))
$(eval $(call BuildPackage,golang-github-xtaci-kcptun-dev))
