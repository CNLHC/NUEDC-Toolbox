project(awesome232-testmain)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

include_directories(
        ad9910/inc
        common/inc
        lib/
		../gio/
		.
)

add_subdirectory(common)
add_subdirectory(ad9910)


add_library( ftdicommon
		SPIBridge.cpp
		GPIOBridge.cpp
        )
add_executable(ft232testmain
		testmain.cpp
		SPIBridge.cpp
		GPIOBridge.cpp
        ../gio/IAbstractSPI.hpp
		../gio/IAbstractGPIO.hpp )

target_link_libraries(ft232testmain
		ftd2xx
		MPSSE
		pthread
		common
		ad9910
		rt
        m )
target_link_libraries(ftdicommon
		ftd2xx
		MPSSE
		pthread
		common
		ad9910
		rt
        m )

