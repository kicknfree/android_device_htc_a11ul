# Copyright (C) 2014 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

TARGET_OTA_ASSERT_DEVICE := a11ul

BOARD_VENDOR := htc

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# Architecture

#Old Settings
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a53

#New 64-bit Settings
#TARGET_ARCH := arm64
#TARGET_ARCH_VARIANT := armv8-a
#TARGET_CPU_VARIANT := generic
#TARGET_CPU_ABI := arm64-v8a

#TARGET_2ND_ARCH := arm
#TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_VARIANT := cortex-a15
#TARGET_2ND_CPU_ABI := armeabi-v7a
#TARGET_2ND_CPU_ABI2 := armeabi

#TARGET_USES_64_BIT_BINDER := true

# Flags
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Kernel
BOARD_KERNEL_CMDLINE := "console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci"
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02008000 --dt device/htc/a11ul/dtb --tags_offset 0x01e00000
TARGET_KERNEL_CONFIG := a11ul_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/a11ul

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
#TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
#TARGET_QCOM_AUDIO_VARIANT := caf
#TARGET_QCOM_DISPLAY_VARIANT := caf-new
#TARGET_QCOM_MEDIA_VARIANT := caf-new
#TARGET_USES_QCOM_BSP := true

# Audio
AUDIO_FEATURE_DISABLED_MULTI_VOICE_SESSIONS := true
BOARD_USES_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/a11ul/bluetooth

# Camera
#COMMON_GLOBAL_CFLAGS += -DHTC_CAMERA_HARDWARE
#COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
#COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND='{"htc.camera.sensor.", AID_CAMERA, 0}, {"camera.5k2k.", AID_MEDIA, 0}, {"persist.camera.", AID_MEDIA, 0},'
#BOARD_CAMERA_HAVE_ISO := true
TARGET_PROVIDES_CAMERA_HAL := true
USE_DEVICE_SPECIFIC_CAMERA := true


# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# Graphics
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
USE_OPENGL_RENDERER := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
BOARD_EGL_CFG := device/htc/a11ul/configs/egl.cfg

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# RIL
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_CLASS := ../../../device/htc/a11ul/ril/

# RPC
TARGET_NO_RPC := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"

# SELinux
BOARD_SEPOLICY_DIRS += \
    device/htc/a11ul/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file_contexts \
    file.te \
    hci_init.te \
    healthd.te \
    init_shell.te \
    init.te \
    keystore.te \
    kickstart.te \
    mediaserver.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    wpa_socket.te \
    wpa.te

# Partitions

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0xa8000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x58000000
BOARD_FLASH_BLOCK_SIZE := 512

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# Recovery
TARGET_RECOVERY_FSTAB := device/htc/a11ul/rootdir/etc/fstab.qcom
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#TWRP config:
DEVICE_RESOLUTION := 480x854
TW_NO_USB_STORAGE := true
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"

# Vendor Init TODO CHECK LIB
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_a11ul
TARGET_LIBINIT_DEFINES_FILE := device/htc/a11ul/init/init_a11ul.c

# Releasetools TODO CHECK RELEASE TOOLS
TARGET_RELEASETOOLS_EXTENSIONS := device/htc/a11ul/releasetools

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Hardware
BOARD_HARDWARE_CLASS := device/htc/a11ul/cmhw

# inherit from the proprietary version
-include vendor/htc/a11ul/BoardConfigVendor.mk
