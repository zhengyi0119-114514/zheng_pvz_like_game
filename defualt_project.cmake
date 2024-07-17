if(NOT DEFINED CMAKE_BUILD_TYPE OR CMAKE_BUILD_TYPE STREQUAL "")
    if(DEFINED DEBUG)
        set(CMAKE_BUILD_TYPE "Debug")
    else()
        set(CMAKE_BUILD_TYPE "Release")
    endif()
endif()

add_library(base INTERFACE)
target_include_directories(base 
    INTERFACE "${CMAKE_SOURCE_DIR}/include"
)

set_target_properties(base PROPERTIES 
    C_STANDARD 17
    C_EXTENSIONS FALSE
    C_STANDARD_REQUIRED TRUE
    CXX_STANDARD 20
    CXX_EXTENSIONS FALSE
    CXX_STANDARD_REQUIRED FALSE
)

if(WIN32 AND NOT CYGWIN)
    target_compile_definitions(base INTERFACE WIN32=1)
endif()
if(UNIX OR CYGWIN)
    target_compile_definitions(base INTERFACE UNIX=1)
endif()
if(MINGW)
    target_compile_definitions(base INTERFACE MINGW=1)
endif()
if(ANDROID)
    target_compile_definitions(base INTERFACE ANDROID=1)
endif()
if(APPLE)
    target_compile_definitions(base INTERFACE APPLE=1)
endif()
