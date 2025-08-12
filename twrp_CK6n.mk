# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs - 
# SDCard replacement functionality
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enable Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-CK6n device
$(call inherit-product, device/tecno/CK6n/device.mk)

PRODUCT_DEVICE := CK6n
PRODUCT_NAME := twrp_CK6n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := CK6n
PRODUCT_MANUFACTURER := Tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ck6nu_h6929-user 12 SP1A.210812.016 817370 release-keys"

BUILD_FINGERPRINT := TECNO/CK6n-OP/TECNO-CK6n:12/SP1A.210812.016/250218V1080:user/release-keys
