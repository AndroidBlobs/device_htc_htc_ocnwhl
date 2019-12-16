# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from htc_ocnwhl device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := htc
PRODUCT_DEVICE := htc_ocnwhl
PRODUCT_MANUFACTURER := htc
PRODUCT_NAME := lineage_htc_ocnwhl
PRODUCT_MODEL := htc_ocnwhl

PRODUCT_GMS_CLIENTID_BASE := android-htc
TARGET_VENDOR := htc
TARGET_VENDOR_PRODUCT_NAME := htc_ocnwhl
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="2.33.651.10 9.0_g CL1002308 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := htc/ocnwhl_00651/htc_ocnwhl:8.0.0/OPR6.170623.013/1002308.10:user/release-keys
