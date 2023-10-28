set(LIBRARY_SOURCES
    "my_lib.cc"
)
set(LIBRARY_HEADERS
    "my_lib.h"
)
set(LIBRARY_INCLUDE
    "./"
    "${CMAKE_BINARY_DIR}/configured_files/include"
)


add_library(${LIBRARY_NAME} STATIC 
    ${LIBRARY_SOURCES}
    ${LIBRARY_HEADERS}
)

target_include_directories(${LIBRARY_NAME} PUBLIC 
    ${LIBRARY_INCLUDE}
)
target_link_libraries(${LIBRARY_NAME} PUBLIC
    cxxopts::cxxopts
    fmt::fmt
    nlohmann_json::nlohmann_json
    spdlog::spdlog
)