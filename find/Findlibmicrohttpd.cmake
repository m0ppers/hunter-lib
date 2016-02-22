
if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom Findlibmicrohttpd module")
endif()

find_path(
    libmicrohttpd_INCLUDE_DIR
      microhttpd.h
    PATHS
      "${libmicrohttpd_ROOT}/include"
    NO_DEFAULT_PATH
)

hunter_status_debug("libmicrohttpd_INCLUDE_DIR: ${libmicrohttpd_INCLUDE_DIR}")

find_library(
    libmicrohttpd_LIBRARY
      microhttpd
    PATHS
      "${libmicrohttpd_ROOT}/lib"
    NO_DEFAULT_PATH
)

hunter_status_debug("libmicrohttpd_LIBRARY: ${libmicrohttpd_LIBRARY}")

set(libmicrohttpd_LIBRARIES ${libmicrohttpd_LIBRARY})

set(libmicrohttpd_INCLUDE_DIRS "${libmicrohttpd_INCLUDE_DIR}")
set(libmicrohttpd_DEFINITIONS "")
