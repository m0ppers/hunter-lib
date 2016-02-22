if(DEFINED HUNTER_CMAKE_PROJECTS_GNUTLS_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_GNUTLS_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(nettle)
find_package(nettle REQUIRED)

hunter_add_version(
    PACKAGE_NAME
    GnuTLS
    VERSION
    "3.4.9"
    URL
    "http://artfiles.org/gnupg.org/gnutls/v3.4/gnutls-3.4.9.tar.xz"
    SHA1
    04df5ec2bb1282704e99b15fd64892026fb95f1c
)

hunter_pick_scheme(DEFAULT url_sha1_gnutls_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME GnuTLS)
