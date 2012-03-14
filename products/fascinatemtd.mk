$(call inherit-product, device/samsung/fascinatemtd/full_fascinatemtd.mk)

# Release name
PRODUCT_RELEASE_NAME := Fascinate

$(call inherit-product, vendor/aokp/configs/common_phone.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/aries-common

# $(call inherit-product, vendor/cm/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fascinatemtd
PRODUCT_NAME := aokp_fascinatemtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SCH-I500

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=ICL53F BUILD_FINGERPRINT=google/mysid/fascinatemtd:4.0.3/ICL53F/235179:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.0.3 ICL53F 235179 release-keys" BUILD_NUMBER=235179

# boot animation
PRODUCT_COPY_FILES += \
        vendor/aokp/prebuilt/tuna/Thinkfree.apk:system/app/Thinkfree.apk \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
