# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\mingw64\bin\cmake.exe

# The command to remove a file.
RM = C:\mingw64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\vnars\Desktop\repos\Game_VSc2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\vnars\Desktop\repos\Game_VSc2\build

# Include any dependencies generated for this target.
include CMakeFiles/MyProject.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/MyProject.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/MyProject.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MyProject.dir/flags.make

CMakeFiles/MyProject.dir/main.cpp.obj: CMakeFiles/MyProject.dir/flags.make
CMakeFiles/MyProject.dir/main.cpp.obj: CMakeFiles/MyProject.dir/includes_CXX.rsp
CMakeFiles/MyProject.dir/main.cpp.obj: C:/Users/vnars/Desktop/repos/Game_VSc2/main.cpp
CMakeFiles/MyProject.dir/main.cpp.obj: CMakeFiles/MyProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MyProject.dir/main.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyProject.dir/main.cpp.obj -MF CMakeFiles\MyProject.dir\main.cpp.obj.d -o CMakeFiles\MyProject.dir\main.cpp.obj -c C:\Users\vnars\Desktop\repos\Game_VSc2\main.cpp

CMakeFiles/MyProject.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProject.dir/main.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vnars\Desktop\repos\Game_VSc2\main.cpp > CMakeFiles\MyProject.dir\main.cpp.i

CMakeFiles/MyProject.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProject.dir/main.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vnars\Desktop\repos\Game_VSc2\main.cpp -o CMakeFiles\MyProject.dir\main.cpp.s

CMakeFiles/MyProject.dir/Application.cpp.obj: CMakeFiles/MyProject.dir/flags.make
CMakeFiles/MyProject.dir/Application.cpp.obj: CMakeFiles/MyProject.dir/includes_CXX.rsp
CMakeFiles/MyProject.dir/Application.cpp.obj: C:/Users/vnars/Desktop/repos/Game_VSc2/Application.cpp
CMakeFiles/MyProject.dir/Application.cpp.obj: CMakeFiles/MyProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/MyProject.dir/Application.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyProject.dir/Application.cpp.obj -MF CMakeFiles\MyProject.dir\Application.cpp.obj.d -o CMakeFiles\MyProject.dir\Application.cpp.obj -c C:\Users\vnars\Desktop\repos\Game_VSc2\Application.cpp

CMakeFiles/MyProject.dir/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProject.dir/Application.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vnars\Desktop\repos\Game_VSc2\Application.cpp > CMakeFiles\MyProject.dir\Application.cpp.i

CMakeFiles/MyProject.dir/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProject.dir/Application.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vnars\Desktop\repos\Game_VSc2\Application.cpp -o CMakeFiles\MyProject.dir\Application.cpp.s

CMakeFiles/MyProject.dir/Entity.cpp.obj: CMakeFiles/MyProject.dir/flags.make
CMakeFiles/MyProject.dir/Entity.cpp.obj: CMakeFiles/MyProject.dir/includes_CXX.rsp
CMakeFiles/MyProject.dir/Entity.cpp.obj: C:/Users/vnars/Desktop/repos/Game_VSc2/Entity.cpp
CMakeFiles/MyProject.dir/Entity.cpp.obj: CMakeFiles/MyProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/MyProject.dir/Entity.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyProject.dir/Entity.cpp.obj -MF CMakeFiles\MyProject.dir\Entity.cpp.obj.d -o CMakeFiles\MyProject.dir\Entity.cpp.obj -c C:\Users\vnars\Desktop\repos\Game_VSc2\Entity.cpp

CMakeFiles/MyProject.dir/Entity.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProject.dir/Entity.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vnars\Desktop\repos\Game_VSc2\Entity.cpp > CMakeFiles\MyProject.dir\Entity.cpp.i

CMakeFiles/MyProject.dir/Entity.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProject.dir/Entity.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vnars\Desktop\repos\Game_VSc2\Entity.cpp -o CMakeFiles\MyProject.dir\Entity.cpp.s

CMakeFiles/MyProject.dir/Player.cpp.obj: CMakeFiles/MyProject.dir/flags.make
CMakeFiles/MyProject.dir/Player.cpp.obj: CMakeFiles/MyProject.dir/includes_CXX.rsp
CMakeFiles/MyProject.dir/Player.cpp.obj: C:/Users/vnars/Desktop/repos/Game_VSc2/Player.cpp
CMakeFiles/MyProject.dir/Player.cpp.obj: CMakeFiles/MyProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/MyProject.dir/Player.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyProject.dir/Player.cpp.obj -MF CMakeFiles\MyProject.dir\Player.cpp.obj.d -o CMakeFiles\MyProject.dir\Player.cpp.obj -c C:\Users\vnars\Desktop\repos\Game_VSc2\Player.cpp

CMakeFiles/MyProject.dir/Player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProject.dir/Player.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vnars\Desktop\repos\Game_VSc2\Player.cpp > CMakeFiles\MyProject.dir\Player.cpp.i

CMakeFiles/MyProject.dir/Player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProject.dir/Player.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vnars\Desktop\repos\Game_VSc2\Player.cpp -o CMakeFiles\MyProject.dir\Player.cpp.s

