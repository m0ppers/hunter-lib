if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom Findsvn module")
endif()

find_path(
    svn_INCLUDE_DIR
      svn_delta.h
    PATHS
      "${svn_ROOT}/include/subversion-1"
    NO_DEFAULT_PATH
)

hunter_status_debug("svn_INCLUDE_DIR: ${svn_INCLUDE_DIR}")

find_library(
    svn_delta_LIBRARY
      svn_delta-1
    PATHS
      "${svn_ROOT}/lib"
    NO_DEFAULT_PATH
)

find_library(
    svn_subr_LIBRARY
      svn_subr-1
    PATHS
      "${svn_ROOT}/lib"
    NO_DEFAULT_PATH
)

set(svn_LIBRARIES ${svn_delta_LIBRARY} ${svn_subr_LIBRARY})
hunter_status_debug("svn_LIBRARIES: ${svn_LIBRARIES}")

set(svn_INCLUDE_DIRS "${svn_INCLUDE_DIR}")
set(svn_DEFINITIONS "")
