
if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom Findgcrypt module")
endif()

find_path(
    nettle_INCLUDE_DIR
      nettle.h
    PATHS
      "${nettle_ROOT}/include"
    NO_DEFAULT_PATH
)

hunter_status_debug("nettle_INCLUDE_DIR: ${nettle_INCLUDE_DIR}")

find_library(
    nettle_LIBRARY
      nettle
    PATHS
      "${nettle_ROOT}/lib"
    NO_DEFAULT_PATH
)

find_library(
    hogweed_LIBRARY
      hogweed
    PATHS
      "${nettle_ROOT}/lib"
    NO_DEFAULT_PATH
)

hunter_status_debug("nettle_LIBRARY: ${nettle_LIBRARY}")

set(nettle_LIBRARIES "${nettle_LIBRARY} ${hogweed_LIBRARY}")

set(nettle_INCLUDE_DIRS "${nettle_INCLUDE_DIR}")
set(nettle_DEFINITIONS "")
