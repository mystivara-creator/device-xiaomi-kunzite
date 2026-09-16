#
# Copyright (C) 2026 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit dari konfigurasi bawaan PixelExperience
$(call inherit-product, vendor/pas/config/common_full_phone.mk)

# Inherit dari konfigurasi internal device tree kunzite
$(call inherit-product, device/xiaomi/kunzite/device.mk)

# Identitas Perangkat
PRODUCT_NAME := pixel_kunzite
PRODUCT_DEVICE := kunzite
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 15 5G
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
