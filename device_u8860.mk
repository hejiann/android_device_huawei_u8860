$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/u8860/u8860-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8860/overlay

LOCAL_PATH := device/huawei/u8860
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# recovery
PRODUCT_COPY_FILES += \
    device/huawei/u8860/recovery/sbin/charge:recovery/root/sbin/charge

# bluetooth
PRODUCT_COPY_FILES += \
    device/huawei/u8860/bin/brcm_patchram_plus:system/bin/brcm_patchram_plus \
    device/huawei/u8860/bluetooth/init.bcm.bt.sh:system/etc/bluetooth/init.bcm.bt.sh

# firmware
PRODUCT_COPY_FILES += \
    device/huawei/u8860/firmware/cyttsp_7630_fluid.hex:system/etc/firmware/cyttsp_7630_fluid.hex \
    device/huawei/u8860/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/huawei/u8860/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/huawei/u8860/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/huawei/u8860/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/huawei/u8860/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/huawei/u8860/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/huawei/u8860/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/huawei/u8860/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/huawei/u8860/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/huawei/u8860/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/huawei/u8860/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8860
PRODUCT_DEVICE := u8860
