#
# Copyright (C) 2026 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/kunzite

# Call proprietary blobs setup (vendor tree)
$(call inherit-product, vendor/xiaomi/kunzite/kunzite-vendor.mk)

# Product Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Fastboot Hardware
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml

# Inherit Dalvik Heap options
$(call inherit-product, frameworks/native/build/phone-xhdpi-6000-dalvik-heap.mk)

