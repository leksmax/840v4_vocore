#
# MT7628 Profiles
#

define Build/prepend-to
    dd bs=1 seek=$(1) if=$@ of=$@.new && mv $@.new $@
endef

define Device/mt7628
  DTS := MT7628
  IMAGE_SIZE := $(ralink_default_fw_size_4M)
  DEVICE_TITLE := MediaTek MT7628 EVB
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-ledtrig-usbdev
endef
TARGET_DEVICES += mt7628

define Device/miwifi-nano
  DTS := MIWIFI-NANO
  IMAGE_SIZE := $(ralink_default_fw_size_16M)
  DEVICE_TITLE := Xiaomi MiWiFi Nano
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-ledtrig-usbdev
endef
TARGET_DEVICES += miwifi-nano

define Device/vocore2
  DTS := VOCORE2
  IMAGE_SIZE := $(ralink_default_fw_size_16M)
  DEVICE_TITLE := Vocore VoCore 2
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-ledtrig-usbdev
endef
TARGET_DEVICES += vocore2

define Device/wrtnode2p
  DTS := WRTNODE2P
  IMAGE_SIZE := $(ralink_default_fw_size_16M)
  DEVICE_TITLE := WRTnode 2P
  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ohci kmod-ledtrig-usbdev
endef
TARGET_DEVICES += wrtnode2p

define Device/tl-wr840n-v4
  DTS := TL-WR840NV4
  IMAGE_SIZE := 7808k
  DEVICE_TITLE := TP-Link TL-WR840N v4
  DEVICE_PACKAGES :=
  KERNEL := $(KERNEL_DTB) | prepend-to 448 | uImage lzma
  IMAGES += factory.bin
  IMAGE/factory.bin := pad-extra 131072 | $$(sysupgrade_bin)
endef
TARGET_DEVICES += tl-wr840n-v4
