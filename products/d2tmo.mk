# Inherit AOSP device configuration for pyramid.
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_phone.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/aokp/configs/gsm.mk)

# skyrocket overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/d2tmo

# Setup device specific product configuration.
PRODUCT_NAME := aokp_d2tmo
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2tmo
PRODUCT_MODEL := SGH-T999
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="d2tmo-user 4.0.4 IMM76D T999UVALEM release-keys" PRIVATE_BUILD_DESC="samsung/d2tmo/d2tmo:4.0.4/IMM76D/T999UVALEM:user/release-keys"

# Camera
PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation.zip

