#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-xtaci-smux
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/xtaci/smux/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=45392e63cbeebd7580e3d4e07b1bbcaa59c2d3b76bec5394b6be5f0d01503695
PKG_BUILD_DIR:=$(BUILD_DIR)/smux-$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/xtaci/smux
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-xtaci-smux-dev
$(call GoPackage/GoSubMenu)
  TITLE:=Simple Stream Multiplexing for golang.
  URL:=https://github.com/xtaci/smux
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-xtaci-smux-dev/description
Smux ( Simple MUltipleXing) is a multiplexing library for Golang.
It relies on an underlying connection to provide reliability and
ordering, such as TCP or KCP, and provides stream-oriented multiplexing.
The original intention of this library is to power the connection
management for kcp-go.
endef

$(eval $(call GoSrcPackage,golang-github-xtaci-smux-dev))
$(eval $(call BuildPackage,golang-github-xtaci-smux-dev))
