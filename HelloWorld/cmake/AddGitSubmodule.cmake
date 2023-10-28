function(add_git_submodule directory)
    find_package(Git REQUIRED)

    if (NOT EXISTS ${directory}/CMakeLists.txt)
        MESSAGE(STATUS "${GIT_EXECUTABLE} submodule update --init --recursive -- ${directory} ${PROJECT_SOURCE_DIR}/../")
        execute_process(COMMAND "${GIT_EXECUTABLE} submodule update --init --recursive -- ${directory} "
            WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}/../
        )
    endif()
    
    add_subdirectory(../${directory})

endfunction(add_git_submodule directory)

