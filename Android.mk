LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),CK6n)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
