PROJECT(driver)
CMAKE_MINIMUM_REQUIRED(VERSION 3.8.2)

include_directories(
        gio/inc
)
add_subdirectory(ftx232)

add_executable(testmain
        testmain.cpp
        ../gio/IAbstractSPI.hpp
        )


