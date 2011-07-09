# Inherit AOSP device configuration for crespo4g.
$(call inherit-product, device/samsung/crespo4g/full_crespo4g.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_crespo4g

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=sojus BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GRJ22 BUILD_FINGERPRINT=google/sojus/crespo4g:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="sojus-user 2.3.4 GRJ22 121341 release-keys" BUILD_NUMBER=121341 BUILD_UTC_DATE=1303507720 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

# Copy crespo4g specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/crespo4g/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pete/proprietary/crespo4g/lib/libearthmobile.so:system/lib/libearthmobile.so \
    vendor/pete/proprietary/crespo4g/media/bootanimation.zip:system/media/bootanimation.zip
