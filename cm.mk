# Release name
CM_DEVICE := sQuad782_3G
PRODUCT_RELEASE_NAME := sQuad782_3G
TARGET_OTA_ASSERT_DEVICE :=sQuad782_3G

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/themes_common.mk)

# Inherit device configuration
$(call inherit-product, device/explay/porcupine/full_porcupine.mk)

## Device identifier. This must come after all inclusions
PRODUCT_MODEL := sQuad7.82_3G
PRODUCT_BRAND := Explay
PRODUCT_NAME := cm_ro.sQuad782_3G
PRODUCT_DEVICE := Tablet
PRODUCT_MANUFACTURER := MediaTek
