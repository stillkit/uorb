# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kit/uorb/nuorb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kit/uorb/nuorb/build

# Include any dependencies generated for this target.
include CMakeFiles/orb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/orb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/orb.dir/flags.make

CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o: ../include/px4_posix_tasks.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o -c /home/kit/uorb/nuorb/include/px4_posix_tasks.cpp

CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/include/px4_posix_tasks.cpp > CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.i

CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/include/px4_posix_tasks.cpp -o CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.s

CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.requires

CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.provides: CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.provides

CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.provides.build: CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o


CMakeFiles/orb.dir/include/drv_hrt.c.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/include/drv_hrt.c.o: ../include/drv_hrt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/orb.dir/include/drv_hrt.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/orb.dir/include/drv_hrt.c.o   -c /home/kit/uorb/nuorb/include/drv_hrt.c

CMakeFiles/orb.dir/include/drv_hrt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/orb.dir/include/drv_hrt.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kit/uorb/nuorb/include/drv_hrt.c > CMakeFiles/orb.dir/include/drv_hrt.c.i

CMakeFiles/orb.dir/include/drv_hrt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/orb.dir/include/drv_hrt.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kit/uorb/nuorb/include/drv_hrt.c -o CMakeFiles/orb.dir/include/drv_hrt.c.s

CMakeFiles/orb.dir/include/drv_hrt.c.o.requires:

.PHONY : CMakeFiles/orb.dir/include/drv_hrt.c.o.requires

CMakeFiles/orb.dir/include/drv_hrt.c.o.provides: CMakeFiles/orb.dir/include/drv_hrt.c.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/include/drv_hrt.c.o.provides.build
.PHONY : CMakeFiles/orb.dir/include/drv_hrt.c.o.provides

CMakeFiles/orb.dir/include/drv_hrt.c.o.provides.build: CMakeFiles/orb.dir/include/drv_hrt.c.o


CMakeFiles/orb.dir/include/px4_log.c.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/include/px4_log.c.o: ../include/px4_log.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/orb.dir/include/px4_log.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/orb.dir/include/px4_log.c.o   -c /home/kit/uorb/nuorb/include/px4_log.c

CMakeFiles/orb.dir/include/px4_log.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/orb.dir/include/px4_log.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kit/uorb/nuorb/include/px4_log.c > CMakeFiles/orb.dir/include/px4_log.c.i

CMakeFiles/orb.dir/include/px4_log.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/orb.dir/include/px4_log.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kit/uorb/nuorb/include/px4_log.c -o CMakeFiles/orb.dir/include/px4_log.c.s

CMakeFiles/orb.dir/include/px4_log.c.o.requires:

.PHONY : CMakeFiles/orb.dir/include/px4_log.c.o.requires

CMakeFiles/orb.dir/include/px4_log.c.o.provides: CMakeFiles/orb.dir/include/px4_log.c.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/include/px4_log.c.o.provides.build
.PHONY : CMakeFiles/orb.dir/include/px4_log.c.o.provides

CMakeFiles/orb.dir/include/px4_log.c.o.provides.build: CMakeFiles/orb.dir/include/px4_log.c.o


CMakeFiles/orb.dir/include/queue.c.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/include/queue.c.o: ../include/queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/orb.dir/include/queue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/orb.dir/include/queue.c.o   -c /home/kit/uorb/nuorb/include/queue.c

CMakeFiles/orb.dir/include/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/orb.dir/include/queue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kit/uorb/nuorb/include/queue.c > CMakeFiles/orb.dir/include/queue.c.i

CMakeFiles/orb.dir/include/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/orb.dir/include/queue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kit/uorb/nuorb/include/queue.c -o CMakeFiles/orb.dir/include/queue.c.s

CMakeFiles/orb.dir/include/queue.c.o.requires:

.PHONY : CMakeFiles/orb.dir/include/queue.c.o.requires

CMakeFiles/orb.dir/include/queue.c.o.provides: CMakeFiles/orb.dir/include/queue.c.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/include/queue.c.o.provides.build
.PHONY : CMakeFiles/orb.dir/include/queue.c.o.provides

CMakeFiles/orb.dir/include/queue.c.o.provides.build: CMakeFiles/orb.dir/include/queue.c.o


CMakeFiles/orb.dir/include/sq_addafter.c.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/include/sq_addafter.c.o: ../include/sq_addafter.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/orb.dir/include/sq_addafter.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/orb.dir/include/sq_addafter.c.o   -c /home/kit/uorb/nuorb/include/sq_addafter.c

