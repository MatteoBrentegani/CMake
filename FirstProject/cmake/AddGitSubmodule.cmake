function(add_git_submodule directory)
    find_package(Git REQUIRED)
    if (NOT EXISTS ${CMAKE_SOURCE_DIR}/${directory}/CMakeLists.txt)
        MESSAGE(STATUS "${GIT_EXECUTABLE} submodule update --init --recursive -- ${CMAKE_SOURCE_DIR}/${directory} ${PROJECT_SOURCE_DIR}/../")
        execute_process(COMMAND "${GIT_EXECUTABLE} submodule update --init --recursive -- ${CMAKE_SOURCE_DIR}/${directory} "
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/../
        )
    endif()

    if (EXISTS ${CMAKE_SOURCE_DIR}/${directory}/CMakeLists.txt)
        message("Adding: ${directory}/CMakeLists.txt")
        add_subdirectory(${CMAKE_SOURCE_DIR}/${directory})
    else()
        message("Could not add: ${CMAKE_SOURCE_DIR}/${directory}/CMakeLists.txt")
    endif()

endfunction(add_git_submodule)

