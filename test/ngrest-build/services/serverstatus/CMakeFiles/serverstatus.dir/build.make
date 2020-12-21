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
include services/serverstatus/CMakeFiles/serverstatus.dir/depend.make

# Include the progress variables for this target.
include services/serverstatus/CMakeFiles/serverstatus.dir/progress.make

# Include the compile flags for this target's objects.
include services/serverstatus/CMakeFiles/serverstatus.dir/flags.make

services/serverstatus/codegen/ServiceGroupImpl.h: /home/x213212/softansyis/gnn/andersen/test/ngrest/services/serverstatus/src/ServerStatus.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating codegen/ServiceGroupImpl.h, codegen/ServiceGroupImpl.cpp, codegen/ServerStatusWrapper.h, codegen/ServerStatusWrapper.cpp"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && ../../deploy/bin/ngrestcg -i /home/x213212/softansyis/gnn/andersen/test/ngrest/services/serverstatus/src -o /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/codegen -t service ServerStatus.h

services/serverstatus/codegen/ServiceGroupImpl.cpp: services/serverstatus/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate services/serverstatus/codegen/ServiceGroupImpl.cpp

services/serverstatus/codegen/ServerStatusWrapper.h: services/serverstatus/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate services/serverstatus/codegen/ServerStatusWrapper.h

services/serverstatus/codegen/ServerStatusWrapper.cpp: services/serverstatus/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate services/serverstatus/codegen/ServerStatusWrapper.cpp

services/serverstatus/CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.o: services/serverstatus/CMakeFiles/serverstatus.dir/flags.make
services/serverstatus/CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.o: /home/x213212/softansyis/gnn/andersen/test/ngrest/services/serverstatus/src/ServerStatus.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object services/serverstatus/CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest/services/serverstatus/src/ServerStatus.cpp

services/serverstatus/CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest/services/serverstatus/src/ServerStatus.cpp > CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.i

services/serverstatus/CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest/services/serverstatus/src/ServerStatus.cpp -o CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.s

services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.o: services/serverstatus/CMakeFiles/serverstatus.dir/flags.make
services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.o: services/serverstatus/codegen/ServiceGroupImpl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/codegen/ServiceGroupImpl.cpp

services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/codegen/ServiceGroupImpl.cpp > CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.i

services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/codegen/ServiceGroupImpl.cpp -o CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.s

services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.o: services/serverstatus/CMakeFiles/serverstatus.dir/flags.make
services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.o: services/serverstatus/codegen/ServerStatusWrapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/codegen/ServerStatusWrapper.cpp

services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/codegen/ServerStatusWrapper.cpp > CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.i

services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/codegen/ServerStatusWrapper.cpp -o CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.s

# Object files for target serverstatus
serverstatus_OBJECTS = \
"CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.o" \
"CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.o" \
"CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.o"

# External object files for target serverstatus
serverstatus_EXTERNAL_OBJECTS =

deploy/share/ngrest/services/serverstatus.so: services/serverstatus/CMakeFiles/serverstatus.dir/src/ServerStatus.cpp.o
deploy/share/ngrest/services/serverstatus.so: services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServiceGroupImpl.cpp.o
deploy/share/ngrest/services/serverstatus.so: services/serverstatus/CMakeFiles/serverstatus.dir/codegen/ServerStatusWrapper.cpp.o
deploy/share/ngrest/services/serverstatus.so: services/serverstatus/CMakeFiles/serverstatus.dir/build.make
deploy/share/ngrest/services/serverstatus.so: deploy/lib/libngrestengine.so
deploy/share/ngrest/services/serverstatus.so: deploy/lib/libngrestjson.so
deploy/share/ngrest/services/serverstatus.so: deploy/lib/libngrestcommon.so
deploy/share/ngrest/services/serverstatus.so: deploy/lib/libngrestutils.so
deploy/share/ngrest/services/serverstatus.so: services/serverstatus/CMakeFiles/serverstatus.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared module ../../deploy/share/ngrest/services/serverstatus.so"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serverstatus.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
services/serverstatus/CMakeFiles/serverstatus.dir/build: deploy/share/ngrest/services/serverstatus.so

.PHONY : services/serverstatus/CMakeFiles/serverstatus.dir/build

services/serverstatus/CMakeFiles/serverstatus.dir/clean:
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus && $(CMAKE_COMMAND) -P CMakeFiles/serverstatus.dir/cmake_clean.cmake
.PHONY : services/serverstatus/CMakeFiles/serverstatus.dir/clean

services/serverstatus/CMakeFiles/serverstatus.dir/depend: services/serverstatus/codegen/ServiceGroupImpl.h
services/serverstatus/CMakeFiles/serverstatus.dir/depend: services/serverstatus/codegen/ServiceGroupImpl.cpp
services/serverstatus/CMakeFiles/serverstatus.dir/depend: services/serverstatus/codegen/ServerStatusWrapper.h
services/serverstatus/CMakeFiles/serverstatus.dir/depend: services/serverstatus/codegen/ServerStatusWrapper.cpp
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/x213212/softansyis/gnn/andersen/test/ngrest /home/x213212/softansyis/gnn/andersen/test/ngrest/services/serverstatus /home/x213212/softansyis/gnn/andersen/test/ngrest-build /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus /home/x213212/softansyis/gnn/andersen/test/ngrest-build/services/serverstatus/CMakeFiles/serverstatus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : services/serverstatus/CMakeFiles/serverstatus.dir/depend

