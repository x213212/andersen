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
include services/favicon/CMakeFiles/favicon.dir/depend.make

# Include the progress variables for this target.
include services/favicon/CMakeFiles/favicon.dir/progress.make

# Include the compile flags for this target's objects.
include services/favicon/CMakeFiles/favicon.dir/flags.make

services/favicon/codegen/ServiceGroupImpl.h: /home/x213212/softansyis/gnn/andersen/test/ngrest/services/favicon/src/Favicon.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating codegen/ServiceGroupImpl.h, codegen/ServiceGroupImpl.cpp, codegen/FaviconWrapper.h, codegen/FaviconWrapper.cpp"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && ../../deploy/bin/ngrestcg -i /home/x213212/softansyis/gnn/andersen/test/ngrest/services/favicon/src -o /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/codegen -t service Favicon.h

services/favicon/codegen/ServiceGroupImpl.cpp: services/favicon/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate services/favicon/codegen/ServiceGroupImpl.cpp

services/favicon/codegen/FaviconWrapper.h: services/favicon/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate services/favicon/codegen/FaviconWrapper.h

services/favicon/codegen/FaviconWrapper.cpp: services/favicon/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate services/favicon/codegen/FaviconWrapper.cpp

services/favicon/CMakeFiles/favicon.dir/src/Favicon.cpp.o: services/favicon/CMakeFiles/favicon.dir/flags.make
services/favicon/CMakeFiles/favicon.dir/src/Favicon.cpp.o: /home/x213212/softansyis/gnn/andersen/test/ngrest/services/favicon/src/Favicon.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object services/favicon/CMakeFiles/favicon.dir/src/Favicon.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/favicon.dir/src/Favicon.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest/services/favicon/src/Favicon.cpp

services/favicon/CMakeFiles/favicon.dir/src/Favicon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/favicon.dir/src/Favicon.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest/services/favicon/src/Favicon.cpp > CMakeFiles/favicon.dir/src/Favicon.cpp.i

services/favicon/CMakeFiles/favicon.dir/src/Favicon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/favicon.dir/src/Favicon.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest/services/favicon/src/Favicon.cpp -o CMakeFiles/favicon.dir/src/Favicon.cpp.s

services/favicon/CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.o: services/favicon/CMakeFiles/favicon.dir/flags.make
services/favicon/CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.o: services/favicon/codegen/ServiceGroupImpl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object services/favicon/CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/codegen/ServiceGroupImpl.cpp

services/favicon/CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/codegen/ServiceGroupImpl.cpp > CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.i

services/favicon/CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/codegen/ServiceGroupImpl.cpp -o CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.s

services/favicon/CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.o: services/favicon/CMakeFiles/favicon.dir/flags.make
services/favicon/CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.o: services/favicon/codegen/FaviconWrapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object services/favicon/CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/codegen/FaviconWrapper.cpp

services/favicon/CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/codegen/FaviconWrapper.cpp > CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.i

services/favicon/CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/codegen/FaviconWrapper.cpp -o CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.s

# Object files for target favicon
favicon_OBJECTS = \
"CMakeFiles/favicon.dir/src/Favicon.cpp.o" \
"CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.o" \
"CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.o"

# External object files for target favicon
favicon_EXTERNAL_OBJECTS =

deploy/share/ngrest/services/favicon.so: services/favicon/CMakeFiles/favicon.dir/src/Favicon.cpp.o
deploy/share/ngrest/services/favicon.so: services/favicon/CMakeFiles/favicon.dir/codegen/ServiceGroupImpl.cpp.o
deploy/share/ngrest/services/favicon.so: services/favicon/CMakeFiles/favicon.dir/codegen/FaviconWrapper.cpp.o
deploy/share/ngrest/services/favicon.so: services/favicon/CMakeFiles/favicon.dir/build.make
deploy/share/ngrest/services/favicon.so: deploy/lib/libngrestengine.so
deploy/share/ngrest/services/favicon.so: deploy/lib/libngrestjson.so
deploy/share/ngrest/services/favicon.so: deploy/lib/libngrestcommon.so
deploy/share/ngrest/services/favicon.so: deploy/lib/libngrestutils.so
deploy/share/ngrest/services/favicon.so: services/favicon/CMakeFiles/favicon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared module ../../deploy/share/ngrest/services/favicon.so"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/favicon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
services/favicon/CMakeFiles/favicon.dir/build: deploy/share/ngrest/services/favicon.so

.PHONY : services/favicon/CMakeFiles/favicon.dir/build

services/favicon/CMakeFiles/favicon.dir/clean:
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon && $(CMAKE_COMMAND) -P CMakeFiles/favicon.dir/cmake_clean.cmake
.PHONY : services/favicon/CMakeFiles/favicon.dir/clean

services/favicon/CMakeFiles/favicon.dir/depend: services/favicon/codegen/ServiceGroupImpl.h
services/favicon/CMakeFiles/favicon.dir/depend: services/favicon/codegen/ServiceGroupImpl.cpp
services/favicon/CMakeFiles/favicon.dir/depend: services/favicon/codegen/FaviconWrapper.h
services/favicon/CMakeFiles/favicon.dir/depend: services/favicon/codegen/FaviconWrapper.cpp
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/x213212/softansyis/gnn/andersen/test/ngrest /home/x213212/softansyis/gnn/andersen/test/ngrest/services/favicon /home/x213212/softansyis/gnn/andersen/test/ngrest-build /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/favicon/CMakeFiles/favicon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : services/favicon/CMakeFiles/favicon.dir/depend
