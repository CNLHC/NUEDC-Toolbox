project(awesome232-testmain)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

include_directories(
        ad9910/inc
        common/inc
        lib/
)

add_executable(testmain
        testmain.cpp)

add_subdirectory(common)
add_subdirectory(ad9910)


target_link_libraries( testmain
        ftd2xx
        MPSSE
        pthread
		common
		ad9910
        rt
        m)

