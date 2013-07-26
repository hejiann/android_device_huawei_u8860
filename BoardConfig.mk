USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/u8860/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := u8860
TARGET_OTA_ASSERT_DEVICE := u8860,hwu8860

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04200000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x05300000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0fc60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/huawei/u8860/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

# Recovery
TARGET_RECOVERY_FSTAB := device/huawei/u8860/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/huawei/u8860/recovery/init.rc

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/huawei/u8860/releasetools/ota_from_target_files

