//
// Created by cn on 2019/5/11.
//

#ifndef AFTESTER_SRC_AD9910DRIVER_H_
#define AFTESTER_SRC_AD9910DRIVER_H_
#include "libMPSSE_spi.h"
#include "FTD2xxBitMode.h"
class AD9910Driver {

public:
  AD9910Driver(FT_HANDLE SPIHandle, FT_HANDLE GPIOHandle,uint8 UpdatePinNum,uint32 MPSSEConfig);
  bool WriteRegister(uint8 address, uint8 length, uint8 *data);
  bool ReadRegister(uint8 address, uint8 length, uint8 *buf);
  void Init();
  void setSingleTuneOutput(uint16 amp,double Freq);
  void linearFreqSweep(double Start, double Stop, double seconds);

private:
  void pIOUSet();
  void pIOUReset();
  FT_HANDLE mSPIHandle;
  FT_HANDLE mGPIOHandle;
  uint8  mIOUpdatePinNo;
  uint32 mMPSSEConfig;
  FTD2xxBitMode mBitMode;

};

#endif // AFTESTER_SRC_AD9910DRIVER_H_
