DEVICE_PATH := device/lenovo/cube
BOARD_VENDOR := cube

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Bootanimation
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 480

# Platform
TARGET_BOARD_PLATFORM := mt8167
# TARGET_BOARD_PLATFORM_GPU := mali-720mp2

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a15

# TARGET_2ND_ARCH := arm
# TARGET_2ND_ARCH_VARIANT := armv7-a-neon
# TARGET_2ND_CPU_ABI := armeabi-v7a
# TARGET_2ND_CPU_ABI2 := armeabi
# TARGET_2ND_CPU_VARIANT := cortex-a15

# TARGET_KERNEL_ARCH := arm64
# TARGET_KERNEL_SOURCE := kernel/bn/st18c10bnn/
# TARGET_KERNEL_CONFIG := st18c10bnn_defconfig
# TARGET_KERNEL_VARIANT_CONFIG := st18c10bnn_defconfig
# TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/#aarch64-linux-android-4.9/bin/aarch64-linux-android-

# BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
# BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

# TARGET_PREBUILT_KERNEL := device/lenovo/cube/kernel
# BOARD_MKBOOTIMG_ARGS := --pagesize 2048 --base 0x40078000 --kernel_offset 0x00008000 --ramdisk_offset 0x05f88000 --second_offset 0x00f00000 --tags_offset 0x0df88000

# ARGET_KERNEL_ARCH := arm
# BOARD_KERNEL_BASE := 0x40078000
# BOARD_KERNEL_PAGESIZE := 2048
# BOARD_KERNEL_OFFSET := 0x14f88000
# BOARD_KERNEL_TAGS_OFFSET := 0x0df88000
# BOARD_RAMDISK_OFFSET := 0x14f88000
# BOARD_SECOND_OFFSET := 0x00e88000

# BOARD_KERNEL_CMDLINE := "bootopt=64S3,32N2,64N2 androidboot.selinux=permissive"

# BOARD_MKBOOTIMG_ARGS := \
#     --base $(BOARD_KERNEL_BASE) \
#     --pagesize $(BOARD_KERNEL_PAGESIZE) \
#     --kernel_offset $(BOARD_KERNEL_OFFSET) \
#     --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
#     --second_offset $(BOARD_SECOND_OFFSET)   \
#     --tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
#     --cmdline $(BOARD_KERNEL_CMDLINE)

# BOARD_KERNEL_IMAGE_NAME := zImage-dtb

# Kernel
BOARD_KERNEL_CMDLINE := "bootopt=64S3,32N2,64N2 androidboot.selinux=permissive"
BOARD_KERNEL_CMDLINE += "ro.adb.secure=0 ro.secure=0 ro.debuggable=1 persist.sys.usb.config=adb"
BOARD_KERNEL_BASE := 0x54ff8000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm

# Build Kernel with source code
# TARGET_KERNEL_SOURCE := kernel/lenovo/cube
# TARGET_KERNEL_CONFIG := mt8167s_ref_debug_defconfig
# TARGET_KERNEL_VARIANT_CONFIG := mt8167s_ref_debug_defconfig
# TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

# Use prebuilt kernel
TARGET_PREBUILT_KERNEL := device/lenovo/cube/bootimg-kernel

# For Mediatek Boot Image Headers
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk

BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# Build Vendor Image
TARGET_COPY_OUT_VENDOR := vendor
BOARD_USES_VENDORIMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4


# Binder API version
# TARGET_USES_64_BIT_BINDER := true


# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# BT
BOARD_HAS_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Graphics
# BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
TARGET_USES_HWC2 := true
TARGET_USES_HWC2ON1ADAPTER := false
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false

# Panel vsync offsets
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432 # 32MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912 # 512MB
BOARD_VENDORIMAGE_PARTITION_SIZE := 67108864 # 64MB
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5366967808
BOARD_NEEDS_VENDORIMAGE_SYMLINK :=  true
BOARD_FLASH_BLOCK_SIZE := 131072 # BOARD_KERNEL_PAGESIZE  * 64
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
# TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
TARGET_USES_MKE2FS := true
BLOCK_BASED_OTA := true

# Seccomp filters
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Shims
# TARGET_LD_SHIM_LIBS := \
#    /system/vendor/lib/libwvm.so|libshim_wvm.so \
#    /system/lib/libgui_ext.so|libshim_gui.so \
#    /system/lib64/libgui_ext.so|libshim_gui.so \
#    /system/lib/libui_ext.so|libshim_ui.so \
#    /system/lib64/libui_ext.so|libshim_ui.so \
#    /system/bin/boot_logo_updater|libshim_asc.so \
#    /system/bin/kpoc_charger|libshim_asc.so \
#    /system/lib/libshowlogo.so|libshim_asc.so \
#    /system/bin/xlog|libshim_xlog.so \
#    /system/bin/program_binary_service|libshim_program_binary_service.so \
#    /system/lib/hw/audio.primary.mt8163.so|libshim_audio.so \
#    /system/lib64/hw/audio.primary.mt8163.so|libshim_audio.so \
#    /system/bin/audiocmdservice_atci|libshim_audio.so \
#    /system/lib/libcam_utils.so|libshim_asc.so \
#    /system/lib64/libcam_utils.so|libshim_asc.so \
#    /system/lib/libcam.utils.sensorlistener.so|libshim_gui.so \
#    /system/lib64/libcam.utils.sensorlistener.so|libshim_gui.so \
#    /system/lib/libsource.so|libshim_asc.so \
#    /system/lib64/libsource.so|libshim_asc.so \
#    /system/bin/sink|libshim_asc.so \
#    /system/lib/libsink.so|libshim_asc.so \
#    /system/lib64/libsink.so|libshim_asc.so \
#    /system/lib/libstagefright_soft_ddpdec.so|libshim_omx.so

# Software Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
# BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE:= cube

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Fix video autoscaling on old OMX decoders
# TARGET_OMX_LEGACY_RESCALING:= true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# No hardware camera
USE_CAMERA_STUB := true

# BACKLIGHTS
# TARGET_PROVIDES_LIBLIGHT := true

# System Prop
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# SENSORS
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Vendor Security Patch
# VENDOR_SECURITY_PATCH := 2020-02-12


# Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true


# System Prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Sepolicy
BOARD_SEPOLICY_DIRS += \
        $(DEVICE_PATH)/sepolicy

SELINUX_IGNORE_NEVERALLOWS := true

# A/B Update
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    system \
    vendor

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_SYSTEM_OTHER_ODEX := true

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_DEVICE_DIRS += $(COMMON_PATH)
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab

# Disable AVB
BOARD_AVB_ENABLE := false

# Bootloader
TARGET_NO_BOOTLOADER := false