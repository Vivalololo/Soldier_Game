cmake_minimum_required(VERSION 3.10.0)
project(MyProject VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(MyProject 
    main.cpp
    Application.cpp
    Entity.cpp
    Player.cpp
    Bullet.cpp
    Utility.cpp
)

#cmake -B build -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=C:/Users/vnars/vcpkg/scripts/buildsystems/vcpkg.cmake -DVCPKG_TARGET_TRIPLET=x64-mingw-static

find_package(SFML COMPONENTS system window graphics audio CONFIG REQUIRED)

target_link_libraries(MyProject PRIVATE sfml-system sfml-network sfml-graphics sfml-window sfml-audio)

