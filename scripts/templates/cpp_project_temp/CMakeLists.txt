cmake_minimum_required(VERSION 3.16)
project(cpp_project)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_COMPILER g++)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

file(GLOB LIB_FILES "${PROJECT_SOURCE_DIR}/lib/*/lib/*.so")

# Add source files
file(GLOB_RECURSE SOURCE_FILES
    "${PROJECT_SOURCE_DIR}/src/*.cpp"
)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries (${PROJECT_NAME})
