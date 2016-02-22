
if(HUNTER_STATUS_DEBUG)
  message("[hunter] Custom FindSASL2 module")
endif()

find_path(
    libgcrypt_INCLUDE_DIR
      sasl.h
    PATHS
      "${SASL2_ROOT}/include"
    NO_DEFAULT_PATH
)

hunter_status_debug("SASL2_INCLUDE_DIR: ${SASL2_INCLUDE_DIR}")

find_library(
    SASL2_LIBRARY
      sasl2
    PATHS
      "${SASL2}/lib"
    NO_DEFAULT_PATH
)

hunter_status_debug("SASL2_LIBRARY: ${SASL2_LIBRARY}")

set(SASL2_LIBRARIES ${SASL2_LIBRARY})

set(SASL2_INCLUDE_DIRS "${SASL2_INCLUDE_DIR}")
set(SASL2_DEFINITIONS "")
