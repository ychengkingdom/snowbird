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
include hall_sensor/CMakeFiles/hall_sensor_node.dir/depend.make

# Include the progress variables for this target.
include hall_sensor/CMakeFiles/hall_sensor_node.dir/progress.make

# Include the compile flags for this target's objects.
include hall_sensor/CMakeFiles/hall_sensor_node.dir/flags.make

hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.o: hall_sensor/CMakeFiles/hall_sensor_node.dir/flags.make
hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.o: /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hall_sensor_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/MyLocalGit/snowbird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.o"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.o -c /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hall_sensor_node.cpp

hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.i"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hall_sensor_node.cpp > CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.i

hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.s"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hall_sensor_node.cpp -o CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.s

hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.o: hall_sensor/CMakeFiles/hall_sensor_node.dir/flags.make
hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.o: /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hallSensor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/MyLocalGit/snowbird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.o"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.o -c /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hallSensor.cpp

hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.i"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hallSensor.cpp > CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.i

hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.s"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/MyLocalGit/snowbird/src/hall_sensor/src/hallSensor.cpp -o CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.s

# Object files for target hall_sensor_node
hall_sensor_node_OBJECTS = \
"CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.o" \
"CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.o"

# External object files for target hall_sensor_node
hall_sensor_node_EXTERNAL_OBJECTS =

/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hall_sensor_node.cpp.o
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: hall_sensor/CMakeFiles/hall_sensor_node.dir/src/hallSensor.cpp.o
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: hall_sensor/CMakeFiles/hall_sensor_node.dir/build.make
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/libroscpp.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/librosconsole.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/librostime.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /opt/ros/melodic/lib/libcpp_common.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so.0.4
/home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node: hall_sensor/CMakeFiles/hall_sensor_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/MyLocalGit/snowbird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hall_sensor_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hall_sensor/CMakeFiles/hall_sensor_node.dir/build: /home/pi/MyLocalGit/snowbird/devel/lib/hall_sensor/hall_sensor_node

.PHONY : hall_sensor/CMakeFiles/hall_sensor_node.dir/build

hall_sensor/CMakeFiles/hall_sensor_node.dir/clean:
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && $(CMAKE_COMMAND) -P CMakeFiles/hall_sensor_node.dir/cmake_clean.cmake
.PHONY : hall_sensor/CMakeFiles/hall_sensor_node.dir/clean

hall_sensor/CMakeFiles/hall_sensor_node.dir/depend:
	cd /home/pi/MyLocalGit/snowbird/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/MyLocalGit/snowbird/src /home/pi/MyLocalGit/snowbird/src/hall_sensor /home/pi/MyLocalGit/snowbird/build /home/pi/MyLocalGit/snowbird/build/hall_sensor /home/pi/MyLocalGit/snowbird/build/hall_sensor/CMakeFiles/hall_sensor_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hall_sensor/CMakeFiles/hall_sensor_node.dir/depend
