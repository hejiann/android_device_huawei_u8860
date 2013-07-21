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

# permissions
PRODUCT_COPY_FILES += \
    device/huawei/u8860/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    device/huawei/u8860/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    device/huawei/u8860/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    device/huawei/u8860/permissions/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    device/huawei/u8860/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    device/huawei/u8860/permissions/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    device/huawei/u8860/permissions/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    device/huawei/u8860/permissions/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    device/huawei/u8860/permissions/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    device/huawei/u8860/permissions/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    device/huawei/u8860/permissions/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    device/huawei/u8860/permissions/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    device/huawei/u8860/permissions/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    device/huawei/u8860/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    device/huawei/u8860/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    device/huawei/u8860/permissions/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# etc
PRODUCT_COPY_FILES += \

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_u8860
PRODUCT_DEVICE := u8860
