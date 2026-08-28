FDEVICE="earth"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep $FDEVICE)
   if [ -n "$chkdev" ]; then
      FOX_BUILD_DEVICE="$FDEVICE"
   else
      chkdev=$(set | grep BASH_ARGV | grep $FDEVICE)
      [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export OF_MAINTAINER_PATCH_VERSION=1
    export OF_MAINTAINER="Shangshanruo"
    export OF_MAINTAINER_AVATAR=/dev/null

    export OF_SCREEN_H=2472
    export OF_STATUS_H=65
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=0

    export OF_USE_MAGISKBOOT=1
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=0
    export OF_NO_RELOAD_MAGISKBOOT=1
    export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
    export OF_NO_MIUI_PATCH_WARNING=1

    export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
    export OF_KEEP_DM_VERITY=1
    export OF_USE_MAGISKBOOT_COMPRESSED_WEBP=0

    export OF_ENABLE_LPTOOLS=1
    export OF_QUICK_BACKUP_LIST="/boot;/data;"

    export FOX_ENABLE_APP_MANAGER=1
    export FOX_USE_BASH_SHELL=1

    export OF_FBE_METADATA_MOUNT_IGNORE=1
    export OF_SKIP_ORANGEFOX_PROCESS=1
    export OF_PATCH_AVB20=1

    export FOX_USE_TAR_BINARY=1
    export FOX_USE_SED_BINARY=1
    export FOX_USE_XZ_UTILS=1

    export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=0
    export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
    export OF_DISABLE_MIUI_OTA_BY_DEFAULT=0

    export OF_RUN_POST_FORMAT_PROCESS=1
    export OF_FLASHLIGHT_ENABLE=1
    export OF_FL_PATH1="/sys/class/leds/flashlight/brightness"
    export OF_USE_NEW_MAGISKBOOT=1
fi