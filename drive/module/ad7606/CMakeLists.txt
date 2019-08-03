project(awesome232-test7606)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

set(CMAKE_VERBOSE_MAKEFILE ON)
include_directories(
        ../../bridge/ftdi
        ../../gio
)

add_library(ad7606
         AD7606Driver.hpp
            )
set_target_properties(ad7606 PROPERTIES LINKER_LANGUAGE CXX)

target_include_directories(ad7606
        PRIVATE ../../gio
        PRIVATE ./inc
        PRIVATE ../../bridge/ftdi/lib )


set_target_properties(ad7606 PROPERTIES PUBLIC_HEADER "AD7606Driver.hpp")
INSTALL(
        TARGETS   ad7606
        LIBRARY DESTINATION nuedcdist/nuedclib/module
        ARCHIVE DESTINATION nuedcdist/nuedclib/module
        PUBLIC_HEADER DESTINATION nuedcdist/nuedcinc
)

#add_executable( ad7606-testftdi
#        testftdi.cpp )
#target_link_libraries(ad7606-testftdi
#        ad7606)
#target_link_libraries(ad7606-testftdi
#        FTDIBridge)

