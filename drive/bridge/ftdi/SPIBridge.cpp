#include "IAbstractSPI.hpp"
#include "ftd2xx.h"
#include "libMPSSE_spi.h"
#include "SPIBridge.h"


ftdiSPI::ftdiSPI(FT_HANDLE spiHandle, uint32 MPSSEConfig) : mSPIHandle(spiHandle), mMPSSEConf(MPSSEConfig) {}

void ftdiSPI::ReadBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout) {
    SPI_Read(mSPIHandle, buf, bytes, &mDummy,
             SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES |
             SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE);
}

void ftdiSPI::ReadBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout, bool disableCS) {
    if (disableCS)
        SPI_Read(mSPIHandle, buf, bytes, &mDummy,
                 SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES |
                 SPI_TRANSFER_OPTIONS_CHIPSELECT_DISABLE |
                 SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE
        );
    else
        SPI_Read(mSPIHandle, buf, bytes, &mDummy,
                 SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES |
                 SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE);

}

void ftdiSPI::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout) {
    SPI_Write(mSPIHandle, buf, bytes, &mDummy,
              SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE |
              SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES);
}

void ftdiSPI::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout, bool disableCS) {
    if (disableCS)
        SPI_Write(mSPIHandle, buf, bytes, &mDummy,
                  SPI_TRANSFER_OPTIONS_CHIPSELECT_DISABLE |
                  SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES);
    else
        SPI_Write(mSPIHandle, buf, bytes, &mDummy,
                  SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE |
                  SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES);
}


void ftdiSPI::ChangeCSAddress(CSAddr address) {
    //Use MPSSEPort  Address
    if (address >= 0 && address < 5) {
        SPI_ChangeCS(mSPIHandle, (this->mMPSSEConf) & (~SPI_CONFIG_OPTION_CS_MASK) | (address << 2));
    }
}





