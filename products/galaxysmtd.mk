$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Release name
PRODUCT_RELEASE_NAME := GalaxyS

$(call inherit-product, vendor/aokp/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/aries-common

# $(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := galaxysmtd
PRODUCT_NAME := aokp_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I9000

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I9000 TARGET_DEVICE=SGH-I9000 BUILD_ID=IML74K BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"
