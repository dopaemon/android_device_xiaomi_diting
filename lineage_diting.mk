#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from diting device
$(call inherit-product, device/xiaomi/diting/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionOS
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
AXION_CAMERA_REAR_INFO := 200,8,2
AXION_CAMERA_FRONT_INFO := 20
AXION_MAINTAINER := KernelPanix
AXION_PROCESSOR := Snapdragon_8_Plus_Gen_1
BYPASS_CHARGE_SUPPORTED ?= false
HBM_SUPPORTED := false
TARGET_INCLUDE_VIPERFX := true
TORCH_STR_SUPPORTED := true

PRODUCT_SYSTEM_PROPERTIES += \
    persist.sys.perf.scroll_opt = true \
    persist.sys.perf.scroll_opt.heavy_app = 2

PRODUCT_NAME := lineage_diting
PRODUCT_DEVICE := diting
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 22081212UG

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="diting_global-user 15 AQ3A.241006.001 OS2.0.203.0.VLFMIXM release-keys" \
    BuildFingerprint=Xiaomi/diting_global/diting:15/AQ3A.241006.001/OS2.0.203.0.VLFMIXM:user/release-keys \
    DeviceProduct=diting \
    SystemName=diting_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
