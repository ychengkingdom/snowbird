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

# Utility rule file for hall_sensor_generate_messages_py.

# Include the progress variables for this target.
include hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/progress.make

hall_sensor/CMakeFiles/hall_sensor_generate_messages_py: /home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/_Wheels_vel.py
hall_sensor/CMakeFiles/hall_sensor_generate_messages_py: /home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/__init__.py


/home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/_Wheels_vel.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/_Wheels_vel.py: /home/pi/MyLocalGit/snowbird/src/hall_sensor/msg/Wheels_vel.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/MyLocalGit/snowbird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Python from MSG hall_sensor/Wheels_vel"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py /home/pi/MyLocalGit/snowbird/src/hall_sensor/msg/Wheels_vel.msg -Ihall_sensor:/home/pi/MyLocalGit/snowbird/src/hall_sensor/msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p hall_sensor -o /home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg

/home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/__init__.py: /opt/ros/melodic/lib/genpy/genmsg_py.py
/home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/__init__.py: /home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/_Wheels_vel.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pi/MyLocalGit/snowbird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Python msg __init__.py for hall_sensor"
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/genpy/cmake/../../../lib/genpy/genmsg_py.py -o /home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg --initpy

hall_sensor_generate_messages_py: hall_sensor/CMakeFiles/hall_sensor_generate_messages_py
hall_sensor_generate_messages_py: /home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/_Wheels_vel.py
hall_sensor_generate_messages_py: /home/pi/MyLocalGit/snowbird/devel/lib/python2.7/dist-packages/hall_sensor/msg/__init__.py
hall_sensor_generate_messages_py: hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/build.make

.PHONY : hall_sensor_generate_messages_py

# Rule to build all files generated by this target.
hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/build: hall_sensor_generate_messages_py

.PHONY : hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/build

hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/clean:
	cd /home/pi/MyLocalGit/snowbird/build/hall_sensor && $(CMAKE_COMMAND) -P CMakeFiles/hall_sensor_generate_messages_py.dir/cmake_clean.cmake
.PHONY : hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/clean

hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/depend:
	cd /home/pi/MyLocalGit/snowbird/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/MyLocalGit/snowbird/src /home/pi/MyLocalGit/snowbird/src/hall_sensor /home/pi/MyLocalGit/snowbird/build /home/pi/MyLocalGit/snowbird/build/hall_sensor /home/pi/MyLocalGit/snowbird/build/hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hall_sensor/CMakeFiles/hall_sensor_generate_messages_py.dir/depend
