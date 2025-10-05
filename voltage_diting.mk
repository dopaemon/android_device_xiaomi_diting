#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from diting device
$(call inherit-product, device/xiaomi/diting/device.mk)

# Inherit from common voltage configuration
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Voltage Flags
TARGET_FACE_UNLOCK_SUPPORTED := true
VOLTAGE_BUILD_TYPE := UNOFFICIAL
EXTRA_UDFPS_ANIMATIONS := true

# Boost Framework
VOLTAGE_CPU_SMALL_CORES := 0,1,2
VOLTAGE_CPU_BIG_CORES   := 3,4,5,6,7
VOLTAGE_ALL_CORES       := 0-7
VOLTAGE_CPU_SYS_BG      := 0-3
VOLTAGE_CPU_BG          := 0-2
VOLTAGE_CPU_FG          := 0-5
VOLTAGE_CPU_LIMIT_BG    := 0-1
VOLTAGE_CPU_LIMIT_UI    := 0-2
VOLTAGE_CPU_DISPLAY     := 0-5

PRODUCT_NAME := voltage_diting
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
