# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit a11-specific vendor tree
$(call inherit-product-if-exists, vendor/htc/a11ul/a11ul-vendor.mk)

# Inherit from a11ul
$(call inherit-product, device/htc/a11ul/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_a11ul
PRODUCT_DEVICE := a11ul
PRODUCT_BRAND := HTC
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := a11ul
