## Specify phone tech before including full_phone
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

$(call inherit-product, device/samsung/cooper/full_cooper.mk)

$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/cooper

PRODUCT_NAME := aokp_cooper
PRODUCT_DEVICE := cooper
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S5830
PRODUCT_RELEASE_NAME := cooper
PRODUCT_VERSION_DEVICE_SPECIFIC := -GT-S5830

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=cooper BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/GT-S5830/GT-S5830:2.3.4/GINGERBREAD/XXKPH:user/release-keys PRIVATE_BUILD_DESC="cooper-user 2.3.4 GRJ22 121341 release-keys"


PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
