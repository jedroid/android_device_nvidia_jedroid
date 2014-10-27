#
# Copyright 2013 The Android Open-Source Project
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

# Use the non-open-source parts, if they're present
-include vendor/nvidia/jedroid/BoardConfigVendor.mk
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true


TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true
TARGET_BOARD_PLATFORM := tegra                                            
TARGET_TEGRA_VERSION := t124
TARGET_TEGRA_FAMILY := t12x

# compile wpa_supplicant with WEXT and NL80211 support both
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
CONFIG_DRIVER_WEXT          := y
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_iwlwifi
BOARD_WLAN_DEVICE           := iwlwifi
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_iwlwifi

BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
USE_OPENGL_RENDERER := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE  := 12799754240
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1342177280
BOARD_FLASH_BLOCK_SIZE := 4096
