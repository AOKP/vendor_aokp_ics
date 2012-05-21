$(call inherit-product, device/samsung/mesmerizemtd/full_mesmerizemtd.mk)

# Release name
PRODUCT_RELEASE_NAME := Mesmerize

$(call inherit-product, vendor/aokp/configs/samsung_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/aries-common

# $(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mesmerizemtd
PRODUCT_NAME := aokp_mesmerizemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I500

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 BUILD_ID=IML74K BUILD_FINGERPRINT=google/soju/crespo:2.3.4/GRJ22/121341:user/release-keys PRIVATE_BUILD_DESC="soju-user 2.3.4 GRJ22 121341 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/mesmerizemtd/media/boot_audio.unicorn:system/media/boot_audio.unicorn \
        vendor/aokp/prebuilt/mesmerizemtd/app/Phone.apk:system/app/Phone.apk \
	vendor/aokp/prebuilt/mesmerizemtd/media/bootanimation.zip:system/media/bootanimation.zip