CMakeFiles/orb.dir/include/sq_addafter.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/orb.dir/include/sq_addafter.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kit/uorb/nuorb/include/sq_addafter.c > CMakeFiles/orb.dir/include/sq_addafter.c.i

CMakeFiles/orb.dir/include/sq_addafter.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/orb.dir/include/sq_addafter.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kit/uorb/nuorb/include/sq_addafter.c -o CMakeFiles/orb.dir/include/sq_addafter.c.s

CMakeFiles/orb.dir/include/sq_addafter.c.o.requires:

.PHONY : CMakeFiles/orb.dir/include/sq_addafter.c.o.requires

CMakeFiles/orb.dir/include/sq_addafter.c.o.provides: CMakeFiles/orb.dir/include/sq_addafter.c.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/include/sq_addafter.c.o.provides.build
.PHONY : CMakeFiles/orb.dir/include/sq_addafter.c.o.provides

CMakeFiles/orb.dir/include/sq_addafter.c.o.provides.build: CMakeFiles/orb.dir/include/sq_addafter.c.o


CMakeFiles/orb.dir/include/sq_addlast.c.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/include/sq_addlast.c.o: ../include/sq_addlast.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/orb.dir/include/sq_addlast.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/orb.dir/include/sq_addlast.c.o   -c /home/kit/uorb/nuorb/include/sq_addlast.c

CMakeFiles/orb.dir/include/sq_addlast.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/orb.dir/include/sq_addlast.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/kit/uorb/nuorb/include/sq_addlast.c > CMakeFiles/orb.dir/include/sq_addlast.c.i

CMakeFiles/orb.dir/include/sq_addlast.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/orb.dir/include/sq_addlast.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/kit/uorb/nuorb/include/sq_addlast.c -o CMakeFiles/orb.dir/include/sq_addlast.c.s

CMakeFiles/orb.dir/include/sq_addlast.c.o.requires:

.PHONY : CMakeFiles/orb.dir/include/sq_addlast.c.o.requires

CMakeFiles/orb.dir/include/sq_addlast.c.o.provides: CMakeFiles/orb.dir/include/sq_addlast.c.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/include/sq_addlast.c.o.provides.build
.PHONY : CMakeFiles/orb.dir/include/sq_addlast.c.o.provides

CMakeFiles/orb.dir/include/sq_addlast.c.o.provides.build: CMakeFiles/orb.dir/include/sq_addlast.c.o


CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o: ../topic_source/camera_trigger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o -c /home/kit/uorb/nuorb/topic_source/camera_trigger.cpp

CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/topic_source/camera_trigger.cpp > CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.i

CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/topic_source/camera_trigger.cpp -o CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.s

CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.requires

CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.provides: CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.provides

CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.provides.build: CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o


CMakeFiles/orb.dir/topic_source/cpuload.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/topic_source/cpuload.cpp.o: ../topic_source/cpuload.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/orb.dir/topic_source/cpuload.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/topic_source/cpuload.cpp.o -c /home/kit/uorb/nuorb/topic_source/cpuload.cpp

CMakeFiles/orb.dir/topic_source/cpuload.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/topic_source/cpuload.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/topic_source/cpuload.cpp > CMakeFiles/orb.dir/topic_source/cpuload.cpp.i

CMakeFiles/orb.dir/topic_source/cpuload.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/topic_source/cpuload.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/topic_source/cpuload.cpp -o CMakeFiles/orb.dir/topic_source/cpuload.cpp.s

CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.requires

CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.provides: CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.provides

CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.provides.build: CMakeFiles/orb.dir/topic_source/cpuload.cpp.o


CMakeFiles/orb.dir/topic_source/log_message.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/topic_source/log_message.cpp.o: ../topic_source/log_message.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/orb.dir/topic_source/log_message.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/topic_source/log_message.cpp.o -c /home/kit/uorb/nuorb/topic_source/log_message.cpp

CMakeFiles/orb.dir/topic_source/log_message.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/topic_source/log_message.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/topic_source/log_message.cpp > CMakeFiles/orb.dir/topic_source/log_message.cpp.i

CMakeFiles/orb.dir/topic_source/log_message.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/topic_source/log_message.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/topic_source/log_message.cpp -o CMakeFiles/orb.dir/topic_source/log_message.cpp.s

