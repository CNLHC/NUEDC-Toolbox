#include "IAbstractSPI.hpp"
#ifndef DRIVER_BRIDGE_H
#define DRIVER_BRIDGE_H

class ftdiSPI: public IAbstractSPI{
public:
    ftdiSPI(FT_HANDLE spiHandle,uint32 MPSSEConfig);
    void ReadBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout );
    void ReadBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout, bool disableCS);
    void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout);
    void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout, bool disableCS);
    void ChangeCSAddress(CSAddr address);
private:
    FT_HANDLE mSPIHandle;
    uint32_t  mDummy;
    ChannelConfig SPIConf;
    uint32_t  mMPSSEConf;
};
#endif

