#
# Copyright (C) 2012 
#                           
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=cpuminer
PKG_VERSION:=2.3.2
PKG_REV:=3737e48b40ec076eed1b8ccab3e3e28932719564
# this is upstream version 2.3.2
PKG_RELEASE:=1
PKG_INSTALL:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_REV).tar.gz
PKG_SOURCE_URL:=git://github.com/pooler/cpuminer.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=$(PKG_REV)

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/cpuminer
	MAINTAINER:="Pepe"
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=cpuminer (CPU Miner)
	URL:=https://github.com/pooler/cpuminer
	DEPENDS:=+libcurl +libpthread +libncurses +jansson
endef

define Package/cgminer/description
Cgminer is a multi-threaded CPU miner for bitcoin and derivative
coins. Do not use on multiple block chains at the same time!
endef

CONFIGURE_ARGS +=
TARGET_CFLAGS  += -O3
TARGET_LDFLAGS += -Wl,-rpath-link=$(STAGING_DIR)/usr/lib

define Build/Configure
	# Need to remake configure etc to pick up on cross-compiler libtool
	( cd $(PKG_BUILD_DIR); NOSUBMODULES=1 ./autogen.sh; )
	
	$(call Build/Configure/Default)
endef

define Package/cpuminer/install
	$(INSTALL_DIR) $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/minerd $(1)/usr/bin/
endef

$(eval $(call BuildPackage,cpuminer))
