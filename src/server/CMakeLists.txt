cmake_minimum_required(VERSION 3.20)
add_library(server SHARED)

target_link_libraries(server PRIVATE base)

target_sources(server PRIVATE empty.cpp)
target_link_libraries(server PRIVATE brynet::brynet)
target_link_libraries(server PRIVATE mbits::utfconv)
target_link_libraries(server PRIVATE tinyxml2::tinyxml2)
target_link_libraries(server PRIVATE spdlog::spdlog)
target_link_libraries(server PRIVATE pybind11::embed)
target_link_libraries(server PRIVATE ${PYTHON_LIBRARY_RELEASE})

target_include_directories(server SYSTEM PRIVATE ${PYTHON_INCLUDE_DIRS})
target_include_directories(server SYSTEM PRIVATE ${pybind11_INCLUDE_DIRS})

if(WIN32)
    target_sources(server PRIVATE win32/WinMain.cpp)
endif()