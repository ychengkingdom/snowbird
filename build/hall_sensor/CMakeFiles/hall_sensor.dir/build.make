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

# Include any dependencies generated for this target.
include hall_sensor/CMakeFiles/hall_sensor.dir/depend.make

# Include the progress variables for this target.
include hall_sensor/CMakeFiles/hall_sensor.dir/progress.make

# Include the compile flags for this target's objects.
include hall_sensor/CMakeFiles/hall_sensor.dir/flags.make

hall_sensor/CMakeFiles/hall_sensor.dir/src/wheels.cpp.o: hall_sensor/CMakeFiles/hall_sensor.dir/flags.make
hall_sensor/CMakeFiles/hall_sensor.dir/src/wheels.cpp.o: /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/wheels.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/MyLocalGit/snowbird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hall_sensor/CMakeFiles/hall_sensor.dir/src/wheels.cpp.o"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hall_sensor.dir/src/wheels.cpp.o -c /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/wheels.cpp

hall_sensor/CMakeFiles/hall_sensor.dir/src/wheels.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hall_sensor.dir/src/wheels.cpp.i"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/wheels.cpp > CMakeFiles/hall_sensor.dir/src/wheels.cpp.i

hall_sensor/CMakeFiles/hall_sensor.dir/src/wheels.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hall_sensor.dir/src/wheels.cpp.s"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/wheels.cpp -o CMakeFiles/hall_sensor.dir/src/wheels.cpp.s

# Object files for target hall_sensor
hall_sensor_OBJECTS = \
"CMakeFiles/hall_sensor.dir/src/wheels.cpp.o"

# External object files for target hall_sensor
hall_sensor_EXTERNAL_OBJECTS =

/home/pi/MyLocalGit/snowbird/devel/lib/libhall_sensor.so: hall_sensor/CMakeFiles/hall_sensor.dir/src/wheels.cpp.o
/home/pi/MyLocalGit/snowbird/devel/lib/libhall_sensor.so: hall_sensor/CMakeFiles/hall_sensor.dir/build.make
/home/pi/MyLocalGit/snowbird/devel/lib/libhall_sensor.so: hall_sensor/CMakeFiles/hall_sensor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/MyLocalGit/snowbird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/pi/MyLocalGit/snowbird/devel/lib/libhall_sensor.so"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hall_sensor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hall_sensor/CMakeFiles/hall_sensor.dir/build: /home/pi/MyLocalGit/snowbird/devel/lib/libhall_sensor.so

.PHONY : hall_sensor/CMakeFiles/hall_sensor.dir/build

hall_sensor/CMakeFiles/hall_sensor.dir/clean:
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && $(CMAKE_COMMAND) -P CMakeFiles/hall_sensor.dir/cmake_clean.cmake
.PHONY : hall_sensor/CMakeFiles/hall_sensor.dir/clean

hall_sensor/CMakeFiles/hall_sensor.dir/depend:
	cd /home/pi/MyLocalGit/snowbird/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/MyLocalGit/snowbird/src /home/pi/MyLocalGit/snowbird/src/hall_sensor /home/pi/MyLocalGit/snowbird/build /home/pi/MyLocalGit/snowbird/build/hall_sensor /home/pi/MyLocalGit/snowbird/build/hall_sensor/CMakeFiles/hall_sensor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hall_sensor/CMakeFiles/hall_sensor.dir/depend
