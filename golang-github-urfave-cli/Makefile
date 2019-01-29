#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-urfave-cli
PKG_VERSION:=1.20.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/urfave/cli/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=c5ba59f5742c99618b5ba34211699287cd3e80c41488bb267035ce0163e3bade
PKG_BUILD_DIR:=$(BUILD_DIR)/cli-$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/urfave/cli
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-urfave-cli-dev
$(call GoPackage/GoSubMenu)
  TITLE:=A simple, fast, and fun package for building command line apps in Go.
  URL:=https://github.com/urfave/cli
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-urfave-cli-dev/description
This is the library formerly known as github.com/codegangsta/cli
 -- Github will automatically redirect requests to this repository,
but we recommend updating your references for clarity.

cli is a simple, fast, and fun package for building command line apps in Go.
The goal is to enable developers to write fast and distributable command
line applications in an expressive way.
endef

$(eval $(call GoSrcPackage,golang-github-urfave-cli-dev))
$(eval $(call BuildPackage,golang-github-urfave-cli-dev))
