# Call this first so apn list is actually copied
$(call inherit-product, vendor/ev/config/gsm.mk)

# Product makefile
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME    := ev_mako
PRODUCT_BRAND   := google
PRODUCT_DEVICE  := mako
PRODUCT_MODEL   := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys"

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Fulsi
PRODUCT_VERSION_DEVICE_SPECIFIC :=

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Google Nexus 4\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at dl.evervolv.com\n------------------------------------------------\n"

# Copy compatible bootanimation
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/xga/media/bootanimation.zip:system/media/bootanimation.zip

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot

# Pull all dictionaries
TARGET_USE_KEYBOARD := international
