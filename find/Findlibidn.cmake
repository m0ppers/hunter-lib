
if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom Findgcrypt module")
endif()

find_path(
    libidn_INCLUDE_DIR
      gcrypt.h
    PATHS
      "${libidn_ROOT}/include"
    NO_DEFAULT_PATH
)

hunter_status_debug("libidn_INCLUDE_DIR: ${libidn_INCLUDE_DIR}")

find_library(
    libidn_LIBRARY
      idn
    PATHS
      "${libidn_ROOT}/lib"
    NO_DEFAULT_PATH
)

hunter_status_debug("libidn_LIBRARY: ${libidn_LIBRARY}")

set(libidn_LIBRARIES ${libidn_LIBRARY})

set(libidn_INCLUDE_DIRS "${libidn_INCLUDE_DIR}")
set(libidn_DEFINITIONS "")
