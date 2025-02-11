LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := javam3g
LOCAL_CFLAGS    := -O3 -DM3G_TARGET_ANDROID -DM3G_GL_ES_1_1 #-DM3G_DEBUG
LOCAL_CXXFLAGS  := $(LOCAL_CFLAGS)
LOCAL_LDLIBS    := -llog -lEGL -lGLESv1_CM -lz -ljnigraphics
LOCAL_C_INCLUDES := $(LOCAL_PATH)/m3g/inc/
LOCAL_SRC_FILES := \
	m3g/CSynchronization.cpp \
	m3g/m3g_android_java_api.cpp \
	m3g/src/m3g_core.c \
	m3g/src/m3g_android.cpp \
	m3g/src/m3g_android_gl.cpp

# Don't strip debug builds
ifeq ($(NDK_DEBUG),1)
    cmd-strip :=
endif

include $(BUILD_SHARED_LIBRARY)

#=================================================================================================

include $(CLEAR_VARS)

LOCAL_MODULE    := micro3d
LOCAL_SRC_FILES := \
	micro3d/src/utils.cpp  \

LOCAL_CPPFLAGS +=
LOCAL_LDLIBS := -llog -lGLESv2 -ljnigraphics
LOCAL_STATIC_LIBRARIES :=
LOCAL_C_INCLUDES := $(LOCAL_PATH)/micro3d/inc

# Don't strip debug builds
ifeq ($(NDK_DEBUG),1)
    cmd-strip :=
endif

include $(BUILD_SHARED_LIBRARY)
