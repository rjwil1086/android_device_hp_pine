#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Use the non-open-source parts, if they're present
-include vendor/yuandao/n70/BoardConfigVendor.mk

BOARD_USES_GENERIC_AUDIO := true
#BOARD_USES_AUDIO_LEGACY := true
USE_CAMERA_STUB := true

BOARD_USES_HC_RADIO := true

TARGET_NO_BOOTLOADER := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_CMDLINE := 
BOARD_PAGE_SIZE := 16384

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := rk30sdk
TARGET_BOOTLOADER_BOARD_NAME := rk30board

BOARD_EGL_CFG := device/yuandao/n70/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_INITRC := device/yuandao/n70/recovery.init.rc
TARGET_RECOVERY_PRE_COMMAND := "busybox dd if=/misc.img of=/dev/block/mtd/by-name/misc; sync"
BOARD_HAS_NO_SELECT_BUTTON := true

#WPA_SUPPLICANT_VERSION := VER_0_6_X
#BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
#BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := RK903

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/wlan/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_RK903.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_RK903_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_RK903_p2p.bin"
WIFI_DRIVER_MODULE_NAME     := "RK903"
WIFI_DRIVER_MODULE_ARG      := "iface_name=wlan0 firmware_path=/system/etc/firmware/fw_RK903.bin nvram_path=/system/etc/firmware/nvram_RK903.cal"

BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 335544320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1572864000

TARGET_PREBUILT_KERNEL := device/yuandao/n70/kernel

TARGET_BOOTANIMATION_PRELOAD := true

BOARD_HAVE_BLUETOOTH := false