# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(tinyxml2_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(tinyxml2_FRAMEWORKS_FOUND_RELEASE "${tinyxml2_FRAMEWORKS_RELEASE}" "${tinyxml2_FRAMEWORK_DIRS_RELEASE}")

set(tinyxml2_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET tinyxml2_DEPS_TARGET)
    add_library(tinyxml2_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET tinyxml2_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${tinyxml2_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${tinyxml2_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### tinyxml2_DEPS_TARGET to all of them
conan_package_library_targets("${tinyxml2_LIBS_RELEASE}"    # libraries
                              "${tinyxml2_LIB_DIRS_RELEASE}" # package_libdir
                              "${tinyxml2_BIN_DIRS_RELEASE}" # package_bindir
                              "${tinyxml2_LIBRARY_TYPE_RELEASE}"
                              "${tinyxml2_IS_HOST_WINDOWS_RELEASE}"
                              tinyxml2_DEPS_TARGET
                              tinyxml2_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "tinyxml2"    # package_name
                              "${tinyxml2_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${tinyxml2_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET tinyxml2::tinyxml2
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${tinyxml2_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${tinyxml2_LIBRARIES_TARGETS}>
                 )

    if("${tinyxml2_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET tinyxml2::tinyxml2
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     tinyxml2_DEPS_TARGET)
    endif()

    set_property(TARGET tinyxml2::tinyxml2
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${tinyxml2_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET tinyxml2::tinyxml2
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${tinyxml2_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET tinyxml2::tinyxml2
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${tinyxml2_LIB_DIRS_RELEASE}>)
    set_property(TARGET tinyxml2::tinyxml2
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${tinyxml2_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET tinyxml2::tinyxml2
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${tinyxml2_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(tinyxml2_LIBRARIES_RELEASE tinyxml2::tinyxml2)
