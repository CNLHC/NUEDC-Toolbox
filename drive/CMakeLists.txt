PROJECT(driver)
set(CMAKE_SYSTEM_NAME GENERAL)
set(CMAKE_VERBOSE_MAKEFILE ON)

CMAKE_MINIMUM_REQUIRED(VERSION 3.8.2)

set ( CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}")
include_directories(
        bridge/ftdi
        bridge/stm32/half1
)




INSTALL(
        FILES gio/IAbstractGPIO.hpp
        gio/IAbstractSPI.hpp
        DESTINATION nuedcdist/nuedcinc
)
#add_subdirectory(bridge/stm32/f1)
add_subdirectory(bridge/stm32/f4)
add_subdirectory(module/ad9910)
add_subdirectory(module/ad7606)
add_subdirectory(module/dac8563)




