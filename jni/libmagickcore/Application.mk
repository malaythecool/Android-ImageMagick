APP_STL := c++_shared

APP_CFLAGS   += -O3

APP_CPPFLAGS += -O3


#------------------------------------------
# Magick options

MAGICKCORE_HDRI_ENABLE   := true
# 8, 16, 32
MAGICKCORE_QUANTUM_DEPTH := 16

OPENCL_BUILD     := false
OPENMP_BUILD     := true

JMAGICK_ENABLED := true

LIBBZ2_ENABLED        := true
LIBFFTW_ENABLED       := false
LIBFREETYPE2_ENABLED  := true
LIBJPEG_TURBO_ENABLED := false
LIBLZMA_ENABLED       := false
LIBOPENJPEG_ENABLED   := false
LIBPNG_ENABLED        := true
LIBTIFF_ENABLED       := true
LIBWEBP_ENABLED       := false
LIBXML2_ENABLED       := false
LIBZLIB_ENABLED       := true
LIBLCMS2_ENABLED      := false
