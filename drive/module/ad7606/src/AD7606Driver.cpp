//
// Created by cn on 2019/5/18.
//

#include "AD7606Driver.h"
#include <chrono>
#include <thread>

AD7606Driver::AD7606Driver(FT_HANDLE SPIHandle, FT_HANDLE GPIOHandle,
                           uint32 MPSSEConfig, uint8 ConA, uint8 ConB)
    : mSPIHandle(SPIHandle), mGPIOHandle(GPIOHandle), mMPSSEConfig(MPSSEConfig),
      mPinConA(ConA), mPinConB(ConB) {}

std::vector<AD7606Driver::ChannelOut> AD7606Driver::ReadAllChannels() {
  uint8 buf[16];
  std::vector<AD7606Driver::ChannelOut> out;
  uint32 writternCb;

  mBitMode.BitSet(mGPIOHandle, mPinConA);
  mBitMode.BitSet(mGPIOHandle, mPinConB);

  // TODO: Hardcoded waiting time
  // for more precised control , refer to 7606 datasheet and pay attention to
  // tconv parameter.

  std::this_thread::sleep_for(std::chrono::microseconds(10));
  mBitMode.BitReset(mGPIOHandle, mPinConA);
  mBitMode.BitReset(mGPIOHandle, mPinConB);
std::this_thread::sleep_for(std::chrono::microseconds(10));

  SPI_ChangeCS(mSPIHandle, mMPSSEConfig);
  SPI_Read(mSPIHandle, buf, 16, &writternCb,
           SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES |
               SPI_TRANSFER_OPTIONS_CHIPSELECT_DISABLE|
               SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE
               );

  for (int i = 0; i < 8; ++i)
    out.push_back((int16)(((uint16)buf[2 * i] << 8) | (buf[2 * i + 1])));


  return std::move(out);
}
