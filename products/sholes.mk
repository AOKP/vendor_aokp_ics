# Inherit AOSP device configuration for sholes.
$(call inherit-product, device/motorola/sholes/sholes.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Inherit sounds Motorola chose for sholes.
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage3.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=voles BUILD_ID=FRG83G BUILD_DISPLAY_ID=GWK74 TARGET_DEVICE=sholes BUILD_FINGERPRINT=verizon/voles/sholes/sholes:2.2.2/FRG83G/91102:user/release-keys PRODUCT_BRAND=verizon PRIVATE_BUILD_DESC="voles-user 2.2.2 FRG83G 91102 release-keys" BUILD_NUMBER=91102 BUILD_UTC_DATE=1294972140 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

# Copy sholes specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/sholes/app/SholesQuickOffice.apk:system/app/SholesQuickOffice.apk \
    vendor/pete/proprietary/sholes/bin/compcache:system/bin/compcache \
    vendor/pete/proprietary/sholes/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/pete/proprietary/sholes/media/audio/notifications/droid.ogg:system/media/audio/notifications/droid.ogg \
    vendor/pete/proprietary/sholes/media/audio/ringtones/DroidInvasion.ogg:system/media/audio/ringtones/DroidInvasion.ogg \
    vendor/pete/proprietary/sholes/xbin/sys:system/xbin/sys

