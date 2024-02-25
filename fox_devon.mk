##########################################
##### OrangeFox specific build flags #####
##########################################

# Maintainer
OF_MAINTAINER := ChonDoe

# Screen
OF_SCREEN_H := 2400
OF_STATUS_H := 100
OF_STATUS_INDENT_LEFT := 48
OF_STATUS_INDENT_RIGHT := 48
OF_CLOCK_POS := 1

# Misc
OF_IGNORE_LOGICAL_MOUNT_ERRORS := 1
OF_HIDE_NOTCH := 1
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_QUICK_BACKUP_LIST := /boot;/data;
OF_FLASHLIGHT_ENABLE := 0

# Repair/Format bind-umount
OF_UNBIND_SDCARD_F2FS=1
