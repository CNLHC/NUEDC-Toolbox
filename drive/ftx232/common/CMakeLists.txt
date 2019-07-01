project(awesomeftdi-common)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)


add_library( common SHARED
        src/ftd4232driver.cpp
		src/FTD2xxBitMode.cpp)

target_link_libraries(common
        ftd2xx
        MPSSE
        pthread
        rt)

