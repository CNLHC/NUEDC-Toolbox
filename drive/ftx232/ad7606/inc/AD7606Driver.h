//
// Created by cn on 2019/5/18.
//

#ifndef AFTESTER_INC_AD7606DRIVER_H_
#define AFTESTER_INC_AD7606DRIVER_H_

#include "../../headers/libMPSSE_spi.h"
#include "../../common/inc/FTD2xxBitMode.h"
#include <vector>

class AD7606Driver {
  typedef int16 ChannelOut;
public:
  enum OverSampling {
    AD7606_NO_OverSample = 0x0,
    AD7606_2x_OverSample = 0x1,
    AD7606_4x_OverSample = 0x2,
    AD7606_8x_OverSample = 0x3,
    AD7606_16x_OverSample = 0x4,
    AD7606_32x_OverSample = 0x5,
    AD7606_64x_OverSample = 0x6
  };
  AD7606Driver(FT_HANDLE SPIHandle, FT_HANDLE GPIOHandle, uint32 MPSSEConfig,uint8 ConvstAPinNo,uint8 ConvstBPinNo);
  std::vector<ChannelOut> ReadAllChannels();

private:
  FT_HANDLE mSPIHandle;
  FT_HANDLE mGPIOHandle;
  FTD2xxBitMode mBitMode;
  uint32 mMPSSEConfig;
  uint8 mPinConA;
  uint8 mPinConB;


};

#endif // AFTESTER_INC_AD7606DRIVER_H_
