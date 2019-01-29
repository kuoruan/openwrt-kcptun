#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-pkg-errors
PKG_VERSION:=0.8.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_DATE).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/pkg/errors/tar.gz/v$(PKG_SOURCE_VERSION)?
PKG_MIRROR_HASH:=7a428967c6fc2e80cd84a0d9469ab6bd4dbe6b13493ba6294322a933a5a7e356

PKG_LICENSE:=BSD
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/pkg/errors
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-pkg-errors-dev
$(call GoPackage/GoSubMenu)
  TITLE:=Simple error handling primitives.
  URL:=https://github.com/pkg/errors
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-pkg-errors-dev/description
Package errors provides simple error handling primitives.
endef

$(eval $(call GoSrcPackage,golang-github-pkg-errors-dev))
$(eval $(call BuildPackage,golang-github-pkg-errors-dev))
