#
# Copyright (C) 2017 The LineageOS Project
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

### INHERIT FROM YOSHINO-COMMON
include device/sony/yoshino-common/BoardConfigPlatform.mk
include vendor/sony/maple/BoardConfigVendor.mk

DEVICE_PATH := device/sony/maple

PRODUCT_PLATFORM := yoshino

### BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := G8141

### KERNEL
TARGET_KERNEL_CONFIG := lineage-msm8998-yoshino-maple_defconfig

BOARD_KERNEL_CMDLINE += androidboot.hardware=maple

# Point to the prebuilt kernel
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

### PARTITIONS
# See also /proc/partitions on the device
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 7707033600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54587760640
# size of oem partition
BOARD_VENDORIMAGE_PARTITION_SIZE := 419430400

### DISPLAY
TARGET_SCREEN_DENSITY := 410

### PROPS
# Add device-specific ones
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
