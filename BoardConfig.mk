#
# Copyright (C) 2026 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/kunzite

# Target Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# Architecture Flags
TARGET_USES_64_BIT_BINDER := true

# Bootloader & Kernel Config
TARGET_BOOTLOADER_BOARD_NAME := kunzite
TARGET_NO_KERNEL := false
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096

# Partition Layout (Dynamic & Virtual A/B)
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_SUPER_PARTITION_GROUPS := xiaomi_dynamic_partitions
BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE := 9122611200
BOARD_XIAOMI_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext

# Display & Graphics
USE_OPENGL_RENDERER := true

# System Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

