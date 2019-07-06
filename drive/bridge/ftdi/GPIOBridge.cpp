#include "GPIOBridge.h"

ftdiGPIO::ftdiGPIO(FT_HANDLE GPIOHandle):mGPIOHandle(GPIOHandle) {}

void ftdiGPIO::ReadGPIO(uint8_t &port) {
    FT_Read(mGPIOHandle, &port, 1, &mDummy);
}

void ftdiGPIO::WriteGPIO(uint8_t port) {
    FT_Write(mGPIOHandle, &port, 1, &mDummy);
}

