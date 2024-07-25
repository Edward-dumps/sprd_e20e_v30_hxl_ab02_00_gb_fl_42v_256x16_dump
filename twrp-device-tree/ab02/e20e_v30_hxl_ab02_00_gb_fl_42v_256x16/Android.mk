#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),e20e_v30_hxl_ab02_00_gb_fl_42v_256x16)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
