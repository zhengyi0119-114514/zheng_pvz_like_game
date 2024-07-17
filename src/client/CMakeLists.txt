cmake_minimum_required(VERSION 3.20)


add_executable(client)
target_link_libraries(client PRIVATE base)
target_sources(client PRIVATE empty.cpp)

target_link_libraries(client PRIVATE SDL2::SDL2)