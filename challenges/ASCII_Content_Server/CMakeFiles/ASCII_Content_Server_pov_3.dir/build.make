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
CMAKE_SOURCE_DIR = /cb-multios

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cb-multios/build

# Include any dependencies generated for this target.
include challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/depend.make

# Include the progress variables for this target.
include challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/progress.make

# Include the compile flags for this target's objects.
include challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/flags.make

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o: ../challenges/ASCII_Content_Server/pov_3/pov.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o   -c /cb-multios/challenges/ASCII_Content_Server/pov_3/pov.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/pov_3/pov.c > CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/pov_3/pov.c -o CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o


# Object files for target ASCII_Content_Server_pov_3
ASCII_Content_Server_pov_3_OBJECTS = \
"CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o"

# External object files for target ASCII_Content_Server_pov_3
ASCII_Content_Server_pov_3_EXTERNAL_OBJECTS =

challenges/ASCII_Content_Server/pov_3.pov: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o
challenges/ASCII_Content_Server/pov_3.pov: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/build.make
challenges/ASCII_Content_Server/pov_3.pov: include/libcgc.a
challenges/ASCII_Content_Server/pov_3.pov: include/libpov/libpov.a
challenges/ASCII_Content_Server/pov_3.pov: include/libcgc.a
challenges/ASCII_Content_Server/pov_3.pov: include/tiny-AES128-C/libtiny-AES128-C.a
challenges/ASCII_Content_Server/pov_3.pov: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pov_3.pov"
	cd /cb-multios/build/challenges/ASCII_Content_Server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ASCII_Content_Server_pov_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/build: challenges/ASCII_Content_Server/pov_3.pov

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/build

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/pov_3/pov.c.o.requires

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/clean:
	cd /cb-multios/build/challenges/ASCII_Content_Server && $(CMAKE_COMMAND) -P CMakeFiles/ASCII_Content_Server_pov_3.dir/cmake_clean.cmake
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/clean

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/depend:
	cd /cb-multios/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cb-multios /cb-multios/challenges/ASCII_Content_Server /cb-multios/build /cb-multios/build/challenges/ASCII_Content_Server /cb-multios/build/challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server_pov_3.dir/depend

