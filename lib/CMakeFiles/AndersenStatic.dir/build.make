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
CMAKE_SOURCE_DIR = /root/andersen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/andersen

# Include any dependencies generated for this target.
include lib/CMakeFiles/AndersenStatic.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/AndersenStatic.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/AndersenStatic.dir/flags.make

# Object files for target AndersenStatic
AndersenStatic_OBJECTS =

# External object files for target AndersenStatic
AndersenStatic_EXTERNAL_OBJECTS = \
"/root/andersen/lib/CMakeFiles/AndersenObj.dir/Andersen.cpp.o" \
"/root/andersen/lib/CMakeFiles/AndersenObj.dir/AndersenAA.cpp.o" \
"/root/andersen/lib/CMakeFiles/AndersenObj.dir/ConstraintCollect.cpp.o" \
"/root/andersen/lib/CMakeFiles/AndersenObj.dir/ConstraintOptimize.cpp.o" \
"/root/andersen/lib/CMakeFiles/AndersenObj.dir/ConstraintSolving.cpp.o" \
"/root/andersen/lib/CMakeFiles/AndersenObj.dir/ExternalLibrary.cpp.o" \
"/root/andersen/lib/CMakeFiles/AndersenObj.dir/NodeFactory.cpp.o"

lib/libAndersenStatic.a: lib/CMakeFiles/AndersenObj.dir/Andersen.cpp.o
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenObj.dir/AndersenAA.cpp.o
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenObj.dir/ConstraintCollect.cpp.o
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenObj.dir/ConstraintOptimize.cpp.o
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenObj.dir/ConstraintSolving.cpp.o
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenObj.dir/ExternalLibrary.cpp.o
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenObj.dir/NodeFactory.cpp.o
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenStatic.dir/build.make
lib/libAndersenStatic.a: lib/CMakeFiles/AndersenStatic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/andersen/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libAndersenStatic.a"
	cd /root/andersen/lib && $(CMAKE_COMMAND) -P CMakeFiles/AndersenStatic.dir/cmake_clean_target.cmake
	cd /root/andersen/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AndersenStatic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/AndersenStatic.dir/build: lib/libAndersenStatic.a

.PHONY : lib/CMakeFiles/AndersenStatic.dir/build

lib/CMakeFiles/AndersenStatic.dir/clean:
	cd /root/andersen/lib && $(CMAKE_COMMAND) -P CMakeFiles/AndersenStatic.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/AndersenStatic.dir/clean

lib/CMakeFiles/AndersenStatic.dir/depend:
	cd /root/andersen && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/andersen /root/andersen/lib /root/andersen /root/andersen/lib /root/andersen/lib/CMakeFiles/AndersenStatic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/AndersenStatic.dir/depend

