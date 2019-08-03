#include "stm32f4xx_hal.h"
#include  "stm32f4xx_hal_gpio.h"
#include  "IAbstractGPIO.hpp"
#include <stdint.h>

#ifndef DRIVER_GPIOBRIDHE_H
#define DRIVER_GPIOBRIDHE_H

class  HALF1Bridge:public IAbstractGPIO<uint16_t>{
public:
    HALF1Bridge(GPIO_TypeDef* GPIOHandle);
    void WriteGPIO(uint16_t port) override ;
    void ReadGPIO(uint16_t  &port) override ;
    void SetBit(uint32_t bitAddress) override ;
    void ReSetBit(uint32_t bitAddress) override ;

private:
    GPIO_TypeDef * mGPIOHandle;
};


#endif
