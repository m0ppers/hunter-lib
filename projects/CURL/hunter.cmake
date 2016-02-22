if(DEFINED HUNTER_CMAKE_PROJECTS_CURL_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_CURL_HUNTER_CMAKE_ 1)
endif()

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
  PACKAGE_NAME
  CURL
  VERSION
  "7.47.1"
  URL
  "https://curl.haxx.se/download/curl-7.47.1.tar.gz"
  SHA1
  09952f607522e39b82a72c604df276255cdb9918
)

# Probably more versions for real packages...

# Pick a download scheme
hunter_cmake_args(
  CURL
  CMAKE_ARGS
    CURL_STATICLIB=ON
    CURL_DISABLE_LDAP=ON
)
hunter_pick_scheme(DEFAULT url_sha1_cmake) # use scheme for cmake projects
hunter_cacheable(CURL)

# Download package.
# Two versions of library will be build by default:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME CURL)
