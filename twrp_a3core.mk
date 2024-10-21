#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a3core device
$(call inherit-product, device/samsung/a3core/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/a3core/recovery/root,recovery/root)

PRODUCT_DEVICE := a3core
PRODUCT_NAME := twrp_a3core
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A032F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung
