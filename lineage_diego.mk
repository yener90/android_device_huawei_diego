#
# Copyright (C) 2018 The LineageOS Project
#
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from diego device
$(call inherit-product, device/huawei/diego/device.mk)

PRODUCT_BRAND := Huawei
PRODUCT_MODEL := DIG-L21HN
PRODUCT_DEVICE := diego
PRODUCT_MANUFACTURER := Huawei
PRODUCT_NAME := lineage_diego

PRODUCT_GMS_CLIENTID_BASE := android-huawei

TARGET_VENDOR_PRODUCT_NAME := diego

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="DIG-L21HN-user 6.0 MRA58X C432B127 release-keys"

BUILD_FINGERPRINT := HUAWEI/DIG-L21HN/HWDIG-L8940:6.0/HUAWEIDIG-L21HN/C432B127:user/release-keys
