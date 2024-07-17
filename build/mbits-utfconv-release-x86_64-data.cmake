########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND mbits-utfconv_COMPONENT_NAMES mbits::utfconv)
list(REMOVE_DUPLICATES mbits-utfconv_COMPONENT_NAMES)
if(DEFINED mbits-utfconv_FIND_DEPENDENCY_NAMES)
  list(APPEND mbits-utfconv_FIND_DEPENDENCY_NAMES mbits-semver)
  list(REMOVE_DUPLICATES mbits-utfconv_FIND_DEPENDENCY_NAMES)
else()
  set(mbits-utfconv_FIND_DEPENDENCY_NAMES mbits-semver)
endif()
set(mbits-semver_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(mbits-utfconv_PACKAGE_FOLDER_RELEASE "C:/Users/zheng/.conan2/p/mbitsb137b2b82807e/p")
set(mbits-utfconv_BUILD_MODULES_PATHS_RELEASE )


set(mbits-utfconv_INCLUDE_DIRS_RELEASE "${mbits-utfconv_PACKAGE_FOLDER_RELEASE}/include")
set(mbits-utfconv_RES_DIRS_RELEASE )
set(mbits-utfconv_DEFINITIONS_RELEASE )
set(mbits-utfconv_SHARED_LINK_FLAGS_RELEASE )
set(mbits-utfconv_EXE_LINK_FLAGS_RELEASE )
set(mbits-utfconv_OBJECTS_RELEASE )
set(mbits-utfconv_COMPILE_DEFINITIONS_RELEASE )
set(mbits-utfconv_COMPILE_OPTIONS_C_RELEASE )
set(mbits-utfconv_COMPILE_OPTIONS_CXX_RELEASE )
set(mbits-utfconv_LIB_DIRS_RELEASE "${mbits-utfconv_PACKAGE_FOLDER_RELEASE}/lib")
set(mbits-utfconv_BIN_DIRS_RELEASE )
set(mbits-utfconv_LIBRARY_TYPE_RELEASE UNKNOWN)
set(mbits-utfconv_IS_HOST_WINDOWS_RELEASE 1)
set(mbits-utfconv_LIBS_RELEASE utfconv)
set(mbits-utfconv_SYSTEM_LIBS_RELEASE )
set(mbits-utfconv_FRAMEWORK_DIRS_RELEASE )
set(mbits-utfconv_FRAMEWORKS_RELEASE )
set(mbits-utfconv_BUILD_DIRS_RELEASE )
set(mbits-utfconv_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(mbits-utfconv_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${mbits-utfconv_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${mbits-utfconv_COMPILE_OPTIONS_C_RELEASE}>")
set(mbits-utfconv_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${mbits-utfconv_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${mbits-utfconv_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${mbits-utfconv_EXE_LINK_FLAGS_RELEASE}>")


set(mbits-utfconv_COMPONENTS_RELEASE mbits::utfconv)
########### COMPONENT mbits::utfconv VARIABLES ############################################

set(mbits-utfconv_mbits_utfconv_INCLUDE_DIRS_RELEASE "${mbits-utfconv_PACKAGE_FOLDER_RELEASE}/include")
set(mbits-utfconv_mbits_utfconv_LIB_DIRS_RELEASE "${mbits-utfconv_PACKAGE_FOLDER_RELEASE}/lib")
set(mbits-utfconv_mbits_utfconv_BIN_DIRS_RELEASE )
set(mbits-utfconv_mbits_utfconv_LIBRARY_TYPE_RELEASE UNKNOWN)
set(mbits-utfconv_mbits_utfconv_IS_HOST_WINDOWS_RELEASE 1)
set(mbits-utfconv_mbits_utfconv_RES_DIRS_RELEASE )
set(mbits-utfconv_mbits_utfconv_DEFINITIONS_RELEASE )
set(mbits-utfconv_mbits_utfconv_OBJECTS_RELEASE )
set(mbits-utfconv_mbits_utfconv_COMPILE_DEFINITIONS_RELEASE )
set(mbits-utfconv_mbits_utfconv_COMPILE_OPTIONS_C_RELEASE "")
set(mbits-utfconv_mbits_utfconv_COMPILE_OPTIONS_CXX_RELEASE "")
set(mbits-utfconv_mbits_utfconv_LIBS_RELEASE utfconv)
set(mbits-utfconv_mbits_utfconv_SYSTEM_LIBS_RELEASE )
set(mbits-utfconv_mbits_utfconv_FRAMEWORK_DIRS_RELEASE )
set(mbits-utfconv_mbits_utfconv_FRAMEWORKS_RELEASE )
set(mbits-utfconv_mbits_utfconv_DEPENDENCIES_RELEASE mbits::semver)
set(mbits-utfconv_mbits_utfconv_SHARED_LINK_FLAGS_RELEASE )
set(mbits-utfconv_mbits_utfconv_EXE_LINK_FLAGS_RELEASE )
set(mbits-utfconv_mbits_utfconv_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(mbits-utfconv_mbits_utfconv_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${mbits-utfconv_mbits_utfconv_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${mbits-utfconv_mbits_utfconv_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${mbits-utfconv_mbits_utfconv_EXE_LINK_FLAGS_RELEASE}>
)
set(mbits-utfconv_mbits_utfconv_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${mbits-utfconv_mbits_utfconv_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${mbits-utfconv_mbits_utfconv_COMPILE_OPTIONS_C_RELEASE}>")