#
#  LIBICONV_INCLUDE_DIR - where to find iconv.h, etc.
#  LIBICONV_LIBRARY     - List of libraries when using libiconv.
#  LIBICONV_FOUND       - True if libiconv found.


IF (LIBICONV_INCLUDE_DIR)
  # Already in cache, be silent
  SET(LIBICONV_FIND_QUIETLY TRUE)
ENDIF ()

FIND_PATH(LIBICONV_INCLUDE_DIR iconv.h)

FIND_LIBRARY(LIBICONV_LIBRARY iconv)

# handle the QUIETLY and REQUIRED arguments and set Libmemcached_FOUND to TRUE if
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LIBICONV DEFAULT_MSG LIBICONV_LIBRARY LIBICONV_INCLUDE_DIR)

