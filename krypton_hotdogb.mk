#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hotdogb device
$(call inherit-product, device/oneplus/hotdogb/device.mk)

# Inherit some common krypton stuff.
$(call inherit-product, vendor/krypton/config/common_full_phone.mk)

TARGET_BUILD_LAWNCHAIR := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := krypton_hotdogb
PRODUCT_DEVICE := hotdogb
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := HD1905
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7T
PRODUCT_SYSTEM_DEVICE := OnePlus7T

PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
scr_resolution := 1080
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# OOS Gallery
TARGET_SHIPS_OOSGALLERY := false

# Build info
BUILD_FINGERPRINT := "OnePlus/OnePlus7T/OnePlus7T:11/RKQ1.201022.002/2202112156:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7T \
    TARGET_PRODUCT=OnePlus7T

PRODUCT_GMS_CLIENTID_BASE := android-oneplus
