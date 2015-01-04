# Inherit device configuration for pine.
$(call inherit-product, device/hp/pine/full_pine.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_pine
PRODUCT_BRAND := hp
PRODUCT_DEVICE := pine
PRODUCT_MODEL := pine
PRODUCT_MANUFACTURER := HP
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100 PRODUCT_BRAND=samsung BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/BGLP8:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K BGLP8 release-keys" BUILD_NUMBER=BGLP8
TARGET_SCREEN_HEIGHT := 600
TARGET_SCREEN_WIDTH := 1024
