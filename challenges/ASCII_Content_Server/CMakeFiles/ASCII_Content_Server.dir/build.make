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
include challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/depend.make

# Include the progress variables for this target.
include challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/progress.make

# Include the compile flags for this target's objects.
include challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o: ../challenges/ASCII_Content_Server/lib/malloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o   -c /cb-multios/challenges/ASCII_Content_Server/lib/malloc.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/lib/malloc.c > CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/lib/malloc.c -o CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o: ../challenges/ASCII_Content_Server/lib/mymath.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o   -c /cb-multios/challenges/ASCII_Content_Server/lib/mymath.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/lib/mymath.c > CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/lib/mymath.c -o CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o: ../challenges/ASCII_Content_Server/lib/new_printf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o   -c /cb-multios/challenges/ASCII_Content_Server/lib/new_printf.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/lib/new_printf.c > CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/lib/new_printf.c -o CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o: ../challenges/ASCII_Content_Server/lib/stdlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o   -c /cb-multios/challenges/ASCII_Content_Server/lib/stdlib.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/lib/stdlib.c > CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/lib/stdlib.c -o CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o: ../challenges/ASCII_Content_Server/src/command.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/src/command.c.o   -c /cb-multios/challenges/ASCII_Content_Server/src/command.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/src/command.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/src/command.c > CMakeFiles/ASCII_Content_Server.dir/src/command.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/src/command.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/src/command.c -o CMakeFiles/ASCII_Content_Server.dir/src/command.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o: ../challenges/ASCII_Content_Server/src/error.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/src/error.c.o   -c /cb-multios/challenges/ASCII_Content_Server/src/error.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/src/error.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/src/error.c > CMakeFiles/ASCII_Content_Server.dir/src/error.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/src/error.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/src/error.c -o CMakeFiles/ASCII_Content_Server.dir/src/error.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o: ../challenges/ASCII_Content_Server/src/page.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/src/page.c.o   -c /cb-multios/challenges/ASCII_Content_Server/src/page.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/src/page.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/src/page.c > CMakeFiles/ASCII_Content_Server.dir/src/page.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/src/page.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/src/page.c -o CMakeFiles/ASCII_Content_Server.dir/src/page.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o: ../challenges/ASCII_Content_Server/src/service.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/src/service.c.o   -c /cb-multios/challenges/ASCII_Content_Server/src/service.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/src/service.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/src/service.c > CMakeFiles/ASCII_Content_Server.dir/src/service.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/src/service.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/src/service.c -o CMakeFiles/ASCII_Content_Server.dir/src/service.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o


challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/flags.make
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o: ../challenges/ASCII_Content_Server/src/tree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o   -c /cb-multios/challenges/ASCII_Content_Server/src/tree.c

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ASCII_Content_Server.dir/src/tree.c.i"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/ASCII_Content_Server/src/tree.c > CMakeFiles/ASCII_Content_Server.dir/src/tree.c.i

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ASCII_Content_Server.dir/src/tree.c.s"
	cd /cb-multios/build/challenges/ASCII_Content_Server && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/ASCII_Content_Server/src/tree.c -o CMakeFiles/ASCII_Content_Server.dir/src/tree.c.s

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.requires:

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.provides: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.requires
	$(MAKE) -f challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.provides.build
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.provides

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.provides.build: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o


# Object files for target ASCII_Content_Server
ASCII_Content_Server_OBJECTS = \
"CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/src/command.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/src/error.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/src/page.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/src/service.c.o" \
"CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o"

# External object files for target ASCII_Content_Server
ASCII_Content_Server_EXTERNAL_OBJECTS =

challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build.make
challenges/ASCII_Content_Server/ASCII_Content_Server: include/libcgc.a
challenges/ASCII_Content_Server/ASCII_Content_Server: include/tiny-AES128-C/libtiny-AES128-C.a
challenges/ASCII_Content_Server/ASCII_Content_Server: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C executable ASCII_Content_Server"
	cd /cb-multios/build/challenges/ASCII_Content_Server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ASCII_Content_Server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build: challenges/ASCII_Content_Server/ASCII_Content_Server

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/build

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/malloc.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/mymath.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/new_printf.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/lib/stdlib.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/command.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/error.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/page.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/service.c.o.requires
challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires: challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/src/tree.c.o.requires

.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/requires

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/clean:
	cd /cb-multios/build/challenges/ASCII_Content_Server && $(CMAKE_COMMAND) -P CMakeFiles/ASCII_Content_Server.dir/cmake_clean.cmake
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/clean

challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/depend:
	cd /cb-multios/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cb-multios /cb-multios/challenges/ASCII_Content_Server /cb-multios/build /cb-multios/build/challenges/ASCII_Content_Server /cb-multios/build/challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : challenges/ASCII_Content_Server/CMakeFiles/ASCII_Content_Server.dir/depend

