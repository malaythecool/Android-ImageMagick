include $(CLEAR_VARS)

LOCAL_MODULE    := libandroid-magick
LOCAL_SHORT_COMMANDS := true
APP_SHORT_COMMANDS := true
LOCAL_CFLAGS += -DIMAGEMAGICK_HEADER_STYLE_7

LOCAL_C_INCLUDES  :=  \
    $(IMAGE_MAGICK_PATCH_INCLUDE_PATH) \
    $(IMAGE_MAGICK_PATCH_PATH) \
    $(IMAGE_MAGICK) \
    $(IMAGE_MAGICK)/MagickCore \
    $(LIBPNG_PATH) \
    $(LIBJPEG_PATH) \
    $(LIBTIFF_PATH) \


LOCAL_SRC_FILES := \
    $(JMAGICK_LIB_PATH)/jmagick.c \
    $(JMAGICK_LIB_PATH)/magick_DrawInfo.c \
    $(JMAGICK_LIB_PATH)/magick_ImageInfo.c \
    $(JMAGICK_LIB_PATH)/magick_Magick.c \
    $(JMAGICK_LIB_PATH)/magick_MagickImage.c \
    $(JMAGICK_LIB_PATH)/magick_MagickInfo.c \
    $(JMAGICK_LIB_PATH)/magick_MontageInfo.c \
    $(JMAGICK_LIB_PATH)/magick_PixelPacket.c \
    $(JMAGICK_LIB_PATH)/magick_QuantizeInfo.c \
    $(JMAGICK_LIB_PATH)/magick_Cache.c \
    $(JMAGICK_LIB_PATH)/magick_AppDataDir.c \
    $(JMAGICK_LIB_PATH)/magick_Morphology.c \
    $(JMAGICK_LIB_PATH)/magick_ICUDataDir.c \
    $(JMAGICK_LIB_PATH)/magick_Channel.c \

LOCAL_LDLIBS += -llog

LOCAL_SHARED_LIBRARIES := libmagickcore libmagickwand

include $(BUILD_SHARED_LIBRARY)
