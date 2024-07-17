########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(mbits-utfconv_FIND_QUIETLY)
    set(mbits-utfconv_MESSAGE_MODE VERBOSE)
else()
    set(mbits-utfconv_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/mbits-utfconvTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${mbits-utfconv_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(mbits-utfconv_VERSION_STRING "1.0.4")
set(mbits-utfconv_INCLUDE_DIRS ${mbits-utfconv_INCLUDE_DIRS_RELEASE} )
set(mbits-utfconv_INCLUDE_DIR ${mbits-utfconv_INCLUDE_DIRS_RELEASE} )
set(mbits-utfconv_LIBRARIES ${mbits-utfconv_LIBRARIES_RELEASE} )
set(mbits-utfconv_DEFINITIONS ${mbits-utfconv_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${mbits-utfconv_BUILD_MODULES_PATHS_RELEASE} )
    message(${mbits-utfconv_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