CMakeFiles/orb.dir/topic_source/log_message.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/topic_source/log_message.cpp.o.requires

CMakeFiles/orb.dir/topic_source/log_message.cpp.o.provides: CMakeFiles/orb.dir/topic_source/log_message.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/topic_source/log_message.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/topic_source/log_message.cpp.o.provides

CMakeFiles/orb.dir/topic_source/log_message.cpp.o.provides.build: CMakeFiles/orb.dir/topic_source/log_message.cpp.o


CMakeFiles/orb.dir/src/device_posix.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/device_posix.cpp.o: ../src/device_posix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/orb.dir/src/device_posix.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/device_posix.cpp.o -c /home/kit/uorb/nuorb/src/device_posix.cpp

CMakeFiles/orb.dir/src/device_posix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/device_posix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/device_posix.cpp > CMakeFiles/orb.dir/src/device_posix.cpp.i

CMakeFiles/orb.dir/src/device_posix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/device_posix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/device_posix.cpp -o CMakeFiles/orb.dir/src/device_posix.cpp.s

CMakeFiles/orb.dir/src/device_posix.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/device_posix.cpp.o.requires

CMakeFiles/orb.dir/src/device_posix.cpp.o.provides: CMakeFiles/orb.dir/src/device_posix.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/device_posix.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/device_posix.cpp.o.provides

CMakeFiles/orb.dir/src/device_posix.cpp.o.provides.build: CMakeFiles/orb.dir/src/device_posix.cpp.o


CMakeFiles/orb.dir/src/uORB.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/uORB.cpp.o: ../src/uORB.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/orb.dir/src/uORB.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/uORB.cpp.o -c /home/kit/uorb/nuorb/src/uORB.cpp

CMakeFiles/orb.dir/src/uORB.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/uORB.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/uORB.cpp > CMakeFiles/orb.dir/src/uORB.cpp.i

CMakeFiles/orb.dir/src/uORB.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/uORB.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/uORB.cpp -o CMakeFiles/orb.dir/src/uORB.cpp.s

CMakeFiles/orb.dir/src/uORB.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/uORB.cpp.o.requires

CMakeFiles/orb.dir/src/uORB.cpp.o.provides: CMakeFiles/orb.dir/src/uORB.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/uORB.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/uORB.cpp.o.provides

CMakeFiles/orb.dir/src/uORB.cpp.o.provides.build: CMakeFiles/orb.dir/src/uORB.cpp.o


CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o: ../src/uORBDevices_posix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o -c /home/kit/uorb/nuorb/src/uORBDevices_posix.cpp

CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/uORBDevices_posix.cpp > CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.i

CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/uORBDevices_posix.cpp -o CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.s

CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.requires

CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.provides: CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.provides

CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.provides.build: CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o


CMakeFiles/orb.dir/src/uORBMain.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/uORBMain.cpp.o: ../src/uORBMain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/orb.dir/src/uORBMain.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/uORBMain.cpp.o -c /home/kit/uorb/nuorb/src/uORBMain.cpp

CMakeFiles/orb.dir/src/uORBMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/uORBMain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/uORBMain.cpp > CMakeFiles/orb.dir/src/uORBMain.cpp.i

CMakeFiles/orb.dir/src/uORBMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/uORBMain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/uORBMain.cpp -o CMakeFiles/orb.dir/src/uORBMain.cpp.s

CMakeFiles/orb.dir/src/uORBMain.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/uORBMain.cpp.o.requires

CMakeFiles/orb.dir/src/uORBMain.cpp.o.provides: CMakeFiles/orb.dir/src/uORBMain.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/uORBMain.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/uORBMain.cpp.o.provides

CMakeFiles/orb.dir/src/uORBMain.cpp.o.provides.build: CMakeFiles/orb.dir/src/uORBMain.cpp.o


CMakeFiles/orb.dir/src/uORBManager.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/uORBManager.cpp.o: ../src/uORBManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/orb.dir/src/uORBManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/uORBManager.cpp.o -c /home/kit/uorb/nuorb/src/uORBManager.cpp

CMakeFiles/orb.dir/src/uORBManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/uORBManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/uORBManager.cpp > CMakeFiles/orb.dir/src/uORBManager.cpp.i

CMakeFiles/orb.dir/src/uORBManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/uORBManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/uORBManager.cpp -o CMakeFiles/orb.dir/src/uORBManager.cpp.s

