project(awesome232-test9910)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

set(CMAKE_VERBOSE_MAKEFILE ON)
include_directories( ../../gio )

add_library(dac8563 DAC8563Driver.hpp )
set_target_properties(dac8563 PROPERTIES LINKER_LANGUAGE CXX)
target_include_directories(dac8563
        PRIVATE ../../gio
        PRIVATE ./inc
        PRIVATE ../../bridge/ftdi/lib
        )
set_target_properties(dac8563 PROPERTIES PUBLIC_HEADER "DAC8563Driver.hpp")
INSTALL(
        TARGETS    dac8563
        LIBRARY DESTINATION nuedcdist/nuedclib/module
        ARCHIVE DESTINATION nuedcdist/nuedclib/module
        PUBLIC_HEADER DESTINATION nuedcdist/nuedcinc
)

