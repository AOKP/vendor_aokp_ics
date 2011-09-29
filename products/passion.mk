# Inherit AOSP device configuration for passion.
$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit common product files.
$(call inherit-product, vendor/pete/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := pete_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=passion BUILD_ID=GRK39F BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys" BUILD_NUMBER=189904 BUILD_UTC_DATE=1316544227 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

# Extra passion overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pete/overlay/passion

# Copy passion specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/pete/proprietary/common/etc/apns-conf.xml:system/etc/apns-conf.xml \
    vendor/pete/proprietary/passion/app/PassionQuickOffice.apk:system/app/PassionQuickOffice.apk \
    vendor/pete/proprietary/passion/media/bootanimation.zip:system/media/bootanimation.zip
