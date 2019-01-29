#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-templexxx-cpufeat
PKG_SOURCE_DATE:=2018-07-24
PKG_SOURCE_VERSION:=cef66df7f161dee20f4d650da7268d77eaaec82d
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_DATE).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/templexxx/cpufeat/tar.gz/$(PKG_SOURCE_VERSION)?
PKG_HASH:=65d2e68a483cf70ac9b7e78fd58c5196c6d02551b9f682b42714e96628cb5a16
PKG_BUILD_DIR:=$(BUILD_DIR)/cpufeat-$(PKG_SOURCE_VERSION)

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/templexxx/cpufeat
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-templexxx-cpufeat-dev
$(call GoPackage/GoSubMenu)
  TITLE:=Internal/cpu in Go.
  URL:=https://github.com/templexxx/cpufeat
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-templexxx-cpufeat-dev/description
Internal/cpu in Go.
endef

$(eval $(call GoSrcPackage,golang-github-templexxx-cpufeat-dev))
$(eval $(call BuildPackage,golang-github-templexxx-cpufeat-dev))
