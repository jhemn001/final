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
include challenges/Board_Game/CMakeFiles/Board_Game.dir/depend.make

# Include the progress variables for this target.
include challenges/Board_Game/CMakeFiles/Board_Game.dir/progress.make

# Include the compile flags for this target's objects.
include challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o: challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make
challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o: ../challenges/Board_Game/lib/mymath.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Board_Game.dir/lib/mymath.c.o   -c /cb-multios/challenges/Board_Game/lib/mymath.c

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Board_Game.dir/lib/mymath.c.i"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/Board_Game/lib/mymath.c > CMakeFiles/Board_Game.dir/lib/mymath.c.i

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Board_Game.dir/lib/mymath.c.s"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/Board_Game/lib/mymath.c -o CMakeFiles/Board_Game.dir/lib/mymath.c.s

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.requires:

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.provides: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.requires
	$(MAKE) -f challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.provides.build
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.provides

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.provides.build: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o


challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o: challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make
challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o: ../challenges/Board_Game/lib/printf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Board_Game.dir/lib/printf.c.o   -c /cb-multios/challenges/Board_Game/lib/printf.c

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Board_Game.dir/lib/printf.c.i"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/Board_Game/lib/printf.c > CMakeFiles/Board_Game.dir/lib/printf.c.i

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Board_Game.dir/lib/printf.c.s"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/Board_Game/lib/printf.c -o CMakeFiles/Board_Game.dir/lib/printf.c.s

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.requires:

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.provides: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.requires
	$(MAKE) -f challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.provides.build
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.provides

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.provides.build: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o


challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o: challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make
challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o: ../challenges/Board_Game/lib/prng.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Board_Game.dir/lib/prng.c.o   -c /cb-multios/challenges/Board_Game/lib/prng.c

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Board_Game.dir/lib/prng.c.i"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/Board_Game/lib/prng.c > CMakeFiles/Board_Game.dir/lib/prng.c.i

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Board_Game.dir/lib/prng.c.s"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/Board_Game/lib/prng.c -o CMakeFiles/Board_Game.dir/lib/prng.c.s

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.requires:

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.provides: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.requires
	$(MAKE) -f challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.provides.build
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.provides

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.provides.build: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o


challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o: challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make
challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o: ../challenges/Board_Game/lib/stdlib.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Board_Game.dir/lib/stdlib.c.o   -c /cb-multios/challenges/Board_Game/lib/stdlib.c

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Board_Game.dir/lib/stdlib.c.i"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/Board_Game/lib/stdlib.c > CMakeFiles/Board_Game.dir/lib/stdlib.c.i

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Board_Game.dir/lib/stdlib.c.s"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/Board_Game/lib/stdlib.c -o CMakeFiles/Board_Game.dir/lib/stdlib.c.s

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.requires:

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.provides: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.requires
	$(MAKE) -f challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.provides.build
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.provides

challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.provides.build: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o


challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o: challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make
challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o: ../challenges/Board_Game/src/board.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Board_Game.dir/src/board.c.o   -c /cb-multios/challenges/Board_Game/src/board.c

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Board_Game.dir/src/board.c.i"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/Board_Game/src/board.c > CMakeFiles/Board_Game.dir/src/board.c.i

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Board_Game.dir/src/board.c.s"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/Board_Game/src/board.c -o CMakeFiles/Board_Game.dir/src/board.c.s

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.requires:

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.provides: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.requires
	$(MAKE) -f challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.provides.build
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.provides

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.provides.build: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o


challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o: challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make
challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o: ../challenges/Board_Game/src/moves.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Board_Game.dir/src/moves.c.o   -c /cb-multios/challenges/Board_Game/src/moves.c

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Board_Game.dir/src/moves.c.i"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/Board_Game/src/moves.c > CMakeFiles/Board_Game.dir/src/moves.c.i

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Board_Game.dir/src/moves.c.s"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/Board_Game/src/moves.c -o CMakeFiles/Board_Game.dir/src/moves.c.s

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.requires:

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.provides: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.requires
	$(MAKE) -f challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.provides.build
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.provides

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.provides.build: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o


challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o: challenges/Board_Game/CMakeFiles/Board_Game.dir/flags.make
challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o: ../challenges/Board_Game/src/service.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Board_Game.dir/src/service.c.o   -c /cb-multios/challenges/Board_Game/src/service.c

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Board_Game.dir/src/service.c.i"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cb-multios/challenges/Board_Game/src/service.c > CMakeFiles/Board_Game.dir/src/service.c.i

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Board_Game.dir/src/service.c.s"
	cd /cb-multios/build/challenges/Board_Game && /usr/bin/clang $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cb-multios/challenges/Board_Game/src/service.c -o CMakeFiles/Board_Game.dir/src/service.c.s

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.requires:

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.provides: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.requires
	$(MAKE) -f challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.provides.build
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.provides

challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.provides.build: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o


# Object files for target Board_Game
Board_Game_OBJECTS = \
"CMakeFiles/Board_Game.dir/lib/mymath.c.o" \
"CMakeFiles/Board_Game.dir/lib/printf.c.o" \
"CMakeFiles/Board_Game.dir/lib/prng.c.o" \
"CMakeFiles/Board_Game.dir/lib/stdlib.c.o" \
"CMakeFiles/Board_Game.dir/src/board.c.o" \
"CMakeFiles/Board_Game.dir/src/moves.c.o" \
"CMakeFiles/Board_Game.dir/src/service.c.o"

# External object files for target Board_Game
Board_Game_EXTERNAL_OBJECTS =

challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/build.make
challenges/Board_Game/Board_Game: include/libcgc.a
challenges/Board_Game/Board_Game: include/tiny-AES128-C/libtiny-AES128-C.a
challenges/Board_Game/Board_Game: challenges/Board_Game/CMakeFiles/Board_Game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cb-multios/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable Board_Game"
	cd /cb-multios/build/challenges/Board_Game && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Board_Game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
challenges/Board_Game/CMakeFiles/Board_Game.dir/build: challenges/Board_Game/Board_Game

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/build

challenges/Board_Game/CMakeFiles/Board_Game.dir/requires: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/mymath.c.o.requires
challenges/Board_Game/CMakeFiles/Board_Game.dir/requires: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/printf.c.o.requires
challenges/Board_Game/CMakeFiles/Board_Game.dir/requires: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/prng.c.o.requires
challenges/Board_Game/CMakeFiles/Board_Game.dir/requires: challenges/Board_Game/CMakeFiles/Board_Game.dir/lib/stdlib.c.o.requires
challenges/Board_Game/CMakeFiles/Board_Game.dir/requires: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/board.c.o.requires
challenges/Board_Game/CMakeFiles/Board_Game.dir/requires: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/moves.c.o.requires
challenges/Board_Game/CMakeFiles/Board_Game.dir/requires: challenges/Board_Game/CMakeFiles/Board_Game.dir/src/service.c.o.requires

.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/requires

challenges/Board_Game/CMakeFiles/Board_Game.dir/clean:
	cd /cb-multios/build/challenges/Board_Game && $(CMAKE_COMMAND) -P CMakeFiles/Board_Game.dir/cmake_clean.cmake
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/clean

challenges/Board_Game/CMakeFiles/Board_Game.dir/depend:
	cd /cb-multios/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cb-multios /cb-multios/challenges/Board_Game /cb-multios/build /cb-multios/build/challenges/Board_Game /cb-multios/build/challenges/Board_Game/CMakeFiles/Board_Game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : challenges/Board_Game/CMakeFiles/Board_Game.dir/depend
