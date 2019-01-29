#
# Copyright (C) 2019 Xingwang Liao
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=golang-github-xtaci-kcp-go
PKG_VERSION:=5.0.7
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_SOURCE_DATE).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/xtaci/kcp-go/tar.gz/v$(PKG_SOURCE_VERSION)?
PKG_MIRROR_HASH:=29e3c9c399e41e1755b8af300c18e9dd18d0707d99341eef178f3c3934f8d0dd

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Xingwang Liao <kuoruan@gmail.com>

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1

GO_PKG:=github.com/xtaci/kcp-go
GO_PKG_SOURCE_ONLY:=1

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/golang/golang-package.mk

define Package/golang-github-xtaci-kcp-go-dev
$(call GoPackage/GoSubMenu)
  TITLE:=A Production-Grade Reliable-UDP Library for golang.
  URL:=https://github.com/xtaci/kcp-go
  DEPENDS:=$(GO_ARCH_DEPENDS)
  PKGARCH:=all
endef

define Package/golang-github-xtaci-kcp-go-dev/description
kcp-go is a Production-Grade Reliable-UDP library for golang.

This library intents to provide a smooth, resilient, ordered,
error-checked and anonymous delivery of streams over UDP packets,
it has been battle-tested with opensource project kcptun. Millions
of devices(from low-end MIPS routers to high-end servers) have
deployed kcp-go powered program in a variety of forms like online
games, live broadcasting, file synchronization and network acceleration.
endef

$(eval $(call GoSrcPackage,golang-github-xtaci-kcp-go-dev))
$(eval $(call BuildPackage,golang-github-xtaci-kcp-go-dev))
