# Inherit device configuration for Fascinate.
$(call inherit-product, device/samsung/fascinate/full_fascinate.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_fascinate
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := fascinate
PRODUCT_MODEL := SAMSUNG-SCH-I500
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 TARGET_BOOTLOADER_BOARD_NAME=SCH-I500 BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.2.1/FRG83/60505:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.2.1 FRG83 60505 release-keys"

# Extra Fascinate overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/galaxys

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-Fascinate
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.1.0-RC0-Fascinate
endif

#
# Copy Fascinate specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip 
