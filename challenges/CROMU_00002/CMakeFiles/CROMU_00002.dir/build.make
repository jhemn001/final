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
include challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/depend.make

# Include the progress variables for this target.
include challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/progress.make

# Include the compile flags for this target's objects.
include challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/flags.make

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/flags.make
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o: ../challenges/CROMU_00002/lib/mymath.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CROMU_00002.dir/lib/mymath.c.o   -c /cb-multios/challenges/CROMU_00002/lib/mymath.c

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CROMU_00002.dir/lib/mymath.c.i"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/CROMU_00002/lib/mymath.c > CMakeFiles/CROMU_00002.dir/lib/mymath.c.i

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CROMU_00002.dir/lib/mymath.c.s"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/CROMU_00002/lib/mymath.c -o CMakeFiles/CROMU_00002.dir/lib/mymath.c.s

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.requires:

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.requires

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.provides: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.requires
	$(MAKE) -f challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build.make challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.provides.build
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.provides

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.provides.build: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o


challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/flags.make
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o: ../challenges/CROMU_00002/lib/printf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CROMU_00002.dir/lib/printf.c.o   -c /cb-multios/challenges/CROMU_00002/lib/printf.c

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CROMU_00002.dir/lib/printf.c.i"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/CROMU_00002/lib/printf.c > CMakeFiles/CROMU_00002.dir/lib/printf.c.i

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CROMU_00002.dir/lib/printf.c.s"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/CROMU_00002/lib/printf.c -o CMakeFiles/CROMU_00002.dir/lib/printf.c.s

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.requires:

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.requires

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.provides: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.requires
	$(MAKE) -f challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build.make challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.provides.build
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.provides

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.provides.build: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o


challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/flags.make
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o: ../challenges/CROMU_00002/lib/stdlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o   -c /cb-multios/challenges/CROMU_00002/lib/stdlib.c

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CROMU_00002.dir/lib/stdlib.c.i"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/CROMU_00002/lib/stdlib.c > CMakeFiles/CROMU_00002.dir/lib/stdlib.c.i

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CROMU_00002.dir/lib/stdlib.c.s"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/CROMU_00002/lib/stdlib.c -o CMakeFiles/CROMU_00002.dir/lib/stdlib.c.s

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.requires:

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.requires

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.provides: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.requires
	$(MAKE) -f challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build.make challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.provides.build
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.provides

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.provides.build: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o


challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/flags.make
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o: ../challenges/CROMU_00002/src/render.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CROMU_00002.dir/src/render.c.o   -c /cb-multios/challenges/CROMU_00002/src/render.c

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CROMU_00002.dir/src/render.c.i"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/CROMU_00002/src/render.c > CMakeFiles/CROMU_00002.dir/src/render.c.i

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CROMU_00002.dir/src/render.c.s"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/CROMU_00002/src/render.c -o CMakeFiles/CROMU_00002.dir/src/render.c.s

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.requires:

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.requires

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.provides: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.requires
	$(MAKE) -f challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build.make challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.provides.build
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.provides

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.provides.build: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o


challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/flags.make
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o: ../challenges/CROMU_00002/src/service.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CROMU_00002.dir/src/service.c.o   -c /cb-multios/challenges/CROMU_00002/src/service.c

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CROMU_00002.dir/src/service.c.i"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/CROMU_00002/src/service.c > CMakeFiles/CROMU_00002.dir/src/service.c.i

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CROMU_00002.dir/src/service.c.s"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/CROMU_00002/src/service.c -o CMakeFiles/CROMU_00002.dir/src/service.c.s

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.requires:

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.requires

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.provides: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.requires
	$(MAKE) -f challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build.make challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.provides.build
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.provides

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.provides.build: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o


challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/flags.make
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o: ../challenges/CROMU_00002/src/simulation.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/CROMU_00002.dir/src/simulation.c.o   -c /cb-multios/challenges/CROMU_00002/src/simulation.c

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/CROMU_00002.dir/src/simulation.c.i"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/CROMU_00002/src/simulation.c > CMakeFiles/CROMU_00002.dir/src/simulation.c.i

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/CROMU_00002.dir/src/simulation.c.s"
	cd /cb-multios/build/challenges/CROMU_00002 && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/CROMU_00002/src/simulation.c -o CMakeFiles/CROMU_00002.dir/src/simulation.c.s

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.requires:

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.requires

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.provides: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.requires
	$(MAKE) -f challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build.make challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.provides.build
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.provides

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.provides.build: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o


# Object files for target CROMU_00002
CROMU_00002_OBJECTS = \
"CMakeFiles/CROMU_00002.dir/lib/mymath.c.o" \
"CMakeFiles/CROMU_00002.dir/lib/printf.c.o" \
"CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o" \
"CMakeFiles/CROMU_00002.dir/src/render.c.o" \
"CMakeFiles/CROMU_00002.dir/src/service.c.o" \
"CMakeFiles/CROMU_00002.dir/src/simulation.c.o"

# External object files for target CROMU_00002
CROMU_00002_EXTERNAL_OBJECTS =

challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o
challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o
challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o
challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o
challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o
challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o
challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build.make
challenges/CROMU_00002/CROMU_00002: include/libcgc.a
challenges/CROMU_00002/CROMU_00002: include/tiny-AES128-C/libtiny-AES128-C.a
challenges/CROMU_00002/CROMU_00002: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable CROMU_00002"
	cd /cb-multios/build/challenges/CROMU_00002 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CROMU_00002.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build: challenges/CROMU_00002/CROMU_00002

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/build

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/requires: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/mymath.c.o.requires
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/requires: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/printf.c.o.requires
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/requires: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/lib/stdlib.c.o.requires
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/requires: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/render.c.o.requires
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/requires: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/service.c.o.requires
challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/requires: challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/src/simulation.c.o.requires

.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/requires

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/clean:
	cd /cb-multios/build/challenges/CROMU_00002 && $(CMAKE_COMMAND) -P CMakeFiles/CROMU_00002.dir/cmake_clean.cmake
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/clean

challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/depend:
	cd /cb-multios/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cb-multios /cb-multios/challenges/CROMU_00002 /cb-multios/build /cb-multios/build/challenges/CROMU_00002 /cb-multios/build/challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : challenges/CROMU_00002/CMakeFiles/CROMU_00002.dir/depend

