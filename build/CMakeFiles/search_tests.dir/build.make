# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/cmake-3.13.3-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /usr/cmake-3.13.3-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/karinepcdc/Documentos/search-algorithms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/karinepcdc/Documentos/search-algorithms/build

# Include any dependencies generated for this target.
include CMakeFiles/search_tests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/search_tests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/search_tests.dir/flags.make

CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.o: ../src/iterative_linear_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/iterative_linear_search.cpp

CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/iterative_linear_search.cpp > CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.i

CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/iterative_linear_search.cpp -o CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.s

CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.o: ../src/iterative_binary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/iterative_binary_search.cpp

CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/iterative_binary_search.cpp > CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.i

CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/iterative_binary_search.cpp -o CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.s

CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.o: ../src/recursive_binary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/recursive_binary_search.cpp

CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/recursive_binary_search.cpp > CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.i

CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/recursive_binary_search.cpp -o CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.s

CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.o: ../src/iterative_ternary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/iterative_ternary_search.cpp

CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/iterative_ternary_search.cpp > CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.i

CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/iterative_ternary_search.cpp -o CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.s

CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.o: ../src/recursive_ternary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/recursive_ternary_search.cpp

CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/recursive_ternary_search.cpp > CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.i

CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/recursive_ternary_search.cpp -o CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.s

CMakeFiles/search_tests.dir/src/jump_search.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/jump_search.cpp.o: ../src/jump_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/search_tests.dir/src/jump_search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/jump_search.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/jump_search.cpp

CMakeFiles/search_tests.dir/src/jump_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/jump_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/jump_search.cpp > CMakeFiles/search_tests.dir/src/jump_search.cpp.i

CMakeFiles/search_tests.dir/src/jump_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/jump_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/jump_search.cpp -o CMakeFiles/search_tests.dir/src/jump_search.cpp.s

CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.o: ../src/fibonacci_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/fibonacci_search.cpp

CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/fibonacci_search.cpp > CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.i

CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/fibonacci_search.cpp -o CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.s

CMakeFiles/search_tests.dir/src/test_searching.cpp.o: CMakeFiles/search_tests.dir/flags.make
CMakeFiles/search_tests.dir/src/test_searching.cpp.o: ../src/test_searching.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/search_tests.dir/src/test_searching.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search_tests.dir/src/test_searching.cpp.o -c /home/karinepcdc/Documentos/search-algorithms/src/test_searching.cpp

CMakeFiles/search_tests.dir/src/test_searching.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search_tests.dir/src/test_searching.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/karinepcdc/Documentos/search-algorithms/src/test_searching.cpp > CMakeFiles/search_tests.dir/src/test_searching.cpp.i

CMakeFiles/search_tests.dir/src/test_searching.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search_tests.dir/src/test_searching.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/karinepcdc/Documentos/search-algorithms/src/test_searching.cpp -o CMakeFiles/search_tests.dir/src/test_searching.cpp.s

# Object files for target search_tests
search_tests_OBJECTS = \
"CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.o" \
"CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.o" \
"CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.o" \
"CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.o" \
"CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.o" \
"CMakeFiles/search_tests.dir/src/jump_search.cpp.o" \
"CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.o" \
"CMakeFiles/search_tests.dir/src/test_searching.cpp.o"

# External object files for target search_tests
search_tests_EXTERNAL_OBJECTS =

search_tests: CMakeFiles/search_tests.dir/src/iterative_linear_search.cpp.o
search_tests: CMakeFiles/search_tests.dir/src/iterative_binary_search.cpp.o
search_tests: CMakeFiles/search_tests.dir/src/recursive_binary_search.cpp.o
search_tests: CMakeFiles/search_tests.dir/src/iterative_ternary_search.cpp.o
search_tests: CMakeFiles/search_tests.dir/src/recursive_ternary_search.cpp.o
search_tests: CMakeFiles/search_tests.dir/src/jump_search.cpp.o
search_tests: CMakeFiles/search_tests.dir/src/fibonacci_search.cpp.o
search_tests: CMakeFiles/search_tests.dir/src/test_searching.cpp.o
search_tests: CMakeFiles/search_tests.dir/build.make
search_tests: CMakeFiles/search_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable search_tests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/search_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/search_tests.dir/build: search_tests

.PHONY : CMakeFiles/search_tests.dir/build

CMakeFiles/search_tests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/search_tests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/search_tests.dir/clean

CMakeFiles/search_tests.dir/depend:
	cd /home/karinepcdc/Documentos/search-algorithms/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/karinepcdc/Documentos/search-algorithms /home/karinepcdc/Documentos/search-algorithms /home/karinepcdc/Documentos/search-algorithms/build /home/karinepcdc/Documentos/search-algorithms/build /home/karinepcdc/Documentos/search-algorithms/build/CMakeFiles/search_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/search_tests.dir/depend

