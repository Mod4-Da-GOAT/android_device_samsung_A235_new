#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := a23

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a23/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a23/recovery/root,recovery/root)

PRODUCT_DEVICE := a23
PRODUCT_NAME := twrp_a23
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A235
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a23nsxx-user 11 RP1A.200720.012 A235FXXSCEYJ3 release-keys"

BUILD_FINGERPRINT := samsung/a23nsxx/a23:11/RP1A.200720.012/A235FXXSCEYJ3:user/release-keys
