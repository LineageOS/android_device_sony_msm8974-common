LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := toybox_static
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := bin/toybox_static
LOCAL_MODULE_PATH  := $(TARGET_RECOVERY_ROOT_OUT)/system/bin
include $(BUILD_PREBUILT)
