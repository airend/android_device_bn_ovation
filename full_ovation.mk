# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for ovation hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Use 48 kHz UI sounds
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage13_48.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/bn/ovation/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_ovation
PRODUCT_DEVICE := ovation
PRODUCT_BRAND := Android
PRODUCT_MODEL := NookHD+
PRODUCT_MANUFACTURER := BN

# Device build info and fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=HDplus \
    BUILD_FINGERPRINT="NOOK/HDplus/ovation:4.0.4/IMM76L/2.2.1.8015:user/release-keys" \
    PRIVATE_BUILD_DESC="HDplus-user 4.0.4 IMM76L 2.2.1.8015 release-keys"
