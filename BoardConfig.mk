#
# Copyright (C) 2023 The LineageOS Project
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

DEVICE_PATH := device/huawei/figo

# 64 Bit
TARGET_USES_64_BIT_BINDER := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Assert
TARGET_OTA_ASSERT_DEVICE := figo

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include
BOARD_USES_COMMON_BLUETOOTH_HAL := true

# Bootanimation
TARGET_BOOTANIMATION_HALF_RES := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hi6250
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RPC := true

# Camera
USE_CAMERA_STUB := false
USE_DEVICE_SPECIFIC_CAMERA := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# CnE
BOARD_USES_QCNE := false

# Dexpreopt
BOARD_USES_SYSTEM_OTHER_ODEX := true

# DPM
BOARD_USES_DPM := false

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true

# Graphics
ANDROID_ENABLE_RENDERSCRIPT := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_HARDWARE_3D := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000

# HIDL
DEVICE_MANIFEST_FILE := \
    $(DEVICE_PATH)/manifest.xml

DEVICE_MATRIX_FILE := \
    $(DEVICE_PATH)/compatibility_matrix.xml

# Kernel
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_CMDLINE := loglevel=4 initcall_debug=n page_tracker=on unmovable_isolate1=2:192M,3:224M,4:256M printktimer=0xfff0a000,0x534,0x538
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x07A00000
BOARD_RAMDISK_OFFSET := 0x10000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/huawei/hi6250
TARGET_KERNEL_CONFIG := merge_hi6250_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_ODMIMAGE_PARTITION_SIZE := 134217728
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3707764736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25228738560
BOARD_VENDORIMAGE_PARTITION_SIZE := 822083584

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_USES_METADATA_PARTITION := false

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := system/product
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext
TARGET_COPY_OUT_VENDOR := vendor

TARGET_USERIMAGES_USE_F2FS := true

# Security Patch Level
VENDOR_SECURITY_PATCH := 2019-05-05

# Get non-open-source specific aspects
include vendor/huawei/figo/BoardConfigVendor.mk
