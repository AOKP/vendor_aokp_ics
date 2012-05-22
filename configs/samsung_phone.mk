$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/NovaLauncher.apk:system/app/NovaLauncher.apk

# Apps/Libs for SGS3
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/samsung/app/voicetalk.apk:system/app/voicetalk.apk
    
PRODUCT_PACKAGES += \
        Trebuchet
