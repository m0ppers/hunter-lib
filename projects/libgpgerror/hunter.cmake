if(DEFINED HUNTER_CMAKE_PROJECTS_LIBGPGERROR_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_LIBGPGERROR_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    libgpgerror
    VERSION
    "1.21"
    URL
    "https://gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.21.tar.bz2"
    SHA1
    ef1dfb2f8761f019091180596e9e638d8cc37513
)

hunter_pick_scheme(DEFAULT url_sha1_libgpgerror_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME libgpgerror)
