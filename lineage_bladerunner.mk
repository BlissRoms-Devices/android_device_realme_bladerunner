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

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_bladerunner
PRODUCT_DEVICE := bladerunner
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2076
PRODUCT_MANUFACTURER := realme

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE= RMX2076L1 \
    TARGET_PRODUCT= RMX2076 \
    PRIVATE_BUILD_DESC="RMX2076-user 12 RKQ1.211103.002 Q.202207142209 release-keys"

BUILD_FINGERPRINT := realme/RMX2076/RMX2076L1:12/RKQ1.211103.002/Q.202207142209:user/release-keys
