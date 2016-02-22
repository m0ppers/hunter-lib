if(DEFINED HUNTER_CMAKE_PROJECTS_NETTLE_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_NETTLE_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    nettle
    VERSION
    "3.2"
    URL
    "https://ftp.gnu.org/gnu/nettle/nettle-3.2.tar.gz"
    SHA1
    b2eb5b36e65a8d3ed60ff81ec897044dead6dae0
)

hunter_pick_scheme(DEFAULT url_sha1_nettle_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME nettle)
