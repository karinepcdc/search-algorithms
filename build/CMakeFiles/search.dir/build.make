# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/karine/prog/cpp/EDB1/search-algorithms

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/karine/prog/cpp/EDB1/search-algorithms/build

# Include any dependencies generated for this target.
include CMakeFiles/search.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/search.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/search.dir/flags.make

CMakeFiles/search.dir/src/iterative_linear_search.cpp.o: CMakeFiles/search.dir/flags.make
CMakeFiles/search.dir/src/iterative_linear_search.cpp.o: ../src/iterative_linear_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karine/prog/cpp/EDB1/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/search.dir/src/iterative_linear_search.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search.dir/src/iterative_linear_search.cpp.o -c /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_linear_search.cpp

CMakeFiles/search.dir/src/iterative_linear_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search.dir/src/iterative_linear_search.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_linear_search.cpp > CMakeFiles/search.dir/src/iterative_linear_search.cpp.i

CMakeFiles/search.dir/src/iterative_linear_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search.dir/src/iterative_linear_search.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_linear_search.cpp -o CMakeFiles/search.dir/src/iterative_linear_search.cpp.s

CMakeFiles/search.dir/src/iterative_binary_search.cpp.o: CMakeFiles/search.dir/flags.make
CMakeFiles/search.dir/src/iterative_binary_search.cpp.o: ../src/iterative_binary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karine/prog/cpp/EDB1/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/search.dir/src/iterative_binary_search.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search.dir/src/iterative_binary_search.cpp.o -c /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_binary_search.cpp

CMakeFiles/search.dir/src/iterative_binary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search.dir/src/iterative_binary_search.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_binary_search.cpp > CMakeFiles/search.dir/src/iterative_binary_search.cpp.i

CMakeFiles/search.dir/src/iterative_binary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search.dir/src/iterative_binary_search.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_binary_search.cpp -o CMakeFiles/search.dir/src/iterative_binary_search.cpp.s

CMakeFiles/search.dir/src/recursive_binary_search.cpp.o: CMakeFiles/search.dir/flags.make
CMakeFiles/search.dir/src/recursive_binary_search.cpp.o: ../src/recursive_binary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karine/prog/cpp/EDB1/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/search.dir/src/recursive_binary_search.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search.dir/src/recursive_binary_search.cpp.o -c /Users/karine/prog/cpp/EDB1/search-algorithms/src/recursive_binary_search.cpp

CMakeFiles/search.dir/src/recursive_binary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search.dir/src/recursive_binary_search.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karine/prog/cpp/EDB1/search-algorithms/src/recursive_binary_search.cpp > CMakeFiles/search.dir/src/recursive_binary_search.cpp.i

CMakeFiles/search.dir/src/recursive_binary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search.dir/src/recursive_binary_search.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karine/prog/cpp/EDB1/search-algorithms/src/recursive_binary_search.cpp -o CMakeFiles/search.dir/src/recursive_binary_search.cpp.s

CMakeFiles/search.dir/src/iterative_ternary_search.cpp.o: CMakeFiles/search.dir/flags.make
CMakeFiles/search.dir/src/iterative_ternary_search.cpp.o: ../src/iterative_ternary_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karine/prog/cpp/EDB1/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/search.dir/src/iterative_ternary_search.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search.dir/src/iterative_ternary_search.cpp.o -c /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_ternary_search.cpp

CMakeFiles/search.dir/src/iterative_ternary_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search.dir/src/iterative_ternary_search.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_ternary_search.cpp > CMakeFiles/search.dir/src/iterative_ternary_search.cpp.i

CMakeFiles/search.dir/src/iterative_ternary_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search.dir/src/iterative_ternary_search.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karine/prog/cpp/EDB1/search-algorithms/src/iterative_ternary_search.cpp -o CMakeFiles/search.dir/src/iterative_ternary_search.cpp.s

CMakeFiles/search.dir/src/jump_search.cpp.o: CMakeFiles/search.dir/flags.make
CMakeFiles/search.dir/src/jump_search.cpp.o: ../src/jump_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/karine/prog/cpp/EDB1/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/search.dir/src/jump_search.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/search.dir/src/jump_search.cpp.o -c /Users/karine/prog/cpp/EDB1/search-algorithms/src/jump_search.cpp

CMakeFiles/search.dir/src/jump_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/search.dir/src/jump_search.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/karine/prog/cpp/EDB1/search-algorithms/src/jump_search.cpp > CMakeFiles/search.dir/src/jump_search.cpp.i

CMakeFiles/search.dir/src/jump_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/search.dir/src/jump_search.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/karine/prog/cpp/EDB1/search-algorithms/src/jump_search.cpp -o CMakeFiles/search.dir/src/jump_search.cpp.s

# Object files for target search
search_OBJECTS = \
"CMakeFiles/search.dir/src/iterative_linear_search.cpp.o" \
"CMakeFiles/search.dir/src/iterative_binary_search.cpp.o" \
"CMakeFiles/search.dir/src/recursive_binary_search.cpp.o" \
"CMakeFiles/search.dir/src/iterative_ternary_search.cpp.o" \
"CMakeFiles/search.dir/src/jump_search.cpp.o"

# External object files for target search
search_EXTERNAL_OBJECTS =

search: CMakeFiles/search.dir/src/iterative_linear_search.cpp.o
search: CMakeFiles/search.dir/src/iterative_binary_search.cpp.o
search: CMakeFiles/search.dir/src/recursive_binary_search.cpp.o
search: CMakeFiles/search.dir/src/iterative_ternary_search.cpp.o
search: CMakeFiles/search.dir/src/jump_search.cpp.o
search: CMakeFiles/search.dir/build.make
search: CMakeFiles/search.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/karine/prog/cpp/EDB1/search-algorithms/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable search"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/search.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/search.dir/build: search

.PHONY : CMakeFiles/search.dir/build

CMakeFiles/search.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/search.dir/cmake_clean.cmake
.PHONY : CMakeFiles/search.dir/clean

CMakeFiles/search.dir/depend:
	cd /Users/karine/prog/cpp/EDB1/search-algorithms/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/karine/prog/cpp/EDB1/search-algorithms /Users/karine/prog/cpp/EDB1/search-algorithms /Users/karine/prog/cpp/EDB1/search-algorithms/build /Users/karine/prog/cpp/EDB1/search-algorithms/build /Users/karine/prog/cpp/EDB1/search-algorithms/build/CMakeFiles/search.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/search.dir/depend

