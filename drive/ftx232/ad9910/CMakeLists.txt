project(awesomeftdi-ad9910)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

include_directories( ./inc 
../common/inc )
FIND_PACKAGE(spdlog)

add_library(
        ad9910 SHARED
        src/AD9910Driver.cpp )

target_link_libraries(ad9910
        ftd2xx
        MPSSE
        pthread
        rt
        m)

