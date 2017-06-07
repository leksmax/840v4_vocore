#
# Copyright (C) 2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/WR840NV4
	NAME:=WR840NV4
	PACKAGES:=\
		ated reg gpio btnd switch ethstt uci2dat mii_mgr watchdog 8021xd eth_mac\
		wireless-tools kmod-mt7628
endef

define Profile/WR840NV4/Description
	Default package set compatible with WR840NV4 boards.
endef
$(eval $(call Profile,WR840NV4))
