#
# Copyright 2012 The Android Open Source Project
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

# Xperience additions
PRODUCT_RELEASE_NAME := GN-CDMA

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Specify phone tech before including full_phone
$(call inherit-product, vendor/ua/config/cdma.mk)

# Inherit common config
$(call inherit-product, vendor/ua/config/common.mk)

# Inherit gapps config
$(call inherit-product, vendor/ua/config/gapps.mk)
# Xperience additions end

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := full_mako
PRODUCT_DEVICE := mako
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := true

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/mako/device.mk)
$(call inherit-product-if-exists, vendor/lge/mako/device-vendor.mk)
