#
# Copyright (C) 2011 The Android Open-Source Project
# Copyright (C) 2011 The CyanogenMod Project
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

# This file includes all definitions that apply to ALL tuna devices, and
# are also specific to tuna devices
#
# Everything in this directory will become public

DEVICE_FOLDER := device/bn/ovation
TARGET_BOOTLOADER_BOARD_NAME := ovation

COMMON_FOLDER := device/bn/common
$(call inherit-product, $(COMMON_FOLDER)/common.mk)

# Device overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_FOLDER)/overlay/aosp

PRODUCT_COPY_FILES += \
	$(COMMON_FOLDER)/root/fstab.hd-common:root/fstab.ovation \
	$(DEVICE_FOLDER)/root/init.ro.hardware.rc:root/init.ovation.rc \
	$(COMMON_FOLDER)/root/init.ro.hardware.usb.rc:root/init.ovation.usb.rc \
	$(COMMON_FOLDER)/recovery/init.recovery.hd-common.rc:/root/init.recovery.ovation.rc \
	$(COMMON_FOLDER)/root/ueventd.hd-common.rc:root/ueventd.ovation.rc \

PRODUCT_COPY_FILES += $(COMMON_FOLDER)/root/initlogo.rle:root/initlogo.rle \

# Device settings
PRODUCT_PROPERTY_OVERRIDES += \
    usb.vendor=2080 \
    usb.product.adb=0005 \
    usb.product.mtpadb=0005 \

PRODUCT_AAPT_CONFIG := xlarge hdpi

# LCD density
PRODUCT_PROPERTY_OVERRIDES += ro.sf.lcd_density=260

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=128m \
    dalvik.vm.heapsize=256m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m
