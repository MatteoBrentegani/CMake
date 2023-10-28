cmake_minimum_required(VERSION 3.16)

project(
    CppProjectTemplate
    VERSION 1.0.0
    LANGUAGES C CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")
include(AddGitSubmodule)

add_git_submodule(external/json)
add_git_submodule(external/cxxopts)
add_git_submodule(external/fmt)
add_git_submodule(external/spdlog)
add_git_submodule(external/catch2)

option(COMPILE_EXECUTABLE "Wehter to compile the executable" OFF)
option(ENABLE_TESTING "Enable a Unit Test build" OFF)

set(LIBRARY_NAME Library)
set(EXECUTABLE_NAME Executable)

add_subdirectory(configure)
add_subdirectory(external)
add_subdirectory(src)
if (COMPILE_EXECUTABLE)
    add_subdirectory(app)
endif()
add_subdirectory(tests)