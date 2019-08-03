project(awesome232-test9910)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

set(CMAKE_VERBOSE_MAKEFILE ON)
include_directories(
        ../../bridge/ftdi
        ../../gio
)
add_subdirectory(../../bridge/ftdi ../../bridge/ftdi)

add_library(ad9910
        AD9910Driver.hpp
            )
set_target_properties(ad9910 PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(ad9910
        PRIVATE ../../gio
        PRIVATE ./inc
        PRIVATE ../../bridge/ftdi/lib
        )
add_executable( ad9910-testftdi
        testftdi.cpp )
target_link_libraries(ad9910-testftdi
        ad9910)
target_include_directories(ad9910-testftdi
        PRIVATE ./inc)
target_link_libraries(ad9910-testftdi
        FTDIBridge)

