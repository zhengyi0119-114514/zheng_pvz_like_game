include(FetchContent)
find_package(Python REQUIRED)

find_package(SDL2 QUIET)

	if(NOT SDL2_FOUND AND NOT SDL2_FIND)
	message(STATUS "Cannot find SDL2 lib")
	FetchContent_Declare(
		SDL2
		GIT_REPOSITORY "https://github.com/libsdl-org/SDL.git"
		GIT_TAG  "release-2.30.5" # or a later release
		)
		FetchContent_MakeAvailable(SDL2)
endif()



find_package(pybind11 QUIET)

if(NOT pybind11_FOUND AND NOT pybind11_FIND)
	FetchContent_Declare(
		pybind11
		GIT_REPOSITORY "https://github.com/pybind/pybind11.git"
		GIT_TAG  "v2.13.1"
	)
	FetchContent_MakeAvailable(pybind11)
endif()

find_package(tinyxml2 QUIET)

if(NOT tinyxml2_FOUND AND NOT tinyxml2_FIND)
	FetchContent_Declare(
		tinyxml2
		GIT_REPOSITORY "https://github.com/leethomason/tinyxml2.git"
		GIT_TAG "10.0.0"
	)
	FetchContent_MakeAvailable(tinyxml2)
endif()

find_package(mbits-utfconv QUIET)

if(NOT mbits-utfconv_FOUND AND NOT mbits-utfconv_FIND)
	FetchContent_Declare(
		mbits-utfconv
		GIT_REPOSITORY "https://github.com/mbits-libs/utfconv.git"
		GIT_TAG "v1.0.4"
	)
	FetchContent_MakeAvailable(mbits-utfconv)
endif()

find_package(brynet QUIET)

if(NOT brynet_FOUND AND NOT brynet_FIND)
	FetchContent_Declare(
		brynet
		GIT_REPOSITORY "https://github.com/IronsDu/brynet.git"
		GIT_TAG "v1.12.2"
	)
	FetchContent_MakeAvailable(brynet)
endif()

