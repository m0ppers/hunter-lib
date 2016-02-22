if(DEFINED HUNTER_CMAKE_PROJECTS_LIBMICROHTTPD_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LIBMICROHTTPD_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(GnuTLS)
find_package(GnuTLS REQUIRED)
hunter_add_package(libgcrypt)
find_package(libgcrypt REQUIRED)

hunter_add_version(
    PACKAGE_NAME
    libmicrohttpd
    VERSION
    "0.9.48"
    URL
    "http://ftp.gnu.org/gnu/libmicrohttpd/libmicrohttpd-0.9.48.tar.gz"
    SHA1
    aa78855a2880faf5e0c6c820d0efa2c65beeaf99
)

hunter_pick_scheme(DEFAULT url_sha1_libmicrohttpd_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME libmicrohttpd)
