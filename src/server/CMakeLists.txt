cmake_minimum_required(VERSION 3.20)
add_library(server SHARED)

target_link_libraries(server PRIVATE base)

target_sources(server PRIVATE empty.cpp)

target_link_libraries(server PRIVATE brynet::brynet)
target_link_libraries(server PRIVATE mbits::utfconv)
target_link_libraries(server PRIVATE tinyxml2::tinyxml2)
if(WIN32)
    target_sources(server PRIVATE win32/WinMain.cpp)
endif()