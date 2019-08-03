#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_spi.h"
#include  "IAbstractGPIO.hpp"
#include  "IAbstractSPI.hpp"
#include "GPIOBridge.h"
#include <stdint.h>

#ifndef DRIVER_SPIBRIDGE_H
#define DRIVER_SPIBRIDGE_H

class HALF1SPIBridge :public IAbstractSPI<uint16_t>{
private:
    SPI_HandleTypeDef * mSPIHandle;
    IGPIOPin<uint16_t> mCS;
public:
    HALF1SPIBridge(SPI_HandleTypeDef  * spiHandle );
    void ReadBytes(uint8_t * buf ,uint16_t bytes,uint16_t timeout ) override ;
    void ReadBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout ,bool disableCS) override ;
    void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout ) override ;
    void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout , bool csDisable)override ;
    void ChangeCSAddress(IGPIOPin<uint16_t > cs) override ;
};

#endif //DRIVER_SPIBRIDGE_H
