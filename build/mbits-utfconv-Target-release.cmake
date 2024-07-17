# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(mbits-utfconv_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(mbits-utfconv_FRAMEWORKS_FOUND_RELEASE "${mbits-utfconv_FRAMEWORKS_RELEASE}" "${mbits-utfconv_FRAMEWORK_DIRS_RELEASE}")

set(mbits-utfconv_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET mbits-utfconv_DEPS_TARGET)
    add_library(mbits-utfconv_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET mbits-utfconv_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${mbits-utfconv_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${mbits-utfconv_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:mbits::semver>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### mbits-utfconv_DEPS_TARGET to all of them
conan_package_library_targets("${mbits-utfconv_LIBS_RELEASE}"    # libraries
                              "${mbits-utfconv_LIB_DIRS_RELEASE}" # package_libdir
                              "${mbits-utfconv_BIN_DIRS_RELEASE}" # package_bindir
                              "${mbits-utfconv_LIBRARY_TYPE_RELEASE}"
                              "${mbits-utfconv_IS_HOST_WINDOWS_RELEASE}"
                              mbits-utfconv_DEPS_TARGET
                              mbits-utfconv_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "mbits-utfconv"    # package_name
                              "${mbits-utfconv_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${mbits-utfconv_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT mbits::utfconv #############

        set(mbits-utfconv_mbits_utfconv_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(mbits-utfconv_mbits_utfconv_FRAMEWORKS_FOUND_RELEASE "${mbits-utfconv_mbits_utfconv_FRAMEWORKS_RELEASE}" "${mbits-utfconv_mbits_utfconv_FRAMEWORK_DIRS_RELEASE}")

        set(mbits-utfconv_mbits_utfconv_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET mbits-utfconv_mbits_utfconv_DEPS_TARGET)
            add_library(mbits-utfconv_mbits_utfconv_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET mbits-utfconv_mbits_utfconv_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'mbits-utfconv_mbits_utfconv_DEPS_TARGET' to all of them
        conan_package_library_targets("${mbits-utfconv_mbits_utfconv_LIBS_RELEASE}"
                              "${mbits-utfconv_mbits_utfconv_LIB_DIRS_RELEASE}"
                              "${mbits-utfconv_mbits_utfconv_BIN_DIRS_RELEASE}" # package_bindir
                              "${mbits-utfconv_mbits_utfconv_LIBRARY_TYPE_RELEASE}"
                              "${mbits-utfconv_mbits_utfconv_IS_HOST_WINDOWS_RELEASE}"
                              mbits-utfconv_mbits_utfconv_DEPS_TARGET
                              mbits-utfconv_mbits_utfconv_LIBRARIES_TARGETS
                              "_RELEASE"
                              "mbits-utfconv_mbits_utfconv"
                              "${mbits-utfconv_mbits_utfconv_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET mbits::utfconv
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_LIBRARIES_TARGETS}>
                     )

        if("${mbits-utfconv_mbits_utfconv_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET mbits::utfconv
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         mbits-utfconv_mbits_utfconv_DEPS_TARGET)
        endif()

        set_property(TARGET mbits::utfconv APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET mbits::utfconv APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET mbits::utfconv APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_LIB_DIRS_RELEASE}>)
        set_property(TARGET mbits::utfconv APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET mbits::utfconv APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${mbits-utfconv_mbits_utfconv_COMPILE_OPTIONS_RELEASE}>)

    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET mbits::utfconv APPEND PROPERTY INTERFACE_LINK_LIBRARIES mbits::utfconv)

########## For the modules (FindXXX)
set(mbits-utfconv_LIBRARIES_RELEASE mbits::utfconv)
