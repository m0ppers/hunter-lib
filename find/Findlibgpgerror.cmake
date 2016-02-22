
if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom Findlibgpgerror module")
endif()

find_path(
    libgpgerror_INCLUDE_DIR
      gpg-error.h
    PATHS
      "${libgpgerror_ROOT}/include"
    NO_DEFAULT_PATH
)

hunter_status_debug("libgpgerror_INCLUDE_DIR: ${libgpgerror_INCLUDE_DIR}")

find_library(
    libgpgerror_LIBRARY
      gpg-error
    PATHS
      "${libgpgerror_ROOT}/lib"
    NO_DEFAULT_PATH
)

hunter_status_debug("libgpgerror_LIBRARY: ${libgpgerror_LIBRARY}")

set(libgpgerror_LIBRARIES ${libgpgerror_LIBRARY})

set(libgpgerror_INCLUDE_DIRS "${libgpgerror_INCLUDE_DIR}")
set(libgpgerror_DEFINITIONS "")
