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

# Utility rule file for superlayershooter.self.

# Include the progress variables for this target.
include CMakeFiles/superlayershooter.self.dir/progress.make

CMakeFiles/superlayershooter.self: superlayershooter.velf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Creating SELF superlayershooter.self"
	/usr/local/vitasdk/bin/vita-make-fself -c -s superlayershooter.velf superlayershooter.self

superlayershooter.velf: superlayershooter
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Converting to Sony ELF superlayershooter.velf"
	/usr/local/vitasdk/bin/vita-elf-create superlayershooter superlayershooter.velf

superlayershooter.self: CMakeFiles/superlayershooter.self
superlayershooter.self: superlayershooter.velf
superlayershooter.self: CMakeFiles/superlayershooter.self.dir/build.make

.PHONY : superlayershooter.self

# Rule to build all files generated by this target.
CMakeFiles/superlayershooter.self.dir/build: superlayershooter.self

.PHONY : CMakeFiles/superlayershooter.self.dir/build

CMakeFiles/superlayershooter.self.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/superlayershooter.self.dir/cmake_clean.cmake
.PHONY : CMakeFiles/superlayershooter.self.dir/clean

CMakeFiles/superlayershooter.self.dir/depend:
	cd /home/mike/Documents/PSVita/SuperLayerShooter && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles/superlayershooter.self.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/superlayershooter.self.dir/depend
