#
# Copyright (C) 2020 SuperiorOS
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common SuperiorOS stuff
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/superior/config/common.mk)
$(call inherit-product, vendor/miuicamera/common/common-vendor.mk)

# Launcher
TARGET_LAUNCHER := lawnchair

# Device identifier
PRODUCT_NAME := superior_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#OFFICIAL
export SUPERIOR_OFFICIAL=true

# Fingerprint
BUILD_FINGERPRINT := google/coral/coral:10/QQ3A.200805.001/6578210:user/release-keys

# Maintainer prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.superior.maintainer=MADMAX
