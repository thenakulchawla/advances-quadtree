# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sahil/Desktop/ADBNakul/new/advdbTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sahil/Desktop/ADBNakul/new/advdbTest/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/advdbTest.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/advdbTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/advdbTest.dir/flags.make

CMakeFiles/advdbTest.dir/main.cpp.o: CMakeFiles/advdbTest.dir/flags.make
CMakeFiles/advdbTest.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sahil/Desktop/ADBNakul/new/advdbTest/cmake-build-debug/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/advdbTest.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/advdbTest.dir/main.cpp.o -c /home/sahil/Desktop/ADBNakul/new/advdbTest/main.cpp

CMakeFiles/advdbTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/advdbTest.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sahil/Desktop/ADBNakul/new/advdbTest/main.cpp > CMakeFiles/advdbTest.dir/main.cpp.i

CMakeFiles/advdbTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/advdbTest.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sahil/Desktop/ADBNakul/new/advdbTest/main.cpp -o CMakeFiles/advdbTest.dir/main.cpp.s

CMakeFiles/advdbTest.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/advdbTest.dir/main.cpp.o.requires

CMakeFiles/advdbTest.dir/main.cpp.o.provides: CMakeFiles/advdbTest.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/advdbTest.dir/build.make CMakeFiles/advdbTest.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/advdbTest.dir/main.cpp.o.provides

CMakeFiles/advdbTest.dir/main.cpp.o.provides.build: CMakeFiles/advdbTest.dir/main.cpp.o

# Object files for target advdbTest
advdbTest_OBJECTS = \
"CMakeFiles/advdbTest.dir/main.cpp.o"

# External object files for target advdbTest
advdbTest_EXTERNAL_OBJECTS =

advdbTest: CMakeFiles/advdbTest.dir/main.cpp.o
advdbTest: CMakeFiles/advdbTest.dir/build.make
advdbTest: CMakeFiles/advdbTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable advdbTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/advdbTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/advdbTest.dir/build: advdbTest
.PHONY : CMakeFiles/advdbTest.dir/build

CMakeFiles/advdbTest.dir/requires: CMakeFiles/advdbTest.dir/main.cpp.o.requires
.PHONY : CMakeFiles/advdbTest.dir/requires

CMakeFiles/advdbTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/advdbTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/advdbTest.dir/clean

CMakeFiles/advdbTest.dir/depend:
	cd /home/sahil/Desktop/ADBNakul/new/advdbTest/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sahil/Desktop/ADBNakul/new/advdbTest /home/sahil/Desktop/ADBNakul/new/advdbTest /home/sahil/Desktop/ADBNakul/new/advdbTest/cmake-build-debug /home/sahil/Desktop/ADBNakul/new/advdbTest/cmake-build-debug /home/sahil/Desktop/ADBNakul/new/advdbTest/cmake-build-debug/CMakeFiles/advdbTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/advdbTest.dir/depend
