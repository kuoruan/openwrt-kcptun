#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-klauspost-reedsolomon
PKG_VERSION:=1.8.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/klauspost/reedsolomon/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=fe0274e3a60614831484a0f87643d824ce1617a7fcb75ad5797c3c1fc2b6902b
PKG_BUILD_DIR:=$(BUILD_DIR)/reedsolomon-$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/klauspost/reedsolomon
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-klauspost-reedsolomon-dev
$(call GoPackage/GoSubMenu)
  TITLE:=Reed-Solomon Erasure Coding in Go.
  URL:=https://github.com/klauspost/reedsolomon
  DEPENDS:=$(GO_ARCH_DEPENDS) \
	  +golang-github-klauspost-cpuid-dev
  PKGARCH:=all
endef

define Package/golang-github-klauspost-reedsolomon-dev/description
Reed-Solomon Erasure Coding in Go, with speeds exceeding 1GB/s/cpu core
implemented in pure Go.

This is a Go port of the JavaReedSolomon library released by Backblaze,
with some additional optimizations.
endef

$(eval $(call GoSrcPackage,golang-github-klauspost-reedsolomon-dev))
$(eval $(call BuildPackage,golang-github-klauspost-reedsolomon-dev))
