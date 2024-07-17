# Load the debug and release variables
file(GLOB DATA_FILES "${CMAKE_CURRENT_LIST_DIR}/mbits-semver-*-data.cmake")

foreach(f ${DATA_FILES})
    include(${f})
endforeach()

# Create the targets for all the components
foreach(_COMPONENT ${mbits-semver_COMPONENT_NAMES} )
    if(NOT TARGET ${_COMPONENT})
        add_library(${_COMPONENT} INTERFACE IMPORTED)
        message(${mbits-semver_MESSAGE_MODE} "Conan: Component target declared '${_COMPONENT}'")
    endif()
endforeach()

if(NOT TARGET mbits::semver)
    add_library(mbits::semver INTERFACE IMPORTED)
    message(${mbits-semver_MESSAGE_MODE} "Conan: Target declared 'mbits::semver'")
endif()
# Load the debug and release library finders
file(GLOB CONFIG_FILES "${CMAKE_CURRENT_LIST_DIR}/mbits-semver-Target-*.cmake")

foreach(f ${CONFIG_FILES})
    include(${f})
endforeach()