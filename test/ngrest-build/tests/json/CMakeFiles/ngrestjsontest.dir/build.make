# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/x213212/softansyis/gnn/andersen/test/ngrest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/x213212/softansyis/gnn/andersen/test/ngrest-build

# Include any dependencies generated for this target.
include tests/json/CMakeFiles/ngrestjsontest.dir/depend.make

# Include the progress variables for this target.
include tests/json/CMakeFiles/ngrestjsontest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/json/CMakeFiles/ngrestjsontest.dir/flags.make

tests/json/CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.o: tests/json/CMakeFiles/ngrestjsontest.dir/flags.make
tests/json/CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.o: /home/x213212/softansyis/gnn/andersen/test/ngrest/tests/json/src/jsontest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/json/CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/tests/json && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest/tests/json/src/jsontest.cpp

tests/json/CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/tests/json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest/tests/json/src/jsontest.cpp > CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.i

tests/json/CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/tests/json && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest/tests/json/src/jsontest.cpp -o CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.s

# Object files for target ngrestjsontest
ngrestjsontest_OBJECTS = \
"CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.o"

# External object files for target ngrestjsontest
ngrestjsontest_EXTERNAL_OBJECTS =

deploy/tests/ngrestjsontest: tests/json/CMakeFiles/ngrestjsontest.dir/src/jsontest.cpp.o
deploy/tests/ngrestjsontest: tests/json/CMakeFiles/ngrestjsontest.dir/build.make
deploy/tests/ngrestjsontest: deploy/lib/libngrestjson.so
deploy/tests/ngrestjsontest: deploy/lib/libngrestcommon.so
deploy/tests/ngrestjsontest: deploy/lib/libngrestutils.so
deploy/tests/ngrestjsontest: tests/json/CMakeFiles/ngrestjsontest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../deploy/tests/ngrestjsontest"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/tests/json && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ngrestjsontest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/json/CMakeFiles/ngrestjsontest.dir/build: deploy/tests/ngrestjsontest

.PHONY : tests/json/CMakeFiles/ngrestjsontest.dir/build

tests/json/CMakeFiles/ngrestjsontest.dir/clean:
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/tests/json && $(CMAKE_COMMAND) -P CMakeFiles/ngrestjsontest.dir/cmake_clean.cmake
.PHONY : tests/json/CMakeFiles/ngrestjsontest.dir/clean

tests/json/CMakeFiles/ngrestjsontest.dir/depend:
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/x213212/softansyis/gnn/andersen/test/ngrest /home/x213212/softansyis/gnn/andersen/test/ngrest/tests/json /home/x213212/softansyis/gnn/andersen/test/ngrest-build /home/x213212/softansyis/gnn/andersen/test/ngrest-build/tests/json /home/x213212/softansyis/gnn/andersen/test/ngrest-build/tests/json/CMakeFiles/ngrestjsontest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/json/CMakeFiles/ngrestjsontest.dir/depend
