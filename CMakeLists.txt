# MAIN CONFIGURATIONS =============================

cmake_minimum_required( VERSION 3.5 )
project(searching VERSION 1.0.0 )

add_compile_options( -Wall -pedantic-errors -g )
include_directories( includes )


# Locate GTest package (library) ==========================
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})


# EXECUTABLES DEFINITION ==========================

# Create a sources variable with a link to all cpp files to compile
set(SOURCES
	src/iterative_linear_search.cpp
	src/iterative_binary_search.cpp
	src/recursive_binary_search.cpp
	src/iterative_ternary_search.cpp
	src/jump_search.cpp
)
#src/searching.cpp

# Add executables with the above sources 
add_executable( search ${SOURCES})

#define C++11 as the standard.
target_compile_features(search PUBLIC cxx_std_11)

# Test target ==========================

#However, the file(GLOB...) allows for wildcard additions:
file(GLOB SOURCES_TEST "test/*.cpp")
#
add_executable(run_tests ${SOURCES_TEST} ${SOURCES})

# Link with the google test libraries.
target_link_libraries(run_tests ${GTEST_LIBRARIES} pthread)

# define C++11 as the standard.
# set_property(TARGET run_tests PROPERTY CXX_STANDARD 11)
target_compile_features(run_tests PUBLIC cxx_std_11)
