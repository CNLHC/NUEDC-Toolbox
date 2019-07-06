project(bridge-ftdi)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

include_directories( .
        ./lib
        ../../gio
        )
add_library(FTDIBridge
        GPIOBridge.cpp
        SPIBridge.cpp
        ../../gio/IAbstractGPIO.hpp
        ../../gio/IAbstractSPI.hpp )

target_link_libraries(FTDIBridge
        ftd2xx
        MPSSE
        pthread
        rt
        m )
