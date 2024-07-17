########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND mbits-semver_COMPONENT_NAMES mbits::semver)
list(REMOVE_DUPLICATES mbits-semver_COMPONENT_NAMES)
if(DEFINED mbits-semver_FIND_DEPENDENCY_NAMES)
  list(APPEND mbits-semver_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES mbits-semver_FIND_DEPENDENCY_NAMES)
else()
  set(mbits-semver_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(mbits-semver_PACKAGE_FOLDER_RELEASE "C:/Users/zheng/.conan2/p/mbits854d6a8ee38cc/p")
set(mbits-semver_BUILD_MODULES_PATHS_RELEASE )


set(mbits-semver_INCLUDE_DIRS_RELEASE "${mbits-semver_PACKAGE_FOLDER_RELEASE}/include")
set(mbits-semver_RES_DIRS_RELEASE )
set(mbits-semver_DEFINITIONS_RELEASE )
set(mbits-semver_SHARED_LINK_FLAGS_RELEASE )
set(mbits-semver_EXE_LINK_FLAGS_RELEASE )
set(mbits-semver_OBJECTS_RELEASE )
set(mbits-semver_COMPILE_DEFINITIONS_RELEASE )
set(mbits-semver_COMPILE_OPTIONS_C_RELEASE )
set(mbits-semver_COMPILE_OPTIONS_CXX_RELEASE )
set(mbits-semver_LIB_DIRS_RELEASE "${mbits-semver_PACKAGE_FOLDER_RELEASE}/lib")
set(mbits-semver_BIN_DIRS_RELEASE )
set(mbits-semver_LIBRARY_TYPE_RELEASE UNKNOWN)
set(mbits-semver_IS_HOST_WINDOWS_RELEASE 1)
set(mbits-semver_LIBS_RELEASE semver)
set(mbits-semver_SYSTEM_LIBS_RELEASE )
set(mbits-semver_FRAMEWORK_DIRS_RELEASE )
set(mbits-semver_FRAMEWORKS_RELEASE )
set(mbits-semver_BUILD_DIRS_RELEASE )
set(mbits-semver_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(mbits-semver_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${mbits-semver_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${mbits-semver_COMPILE_OPTIONS_C_RELEASE}>")
set(mbits-semver_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${mbits-semver_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${mbits-semver_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${mbits-semver_EXE_LINK_FLAGS_RELEASE}>")


set(mbits-semver_COMPONENTS_RELEASE mbits::semver)
########### COMPONENT mbits::semver VARIABLES ############################################

set(mbits-semver_mbits_semver_INCLUDE_DIRS_RELEASE "${mbits-semver_PACKAGE_FOLDER_RELEASE}/include")
set(mbits-semver_mbits_semver_LIB_DIRS_RELEASE "${mbits-semver_PACKAGE_FOLDER_RELEASE}/lib")
set(mbits-semver_mbits_semver_BIN_DIRS_RELEASE )
set(mbits-semver_mbits_semver_LIBRARY_TYPE_RELEASE UNKNOWN)
set(mbits-semver_mbits_semver_IS_HOST_WINDOWS_RELEASE 1)
set(mbits-semver_mbits_semver_RES_DIRS_RELEASE )
set(mbits-semver_mbits_semver_DEFINITIONS_RELEASE )
set(mbits-semver_mbits_semver_OBJECTS_RELEASE )
set(mbits-semver_mbits_semver_COMPILE_DEFINITIONS_RELEASE )
set(mbits-semver_mbits_semver_COMPILE_OPTIONS_C_RELEASE "")
set(mbits-semver_mbits_semver_COMPILE_OPTIONS_CXX_RELEASE "")
set(mbits-semver_mbits_semver_LIBS_RELEASE semver)
set(mbits-semver_mbits_semver_SYSTEM_LIBS_RELEASE )
set(mbits-semver_mbits_semver_FRAMEWORK_DIRS_RELEASE )
set(mbits-semver_mbits_semver_FRAMEWORKS_RELEASE )
set(mbits-semver_mbits_semver_DEPENDENCIES_RELEASE )
set(mbits-semver_mbits_semver_SHARED_LINK_FLAGS_RELEASE )
set(mbits-semver_mbits_semver_EXE_LINK_FLAGS_RELEASE )
set(mbits-semver_mbits_semver_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(mbits-semver_mbits_semver_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${mbits-semver_mbits_semver_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${mbits-semver_mbits_semver_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${mbits-semver_mbits_semver_EXE_LINK_FLAGS_RELEASE}>
)
set(mbits-semver_mbits_semver_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${mbits-semver_mbits_semver_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${mbits-semver_mbits_semver_COMPILE_OPTIONS_C_RELEASE}>")