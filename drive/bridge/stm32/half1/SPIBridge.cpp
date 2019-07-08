#include "SPIBridge.h"

HALF1SPIBridge::HALF1SPIBridge(SPI_HandleTypeDef *spiHandle, HALF1Bridge *gpioHandle):
mGPIOHandle(gpioHandle) ,
mSPIHandle(spiHandle),
mCSAddress(0) { }

void HALF1SPIBridge::ReadBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout) {
    mGPIOHandle->ReSetBit(mCSAddress);
    HAL_SPI_Receive(mSPIHandle,buf,bytes,timeout);
    mGPIOHandle->SetBit(mCSAddress);
}

void HALF1SPIBridge::ReadBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout,bool disableCS) {
    mGPIOHandle->ReSetBit(mCSAddress);
    HAL_SPI_Receive(mSPIHandle,buf,bytes,timeout);
    if(disableCS)
        mGPIOHandle->SetBit(mCSAddress);
}

void HALF1SPIBridge::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout) {
    mGPIOHandle->ReSetBit(mCSAddress);
    HAL_SPI_Transmit(mSPIHandle,buf,bytes,timeout);
    mGPIOHandle->SetBit(mCSAddress);
}

void HALF1SPIBridge::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout,bool disableCS) {
    mGPIOHandle->ReSetBit(mCSAddress);
    HAL_SPI_Transmit(mSPIHandle,buf,bytes,timeout);
    if(disableCS)
        mGPIOHandle->SetBit(mCSAddress);
}

void HALF1SPIBridge::ChangeCSAddress(IAbstractSPI::CSAddr address) {
    mCSAddress=(uint16_t)address;
}

