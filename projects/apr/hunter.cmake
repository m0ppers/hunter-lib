if(DEFINED HUNTER_CMAKE_PROJECTS_APR_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_APR_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    apr
    VERSION
    "1.5.2"
    URL
    "http://mirror.dkd.de/apache/apr/apr-1.5.2.tar.bz2"
    SHA1
    6d757fcf7c687fc300c1066076f2e8380ff8cbc0
)

hunter_pick_scheme(DEFAULT url_sha1_apr_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME apr)
