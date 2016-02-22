if(DEFINED HUNTER_CMAKE_PROJECTS_SASL2_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_SASL2_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    SASL2
    VERSION
    "2.1.26"
    URL
    "ftp://ftp.cyrusimap.org/cyrus-sasl/cyrus-sasl-2.1.26.tar.gz"
    SHA1
    d6669fb91434192529bd13ee95737a8a5040241c
)

hunter_pick_scheme(DEFAULT url_sha1_sasl2_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME SASL2)
