#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-tjfoc-gmsm
PKG_SOURCE_DATE:=2018-08-08
PKG_SOURCE_VERSION:=0b26aafa7604a3cd63d76facfb62dc7885c068fa
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/tjfoc/gmsm/tar.gz/$(PKG_SOURCE_VERSION)?
PKG_HASH:=d214890c618a0bec0598204c43f33af222af6a33af31ffa6f44534df5ce07960
PKG_BUILD_DIR:=$(BUILD_DIR)/gmsm-$(PKG_SOURCE_VERSION)

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/tjfoc/gmsm
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-tjfoc-gmsm-dev
$(call GoPackage/GoSubMenu)
  TITLE:=GM SM2/3/4 library based on Golang.
  URL:=https://github.com/tjfoc/gmsm
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-tjfoc-gmsm-dev/description
GM SM2/3/4 library based on Golang.
endef

$(eval $(call GoSrcPackage,golang-github-tjfoc-gmsm-dev))
$(eval $(call BuildPackage,golang-github-tjfoc-gmsm-dev))
