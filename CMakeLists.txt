# MAIN CONFIGURATIONS =============================

cmake_minimum_required( VERSION 3.5 )
project( searching )

add_compile_options( -Wall -std=c++11 -pedantic-errors -g )
include_directories( includes )

# EXECUTABLES DEFINITION ==========================

# Tests Canvas class
add_executable( canvas
	src/canvas.cpp
	test/driver_canvas.cpp
)
