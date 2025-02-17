# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sumrit/cmpt433/work/finalProject/cmpt433-project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build

# Include any dependencies generated for this target.
include hal/CMakeFiles/hal.dir/depend.make

# Include the progress variables for this target.
include hal/CMakeFiles/hal.dir/progress.make

# Include the compile flags for this target's objects.
include hal/CMakeFiles/hal.dir/flags.make

hal/CMakeFiles/hal.dir/src/buzzer.c.o: hal/CMakeFiles/hal.dir/flags.make
hal/CMakeFiles/hal.dir/src/buzzer.c.o: ../hal/src/buzzer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object hal/CMakeFiles/hal.dir/src/buzzer.c.o"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hal.dir/src/buzzer.c.o -c /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/buzzer.c

hal/CMakeFiles/hal.dir/src/buzzer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hal.dir/src/buzzer.c.i"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/buzzer.c > CMakeFiles/hal.dir/src/buzzer.c.i

hal/CMakeFiles/hal.dir/src/buzzer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hal.dir/src/buzzer.c.s"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/buzzer.c -o CMakeFiles/hal.dir/src/buzzer.c.s

hal/CMakeFiles/hal.dir/src/display.c.o: hal/CMakeFiles/hal.dir/flags.make
hal/CMakeFiles/hal.dir/src/display.c.o: ../hal/src/display.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object hal/CMakeFiles/hal.dir/src/display.c.o"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hal.dir/src/display.c.o -c /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/display.c

hal/CMakeFiles/hal.dir/src/display.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hal.dir/src/display.c.i"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/display.c > CMakeFiles/hal.dir/src/display.c.i

hal/CMakeFiles/hal.dir/src/display.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hal.dir/src/display.c.s"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/display.c -o CMakeFiles/hal.dir/src/display.c.s

hal/CMakeFiles/hal.dir/src/joystick.c.o: hal/CMakeFiles/hal.dir/flags.make
hal/CMakeFiles/hal.dir/src/joystick.c.o: ../hal/src/joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object hal/CMakeFiles/hal.dir/src/joystick.c.o"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hal.dir/src/joystick.c.o -c /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/joystick.c

hal/CMakeFiles/hal.dir/src/joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hal.dir/src/joystick.c.i"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/joystick.c > CMakeFiles/hal.dir/src/joystick.c.i

hal/CMakeFiles/hal.dir/src/joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hal.dir/src/joystick.c.s"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/joystick.c -o CMakeFiles/hal.dir/src/joystick.c.s

hal/CMakeFiles/hal.dir/src/motion_sensor.c.o: hal/CMakeFiles/hal.dir/flags.make
hal/CMakeFiles/hal.dir/src/motion_sensor.c.o: ../hal/src/motion_sensor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object hal/CMakeFiles/hal.dir/src/motion_sensor.c.o"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hal.dir/src/motion_sensor.c.o -c /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/motion_sensor.c

hal/CMakeFiles/hal.dir/src/motion_sensor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hal.dir/src/motion_sensor.c.i"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/motion_sensor.c > CMakeFiles/hal.dir/src/motion_sensor.c.i

hal/CMakeFiles/hal.dir/src/motion_sensor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hal.dir/src/motion_sensor.c.s"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/motion_sensor.c -o CMakeFiles/hal.dir/src/motion_sensor.c.s

hal/CMakeFiles/hal.dir/src/neopixel.c.o: hal/CMakeFiles/hal.dir/flags.make
hal/CMakeFiles/hal.dir/src/neopixel.c.o: ../hal/src/neopixel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object hal/CMakeFiles/hal.dir/src/neopixel.c.o"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hal.dir/src/neopixel.c.o -c /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/neopixel.c

hal/CMakeFiles/hal.dir/src/neopixel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hal.dir/src/neopixel.c.i"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/neopixel.c > CMakeFiles/hal.dir/src/neopixel.c.i

