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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/MyLocalGit/snowbird/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/MyLocalGit/snowbird/build

# Utility rule file for snbird_gennodejs.

# Include the progress variables for this target.
include snbird/CMakeFiles/snbird_gennodejs.dir/progress.make

snbird_gennodejs: snbird/CMakeFiles/snbird_gennodejs.dir/build.make

.PHONY : snbird_gennodejs

# Rule to build all files generated by this target.
snbird/CMakeFiles/snbird_gennodejs.dir/build: snbird_gennodejs

.PHONY : snbird/CMakeFiles/snbird_gennodejs.dir/build

snbird/CMakeFiles/snbird_gennodejs.dir/clean:
	cd /home/pi/MyLocalGit/snowbird/build/snbird && $(CMAKE_COMMAND) -P CMakeFiles/snbird_gennodejs.dir/cmake_clean.cmake
.PHONY : snbird/CMakeFiles/snbird_gennodejs.dir/clean

snbird/CMakeFiles/snbird_gennodejs.dir/depend:
	cd /home/pi/MyLocalGit/snowbird/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/MyLocalGit/snowbird/src /home/pi/MyLocalGit/snowbird/src/snbird /home/pi/MyLocalGit/snowbird/build /home/pi/MyLocalGit/snowbird/build/snbird /home/pi/MyLocalGit/snowbird/build/snbird/CMakeFiles/snbird_gennodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : snbird/CMakeFiles/snbird_gennodejs.dir/depend

