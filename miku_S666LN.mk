#
# Miku UI product for the itel RS4 (S666LN).
# ROM-independent parts live in product_common.mk.
#
include device/itel/S666LN/product_common.mk

ifeq ($(S666LN_IDENTITY),pixel10)
include device/itel/S666LN/identity_pixel10.mk
endif

# AOSP base (pengganti vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Miku UI
$(call inherit-product, vendor/miku/build/product/miku_product_phone.mk)

PRODUCT_SOURCE_ROOT_DIRS += prebuilts/misc/protobuf_vendorcompat

PRODUCT_NAME := miku_S666LN
