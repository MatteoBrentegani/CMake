set(TEST_MAIN "unit_tests")
set(TEST_SOURCES "main.cc")
set(TEST_INCLUDE "./")

add_executable(${TEST_MAIN} ${TEST_SOURCES})
target_include_directories(${TEST_MAIN} PUBLIC ${TEST_INCLUDE})
target_link_libraries(${TEST_MAIN} PUBLIC ${LIBRARY_NAME} Catch2::Catch2)