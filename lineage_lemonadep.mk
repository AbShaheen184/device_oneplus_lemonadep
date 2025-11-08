#
# Copyright (C) 2021-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonadep device
$(call inherit-product, device/oneplus/lemonadep/device.mk)

# Inherit some common VoltageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_lemonadep
PRODUCT_DEVICE := lemonadep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2125

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9Pro-user 14 UKQ1.230924.001 R.1d5a0be-1-4ffee release-keys" \
    BuildFingerprint=OnePlus/OnePlus9Pro/OnePlus9Pro:14/UKQ1.230924.001/R.1d5a0be-1-4ffee:user/release-keys \
    DeviceName=OnePlus9Pro \
    DeviceProduct=OnePlus9Pro \
    SystemDevice=OnePlus9Pro \
    SystemName=OnePlus9Pro


# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Lunch banner maintainer variable
RISING_MAINTAINER="Abuzar Shaheen"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer)
# Set RISING_MAINTAINER for version control
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="sm8350" \
    RisingMaintainer="Abuzar Shaheen"

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

# CORE build flags
WITH_GMS := true