hal/CMakeFiles/hal.dir/src/neopixel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hal.dir/src/neopixel.c.s"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/neopixel.c -o CMakeFiles/hal.dir/src/neopixel.c.s

hal/CMakeFiles/hal.dir/src/servo.c.o: hal/CMakeFiles/hal.dir/flags.make
hal/CMakeFiles/hal.dir/src/servo.c.o: ../hal/src/servo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object hal/CMakeFiles/hal.dir/src/servo.c.o"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hal.dir/src/servo.c.o -c /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/servo.c

hal/CMakeFiles/hal.dir/src/servo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hal.dir/src/servo.c.i"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/servo.c > CMakeFiles/hal.dir/src/servo.c.i

hal/CMakeFiles/hal.dir/src/servo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hal.dir/src/servo.c.s"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/servo.c -o CMakeFiles/hal.dir/src/servo.c.s

hal/CMakeFiles/hal.dir/src/uptime.c.o: hal/CMakeFiles/hal.dir/flags.make
hal/CMakeFiles/hal.dir/src/uptime.c.o: ../hal/src/uptime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object hal/CMakeFiles/hal.dir/src/uptime.c.o"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hal.dir/src/uptime.c.o -c /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/uptime.c

hal/CMakeFiles/hal.dir/src/uptime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hal.dir/src/uptime.c.i"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/uptime.c > CMakeFiles/hal.dir/src/uptime.c.i

hal/CMakeFiles/hal.dir/src/uptime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hal.dir/src/uptime.c.s"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && /usr/bin/arm-linux-gnueabihf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal/src/uptime.c -o CMakeFiles/hal.dir/src/uptime.c.s

# Object files for target hal
hal_OBJECTS = \
"CMakeFiles/hal.dir/src/buzzer.c.o" \
"CMakeFiles/hal.dir/src/display.c.o" \
"CMakeFiles/hal.dir/src/joystick.c.o" \
"CMakeFiles/hal.dir/src/motion_sensor.c.o" \
"CMakeFiles/hal.dir/src/neopixel.c.o" \
"CMakeFiles/hal.dir/src/servo.c.o" \
"CMakeFiles/hal.dir/src/uptime.c.o"

# External object files for target hal
hal_EXTERNAL_OBJECTS =

hal/libhal.a: hal/CMakeFiles/hal.dir/src/buzzer.c.o
hal/libhal.a: hal/CMakeFiles/hal.dir/src/display.c.o
hal/libhal.a: hal/CMakeFiles/hal.dir/src/joystick.c.o
hal/libhal.a: hal/CMakeFiles/hal.dir/src/motion_sensor.c.o
hal/libhal.a: hal/CMakeFiles/hal.dir/src/neopixel.c.o
hal/libhal.a: hal/CMakeFiles/hal.dir/src/servo.c.o
hal/libhal.a: hal/CMakeFiles/hal.dir/src/uptime.c.o
hal/libhal.a: hal/CMakeFiles/hal.dir/build.make
hal/libhal.a: hal/CMakeFiles/hal.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library libhal.a"
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && $(CMAKE_COMMAND) -P CMakeFiles/hal.dir/cmake_clean_target.cmake
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hal.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hal/CMakeFiles/hal.dir/build: hal/libhal.a

.PHONY : hal/CMakeFiles/hal.dir/build

hal/CMakeFiles/hal.dir/clean:
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal && $(CMAKE_COMMAND) -P CMakeFiles/hal.dir/cmake_clean.cmake
.PHONY : hal/CMakeFiles/hal.dir/clean

hal/CMakeFiles/hal.dir/depend:
	cd /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sumrit/cmpt433/work/finalProject/cmpt433-project /home/sumrit/cmpt433/work/finalProject/cmpt433-project/hal /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal /home/sumrit/cmpt433/work/finalProject/cmpt433-project/build/hal/CMakeFiles/hal.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hal/CMakeFiles/hal.dir/depend

