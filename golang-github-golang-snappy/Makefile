#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-golang-snappy
PKG_SOURCE_DATE:=2018-05-18
PKG_SOURCE_VERSION:=2e65f85255dbc3072edf28d6b5b8efc472979f5a
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_DATE).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/golang/snappy/tar.gz/$(PKG_SOURCE_VERSION)?
PKG_HASH:=e92b328add64e55a15e13524337ba4388a271fa6e1947db39e01d2102336be00
PKG_BUILD_DIR:=$(BUILD_DIR)/snappy-$(PKG_SOURCE_VERSION)

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/golang/snappy
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-golang-snappy-dev
$(call GoPackage/GoSubMenu)
  TITLE:=The Snappy compression format in the Go programming language.
  URL:=https://github.com/golang/snappy
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-golang-snappy-dev/description
The Snappy compression format in the Go programming language.
endef

$(eval $(call GoSrcPackage,golang-github-golang-snappy-dev))
$(eval $(call BuildPackage,golang-github-golang-snappy-dev))
