########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(brynet_COMPONENT_NAMES "")
if(DEFINED brynet_FIND_DEPENDENCY_NAMES)
  list(APPEND brynet_FIND_DEPENDENCY_NAMES OpenSSL)
  list(REMOVE_DUPLICATES brynet_FIND_DEPENDENCY_NAMES)
else()
  set(brynet_FIND_DEPENDENCY_NAMES OpenSSL)
endif()
set(OpenSSL_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(brynet_PACKAGE_FOLDER_RELEASE "C:/Users/zheng/.conan2/p/bryne645e12cc0cea8/p")
set(brynet_BUILD_MODULES_PATHS_RELEASE )


set(brynet_INCLUDE_DIRS_RELEASE "${brynet_PACKAGE_FOLDER_RELEASE}/include")
set(brynet_RES_DIRS_RELEASE )
set(brynet_DEFINITIONS_RELEASE "-DBRYNET_USE_OPENSSL")
set(brynet_SHARED_LINK_FLAGS_RELEASE )
set(brynet_EXE_LINK_FLAGS_RELEASE )
set(brynet_OBJECTS_RELEASE )
set(brynet_COMPILE_DEFINITIONS_RELEASE "BRYNET_USE_OPENSSL")
set(brynet_COMPILE_OPTIONS_C_RELEASE )
set(brynet_COMPILE_OPTIONS_CXX_RELEASE )
set(brynet_LIB_DIRS_RELEASE )
set(brynet_BIN_DIRS_RELEASE )
set(brynet_LIBRARY_TYPE_RELEASE UNKNOWN)
set(brynet_IS_HOST_WINDOWS_RELEASE 1)
set(brynet_LIBS_RELEASE )
set(brynet_SYSTEM_LIBS_RELEASE ws2_32)
set(brynet_FRAMEWORK_DIRS_RELEASE )
set(brynet_FRAMEWORKS_RELEASE )
set(brynet_BUILD_DIRS_RELEASE )
set(brynet_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(brynet_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${brynet_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${brynet_COMPILE_OPTIONS_C_RELEASE}>")
set(brynet_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${brynet_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${brynet_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${brynet_EXE_LINK_FLAGS_RELEASE}>")


set(brynet_COMPONENTS_RELEASE )