#include "IAbstractSPI.h"
#include "ftd2xx.h"
#include "libMPSSE_spi.h"
#include "bridge.h"


ftdiSPI::ftdiSPI(FT_HANDLE *spiHandle):mSPIHandle(spiHandle){}

void ftdiSPI::ReadBytes(uint8_t * buf ,uint16_t bytes,uint16_t timeout ) {
    SPI_Read(mSPIHandle,buf,bytes, &mDummy,
             SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES |
             SPI_TRANSFER_OPTIONS_CHIPSELECT_DISABLE);
}

void ftdiSPI::ReadBytes(uint8_t * buf ,uint16_t bytes,uint16_t timeout, bool disableCS) {
    if (disableCS)
    SPI_Read(mSPIHandle,buf,bytes, &mDummy,
             SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES |
             SPI_TRANSFER_OPTIONS_CHIPSELECT_DISABLE);
    else
        SPI_Read(mSPIHandle,buf,bytes, &mDummy,
                 SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES |
                 SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE);
}

void ftdiSPI::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout) {
    SPI_Write(mSPIHandle, buf, bytes, &mDummy,
              SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE |
              SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES);
}

void ftdiSPI::WriteBytes(uint8_t *buf, uint16_t bytes, uint16_t timeout,bool disableCS) {
    if(disableCS)
    SPI_Write(mSPIHandle, buf, bytes, &mDummy,
              SPI_TRANSFER_OPTIONS_CHIPSELECT_DISABLE|
              SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES);
    else
        SPI_Write(mSPIHandle, buf, bytes, &mDummy,
                  SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE|
                  SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES);
}


void ftdiSPI::ChangeCSAddress(CSAddr address){
    //Use MPSSEPort  Address
    if(address>=0 && address<5){

    }

}




