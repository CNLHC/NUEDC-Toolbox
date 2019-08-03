#include "stm32f1xx_hal.h"
#include "stm32f1xx_hal_spi.h"
#include  "IAbstractGPIO.hpp"
#include  "IAbstractSPI.hpp"
#include "GPIOBridge.h"
#include <stdint.h>

#ifndef DRIVER_SPIBRIDGE_H
#define DRIVER_SPIBRIDGE_H

class HALF1SPIBridge :public IAbstractSPI{
private:
    SPI_HandleTypeDef * mSPIHandle;
    HALF1Bridge * mGPIOHandle;
    uint16_t  mCSAddress;
public:
    HALF1SPIBridge(SPI_HandleTypeDef  * spiHandle , HALF1Bridge * gpioHandle);
    void ReadBytes(uint8_t * buf ,uint16_t bytes,uint16_t timeout ) override ;
    void ReadBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout ,bool disableCS) override ;
    void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout ) override ;
    void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout , bool csDisable)override ;
    void ChangeCSAddress(CSAddr address) override ;
};

#endif //DRIVER_SPIBRIDGE_H
