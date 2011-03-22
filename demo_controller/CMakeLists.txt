cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

rosbuild_init()

set(WEBOTS_HOME $ENV{WEBOTS_HOME})
add_definitions(-I${WEBOTS_HOME}/include/controller/cpp -I${WEBOTS_HOME}/include -Wall -I${WEBOTS_HOME}/include/controller/c -DLINUX)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

rosbuild_add_executable(demo_controller src/main.cpp)
find_library(CONTROLLER_LIBRARY CppController ${WEBOTS_HOME}/lib)
target_link_libraries(demo_controller ${CONTROLLER_LIBRARY})
