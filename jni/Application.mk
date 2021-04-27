APP_STL := c++_static
APP_ABI := armeabi-v7a x86 arm64-v8a x86_64
APP_OPTIM := release
APP_PLATFORM := android-24
APP_CPPFLAGS += -fexceptions -frtti
NDK_TOOLCHAIN_VERSION := clang

HDRI_ENABLE   := true
# 8, 16, 32
QUANTUM_DEPTH := 16

ifeq ($(HDRI_ENABLE),true)
    $(info [ HDRI enabled ])

    APP_CFLAGS += \
        -DMAGICKCORE_HDRI_ENABLE=1
    APP_CPPFLAGS += \
        -DMAGICKCORE_HDRI_ENABLE=1
endif

$(info [ Quantum depth: $(QUANTUM_DEPTH) ])
$(info )
APP_CFLAGS += \
    -DMAGICKCORE_QUANTUM_DEPTH=$(QUANTUM_DEPTH)
APP_CPPFLAGS += \
    -DMAGICKCORE_QUANTUM_DEPTH=$(QUANTUM_DEPTH)

