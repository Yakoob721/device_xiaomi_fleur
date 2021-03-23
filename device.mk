#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/fleur

# Dynamic Partitions
PRODUCT_BUILD_SUPER_PARTITION := false

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/fleur/fleur-vendor.mk)
