# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/cmake"

# The command to remove a file.
RM = "/Applications/CMake 2.8-12.app/Contents/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = "/Applications/CMake 2.8-12.app/Contents/bin/ccmake"

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib

# Include any dependencies generated for this target.
include CMakeFiles/Spot.Common.ZooKeeper_A.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Spot.Common.ZooKeeper_A.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o: ../source/Logger/Log4cxxLogger.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/Logger/Log4cxxLogger.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/Logger/Log4cxxLogger.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/Logger/Log4cxxLogger.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o: ../source/Utility/System.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/Utility/System.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/Utility/System.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/Utility/System.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o: ../source/ZooKeeper/ZooKeeper.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeper.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeper.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeper.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o: ../source/ZooKeeper/ZooKeeperEvent.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperEvent.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperEvent.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperEvent.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o: ../source/ZooKeeper/ZooKeeperException.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperException.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperException.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperException.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o: ../source/ZooKeeper/ZooKeeperImpl.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperImpl.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperImpl.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperImpl.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o: ../source/ZooKeeper/ZooKeeperNodeManager.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperNodeManager.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperNodeManager.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperNodeManager.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o: ../source/ZooKeeper/ZooKeeperSessionManager.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperSessionManager.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperSessionManager.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperSessionManager.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o: CMakeFiles/Spot.Common.ZooKeeper_A.dir/flags.make
CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o: ../source/ZooKeeper/ZooKeeperStat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o -c /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperStat.cpp

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.i"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperStat.cpp > CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.i

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.s"
	/spot/dev/3rdParty/cpp/gnu/gcc/gcc-4.7.3/bin/g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/source/ZooKeeper/ZooKeeperStat.cpp -o CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.s

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.requires:
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.provides: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.requires
	$(MAKE) -f CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.provides.build
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.provides

CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.provides.build: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o

# Object files for target Spot.Common.ZooKeeper_A
Spot_Common_ZooKeeper_A_OBJECTS = \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o" \
"CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o"

# External object files for target Spot.Common.ZooKeeper_A
Spot_Common_ZooKeeper_A_EXTERNAL_OBJECTS =

libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/build.make
libSpot.Common.ZooKeeper.a: CMakeFiles/Spot.Common.ZooKeeper_A.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libSpot.Common.ZooKeeper.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Spot.Common.ZooKeeper_A.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Spot.Common.ZooKeeper_A.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Spot.Common.ZooKeeper_A.dir/build: libSpot.Common.ZooKeeper.a
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/build

CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Logger/Log4cxxLogger.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/Utility/System.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeper.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperEvent.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperException.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperImpl.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperNodeManager.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperSessionManager.cpp.o.requires
CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires: CMakeFiles/Spot.Common.ZooKeeper_A.dir/source/ZooKeeper/ZooKeeperStat.cpp.o.requires
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/requires

CMakeFiles/Spot.Common.ZooKeeper_A.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Spot.Common.ZooKeeper_A.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/clean

CMakeFiles/Spot.Common.ZooKeeper_A.dir/depend:
	cd /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib /Users/davidshrader/Development/DevOps/zoom/common/zookeeper-cpp/lib/CMakeFiles/Spot.Common.ZooKeeper_A.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Spot.Common.ZooKeeper_A.dir/depend

