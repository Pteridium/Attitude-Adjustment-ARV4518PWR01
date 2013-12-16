Attitude Adjustment r38863

Highlights:

Lantiq:
- Added support for ARV4518PWR01.
- Wifi in ARV4518PW* and ARV7518PW is modified to work without regional restrictions.

BCM63xx:
- Added SMP support.
- Added B53 driver.
- Added Comtrend VR-3025u and VR-3025un.
- Added Huawei HG622.

Toolchain:
- Added GCC 4.8.0 and 4.8.3-linaro versions.

Packages:
- Added cpuminer.

TODO:
- A lot of stuff.


---------------------------------------------------------------------------------------

This is the buildsystem for the OpenWrt Linux distribution.

Please use "make menuconfig" to configure your appreciated
configuration for the toolchain and firmware.

You need to have installed gcc, binutils, patch, bzip2, flex,
make, gettext, pkg-config, unzip, libz-dev and libc headers.

Run "./scripts/feeds update" to get the latest package definitions
defined in feeds.conf / feeds.conf.default respectively
and "./scripts/feeds install" to install symlinks into "package/feeds/*".

Use "make menuconfig" to configure your image.

Simply running "make" will build your firmware.
It will download all sources, build the cross-compile toolchain, 
the kernel and all choosen applications.

You can use "scripts/flashing/flash.sh" for remotely updating your embedded
system via tftp.

The OpenWrt system is documented in docs/. You will need a LaTeX distribution
and the tex4ht package to build the documentation. Type "make -C docs/" to build it.

To build your own firmware you need to have access to a Linux, BSD or MacOSX system
(case-sensitive filesystem required). Cygwin will not be supported because of
the lack of case sensitiveness in the file system.


Sunshine!
	Your OpenWrt Project
	http://openwrt.org


