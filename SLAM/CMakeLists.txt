# Minimum version of CMake required
cmake_minimum_required(VERSION 3.28)

# Project name and version
project(run_slam VERSION 1.0)

# Set the C++ standard (optional, defaults to C++11 in many cases)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
# Option to control the use of precompiled headers
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
# Add the executable, assuming the source file is located in `src/main.cpp`
add_executable(run_slam src/main.cpp)
target_link_libraries( run_slam ${OpenCV_LIBS} )