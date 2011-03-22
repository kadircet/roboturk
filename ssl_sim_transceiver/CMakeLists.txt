cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

rosbuild_init()

set(WEBOTS_HOME $ENV{WEBOTS_HOME})

add_definitions(-I${WEBOTS_HOME}/include/controller/cpp -I${WEBOTS_HOME}/include -Wall -I${WEBOTS_HOME}/include/controller/c -DLINUX)

#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set the default path for built libraries to the "lib" directory
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

rosbuild_add_executable(ssl_sim_transceiver src/main.cpp src/SSLSimTransceiver.cpp)
find_library(CONTROLLER_LIBRARY CppController ${WEBOTS_HOME}/lib)
target_link_libraries(ssl_sim_transceiver ${CONTROLLER_LIBRARY})
