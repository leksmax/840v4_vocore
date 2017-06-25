

This is the buildsystem for the OpenWrt Linux distribution.

Please use "make menuconfig" to configure your appreciated
configuration for the toolchain and firmware.

You need to have installed gcc, binutils, bzip2, flex, python, perl, make,
find, grep, diff, unzip, gawk, getopt, subversion, libz-dev and libc headers.

Run "./scripts/feeds update -a" to get all the latest package definitions
defined in feeds.conf / feeds.conf.default respectively
and "./scripts/feeds install -a" to install symlinks of all of them into
package/feeds/.

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

это  первый  форк  драйверов  видоры 
==============================================
здесь  не  работает   отображение  в   вебе  подулюченных  устройств  по  вифи-  скоро починю
==============================================
здесь  мак  при  старте   рандомный- скоро починую
==============================================
## Donation
If this project help you reduce time to develop, you can give me a cup of coffee :) 

 на  пиво автору сюда )

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=QQ7FWMZLJUFEQ)
[![Яндекс.Деньги](https://money.yandex.ru/img/wallet-50x50.gif)](https://money.yandex.ru/to/410014027691291)

bitcoin: 15T2S3SLDjE9n67rwr5A1WCxvMqirfnV9K
=============================================
