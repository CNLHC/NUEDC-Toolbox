#include "SPIBridge.h"

HALF1SPIBridge::HALF1SPIBridge(SPI_HandleTypeDef *spiHandle):
mSPIHandle(spiHandle)
{ }

void HALF1SPIBridge::ReadBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout) {
    mCS.reset();
    HAL_SPI_Receive(mSPIHandle,buf,bytes,timeout);
    mCS.set();
}

void HALF1SPIBridge::ReadBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout,bool disableCS) {
    mCS.reset();
    HAL_SPI_Receive(mSPIHandle,buf,bytes,timeout);
    if(disableCS)
        mCS.set();
}

void HALF1SPIBridge::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout) {
    mCS.reset();
    HAL_SPI_Transmit(mSPIHandle,buf,bytes,timeout);
    mCS.set();
}

void HALF1SPIBridge::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout,bool disableCS) {
    mCS.reset();
    HAL_SPI_Transmit(mSPIHandle,buf,bytes,timeout);
    if(disableCS)
        mCS.set();
}

void HALF1SPIBridge::ChangeCSAddress(IGPIOPin<uint16_t > cs) {
    mCS = cs;
}

