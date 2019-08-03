project(bridge-half1)
CMAKE_MINIMUM_REQUIRED(VERSION 3.7)

set(CMAKE_VERBOSE_MAKEFILE ON)

ADD_COMPILE_DEFINITIONS(STM32F429xx)

add_library(HALF4Bridge   STATIC
        GPIOBridge.cpp
        SPIBridge.cpp)

set_target_properties(HALF4Bridge PROPERTIES PUBLIC_HEADER "GPIOBridge.h;SPIBridge.h")

target_include_directories(HALF4Bridge
        PRIVATE .
        PUBLIC ../../../gio
        PRIVATE ../../../libs/CMSIS/Include
        PRIVATE ../../../libs/CMSIS/Device/ST/STM32F4xx/Include
        PRIVATE ../../../libs/STM32F4xx_HAL_Driver/Inc)
INSTALL(
        TARGETS  HALF4Bridge
        LIBRARY DESTINATION nuedcdist/nuedclib/
        ARCHIVE DESTINATION nuedcdist/nuedclib/
        PUBLIC_HEADER DESTINATION nuedcdist/nuedcinc
)
