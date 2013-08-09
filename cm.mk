## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := pine

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/hp/pine/device_pine.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pine
PRODUCT_NAME := cm_pine
PRODUCT_BRAND := hp
PRODUCT_MODEL := pine
PRODUCT_MANUFACTURER := hp
