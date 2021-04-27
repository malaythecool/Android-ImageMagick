LOCAL_PATH := $(call my-dir)
TESSERACT_PATH := $(LOCAL_PATH)/com_googlecode_tesseract_android/src
LEPTONICA_PATH := $(LOCAL_PATH)/com_googlecode_leptonica_android/src
LIBJPEG_PATH := $(LOCAL_PATH)/libjpeg
LIBPNG_PATH := $(LOCAL_PATH)/libpng
LIBFREETYPE_PATH := $(LOCAL_PATH)/libfreetype
LIBJMAGICK_PATH := $(LOCAL_PATH)/libjmagick
LIBTIFF_PATH := $(LOCAL_PATH)/libtiff
#IMAGE_MAGICK_BASEDIR := ImageMagick-6.7.3-0
#IMAGE_MAGICK:= $(LOCAL_PATH)/$(IMAGE_MAGICK_BASEDIR)
FFTW_LIB_PATH := $(LOCAL_PATH)/libfftw


JMAGICK_ENABLED := true
STATIC_BUILD := false
JMAGICK_DIR_PATH                := $(LOCAL_PATH)/libjmagick
JMAGICK_LIB_PATH                := $(JMAGICK_DIR_PATH)/src
IMAGE_MAGICK_BASEDIR            := ImageMagick-7.0.9-17
IMAGE_MAGICK_PATCH_PATH         := $(JMAGICK_DIR_PATH)/imagemagick-patches/$(IMAGE_MAGICK_BASEDIR)/MagickCore
IMAGE_MAGICK_PATCH_INCLUDE_PATH := $(JMAGICK_DIR_PATH)/imagemagick-patches/$(IMAGE_MAGICK_BASEDIR)
IMAGE_MAGICK                    := $(LOCAL_PATH)/$(IMAGE_MAGICK_BASEDIR)


# fix long windows paths causing build to fail (too many sources)
LOCAL_SHORT_COMMANDS := true
APP_SHORT_COMMANDS := true

#APP_STL := c++_shared

# Just build the Android.mak files in the subdirs
include $(call all-subdir-makefiles)
