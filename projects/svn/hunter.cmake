if(DEFINED HUNTER_CMAKE_PROJECTS_SVN_HUNTER_CMAKE_)
  return()
else()
  set(HUNTER_CMAKE_PROJECTS_SVN_HUNTER_CMAKE_ 1)
endif()

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    svn
    VERSION
    "1.9.3"
    URL
    "http://apache.lauf-forum.at/subversion/subversion-1.9.3.tar.bz2"
    SHA1
    27e8df191c92095f48314a415194ec37c682cbcf
)

hunter_pick_scheme(DEFAULT url_sha1_svn_autotools) # Use new custom scheme
hunter_download(PACKAGE_NAME svn)
