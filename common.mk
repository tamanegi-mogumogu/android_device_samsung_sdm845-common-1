#
# Copyright (C) 2018 The LineageOS Project
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

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Fonts
TARGET_INCLUDE_CUSTOM_FONTS := false

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
# A list of dpis to select prebuilt apk, in precedence order.
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/platform-samsung.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/platform-samsung.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-hotword.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.software.controls.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.controls.xml

# Rootdir
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.samsung.rc \
    init.usb_accessory.rc

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.sdm845.rc

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/audio_policy_configuration.xml

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-service \
    android.hardware.bluetooth@1.0-impl:64

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio_keys.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/gpio_keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/sec_touchscreen.kl

# Native libraries whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_PRODUCT)/etc/public.libraries.txt

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# NFC
PRODUCT_PACKAGES += \
    libnfc-nci \
    libnfc_nci_jni \
    NfcNci \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-nci.conf:$(TARGET_COPY_OUT_PRODUCT)/etc/libnfc-nci.conf

# Lights
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hidl/lights/vendor.samsung.hardware.light@3.0-service:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/bin/hw/vendor.samsung.hardware.light@3.0-service \
    $(LOCAL_PATH)/hidl/lights/vendor.samsung.hardware.light@3.0-service.rc:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/29/etc/init/vendor.samsung.hardware.light@3.0-service.rc

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.sdm845-libperfmgr \
    android.hardware.power@1.2.vendor \
    vendor.qti.hardware.perf@2.2.vendor

PRODUCT_PACKAGES += \
    power.qcom

# VNDK
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# SP-NDK
PRODUCT_PACKAGES += \
    libvulkan

# S-Pen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/samsung-sec_e-pen.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/sec_e-pen.idc

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/google/interfaces \
    hardware/google/pixel \
    hardware/samsung \
    $(LOCAL_PATH)/aidl/power-libperfmgr

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# Touch
PRODUCT_PACKAGES += \
    lineage.touch@1.0-service.sdm845

# Trust
PRODUCT_PACKAGES += \
    lineage.trust@1.0-service

# Call proprietary blob setup
$(call inherit-product, vendor/samsung/sdm845-common/sdm845-common-vendor.mk)
