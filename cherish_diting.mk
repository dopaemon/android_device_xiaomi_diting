#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from diting device
$(call inherit-product, device/xiaomi/diting/device.mk)

# Inherit from common cherish configuration
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# CherishOS
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true
TARGET_HAS_UDFPS := true
CHERISH_BUILD_TYPE := UNOFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.cherish.maintainer=KernelPanix

PRODUCT_NAME := cherish_diting
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
