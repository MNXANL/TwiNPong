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

# Utility rule file for superpong.vpk.

# Include the progress variables for this target.
include CMakeFiles/superpong.vpk.dir/progress.make

CMakeFiles/superpong.vpk: superpong.vpk_param.sfo
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building vpk superpong.vpk"
	/usr/local/vitasdk/bin/vita-pack-vpk -a /home/mike/Documents/PSVita/SuperLayerShooter/sce_sys/icon0.png=sce_sys/icon0.png -a /home/mike/Documents/PSVita/SuperLayerShooter/sce_sys/livearea/contents/bg.png=sce_sys/livearea/contents/bg.png -a /home/mike/Documents/PSVita/SuperLayerShooter/sce_sys/livearea/contents/startup.png=sce_sys/livearea/contents/startup.png -a /home/mike/Documents/PSVita/SuperLayerShooter/sce_sys/livearea/contents/template.xml=sce_sys/livearea/contents/template.xml -s superpong.vpk_param.sfo -b superpong.self superpong.vpk

superpong.vpk_param.sfo:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating param.sfo for superpong.vpk"
	/usr/local/vitasdk/bin/vita-mksfoex -s TITLE_ID=VSDK10801 Super\ Pong superpong.vpk_param.sfo

superpong.vpk: CMakeFiles/superpong.vpk
superpong.vpk: superpong.vpk_param.sfo
superpong.vpk: CMakeFiles/superpong.vpk.dir/build.make

.PHONY : superpong.vpk

# Rule to build all files generated by this target.
CMakeFiles/superpong.vpk.dir/build: superpong.vpk

.PHONY : CMakeFiles/superpong.vpk.dir/build

CMakeFiles/superpong.vpk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/superpong.vpk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/superpong.vpk.dir/clean

CMakeFiles/superpong.vpk.dir/depend:
	cd /home/mike/Documents/PSVita/SuperLayerShooter && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter /home/mike/Documents/PSVita/SuperLayerShooter/CMakeFiles/superpong.vpk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/superpong.vpk.dir/depend

