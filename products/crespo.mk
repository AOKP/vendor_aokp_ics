# Inherit AOSP device configuration for crespo.
$(call inherit-product, device/samsung/crespo/full_crespo.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_crespo
PRODUCT_BRAND := google
PRODUCT_DEVICE := crespo
PRODUCT_MODEL := Nexus S
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=soju BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys" BUILD_NUMBER=121341 BUILD_UTC_DATE=1303507835 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

# Copy crespo specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/crespo4g/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/pete/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/pete/proprietary/common/etc/permissions/com.google.android.nfc_extras.xml:system/etc/permissions/com.google.android.nfc_extras.xml \
    vendor/pete/proprietary/common/framework/com.android.nfc_extras.jar:system/framework/com.android.nfc_extras.jar \
    vendor/pete/proprietary/common/lib/libearthmobile.so:system/lib/libearthmobile.so \
    vendor/pete/proprietary/common/lib/libshopperimageutils-3.so:system/lib/libshopperimageutils-3.so \
    vendor/pete/proprietary/common/lib/libshoppervorbisencoder-2.so:system/lib/libshoppervorbisencoder-2.so \
    vendor/pete/proprietary/common/lib/libshopperzxingutils-4.so:system/lib/libshopperzxingutils-4.so \
    vendor/pete/proprietary/crespo4g/lib/hw/lights.s5pc110.so:system/lib/hw/lights.s5pc110.so \
    vendor/pete/proprietary/crespo4g/media/bootanimation.zip:system/media/bootanimation.zip
