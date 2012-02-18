$(call inherit-product, device/samsung/galaxytab/full_galaxytab.mk)

$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/galaxytab

PRODUCT_NAME := aokp_galaxytab
PRODUCT_DEVICE := galaxytab
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-P1000
PRODUCT_RELEASE_NAME := GalaxyTab

PRODUCT_COPY_FILES +=  \
    vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