CMakeFiles/orb.dir/src/uORBManager.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/uORBManager.cpp.o.requires

CMakeFiles/orb.dir/src/uORBManager.cpp.o.provides: CMakeFiles/orb.dir/src/uORBManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/uORBManager.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/uORBManager.cpp.o.provides

CMakeFiles/orb.dir/src/uORBManager.cpp.o.provides.build: CMakeFiles/orb.dir/src/uORBManager.cpp.o


CMakeFiles/orb.dir/src/uORBUtils.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/uORBUtils.cpp.o: ../src/uORBUtils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/orb.dir/src/uORBUtils.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/uORBUtils.cpp.o -c /home/kit/uorb/nuorb/src/uORBUtils.cpp

CMakeFiles/orb.dir/src/uORBUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/uORBUtils.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/uORBUtils.cpp > CMakeFiles/orb.dir/src/uORBUtils.cpp.i

CMakeFiles/orb.dir/src/uORBUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/uORBUtils.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/uORBUtils.cpp -o CMakeFiles/orb.dir/src/uORBUtils.cpp.s

CMakeFiles/orb.dir/src/uORBUtils.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/uORBUtils.cpp.o.requires

CMakeFiles/orb.dir/src/uORBUtils.cpp.o.provides: CMakeFiles/orb.dir/src/uORBUtils.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/uORBUtils.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/uORBUtils.cpp.o.provides

CMakeFiles/orb.dir/src/uORBUtils.cpp.o.provides.build: CMakeFiles/orb.dir/src/uORBUtils.cpp.o


CMakeFiles/orb.dir/src/vdev.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/vdev.cpp.o: ../src/vdev.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/orb.dir/src/vdev.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/vdev.cpp.o -c /home/kit/uorb/nuorb/src/vdev.cpp

CMakeFiles/orb.dir/src/vdev.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/vdev.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/vdev.cpp > CMakeFiles/orb.dir/src/vdev.cpp.i

CMakeFiles/orb.dir/src/vdev.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/vdev.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/vdev.cpp -o CMakeFiles/orb.dir/src/vdev.cpp.s

CMakeFiles/orb.dir/src/vdev.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/vdev.cpp.o.requires

CMakeFiles/orb.dir/src/vdev.cpp.o.provides: CMakeFiles/orb.dir/src/vdev.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/vdev.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/vdev.cpp.o.provides

CMakeFiles/orb.dir/src/vdev.cpp.o.provides.build: CMakeFiles/orb.dir/src/vdev.cpp.o


CMakeFiles/orb.dir/src/vdev_posix.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/vdev_posix.cpp.o: ../src/vdev_posix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/orb.dir/src/vdev_posix.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/vdev_posix.cpp.o -c /home/kit/uorb/nuorb/src/vdev_posix.cpp

CMakeFiles/orb.dir/src/vdev_posix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/vdev_posix.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/vdev_posix.cpp > CMakeFiles/orb.dir/src/vdev_posix.cpp.i

CMakeFiles/orb.dir/src/vdev_posix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/vdev_posix.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/vdev_posix.cpp -o CMakeFiles/orb.dir/src/vdev_posix.cpp.s

CMakeFiles/orb.dir/src/vdev_posix.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/vdev_posix.cpp.o.requires

CMakeFiles/orb.dir/src/vdev_posix.cpp.o.provides: CMakeFiles/orb.dir/src/vdev_posix.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/vdev_posix.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/vdev_posix.cpp.o.provides

CMakeFiles/orb.dir/src/vdev_posix.cpp.o.provides.build: CMakeFiles/orb.dir/src/vdev_posix.cpp.o


CMakeFiles/orb.dir/src/vfile.cpp.o: CMakeFiles/orb.dir/flags.make
CMakeFiles/orb.dir/src/vfile.cpp.o: ../src/vfile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/orb.dir/src/vfile.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/orb.dir/src/vfile.cpp.o -c /home/kit/uorb/nuorb/src/vfile.cpp

CMakeFiles/orb.dir/src/vfile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/orb.dir/src/vfile.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kit/uorb/nuorb/src/vfile.cpp > CMakeFiles/orb.dir/src/vfile.cpp.i

CMakeFiles/orb.dir/src/vfile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/orb.dir/src/vfile.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kit/uorb/nuorb/src/vfile.cpp -o CMakeFiles/orb.dir/src/vfile.cpp.s

CMakeFiles/orb.dir/src/vfile.cpp.o.requires:

