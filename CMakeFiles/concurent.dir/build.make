# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/user/Documents/opencv/temperature

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/Documents/opencv/temperature

# Include any dependencies generated for this target.
include CMakeFiles/concurent.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/concurent.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/concurent.dir/flags.make

CMakeFiles/concurent.dir/project2.cpp.o: CMakeFiles/concurent.dir/flags.make
CMakeFiles/concurent.dir/project2.cpp.o: project2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/Documents/opencv/temperature/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/concurent.dir/project2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/concurent.dir/project2.cpp.o -c /home/user/Documents/opencv/temperature/project2.cpp

CMakeFiles/concurent.dir/project2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/concurent.dir/project2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/Documents/opencv/temperature/project2.cpp > CMakeFiles/concurent.dir/project2.cpp.i

CMakeFiles/concurent.dir/project2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/concurent.dir/project2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/Documents/opencv/temperature/project2.cpp -o CMakeFiles/concurent.dir/project2.cpp.s

CMakeFiles/concurent.dir/project2.cpp.o.requires:
.PHONY : CMakeFiles/concurent.dir/project2.cpp.o.requires

CMakeFiles/concurent.dir/project2.cpp.o.provides: CMakeFiles/concurent.dir/project2.cpp.o.requires
	$(MAKE) -f CMakeFiles/concurent.dir/build.make CMakeFiles/concurent.dir/project2.cpp.o.provides.build
.PHONY : CMakeFiles/concurent.dir/project2.cpp.o.provides

CMakeFiles/concurent.dir/project2.cpp.o.provides.build: CMakeFiles/concurent.dir/project2.cpp.o

CMakeFiles/concurent.dir/affichage.cpp.o: CMakeFiles/concurent.dir/flags.make
CMakeFiles/concurent.dir/affichage.cpp.o: affichage.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/Documents/opencv/temperature/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/concurent.dir/affichage.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/concurent.dir/affichage.cpp.o -c /home/user/Documents/opencv/temperature/affichage.cpp

CMakeFiles/concurent.dir/affichage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/concurent.dir/affichage.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/user/Documents/opencv/temperature/affichage.cpp > CMakeFiles/concurent.dir/affichage.cpp.i

CMakeFiles/concurent.dir/affichage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/concurent.dir/affichage.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/user/Documents/opencv/temperature/affichage.cpp -o CMakeFiles/concurent.dir/affichage.cpp.s

CMakeFiles/concurent.dir/affichage.cpp.o.requires:
.PHONY : CMakeFiles/concurent.dir/affichage.cpp.o.requires

CMakeFiles/concurent.dir/affichage.cpp.o.provides: CMakeFiles/concurent.dir/affichage.cpp.o.requires
	$(MAKE) -f CMakeFiles/concurent.dir/build.make CMakeFiles/concurent.dir/affichage.cpp.o.provides.build
.PHONY : CMakeFiles/concurent.dir/affichage.cpp.o.provides

CMakeFiles/concurent.dir/affichage.cpp.o.provides.build: CMakeFiles/concurent.dir/affichage.cpp.o

CMakeFiles/concurent.dir/math.c.o: CMakeFiles/concurent.dir/flags.make
CMakeFiles/concurent.dir/math.c.o: math.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/user/Documents/opencv/temperature/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/concurent.dir/math.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/concurent.dir/math.c.o   -c /home/user/Documents/opencv/temperature/math.c

CMakeFiles/concurent.dir/math.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/concurent.dir/math.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/user/Documents/opencv/temperature/math.c > CMakeFiles/concurent.dir/math.c.i

CMakeFiles/concurent.dir/math.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/concurent.dir/math.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/user/Documents/opencv/temperature/math.c -o CMakeFiles/concurent.dir/math.c.s

CMakeFiles/concurent.dir/math.c.o.requires:
.PHONY : CMakeFiles/concurent.dir/math.c.o.requires

CMakeFiles/concurent.dir/math.c.o.provides: CMakeFiles/concurent.dir/math.c.o.requires
	$(MAKE) -f CMakeFiles/concurent.dir/build.make CMakeFiles/concurent.dir/math.c.o.provides.build
.PHONY : CMakeFiles/concurent.dir/math.c.o.provides

CMakeFiles/concurent.dir/math.c.o.provides.build: CMakeFiles/concurent.dir/math.c.o

# Object files for target concurent
concurent_OBJECTS = \
"CMakeFiles/concurent.dir/project2.cpp.o" \
"CMakeFiles/concurent.dir/affichage.cpp.o" \
"CMakeFiles/concurent.dir/math.c.o"

# External object files for target concurent
concurent_EXTERNAL_OBJECTS =

concurent: CMakeFiles/concurent.dir/project2.cpp.o
concurent: CMakeFiles/concurent.dir/affichage.cpp.o
concurent: CMakeFiles/concurent.dir/math.c.o
concurent: CMakeFiles/concurent.dir/build.make
concurent: /usr/local/lib/libopencv_videostab.so.3.1.0
concurent: /usr/local/lib/libopencv_videoio.so.3.1.0
concurent: /usr/local/lib/libopencv_video.so.3.1.0
concurent: /usr/local/lib/libopencv_superres.so.3.1.0
concurent: /usr/local/lib/libopencv_stitching.so.3.1.0
concurent: /usr/local/lib/libopencv_shape.so.3.1.0
concurent: /usr/local/lib/libopencv_photo.so.3.1.0
concurent: /usr/local/lib/libopencv_objdetect.so.3.1.0
concurent: /usr/local/lib/libopencv_ml.so.3.1.0
concurent: /usr/local/lib/libopencv_imgproc.so.3.1.0
concurent: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
concurent: /usr/local/lib/libopencv_highgui.so.3.1.0
concurent: /usr/local/lib/libopencv_flann.so.3.1.0
concurent: /usr/local/lib/libopencv_features2d.so.3.1.0
concurent: /usr/local/lib/libopencv_core.so.3.1.0
concurent: /usr/local/lib/libopencv_calib3d.so.3.1.0
concurent: /usr/local/lib/libopencv_features2d.so.3.1.0
concurent: /usr/local/lib/libopencv_ml.so.3.1.0
concurent: /usr/local/lib/libopencv_highgui.so.3.1.0
concurent: /usr/local/lib/libopencv_videoio.so.3.1.0
concurent: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
concurent: /usr/local/lib/libopencv_flann.so.3.1.0
concurent: /usr/local/lib/libopencv_video.so.3.1.0
concurent: /usr/local/lib/libopencv_imgproc.so.3.1.0
concurent: /usr/local/lib/libopencv_core.so.3.1.0
concurent: CMakeFiles/concurent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable concurent"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/concurent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/concurent.dir/build: concurent
.PHONY : CMakeFiles/concurent.dir/build

CMakeFiles/concurent.dir/requires: CMakeFiles/concurent.dir/project2.cpp.o.requires
CMakeFiles/concurent.dir/requires: CMakeFiles/concurent.dir/affichage.cpp.o.requires
CMakeFiles/concurent.dir/requires: CMakeFiles/concurent.dir/math.c.o.requires
.PHONY : CMakeFiles/concurent.dir/requires

CMakeFiles/concurent.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/concurent.dir/cmake_clean.cmake
.PHONY : CMakeFiles/concurent.dir/clean

CMakeFiles/concurent.dir/depend:
	cd /home/user/Documents/opencv/temperature && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/Documents/opencv/temperature /home/user/Documents/opencv/temperature /home/user/Documents/opencv/temperature /home/user/Documents/opencv/temperature /home/user/Documents/opencv/temperature/CMakeFiles/concurent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/concurent.dir/depend

