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
include examples/crud/CMakeFiles/crudservice.dir/depend.make

# Include the progress variables for this target.
include examples/crud/CMakeFiles/crudservice.dir/progress.make

# Include the compile flags for this target's objects.
include examples/crud/CMakeFiles/crudservice.dir/flags.make

examples/crud/codegen/ServiceGroupImpl.h: /home/x213212/softansyis/gnn/andersen/test/ngrest/examples/crud/src/Crud.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating codegen/ServiceGroupImpl.h, codegen/ServiceGroupImpl.cpp, codegen/CrudWrapper.h, codegen/CrudWrapper.cpp"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && ../../deploy/bin/ngrestcg -i /home/x213212/softansyis/gnn/andersen/test/ngrest/examples/crud/src -o /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/codegen -t service Crud.h

examples/crud/codegen/ServiceGroupImpl.cpp: examples/crud/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate examples/crud/codegen/ServiceGroupImpl.cpp

examples/crud/codegen/CrudWrapper.h: examples/crud/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate examples/crud/codegen/CrudWrapper.h

examples/crud/codegen/CrudWrapper.cpp: examples/crud/codegen/ServiceGroupImpl.h
	@$(CMAKE_COMMAND) -E touch_nocreate examples/crud/codegen/CrudWrapper.cpp

examples/crud/CMakeFiles/crudservice.dir/src/Crud.cpp.o: examples/crud/CMakeFiles/crudservice.dir/flags.make
examples/crud/CMakeFiles/crudservice.dir/src/Crud.cpp.o: /home/x213212/softansyis/gnn/andersen/test/ngrest/examples/crud/src/Crud.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/crud/CMakeFiles/crudservice.dir/src/Crud.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/crudservice.dir/src/Crud.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest/examples/crud/src/Crud.cpp

examples/crud/CMakeFiles/crudservice.dir/src/Crud.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crudservice.dir/src/Crud.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest/examples/crud/src/Crud.cpp > CMakeFiles/crudservice.dir/src/Crud.cpp.i

examples/crud/CMakeFiles/crudservice.dir/src/Crud.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crudservice.dir/src/Crud.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest/examples/crud/src/Crud.cpp -o CMakeFiles/crudservice.dir/src/Crud.cpp.s

examples/crud/CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.o: examples/crud/CMakeFiles/crudservice.dir/flags.make
examples/crud/CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.o: examples/crud/codegen/ServiceGroupImpl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/crud/CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/codegen/ServiceGroupImpl.cpp

examples/crud/CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/codegen/ServiceGroupImpl.cpp > CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.i

examples/crud/CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/codegen/ServiceGroupImpl.cpp -o CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.s

examples/crud/CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.o: examples/crud/CMakeFiles/crudservice.dir/flags.make
examples/crud/CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.o: examples/crud/codegen/CrudWrapper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object examples/crud/CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.o"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.o -c /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/codegen/CrudWrapper.cpp

examples/crud/CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.i"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/codegen/CrudWrapper.cpp > CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.i

examples/crud/CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.s"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/codegen/CrudWrapper.cpp -o CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.s

# Object files for target crudservice
crudservice_OBJECTS = \
"CMakeFiles/crudservice.dir/src/Crud.cpp.o" \
"CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.o" \
"CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.o"

# External object files for target crudservice
crudservice_EXTERNAL_OBJECTS =

deploy/share/ngrest/services/crudservice.so: examples/crud/CMakeFiles/crudservice.dir/src/Crud.cpp.o
deploy/share/ngrest/services/crudservice.so: examples/crud/CMakeFiles/crudservice.dir/codegen/ServiceGroupImpl.cpp.o
deploy/share/ngrest/services/crudservice.so: examples/crud/CMakeFiles/crudservice.dir/codegen/CrudWrapper.cpp.o
deploy/share/ngrest/services/crudservice.so: examples/crud/CMakeFiles/crudservice.dir/build.make
deploy/share/ngrest/services/crudservice.so: deploy/lib/libngrestengine.so
deploy/share/ngrest/services/crudservice.so: deploy/lib/libngrestjson.so
deploy/share/ngrest/services/crudservice.so: deploy/lib/libngrestcommon.so
deploy/share/ngrest/services/crudservice.so: deploy/lib/libngrestutils.so
deploy/share/ngrest/services/crudservice.so: examples/crud/CMakeFiles/crudservice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/x213212/softansyis/gnn/andersen/test/ngrest-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared module ../../deploy/share/ngrest/services/crudservice.so"
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crudservice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/crud/CMakeFiles/crudservice.dir/build: deploy/share/ngrest/services/crudservice.so

.PHONY : examples/crud/CMakeFiles/crudservice.dir/build

examples/crud/CMakeFiles/crudservice.dir/clean:
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud && $(CMAKE_COMMAND) -P CMakeFiles/crudservice.dir/cmake_clean.cmake
.PHONY : examples/crud/CMakeFiles/crudservice.dir/clean

examples/crud/CMakeFiles/crudservice.dir/depend: examples/crud/codegen/ServiceGroupImpl.h
examples/crud/CMakeFiles/crudservice.dir/depend: examples/crud/codegen/ServiceGroupImpl.cpp
examples/crud/CMakeFiles/crudservice.dir/depend: examples/crud/codegen/CrudWrapper.h
examples/crud/CMakeFiles/crudservice.dir/depend: examples/crud/codegen/CrudWrapper.cpp
	cd /home/x213212/softansyis/gnn/andersen/test/ngrest-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/x213212/softansyis/gnn/andersen/test/ngrest /home/x213212/softansyis/gnn/andersen/test/ngrest/examples/crud /home/x213212/softansyis/gnn/andersen/test/ngrest-build /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud /home/x213212/softansyis/gnn/andersen/test/ngrest-build/examples/crud/CMakeFiles/crudservice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/crud/CMakeFiles/crudservice.dir/depend

