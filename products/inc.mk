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

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=inc BUILD_ID=GRJ22 TARGET_DEVICE=inc BUILD_FINGERPRINT=verizon_wwe/inc/inc/inc:2.3.4/GRJ22/185897.2:user/release-keys PRODUCT_BRAND=verizon_wwe PRIVATE_BUILD_DESC="4.08.605.2 CL185897 release-keys" BUILD_NUMBER=185897.2 BUILD_UTC_DATE=1313665555

# Inherit common build.prop overrides
-include vendor/pete/products/common_versions.mk

# Extra inc overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pete/overlay/inc

# Copy inc specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/inc/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/passion/app/PassionQuickOffice.apk:system/app/QuickOffice.apk \
    vendor/pete/proprietary/sholes/media/audio/notifications/droid.ogg:system/media/audio/notifications/droid.ogg

