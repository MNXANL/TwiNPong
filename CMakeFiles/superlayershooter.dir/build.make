# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/mike/Documents/PSVita/SuperLayerShooter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mike/Documents/PSVita/SuperLayerShooter

# Include any dependencies generated for this target.
include CMakeFiles/superlayershooter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/superlayershooter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/superlayershooter.dir/flags.make

CMakeFiles/superlayershooter.dir/src/main.c.obj: CMakeFiles/superlayershooter.dir/flags.make
CMakeFiles/superlayershooter.dir/src/main.c.obj: src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/superlayershooter.dir/src/main.c.obj"
	/usr/local/vitasdk/bin/arm-vita-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/superlayershooter.dir/src/main.c.obj   -c /home/mike/Documents/PSVita/SuperLayerShooter/src/main.c

CMakeFiles/superlayershooter.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/superlayershooter.dir/src/main.c.i"
	/usr/local/vitasdk/bin/arm-vita-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/mike/Documents/PSVita/SuperLayerShooter/src/main.c > CMakeFiles/superlayershooter.dir/src/main.c.i

CMakeFiles/superlayershooter.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/superlayershooter.dir/src/main.c.s"
	/usr/local/vitasdk/bin/arm-vita-eabi-gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/mike/Documents/PSVita/SuperLayerShooter/src/main.c -o CMakeFiles/superlayershooter.dir/src/main.c.s

CMakeFiles/superlayershooter.dir/src/main.c.obj.requires:

.PHONY : CMakeFiles/superlayershooter.dir/src/main.c.obj.requires

CMakeFiles/superlayershooter.dir/src/main.c.obj.provides: CMakeFiles/superlayershooter.dir/src/main.c.obj.requires
	$(MAKE) -f CMakeFiles/superlayershooter.dir/build.make CMakeFiles/superlayershooter.dir/src/main.c.obj.provides.build
.PHONY : CMakeFiles/superlayershooter.dir/src/main.c.obj.provides

CMakeFiles/superlayershooter.dir/src/main.c.obj.provides.build: CMakeFiles/superlayershooter.dir/src/main.c.obj


# Object files for target superlayershooter
superlayershooter_OBJECTS = \
"CMakeFiles/superlayershooter.dir/src/main.c.obj"

# External object files for target superlayershooter
superlayershooter_EXTERNAL_OBJECTS =

superlayershooter: CMakeFiles/superlayershooter.dir/src/main.c.obj
superlayershooter: CMakeFiles/superlayershooter.dir/build.make
superlayershooter: CMakeFiles/superlayershooter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable superlayershooter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/superlayershooter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/superlayershooter.dir/build: superlayershooter

.PHONY : CMakeFiles/superlayershooter.dir/build

CMakeFiles/superlayershooter.dir/requires: CMakeFiles/superlayershooter.dir/src/main.c.obj.requires

.PHONY : CMakeFiles/superlayershooter.dir/requires

CMakeFiles/superlayershooter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/superlayershooter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/superlayershooter.dir/clean

CMakeFiles/superlayershooter.dir/depend:
	cd /home/mike/Documents/PSVita/SuperLayerShooter && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles/superlayershooter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/superlayershooter.dir/depend

