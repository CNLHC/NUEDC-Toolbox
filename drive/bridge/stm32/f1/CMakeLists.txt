project(bridge-half1)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

set(CMAKE_VERBOSE_MAKEFILE ON)

ADD_COMPILE_DEFINITIONS(STM32F103xB)

add_library(HALF1Bridge SHARED
            GPIOBridge.cpp
            SPIBridge.cpp )

target_include_directories(HALF1Bridge
        PUBLIC  ../../../gio
        PRIVATE Drivers/CMSIS/Include
        PRIVATE Drivers/CMSIS/Device/ST/STM32F1xx/Include
        PRIVATE Drivers/STM32F1xx_HAL_Driver/Inc)
