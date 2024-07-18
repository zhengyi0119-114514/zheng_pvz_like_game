cmake_minimum_required(VERSION 3.20)


add_library(client SHARED)
target_link_libraries(client PRIVATE base)
target_sources(client PRIVATE empty.cpp)

target_link_libraries(client PRIVATE server)
target_link_libraries(client PRIVATE SDL2::SDL2)