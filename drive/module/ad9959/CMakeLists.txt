project(awesome232-test9910)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

set(CMAKE_VERBOSE_MAKEFILE ON)
include_directories( ../../gio )

add_library(ad9959 AD9959Driver.hpp)
set_target_properties(ad9959 PROPERTIES LINKER_LANGUAGE CXX)
target_include_directories(ad9959
        PRIVATE ../../gio
        PRIVATE ./inc
        PRIVATE ../../bridge/ftdi/lib
        )
set_target_properties(ad9959 PROPERTIES PUBLIC_HEADER "AD9959Driver.hpp")
INSTALL(
        TARGETS    ad9959
        LIBRARY DESTINATION nuedcdist/nuedclib/module
        ARCHIVE DESTINATION nuedcdist/nuedclib/module
        PUBLIC_HEADER DESTINATION nuedcdist/nuedcinc
)

