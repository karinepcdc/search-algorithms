# MAIN CONFIGURATIONS =============================

cmake_minimum_required( VERSION 3.5 )
project(searching VERSION 1.0.0 )

add_compile_options( -Wall -pedantic-errors -g )
include_directories( includes )


# EXECUTABLES DEFINITION ==========================

# Create a sources variable with a link to all cpp files to compile
set(SOURCES
	src/iterative_linear_search.cpp
	src/iterative_binary_search.cpp
	src/recursive_binary_search.cpp
	src/iterative_ternary_search.cpp
	src/recursive_ternary_search.cpp
	src/jump_search.cpp
	src/fibonacci_search.cpp
	src/test_searching.cpp

)
#src/timing_search.cpp
#src/test_searching.cpp       ## to test, replace last line with this one

# Add executables with the above sources 
#add_executable( search ${SOURCES})  ## to test, comment this line

#define C++11 as the standard.
#target_compile_features(search PUBLIC cxx_std_11)  ## to test, comment this line

# Test target ==========================

# Add executables with the above sources 
add_executable( search_tests ${SOURCES}) ## to test, uncomment this line

#define C++11 as the standard.
target_compile_features(search_tests PUBLIC cxx_std_11) ## to test, uncomment this line
