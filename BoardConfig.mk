######################################################
###     TWRP Recovery Modified for MultiRom        ###
###     Sky VEGA IRON 2 - Update 22/06/2016        ###
######################################################

PLATFORM_PATH := device/pantech/ef63s

# Include path
TARGET_SPECIFIC_HEADER_PATH := device/pantech/ef63s/include

TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330

# Architecture
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
BOARD_CUSTOM_BOOTIMG_MK := device/pantech/ef63s/mkbootimg.mk
TARGET_KERNEL_CONFIG := cyanogenmod_a910_defconfig
TARGET_KERNEL_SOURCE := kernel/pantech/msm8x74

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 2411724800
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26534215680
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Audio/media
TARGET_QCOM_AUDIO_VARIANT := caf-msm8974
TARGET_QCOM_MEDIA_VARIANT := caf-msm8974
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Display
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8974
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := false

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true

# QCOM Power
TARGET_POWERHAL_VARIANT := qcom

# power hal
BOARD_CHARGER_DISABLE_INIT_BLANK := true
HEALTHD_FORCE_BACKLIGHT_CONTROL := true
HEALTHD_BACKLIGHT_ON_LEVEL := 125

# Recovery
TARGET_RECOVERY_FSTAB := device/pantech/ef63s/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true

####################################################
### TWRP Recovery Edition: Updated: 22/06/2016   ###
####################################################

DEVICE_RESOLUTION 		:= 1080x1920
TW_THEME 			:= portrait_hdpi
TW_DEFAULT_EXTERNAL_STORAGE	:= true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_RECOVERY_PIXEL_FORMAT 	:= "RGBX_8888"
TW_TARGET_USES_QCOM_BSP		:= true
BOARD_HAS_LARGE_FILESYSTEM 	:= true
TW_NO_USB_STORAGE		:= true
TW_CRYPTO_FS_TYPE		:= "ext4"
TARGET_RECOVERY_QCOM_RTC_FIX 	:= true
BOARD_SUPPRESS_SECURE_ERASE 	:= true
BOARD_SUPPRESS_EMMC_WIPE	:= true
RECOVERY_SDCARD_ON_DATA		:= true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_EXTRA_LANGUAGES 		:= true
TW_DEFAULT_EXTERNAL_STORAGE 	:= true
TW_INCLUDE_JB_CRYPTO 		:= true
TW_INCLUDE_CRYPTO 		:= true
TW_BRIGHTNESS_PATH 		:= "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS 		:= 255
TW_DEFAULT_BRIGHTNESS 		:= 175
TARGET_USES_LOGD 		:= true
TW_SCREEN_BLANK_ON_BOOT 	:= true
TW_EXCLUDE_SUPERSU 		:= true
TW_TIME_ZONE_GUISEL		:= "THAIST-7;THAIDT"
RECOVERY_VARIANT		:= twrp

#####################################################
### MultiRom Recovery Updated: 02/07/2016         ###
#####################################################

TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/pantech/ef63s/multirom/mr_init_devices.c
MR_DPI := xhdpi
MR_DPI_MUL := 1.5
MR_FSTAB := device/pantech/ef63s/twrp.fstab
MR_KEXEC_MEM_MIN := 0x20000000
MR_KEXEC_DTB := true
MR_USE_MROM_FSTAB := true
MR_DPI_FONT := 340
MR_DEFAULT_BRIGHTNESS := 80
MR_ENCRYPTION := false

# MR_CONTINUOUS_FB_UPDATE := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/pantech/ef63s/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_DEVICE_VARIANTS := ef63l ef63k A910S A910L A910K
MR_DEVICE_SPECIFIC_VERSION := "_Tekcafe.vn"

MR_DEVICE_SPECIFIC_VERSION := b

include device/pantech/ef63s/multirom/MR_REC_VERSION.mk

ifeq ($(MR_REC_VERSION),)
MR_REC_VERSION := $(shell date -u +%Y%m%d)-01
endif

BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)

#MultiRom Hooks, So that we can run stock roms as secondary
MR_DEVICE_HOOKS := device/pantech/ef63s/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4

EXPERIMENTAL_USE_JAVA8	:=true

