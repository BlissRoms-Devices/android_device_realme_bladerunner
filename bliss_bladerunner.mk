#
# Copyright (C) 2023 The LineageOS Project
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

# Inherit from bladerunner device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common BlissROMs stuff
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

BLISS_BUILDTYPE=OFFICIAL
TARGET_STOCK_GAPPS := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_PIXEL_CHARGER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

# UDFPS Animations
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_NAME := bliss_bladerunner
PRODUCT_DEVICE := bladerunner
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2076
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    SystemDevice=RMX2076 \
    DeviceName=RMX2076L1 \
    DeviceProduct=RMX2076 \
    SystemName=RMX2076 \
    BuildDesc="RMX2076-user 12 RKQ1.211103.002 Q.202207142209 release-keys"
