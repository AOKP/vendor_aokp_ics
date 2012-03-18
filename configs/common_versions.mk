# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_DISPLAY_ID=IML74K BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

CURRENT_VERSION=HyDrOG3N-ICS-$(shell date +"%d-%m-%y")-$(PRODUCT_RELEASE_NAME)

ifneq ($(TARGET_DEVICE),p999)
    ifeq ($(TARGET_DEVICE),p990)
	    PRODUCT_PROPERTY_OVERRIDES += \
	        ro.cm.version=$(CURRENT_VERSION)
     else
         PRODUCT_PROPERTY_OVERRIDES += \
	        ro.modversion=$(CURRENT_VERSION)
    endif
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.cm.version=$(CURRENT_VERSION)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=TeamHydra

# Goo updater app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=hydrog3enics \
    ro.goo.rom=$(TARGET_PRODUCT) \
    ro.goo.version=5