CMakeFiles/MyProject.dir/Bullet.cpp.obj: CMakeFiles/MyProject.dir/flags.make
CMakeFiles/MyProject.dir/Bullet.cpp.obj: CMakeFiles/MyProject.dir/includes_CXX.rsp
CMakeFiles/MyProject.dir/Bullet.cpp.obj: C:/Users/vnars/Desktop/repos/Game_VSc2/Bullet.cpp
CMakeFiles/MyProject.dir/Bullet.cpp.obj: CMakeFiles/MyProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/MyProject.dir/Bullet.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyProject.dir/Bullet.cpp.obj -MF CMakeFiles\MyProject.dir\Bullet.cpp.obj.d -o CMakeFiles\MyProject.dir\Bullet.cpp.obj -c C:\Users\vnars\Desktop\repos\Game_VSc2\Bullet.cpp

CMakeFiles/MyProject.dir/Bullet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProject.dir/Bullet.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vnars\Desktop\repos\Game_VSc2\Bullet.cpp > CMakeFiles\MyProject.dir\Bullet.cpp.i

CMakeFiles/MyProject.dir/Bullet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProject.dir/Bullet.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vnars\Desktop\repos\Game_VSc2\Bullet.cpp -o CMakeFiles\MyProject.dir\Bullet.cpp.s

CMakeFiles/MyProject.dir/Utility.cpp.obj: CMakeFiles/MyProject.dir/flags.make
CMakeFiles/MyProject.dir/Utility.cpp.obj: CMakeFiles/MyProject.dir/includes_CXX.rsp
CMakeFiles/MyProject.dir/Utility.cpp.obj: C:/Users/vnars/Desktop/repos/Game_VSc2/Utility.cpp
CMakeFiles/MyProject.dir/Utility.cpp.obj: CMakeFiles/MyProject.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/MyProject.dir/Utility.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/MyProject.dir/Utility.cpp.obj -MF CMakeFiles\MyProject.dir\Utility.cpp.obj.d -o CMakeFiles\MyProject.dir\Utility.cpp.obj -c C:\Users\vnars\Desktop\repos\Game_VSc2\Utility.cpp

CMakeFiles/MyProject.dir/Utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MyProject.dir/Utility.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\vnars\Desktop\repos\Game_VSc2\Utility.cpp > CMakeFiles\MyProject.dir\Utility.cpp.i

CMakeFiles/MyProject.dir/Utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MyProject.dir/Utility.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\vnars\Desktop\repos\Game_VSc2\Utility.cpp -o CMakeFiles\MyProject.dir\Utility.cpp.s

# Object files for target MyProject
MyProject_OBJECTS = \
"CMakeFiles/MyProject.dir/main.cpp.obj" \
"CMakeFiles/MyProject.dir/Application.cpp.obj" \
"CMakeFiles/MyProject.dir/Entity.cpp.obj" \
"CMakeFiles/MyProject.dir/Player.cpp.obj" \
"CMakeFiles/MyProject.dir/Bullet.cpp.obj" \
"CMakeFiles/MyProject.dir/Utility.cpp.obj"

# External object files for target MyProject
MyProject_EXTERNAL_OBJECTS =

MyProject.exe: CMakeFiles/MyProject.dir/main.cpp.obj
MyProject.exe: CMakeFiles/MyProject.dir/Application.cpp.obj
MyProject.exe: CMakeFiles/MyProject.dir/Entity.cpp.obj
MyProject.exe: CMakeFiles/MyProject.dir/Player.cpp.obj
MyProject.exe: CMakeFiles/MyProject.dir/Bullet.cpp.obj
MyProject.exe: CMakeFiles/MyProject.dir/Utility.cpp.obj
MyProject.exe: CMakeFiles/MyProject.dir/build.make
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libsfml-system-s-d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libsfml-network-s-d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libsfml-graphics-s-d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libsfml-window-s-d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libsfml-audio-s-d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libfreetyped.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libbz2d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libpng16d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libzlibd.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libbz2d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libpng16d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libzlibd.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libbrotlidec.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libbrotlicommon.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libsfml-system-s-d.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libOpenAL32.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libvorbisfile.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libvorbisenc.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libvorbis.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libogg.a
MyProject.exe: C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/lib/libFLAC.a
MyProject.exe: CMakeFiles/MyProject.dir/linkLibs.rsp
MyProject.exe: CMakeFiles/MyProject.dir/objects1.rsp
MyProject.exe: CMakeFiles/MyProject.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable MyProject.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MyProject.dir\link.txt --verbose=$(VERBOSE)
	C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy Bypass -file C:/Users/vnars/vcpkg/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary C:/Users/vnars/Desktop/repos/Game_VSc2/build/MyProject.exe -installedDir C:/Users/vnars/vcpkg/installed/x64-mingw-static/debug/bin -OutVariable out

# Rule to build all files generated by this target.
CMakeFiles/MyProject.dir/build: MyProject.exe
.PHONY : CMakeFiles/MyProject.dir/build

CMakeFiles/MyProject.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\MyProject.dir\cmake_clean.cmake
.PHONY : CMakeFiles/MyProject.dir/clean

CMakeFiles/MyProject.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\vnars\Desktop\repos\Game_VSc2 C:\Users\vnars\Desktop\repos\Game_VSc2 C:\Users\vnars\Desktop\repos\Game_VSc2\build C:\Users\vnars\Desktop\repos\Game_VSc2\build C:\Users\vnars\Desktop\repos\Game_VSc2\build\CMakeFiles\MyProject.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MyProject.dir/depend

