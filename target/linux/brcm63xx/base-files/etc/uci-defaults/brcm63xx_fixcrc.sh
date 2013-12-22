#!/bin/sh
#
# Copyright (C) 2007 OpenWrt.org
#
#

. /lib/brcm63xx.sh

do_fixcrc() {
	mtd fixtrx linux
}

brcm63xx_detect

case "$board_name" in
	96328avng |\
	963281TAN |\
	96358-502V |\
	96368M-1341N |\
	96368M-1541N |\
	96369R-1231N |\
	"CPVA502+" |\
	AW4339U |\
	CPVA642 |\
	CT6373-1 |\
	MAGIC |\
	V2110 |\
	V2500V_BB)
		do_fixcrc
		;;
esac

