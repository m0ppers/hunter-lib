if(DEFINED HUNTER_CMAKE_PROJECTS_LIBGCRYPT_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LIBGCRYPT_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libgcrypt
    VERSION
    "1.6.5"
    URL
    "https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.6.5.tar.bz2"
    SHA1
    c3a5a13e717f7b3e3895650afc1b6e0d3fe9c726
)

hunter_pick_scheme(DEFAULT url_sha1_libgcrypt_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME libgcrypt)
