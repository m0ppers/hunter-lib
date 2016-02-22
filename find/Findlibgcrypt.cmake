
if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom Findgcrypt module")
endif()

find_path(
    libgcrypt_INCLUDE_DIR
      gcrypt.h
    PATHS
      "${libgcrypt_ROOT}/include"
    NO_DEFAULT_PATH
)

hunter_status_debug("libgcrypt_INCLUDE_DIR: ${libgcrypt_INCLUDE_DIR}")

find_library(
    libgcrypt_LIBRARY
      gcrypt
    PATHS
      "${libgcrypt_ROOT}/lib"
    NO_DEFAULT_PATH
)

hunter_status_debug("libgcrypt_LIBRARY: ${libgcrypt_LIBRARY}")

set(libgcrypt_LIBRARIES ${libgcrypt_LIBRARY})

set(libgcrypt_INCLUDE_DIRS "${libgcrypt_INCLUDE_DIR}")
set(libgcrypt_DEFINITIONS "")
