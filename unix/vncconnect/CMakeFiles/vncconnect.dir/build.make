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
include unix/vncconnect/CMakeFiles/vncconnect.dir/depend.make

# Include the progress variables for this target.
include unix/vncconnect/CMakeFiles/vncconnect.dir/progress.make

# Include the compile flags for this target's objects.
include unix/vncconnect/CMakeFiles/vncconnect.dir/flags.make

unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o: unix/vncconnect/CMakeFiles/vncconnect.dir/flags.make
unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o: unix/vncconnect/vncconnect.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jlucas/TurboVNC/benchvnc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o"
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vncconnect.dir/vncconnect.c.o   -c /home/jlucas/TurboVNC/benchvnc/unix/vncconnect/vncconnect.c

unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vncconnect.dir/vncconnect.c.i"
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jlucas/TurboVNC/benchvnc/unix/vncconnect/vncconnect.c > CMakeFiles/vncconnect.dir/vncconnect.c.i

unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vncconnect.dir/vncconnect.c.s"
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jlucas/TurboVNC/benchvnc/unix/vncconnect/vncconnect.c -o CMakeFiles/vncconnect.dir/vncconnect.c.s

unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.requires:

.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.requires

unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.provides: unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.requires
	$(MAKE) -f unix/vncconnect/CMakeFiles/vncconnect.dir/build.make unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.provides.build
.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.provides

unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.provides.build: unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o


unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o: unix/vncconnect/CMakeFiles/vncconnect.dir/flags.make
unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o: unix/vncconnect/vncExt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jlucas/TurboVNC/benchvnc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o"
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vncconnect.dir/vncExt.c.o   -c /home/jlucas/TurboVNC/benchvnc/unix/vncconnect/vncExt.c

unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vncconnect.dir/vncExt.c.i"
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jlucas/TurboVNC/benchvnc/unix/vncconnect/vncExt.c > CMakeFiles/vncconnect.dir/vncExt.c.i

unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vncconnect.dir/vncExt.c.s"
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jlucas/TurboVNC/benchvnc/unix/vncconnect/vncExt.c -o CMakeFiles/vncconnect.dir/vncExt.c.s

unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.requires:

.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.requires

unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.provides: unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.requires
	$(MAKE) -f unix/vncconnect/CMakeFiles/vncconnect.dir/build.make unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.provides.build
.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.provides

unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.provides.build: unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o


# Object files for target vncconnect
vncconnect_OBJECTS = \
"CMakeFiles/vncconnect.dir/vncconnect.c.o" \
"CMakeFiles/vncconnect.dir/vncExt.c.o"

# External object files for target vncconnect
vncconnect_EXTERNAL_OBJECTS =

bin/vncconnect: unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o
bin/vncconnect: unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o
bin/vncconnect: unix/vncconnect/CMakeFiles/vncconnect.dir/build.make
bin/vncconnect: /usr/lib/x86_64-linux-gnu/libSM.so
bin/vncconnect: /usr/lib/x86_64-linux-gnu/libICE.so
bin/vncconnect: /usr/lib/x86_64-linux-gnu/libX11.so
bin/vncconnect: /usr/lib/x86_64-linux-gnu/libXext.so
bin/vncconnect: unix/vncconnect/CMakeFiles/vncconnect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jlucas/TurboVNC/benchvnc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable ../../bin/vncconnect"
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vncconnect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unix/vncconnect/CMakeFiles/vncconnect.dir/build: bin/vncconnect

.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/build

unix/vncconnect/CMakeFiles/vncconnect.dir/requires: unix/vncconnect/CMakeFiles/vncconnect.dir/vncconnect.c.o.requires
unix/vncconnect/CMakeFiles/vncconnect.dir/requires: unix/vncconnect/CMakeFiles/vncconnect.dir/vncExt.c.o.requires

.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/requires

unix/vncconnect/CMakeFiles/vncconnect.dir/clean:
	cd /home/jlucas/TurboVNC/benchvnc/unix/vncconnect && $(CMAKE_COMMAND) -P CMakeFiles/vncconnect.dir/cmake_clean.cmake
.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/clean

unix/vncconnect/CMakeFiles/vncconnect.dir/depend:
	cd /home/jlucas/TurboVNC/benchvnc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jlucas/TurboVNC/benchvnc /home/jlucas/TurboVNC/benchvnc/unix/vncconnect /home/jlucas/TurboVNC/benchvnc /home/jlucas/TurboVNC/benchvnc/unix/vncconnect /home/jlucas/TurboVNC/benchvnc/unix/vncconnect/CMakeFiles/vncconnect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unix/vncconnect/CMakeFiles/vncconnect.dir/depend

