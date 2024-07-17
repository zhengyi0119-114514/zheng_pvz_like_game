message(STATUS "Conan: Using CMakeDeps conandeps_legacy.cmake aggregator via include()")
message(STATUS "Conan: It is recommended to use explicit find_package() per dependency instead")

find_package(SDL2)
find_package(pybind11)
find_package(mbits-utfconv)
find_package(tinyxml2)
find_package(brynet)

set(CONANDEPS_LEGACY  SDL2::SDL2main  pybind11_all_do_not_use  mbits::utfconv  tinyxml2::tinyxml2  brynet::brynet )