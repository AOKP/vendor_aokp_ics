$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/aokp/prebuilt/common/app/NovaLauncher.apk:system/app/NovaLauncher.apk