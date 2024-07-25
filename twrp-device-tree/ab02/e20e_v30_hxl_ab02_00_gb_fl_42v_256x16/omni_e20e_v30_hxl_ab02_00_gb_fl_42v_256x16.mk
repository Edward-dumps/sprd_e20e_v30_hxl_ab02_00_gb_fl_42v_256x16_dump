#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from e20e_v30_hxl_ab02_00_gb_fl_42v_256x16 device
$(call inherit-product, device/ab02/e20e_v30_hxl_ab02_00_gb_fl_42v_256x16/device.mk)

PRODUCT_DEVICE := e20e_v30_hxl_ab02_00_gb_fl_42v_256x16
PRODUCT_NAME := omni_e20e_v30_hxl_ab02_00_gb_fl_42v_256x16
PRODUCT_BRAND := SPRD
PRODUCT_MODEL := AB02
PRODUCT_MANUFACTURER := ab02

PRODUCT_GMS_CLIENTID_BASE := android-ab02

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="e20e_v30_hxl_ab02_00_gb_fl_42v_256x16-user 8.1.0 OPM2.171019.012 19114 release-keys"

BUILD_FINGERPRINT := SPRD/sl8541e/sl8541e:8.1.0/OPM2.171019.012/19114:user/release-keys
