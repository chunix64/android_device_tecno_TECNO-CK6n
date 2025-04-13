#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from CK6n device
$(call inherit-product, device/tecno/CK6n/device.mk)

PRODUCT_NAME := twrp_CK6n
PRODUCT_DEVICE := CK6n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CK6n
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ck6nu_h6929-user 12 SP1A.210812.016 817370 release-keys"

BUILD_FINGERPRINT := TECNO/CK6n-OP/TECNO-CK6n:12/SP1A.210812.016/250218V1080:user/release-keys
