PROJECT(driver)
CMAKE_MINIMUM_REQUIRED(VERSION 3.8.2)

include_directories(
        bridge/ftdi
        bridge/stm32/half1
)
add_subdirectory(module/ad9910)



