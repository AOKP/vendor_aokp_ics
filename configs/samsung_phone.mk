$(call inherit-product, vendor/aokp/configs/common.mk)

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/ApexLauncher.apk:system/app/ApexLauncher.apk \
    vendor/aokp/prebuilt/common/app/NovaLauncher.apk:system/app/NovaLauncher.apk

# Apps/Libs for SGS3
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/samsung/app/voicetalk.apk:system/app/voicetalk.apk \
    vendor/aokp/prebuilt/samsung/lib/libogg.so:system/lib/libogg.so \
    vendor/aokp/prebuilt/samsung/lib/libsamsungRecord.so:system/lib/libsamsungRecord.so \
    vendor/aokp/prebuilt/samsung/lib/libsamsungtts.so:system/lib/libsamsungtts.so \
    vendor/aokp/prebuilt/samsung/lib/libSamsungVoiceEngine.so:system/lib/libSamsungVoiceEngine.so \
    vendor/aokp/prebuilt/samsung/lib/libsensory.so:system/lib/libsensory.so \
    vendor/aokp/prebuilt/samsung/lib/libspeex.so:system/lib/libspeex.so \
    vendor/aokp/prebuilt/samsung/lib/libspeexJNI.so:system/lib/libspeexJNI.so \
    vendor/aokp/prebuilt/samsung/lib/libsvoxtts.so:system/lib/libsvoxtts.so \
    vendor/aokp/prebuilt/samsung/lib/libVLSilJNI.so:system/lib/libVLSilJNI.so
