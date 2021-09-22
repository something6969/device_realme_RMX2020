# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX2020 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX2020
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX2020
PRODUCT_MODEL := M2004J19C

PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR := realme
TARGET_VENDOR_PRODUCT_NAME := RMX2020
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="RMX2020-user 11 RP1A.200720.011 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/galahad_global/galahad:11/RP1A.200720.011/V12.0.2.0.RJCMIXM:user/release-keys
