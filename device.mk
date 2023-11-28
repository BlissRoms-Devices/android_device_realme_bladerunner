#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/realme/sm8250-common/common.mk)

# Inherit from vendor blobs
$(call inherit-product, vendor/realme/bladerunner/bladerunner-vendor.mk)

# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_platform_info.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/bladerunner/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_ODM)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/bladerunner/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/bladerunner/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/bladerunner/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/bladerunner_48m/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_ODM)/overlay/prj_20607/odm/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/bladerunner_48m/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/overlay/prj_20607/vendor/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/bladerunner_48m/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_ODM)/overlay/prj_20607/odm/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/bladerunner_48m/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/overlay/prj_20607/vendor/etc/sound_trigger_mixer_paths.xml

# Display
PRODUCT_PACKAGES += \
    disable_configstore

# Init
PRODUCT_PACKAGES += \
    init.oplus.perf.rc

# Overlays
PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget \
    OPlusExtrasResTarget \
    OPlusSettingsProviderResBladerunner \
    OPlusSettingsProviderResBladerunner_48m \
    OPlusSystemUIResTarget

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-bliss
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/realme/bladerunner
