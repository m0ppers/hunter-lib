if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom Findgcrypt module")
endif()

find_path(
    apr_INCLUDE_DIR
      apr.h
    PATHS
      "${apr_ROOT}/include"
    NO_DEFAULT_PATH
)

hunter_status_debug("apr_INCLUDE_DIR: ${apr_INCLUDE_DIR}")

find_library(
    apr_LIBRARY
      apr-1
    PATHS
      "${apr_ROOT}/lib"
    NO_DEFAULT_PATH
)

hunter_status_debug("apr_LIBRARY: ${apr_LIBRARY}")

set(apr_LIBRARIES ${apr_LIBRARY})

set(apr_INCLUDE_DIRS "${apr_INCLUDE_DIR}")
set(apr_DEFINITIONS "")
