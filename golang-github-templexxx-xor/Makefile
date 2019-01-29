#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-templexxx-xor
PKG_VERSION:=0.1.2
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/templexxx/xor/tar.gz/$(PKG_VERSION)?
PKG_HASH:=651fd92863fbd5db45f08bb494cf139b9b6cb5901fe228a635f124f256d8d3bf
PKG_BUILD_DIR:=$(BUILD_DIR)/xor-$(PKG_VERSION)

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/templexxx/xor
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-templexxx-xor-dev
$(call GoPackage/GoSubMenu)
  TITLE:=XOR in Go, more than 70GB/s per core
  URL:=https://github.com/templexxx/xor
  DEPENDS:=$(GO_ARCH_DEPENDS) \
	  +golang-github-templexxx-cpufeat-dev
  PKGARCH:=all
endef

define Package/golang-github-templexxx-xor-dev/description
XOR code engine in pure Go, more than 10GB/S per core.

Use SIMD (SSE2 or AVX2) for speeding up.
endef

$(eval $(call GoSrcPackage,golang-github-templexxx-xor-dev))
$(eval $(call BuildPackage,golang-github-templexxx-xor-dev))
