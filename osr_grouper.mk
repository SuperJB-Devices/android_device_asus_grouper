# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/osr/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/osr/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

	
# Add Google apps
$(call inherit-product, vendor/google/minimal.mk)
$(call inherit-product, vendor/google/products/ears_support.mk)
$(call inherit-product, vendor/google/products/tts_support.mk)
$(call inherit-product, vendor/google/products/maps_support.mk)	
$(call inherit-product, vendor/google/products/facelock_support.mk)
$(call inherit-product, vendor/google/products/youtube_support.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := grouper
PRODUCT_NAME := osr_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.1.1/JRO03D/402395:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.1.1 JRO03D 402395 release-keys"
