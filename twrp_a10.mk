# Inherit common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from a10 device
$(call inherit-product, device/samsung/a10/device.mk)

PRODUCT_DEVICE := a10
PRODUCT_NAME := twrp_a10
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A105G
PRODUCT_MANUFACTURER := samsung
