# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/common

# T-Mobile theme engine
include vendor/aokp/configs/themes_common.mk

PRODUCT_PACKAGES += \
    MusicVisualization \
    NoiseField \
    ROMControl \
    PhaseBeam \
    su \
    AppWidgetPicker \
    openvpn \
    SwagPapers

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

# Blobs common to all devices
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/app/Superuser.apk:system/app/Superuser.apk \
    vendor/aokp/prebuilt/common/app/LatinImeDictionaryPack.apk:system/app/LatinImeDictionaryPack.apk \
    vendor/aokp/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf  \
    vendor/aokp/prebuilt/common/app/Microbes.apk:system/app/Microbes.apk \
    vendor/aokp/prebuilt/common/app/TitaniumBackup.apk:system/app/TitaniumBackup.apk \
    vendor/aokp/prebuilt/common/app/NSTools.apk:system/app/NSTools.apk \
    vendor/aokp/prebuilt/common/app/voicetalk.apk:system/app/voicetalk.apk \
    vendor/aokp/prebuilt/common/app/UnicornPorn.apk:system/app/UnicornPorn.apk \
    vendor/aokp/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so
    
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
    vendor/aokp/prebuilt/samsung/lib/libVLSilJNI.so:system/lib/libVLSilJNI.so \
    
# init.d
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check \
    vendor/aokp/prebuilt/common/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
    vendor/aokp/prebuilt/common/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
    vendor/aokp/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/aokp/prebuilt/common/etc/init.d/05freemem:system/etc/init.d/05freemem \
    vendor/aokp/prebuilt/common/etc/init.d/06removecache:system/etc/init.d/06removecache \
    vendor/aokp/prebuilt/common/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
    vendor/aokp/prebuilt/common/etc/init.d/09cron:system/etc/init.d/09cron \
    vendor/aokp/prebuilt/common/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
    vendor/aokp/prebuilt/common/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
    vendor/aokp/prebuilt/common/etc/init_trigger.disabled:system/etc/init_trigger.disabled \
    vendor/aokp/prebuilt/common/etc/liberty.bsh:system/etc/liberty.bsh \
    vendor/aokp/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf
    
# Cron
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/cron/cron.conf:system/etc/cron/cron.conf \
    vendor/aokp/prebuilt/common/etc/cron/cron.hourly/00drop_caches:system/etc/cron/cron.hourly/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.daily/00drop_caches:system/etc/cron/cron.daily/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.weekly/00drop_caches:system/etc/cron/cron.weekly/00drop_caches \
    vendor/aokp/prebuilt/common/etc/cron/cron.hourly/01clear_cache:system/etc/cron/cron.hourly/01clear_cache \
    vendor/aokp/prebuilt/common/etc/cron/cron.daily/01clear_cache:system/etc/cron/cron.daily/01clear_cache \
    vendor/aokp/prebuilt/common/etc/cron/cron.weekly/01clear_cache:system/etc/cron/cron.weekly/01clear_cache 

#CM apps - Thanks to the great team over at CyanogenMod we have these awesome apps :)
PRODUCT_PACKAGES += \
    DSPManager \
    libcyanogen-dsp \
    audio_effects.conf

# Term binarry for support for market updates
PRODUCT_COPY_FILES +=  \
    vendor/aokp/proprietary/Term.apk:system/app/Term.apk \
    vendor/aokp/proprietary/lib/armeabi/libjackpal-androidterm3.so:system/lib/libjackpal-androidterm3.so 

# Term info for nano support
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/aokp/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown
    
# Adding files needed for extra camera features
PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/aokp/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd \
    vendor/aokp/prebuilt/common/media/video/AndroidInSpace.240p.mp4:system/media/video/AndroidInSpace.240p.mp4 \
    vendor/aokp/prebuilt/common/media/video/AndroidInSpace.480p.mp4:system/media/video/AndroidInSpace.480p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Disco.240p.mp4:system/media/video/Disco.240p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Disco.480p.mp4:system/media/video/Disco.480p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Sunset.240p.mp4:system/media/video/Sunset.240p.mp4 \
    vendor/aokp/prebuilt/common/media/video/Sunset.480p.mp4:system/media/video/Sunset.480p.mp4 

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Live wallpapers for all
PRODUCT_PACKAGES += \
		LiveWallpapers \
		LiveWallpapersPicker \
		MagicSmokeWallpapers \
		VisualizationWallpapers \
		librs_jni

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/aokp/configs/common_versions.mk

# Camera shutter sound property
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.camera-sound=1
