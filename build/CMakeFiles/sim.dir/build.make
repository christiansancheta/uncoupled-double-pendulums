# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.0/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/build

# Include any dependencies generated for this target.
include CMakeFiles/sim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sim.dir/flags.make

CMakeFiles/sim.dir/sim.cpp.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/sim.cpp.o: /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/sim.cpp
CMakeFiles/sim.dir/sim.cpp.o: CMakeFiles/sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sim.dir/sim.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sim.dir/sim.cpp.o -MF CMakeFiles/sim.dir/sim.cpp.o.d -o CMakeFiles/sim.dir/sim.cpp.o -c /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/sim.cpp

CMakeFiles/sim.dir/sim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/sim.cpp > CMakeFiles/sim.dir/sim.cpp.i

CMakeFiles/sim.dir/sim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/sim.cpp -o CMakeFiles/sim.dir/sim.cpp.s

# Object files for target sim
sim_OBJECTS = \
"CMakeFiles/sim.dir/sim.cpp.o"

# External object files for target sim
sim_EXTERNAL_OBJECTS =

libsim.a: CMakeFiles/sim.dir/sim.cpp.o
libsim.a: CMakeFiles/sim.dir/build.make
libsim.a: CMakeFiles/sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsim.a"
	$(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sim.dir/build: libsim.a
.PHONY : CMakeFiles/sim.dir/build

CMakeFiles/sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sim.dir/clean

CMakeFiles/sim.dir/depend:
	cd /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/build /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/build /Users/christianancheta/Documents/GitHub/uncoupled-double-pendulums/build/CMakeFiles/sim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sim.dir/depend
