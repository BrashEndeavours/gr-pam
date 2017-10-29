INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_PAM pam)

FIND_PATH(
    PAM_INCLUDE_DIRS
    NAMES pam/api.h
    HINTS $ENV{PAM_DIR}/include
        ${PC_PAM_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    PAM_LIBRARIES
    NAMES gnuradio-pam
    HINTS $ENV{PAM_DIR}/lib
        ${PC_PAM_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PAM DEFAULT_MSG PAM_LIBRARIES PAM_INCLUDE_DIRS)
MARK_AS_ADVANCED(PAM_LIBRARIES PAM_INCLUDE_DIRS)

