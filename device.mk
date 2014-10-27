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

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/../jedroid-kernel/zImage:root/boot/zImage \
    $(LOCAL_PATH)/../jedroid-kernel/tegra124-pm375.dtb:root/boot/tegra124-pm375.dtb \
    $(LOCAL_PATH)/../jedroid-kernel/extlinux.conf:root/boot/extlinux.conf \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.tegra.rc:root/init.tegra.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/power.jedroid.rc:system/etc/power.jedroid.rc \
    $(LOCAL_PATH)/init.jedroid.rc:root/init.jedroid.rc \
    $(LOCAL_PATH)/fstab.jedroid:root/fstab.jedroid \
    $(LOCAL_PATH)/init.hdcp.rc:root/init.hdcp.rc \
    $(LOCAL_PATH)/ueventd.jedroid.rc:root/ueventd.jedroid.rc \
    $(LOCAL_PATH)/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc

#/etc/permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml   

PRODUCT_PROPERTY_OVERRIDES += drm.service.enabled=true                                                                                               

PRODUCT_AAPT_CONFIG += mdpi hdpi xhdpi
include frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk


#/etc/permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml                            

#nv etc
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/etc/media_profiles.xml:system/etc/media_profiles.xml \
   $(LOCAL_PATH)/etc/media_codecs.xml:system/etc/media_codecs.xml \
   $(LOCAL_PATH)/etc/audio_policy.conf:system/etc/audio_policy.conf \
   $(LOCAL_PATH)/etc/nvaudio_conf.xml:system/etc/nvaudio_conf.xml \
   $(LOCAL_PATH)/etc/enctune.conf:system/etc/enctune.conf \
   $(LOCAL_PATH)/etc/nvaudio_fx.xml:system/etc/nvaudio_fx.xml \
   $(LOCAL_PATH)/etc/ussrd.conf:system/etc/ussrd.conf \

PRODUCT_COPY_FILES += \
    device/nvidia/jedroid/nvcms/device.cfg:system/lib/nvcms/device.cfg 


PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/nvidia/jedroid/iwlwifi,system/etc/firmware/) \

RRODUCT_PACKAGES += \
    setup_fs \
    e2fsck \
    drmserver \
    libdrmframework_jni \


# NvBlit JNI library
#PRODUCT_COPY_FILES += \
#    vendor/nvidia/tegra/graphics-partner/android/frameworks/Graphics/com.nvidia.graphics.xml:system/etc/permissions/com.nvidia.graphics.xml 
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay


# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_CHARACTERISTICS := tablet


#Default config in /default.conf
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	    persist.sys.usb.config=mtp

$(call inherit-product-if-exists, vendor/nvidia/jedroid/device-vendor.mk)
