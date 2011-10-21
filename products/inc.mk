# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/inc/inc.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_inc
PRODUCT_BRAND := htc
PRODUCT_DEVICE := inc
PRODUCT_MODEL := Incredible
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=inc BUILD_ID=GRJ22 BUILD_DISPLAY_ID=GWK74 TARGET_DEVICE=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc:2.3.4/GRJ22/140944.3:user/release-keys PRODUCT_BRAND=verizon_wwe PRIVATE_BUILD_DESC="4.06.605.3 CL140944 release-keys" BUILD_NUMBER=140944.3 BUILD_UTC_DATE=1313665555 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

# Extra inc overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pete/overlay/inc

# Copy inc specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/inc/app/Quickoffice.apk:system/app/Quickoffice.apk \
    vendor/pete/proprietary/inc/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/sholes/media/audio/notifications/droid.ogg:system/media/audio/notifications/droid.ogg

