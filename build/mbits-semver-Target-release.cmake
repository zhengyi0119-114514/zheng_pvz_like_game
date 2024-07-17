# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(mbits-semver_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(mbits-semver_FRAMEWORKS_FOUND_RELEASE "${mbits-semver_FRAMEWORKS_RELEASE}" "${mbits-semver_FRAMEWORK_DIRS_RELEASE}")

set(mbits-semver_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET mbits-semver_DEPS_TARGET)
    add_library(mbits-semver_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET mbits-semver_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${mbits-semver_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${mbits-semver_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### mbits-semver_DEPS_TARGET to all of them
conan_package_library_targets("${mbits-semver_LIBS_RELEASE}"    # libraries
                              "${mbits-semver_LIB_DIRS_RELEASE}" # package_libdir
                              "${mbits-semver_BIN_DIRS_RELEASE}" # package_bindir
                              "${mbits-semver_LIBRARY_TYPE_RELEASE}"
                              "${mbits-semver_IS_HOST_WINDOWS_RELEASE}"
                              mbits-semver_DEPS_TARGET
                              mbits-semver_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "mbits-semver"    # package_name
                              "${mbits-semver_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${mbits-semver_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT mbits::semver #############

        set(mbits-semver_mbits_semver_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(mbits-semver_mbits_semver_FRAMEWORKS_FOUND_RELEASE "${mbits-semver_mbits_semver_FRAMEWORKS_RELEASE}" "${mbits-semver_mbits_semver_FRAMEWORK_DIRS_RELEASE}")

        set(mbits-semver_mbits_semver_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mbits-semver_mbits_semver_DEPS_TARGET)
            add_library(mbits-semver_mbits_semver_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mbits-semver_mbits_semver_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mbits-semver_mbits_semver_DEPS_TARGET' to all of them
        conan_package_library_targets("${mbits-semver_mbits_semver_LIBS_RELEASE}"
                              "${mbits-semver_mbits_semver_LIB_DIRS_RELEASE}"
                              "${mbits-semver_mbits_semver_BIN_DIRS_RELEASE}" # package_bindir
                              "${mbits-semver_mbits_semver_LIBRARY_TYPE_RELEASE}"
                              "${mbits-semver_mbits_semver_IS_HOST_WINDOWS_RELEASE}"
                              mbits-semver_mbits_semver_DEPS_TARGET
                              mbits-semver_mbits_semver_LIBRARIES_TARGETS
                              "_RELEASE"
                              "mbits-semver_mbits_semver"
                              "${mbits-semver_mbits_semver_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET mbits::semver
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_LIBRARIES_TARGETS}>
                     )

        if("${mbits-semver_mbits_semver_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET mbits::semver
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         mbits-semver_mbits_semver_DEPS_TARGET)
        endif()

        set_property(TARGET mbits::semver APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET mbits::semver APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET mbits::semver APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_LIB_DIRS_RELEASE}>)
        set_property(TARGET mbits::semver APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET mbits::semver APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${mbits-semver_mbits_semver_COMPILE_OPTIONS_RELEASE}>)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET mbits::semver APPEND PROPERTY INTERFACE_LINK_LIBRARIES mbits::semver)

########## For the modules (FindXXX)
set(mbits-semver_LIBRARIES_RELEASE mbits::semver)
