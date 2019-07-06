#include "IAbstractGPIO.hpp"
#include <lib/ftd2xx.h>
#include <lib/libMPSSE_spi.h>

#ifndef DRIVER_GPIOBRIDGE_H
#define DRIVER_GPIOBRIDGE_H

class  ftdiGPIO :public IAbstractGPIO<uint8_t >{
public:
    ftdiGPIO(FT_HANDLE  GPIOHandle);
    void WriteGPIO(uint8_t port);
    void ReadGPIO(uint8_t &port);
private:
    FT_HANDLE mGPIOHandle;
    uint32_t mDummy;
};

#endif
