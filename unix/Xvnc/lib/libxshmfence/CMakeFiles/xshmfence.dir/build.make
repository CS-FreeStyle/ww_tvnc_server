# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/jlucas/TurboVNC/benchvnc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jlucas/TurboVNC/benchvnc

# Include any dependencies generated for this target.
include unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/depend.make

# Include the progress variables for this target.
include unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/progress.make

# Include the compile flags for this target's objects.
include unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/flags.make

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/flags.make
unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o: unix/Xvnc/lib/libxshmfence/src/xshmfence_alloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jlucas/TurboVNC/benchvnc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o"
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o   -c /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence/src/xshmfence_alloc.c

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.i"
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence/src/xshmfence_alloc.c > CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.i

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.s"
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence/src/xshmfence_alloc.c -o CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.s

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.requires:

.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.requires

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.provides: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.requires
	$(MAKE) -f unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/build.make unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.provides.build
.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.provides

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.provides.build: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o


unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/flags.make
unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o: unix/Xvnc/lib/libxshmfence/src/xshmfence_pthread.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jlucas/TurboVNC/benchvnc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o"
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o   -c /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence/src/xshmfence_pthread.c

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.i"
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence/src/xshmfence_pthread.c > CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.i

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.s"
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence/src/xshmfence_pthread.c -o CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.s

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.requires:

.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.requires

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.provides: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.requires
	$(MAKE) -f unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/build.make unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.provides.build
.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.provides

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.provides.build: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o


# Object files for target xshmfence
xshmfence_OBJECTS = \
"CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o" \
"CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o"

# External object files for target xshmfence
xshmfence_EXTERNAL_OBJECTS =

lib/libxshmfence.a: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o
lib/libxshmfence.a: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o
lib/libxshmfence.a: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/build.make
lib/libxshmfence.a: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jlucas/TurboVNC/benchvnc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C static library ../../../../lib/libxshmfence.a"
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && $(CMAKE_COMMAND) -P CMakeFiles/xshmfence.dir/cmake_clean_target.cmake
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xshmfence.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/build: lib/libxshmfence.a

.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/build

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/requires: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_alloc.c.o.requires
unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/requires: unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/src/xshmfence_pthread.c.o.requires

.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/requires

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/clean:
	cd /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence && $(CMAKE_COMMAND) -P CMakeFiles/xshmfence.dir/cmake_clean.cmake
.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/clean

unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/depend:
	cd /home/jlucas/TurboVNC/benchvnc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jlucas/TurboVNC/benchvnc /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence /home/jlucas/TurboVNC/benchvnc /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence /home/jlucas/TurboVNC/benchvnc/unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unix/Xvnc/lib/libxshmfence/CMakeFiles/xshmfence.dir/depend

