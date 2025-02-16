#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ruyi device
$(call inherit-product, device/xiaomi/ruyi/device.mk)

PRODUCT_DEVICE := ruyi
PRODUCT_NAME := twrp_ruyi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2405CPX3DG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ruyi_global-user 14 UKQ1.240116.001 V816.0.4.0.UNIMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/ruyi_global/ruyi:14/UKQ1.240116.001/V816.0.4.0.UNIMIXM:user/release-keys
