########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(mbits-semver_FIND_QUIETLY)
    set(mbits-semver_MESSAGE_MODE VERBOSE)
else()
    set(mbits-semver_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/mbits-semverTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${mbits-semver_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(mbits-semver_VERSION_STRING "0.1.1")
set(mbits-semver_INCLUDE_DIRS ${mbits-semver_INCLUDE_DIRS_RELEASE} )
set(mbits-semver_INCLUDE_DIR ${mbits-semver_INCLUDE_DIRS_RELEASE} )
set(mbits-semver_LIBRARIES ${mbits-semver_LIBRARIES_RELEASE} )
set(mbits-semver_DEFINITIONS ${mbits-semver_DEFINITIONS_RELEASE} )


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${mbits-semver_BUILD_MODULES_PATHS_RELEASE} )
    message(${mbits-semver_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