.PHONY : CMakeFiles/orb.dir/src/vfile.cpp.o.requires

CMakeFiles/orb.dir/src/vfile.cpp.o.provides: CMakeFiles/orb.dir/src/vfile.cpp.o.requires
	$(MAKE) -f CMakeFiles/orb.dir/build.make CMakeFiles/orb.dir/src/vfile.cpp.o.provides.build
.PHONY : CMakeFiles/orb.dir/src/vfile.cpp.o.provides

CMakeFiles/orb.dir/src/vfile.cpp.o.provides.build: CMakeFiles/orb.dir/src/vfile.cpp.o


# Object files for target orb
orb_OBJECTS = \
"CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o" \
"CMakeFiles/orb.dir/include/drv_hrt.c.o" \
"CMakeFiles/orb.dir/include/px4_log.c.o" \
"CMakeFiles/orb.dir/include/queue.c.o" \
"CMakeFiles/orb.dir/include/sq_addafter.c.o" \
"CMakeFiles/orb.dir/include/sq_addlast.c.o" \
"CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o" \
"CMakeFiles/orb.dir/topic_source/cpuload.cpp.o" \
"CMakeFiles/orb.dir/topic_source/log_message.cpp.o" \
"CMakeFiles/orb.dir/src/device_posix.cpp.o" \
"CMakeFiles/orb.dir/src/uORB.cpp.o" \
"CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o" \
"CMakeFiles/orb.dir/src/uORBMain.cpp.o" \
"CMakeFiles/orb.dir/src/uORBManager.cpp.o" \
"CMakeFiles/orb.dir/src/uORBUtils.cpp.o" \
"CMakeFiles/orb.dir/src/vdev.cpp.o" \
"CMakeFiles/orb.dir/src/vdev_posix.cpp.o" \
"CMakeFiles/orb.dir/src/vfile.cpp.o"

# External object files for target orb
orb_EXTERNAL_OBJECTS =

orb: CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o
orb: CMakeFiles/orb.dir/include/drv_hrt.c.o
orb: CMakeFiles/orb.dir/include/px4_log.c.o
orb: CMakeFiles/orb.dir/include/queue.c.o
orb: CMakeFiles/orb.dir/include/sq_addafter.c.o
orb: CMakeFiles/orb.dir/include/sq_addlast.c.o
orb: CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o
orb: CMakeFiles/orb.dir/topic_source/cpuload.cpp.o
orb: CMakeFiles/orb.dir/topic_source/log_message.cpp.o
orb: CMakeFiles/orb.dir/src/device_posix.cpp.o
orb: CMakeFiles/orb.dir/src/uORB.cpp.o
orb: CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o
orb: CMakeFiles/orb.dir/src/uORBMain.cpp.o
orb: CMakeFiles/orb.dir/src/uORBManager.cpp.o
orb: CMakeFiles/orb.dir/src/uORBUtils.cpp.o
orb: CMakeFiles/orb.dir/src/vdev.cpp.o
orb: CMakeFiles/orb.dir/src/vdev_posix.cpp.o
orb: CMakeFiles/orb.dir/src/vfile.cpp.o
orb: CMakeFiles/orb.dir/build.make
orb: CMakeFiles/orb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kit/uorb/nuorb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Linking CXX executable orb"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/orb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/orb.dir/build: orb

.PHONY : CMakeFiles/orb.dir/build

CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/include/px4_posix_tasks.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/include/drv_hrt.c.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/include/px4_log.c.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/include/queue.c.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/include/sq_addafter.c.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/include/sq_addlast.c.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/topic_source/camera_trigger.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/topic_source/cpuload.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/topic_source/log_message.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/device_posix.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/uORB.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/uORBDevices_posix.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/uORBMain.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/uORBManager.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/uORBUtils.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/vdev.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/vdev_posix.cpp.o.requires
CMakeFiles/orb.dir/requires: CMakeFiles/orb.dir/src/vfile.cpp.o.requires

.PHONY : CMakeFiles/orb.dir/requires

CMakeFiles/orb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/orb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/orb.dir/clean

CMakeFiles/orb.dir/depend:
	cd /home/kit/uorb/nuorb/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kit/uorb/nuorb /home/kit/uorb/nuorb /home/kit/uorb/nuorb/build /home/kit/uorb/nuorb/build /home/kit/uorb/nuorb/build/CMakeFiles/orb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/orb.dir/depend

