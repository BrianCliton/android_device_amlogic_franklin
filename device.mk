#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Bluetooth
BOARD_HAVE_BLUETOOTH := false

## Factory
PRODUCT_HOST_PACKAGES += \
    aml_image_packer

## Platform
TARGET_AMLOGIC_SOC := sm1

## TEE
TARGET_HAS_TEE := false


## Init-Files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init-files/init.amlogic.wifi_buildin.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.amlogic.wifi_buildin.rc

## Inherit from the common tree product makefile
$(call inherit-product, device/amlogic/sm1-common/sm1.mk)
