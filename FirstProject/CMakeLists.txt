cmake_minimum_required(VERSION 3.16)

project(
    CppProjectTemplate
    VERSION 1.0.0
    LANGUAGES C CXX
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

option(COMPILE_EXECUTABLE "Wehter to compile the executable" OFF)

option(ENABLE_TESTING "Enable a Unit Test build" OFF)

option(ENABLE_WARNINGS "Enable a Unit Test build" ON)
option(ENABLE_WARNINGS_AS_ERRORS "Enable a Unit Test build" OFF)

option(ENABLE_SANITIZER_ADDRESS "Enable .." ON)
option(ENABLE_SANITIZER_UNDEFINED "Enable .." ON)

option(ENABLE_LTO "Enable ..." ON)

set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake/")
include(AddGitSubmodule)
if (ENABLE_WARNINGS)
    include(Warning)
endif()

if (ENABLE_SANITIZER_ADDRESS OR ENABLE_SANITIZER_UNDEFINED)
    include(Sanitizer)
    add_sanitizer_flags()
endif()

if (ENABLE_LTO)
    include(LTO)
endif()

add_git_submodule(external/json)
add_git_submodule(external/cxxopts)
add_git_submodule(external/fmt)
add_git_submodule(external/spdlog)
add_git_submodule(external/catch2)


set(LIBRARY_NAME Library)
set(EXECUTABLE_NAME Executable)

add_subdirectory(configure)
add_subdirectory(src)
if (COMPILE_EXECUTABLE)
    add_subdirectory(app)
endif()
add_subdirectory(tests)