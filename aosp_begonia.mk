#
# Copyright (C) 2022 PixelPlusUI
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := begonia

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from begonia device
$(call inherit-product, device/redmi/begonia/device.mk)

# Inherit some common PixelPlusUI stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit some extras stuff
$(call inherit-product-if-exists, vendor/extras/extras.mk)
$(call inherit-product, vendor/gcambsg/config.mk)
$(call inherit-product, vendor/v4afx/config.mk)
$(call inherit-product, vendor/dirac/config.mk)
$(call inherit-product, vendor/ANXCamera/config.mk)

# Fix uses broken libraries
RELAX_USES_LIBRARY_CHECK := true
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_HALF_RES := true

# PixelPlusUI Flags
CUSTOM_BUILD_TYPE := OFFICIAL
PPUI_MAINTAINER := 7Soldier
IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_SUPPORTS_CALL_RECORDING := true

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := begonia
PRODUCT_NAME := aosp_begonia
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 8 Pro
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Redmi/begonia/begonia:11/RP1A.200720.011/V12.5.7.0.RGGMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="begonia-user 11 RP1A.200720.011 V12.5.7.0.RGGMIXM release-keys" \
    PRODUCT_NAME="begonia" \
    TARGET_DEVICE="begonia"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
