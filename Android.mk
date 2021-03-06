
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_CPPFLAGS += -I$(LOCAL_PATH)/../../external/linux-lib/vpu/
LOCAL_SRC_FILES := camera.cpp cameraParams.cpp fb2_overlay.cpp fourcc.cpp hexDump.cpp memcopy.S v4l_display.cpp
LOCAL_MODULE := libbdhw
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES:=devregs.cpp
LOCAL_MODULE:=devregs
LOCAL_CPPFLAGS += -DANDROID
LOCAL_SHARED_LIBRARIES:=libc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES:=inputattach.c
LOCAL_MODULE:=inputattach
LOCAL_CPPFLAGS += -DANDROID
LOCAL_SHARED_LIBRARIES:=libc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES:=input_mt_read.cpp
LOCAL_MODULE:=input_mt_read
LOCAL_CPPFLAGS += -DANDROID
LOCAL_SHARED_LIBRARIES:=libc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := camera_to_fb2
LOCAL_SRC_FILES := camera_to_fb2.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := camera
LOCAL_SRC_FILES := camera.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_CPPFLAGS += -DSTANDALONE_CAMERA
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := fb2_overlay
LOCAL_SRC_FILES := fb2_overlay.cpp
LOCAL_CPPFLAGS += -DOVERLAY_MODULETEST
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := ov5640
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)/etc/firmware
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := flipper
LOCAL_SRC_FILES := flipper.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := fbSet
LOCAL_SRC_FILES := fbSet.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := physMem
LOCAL_SRC_FILES := physMem.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
LOCAL_CPPFLAGS += -DSTANDALONE=1
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := ipu_bufs_mx53
LOCAL_CPPFLAGS += -DMX53
LOCAL_SRC_FILES := ipu_bufs.cpp physMem.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_SRC_FILES:=pmic.cpp
LOCAL_MODULE:=pmic
LOCAL_CPPFLAGS += -DANDROID
LOCAL_SHARED_LIBRARIES:=libc
LOCAL_C_INCLUDES += $(LOCAL_PATH)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := ipu_bufs_mx51
LOCAL_CPPFLAGS += -DMX51
LOCAL_SRC_FILES := ipu_bufs.cpp physMem.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := inputRead
LOCAL_SRC_FILES := inputRead.cpp
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libc
LOCAL_STATIC_LIBRARIES := libbdhw
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := battery_test
LOCAL_SRC_FILES := battery_test.c
LOCAL_C_INCLUDES += $(LOCAL_PATH)
LOCAL_SHARED_LIBRARIES := libcutils libm
include $(BUILD_EXECUTABLE)
