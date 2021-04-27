LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libfreetype

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)

LOCAL_CFLAGS := \
  -include stdlib.h \
  -Wno-deprecated-declarations \
  -Wno-pointer-sign \
  -Wno-implicit-function-declaration \
  -DANDROID_NDK \
  -DFT2_BUILD_LIBRARY=1


LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/src \
    $(LIBPNG_PATH)

$(info $(LIBPNG_PATH))
LOCAL_SRC_FILES := \
        src/base/ftbbox.c \
        src/base/ftbitmap.c \
        src/base/ftfntfmt.c \
        src/base/ftfstype.c \
        src/base/ftglyph.c \
        src/base/ftlcdfil.c \
        src/base/ftstroke.c \
        src/base/fttype1.c \
        src/base/ftbase.c \
        src/base/ftsystem.c \
        src/base/ftinit.c \
        src/base/ftgasp.c \
        src/base/ftmm.c \
        src/gzip/ftgzip.c \
        src/raster/raster.c \
        src/sfnt/sfnt.c \
        src/smooth/smooth.c \
        src/autofit/autofit.c \
        src/truetype/truetype.c \
        src/cff/cff.c \
        src/psnames/psnames.c \
        src/pshinter/pshinter.c \
        src/psaux/psaux.c \
        src/type1/type1.c \
        src/cid/type1cid.c

LOCAL_SHARED_LIBRARIES:= libpngt
LOCAL_PRELINK_MODULE:= false
include $(BUILD_SHARED_LIBRARY)
