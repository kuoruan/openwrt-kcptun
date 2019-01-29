#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-klauspost-cpuid
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/klauspost/cpuid/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=aa29ebcf12669eef96c7c54b551617b90b65c55d126ef0ff9fbacd605e738a67
PKG_BUILD_DIR:=$(BUILD_DIR)/cpuid-$(PKG_VERSION)

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/klauspost/cpuid
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-klauspost-cpuid-dev
$(call GoPackage/GoSubMenu)
  TITLE:=CPU feature identification for Go.
  URL:=https://github.com/klauspost/cpuid
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-klauspost-cpuid-dev/description
Package cpuid provides information about the CPU running the current program.

CPU features are detected on startup, and kept for fast access through
the life of the application. Currently x86 / x64 (AMD64) is supported,
and no external C (cgo) code is used, which should make the library very easy to use.

You can access the CPU information by accessing the shared CPU variable of
the cpuid library.
endef

$(eval $(call GoSrcPackage,golang-github-klauspost-cpuid-dev))
$(eval $(call BuildPackage,golang-github-klauspost-cpuid-dev))
