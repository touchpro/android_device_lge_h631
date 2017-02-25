PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

$(call inherit-product, device/lge/h631/full_h631.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

PRODUCT_NAME := lineage_h631

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_DEVICE="g4stylusn" PRODUCT_NAME="g4stylusn_tmo_us" BUILD_FINGERPRINT="lge/g4stylusn_tmo_us/g4stylusn:5.1.1/LMY47V/1521710042a4b:user/release-keys" PRIVATE_BUILD_DESC="g4stylusn_tmo_us-user 5.1.1 LMY47V 1521710042a4b release-keys"
