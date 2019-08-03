#include "stm32f4xx_hal.h"
#include  "stm32f4xx_hal_gpio.h"
#include  "GPIOBridge.h"

HALF1Bridge::HALF1Bridge(GPIO_TypeDef *GPIOHandle):mGPIOHandle(GPIOHandle) {}

void HALF1Bridge::WriteGPIO(uint16_t port) {
    HAL_GPIO_WritePin(mGPIOHandle,GPIO_PIN_All,GPIO_PIN_SET);
}

void HALF1Bridge::ReadGPIO(uint16_t &port) {
    port=0x00;
    for(int i=0;i<16;i++)
        if(HAL_GPIO_ReadPin(mGPIOHandle,i)==GPIO_PIN_SET)
            port|=(1<<i);
        else
            port|=(0<<i);
}
void HALF1Bridge::SetBit(uint32_t bitAddress){
    HAL_GPIO_WritePin(mGPIOHandle,(1<<bitAddress),GPIO_PIN_SET);
}
void HALF1Bridge::ReSetBit(uint32_t bitAddress){
    HAL_GPIO_WritePin(mGPIOHandle,(1<<bitAddress),GPIO_PIN_RESET);
}
