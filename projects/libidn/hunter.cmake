if(DEFINED HUNTER_CMAKE_PROJECTS_LIBIDN_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LIBIDN_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libidn
    VERSION
    "1.32"
    URL
    "http://ftp.gnu.org/gnu/libidn/libidn-1.32.tar.gz"
    SHA1
    ddd018611b98af7c67d434aa42d15d39f45129f5
)

hunter_pick_scheme(DEFAULT url_sha1_libgcrypt_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME libgcrypt)
