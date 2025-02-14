#
# Copyright (C) 2017-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from nairo device
$(call inherit-product, device/motorola/nairo/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lmodroid_nairo
PRODUCT_DEVICE := nairo
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g 5G plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2520
TARGET_SCREEN_WIDTH := 1080

# Build info
BUILD_FINGERPRINT := "motorola/nairo_retail/nairo:11/RPNS31.Q1-51-40-11-4-13/7e3c4:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=nairo_retail \
    PRIVATE_BUILD_DESC="nairo_retail-user 11 RPNS31.Q1-51-40-11-4-13 7e3c4 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola
