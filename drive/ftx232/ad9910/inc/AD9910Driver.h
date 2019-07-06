//
// Created by cn on 2019/5/11.
//

#ifndef AFTESTER_SRC_AD9910DRIVER_H_
#define AFTESTER_SRC_AD9910DRIVER_H_
#include "libMPSSE_spi.h"
#include "FTD2xxBitMode.h"
#include "IAbstractSPI.hpp"
#include "IAbstractGPIO.hpp"
class AD9910Driver {


public:
  AD9910Driver(IAbstractSPI *SPIHandle,uint16 CsAddress,IAbstractGPIO<uint8> *GPIOHandle );
  bool WriteRegister(uint8 address, uint8 length, uint8 *data);
  bool ReadRegister(uint8 address, uint8 length, uint8 *buf);
  void Init();
  void setSingleTuneOutput(uint16 amp,double Freq);
  void linearFreqSweep(double Start, double Stop, double seconds);

private:
  void pIOUSet();
  void pIOUReset();
  IAbstractSPI *mSPIHandle;
  IAbstractGPIO<uint8> *mGPIOHandle;
  uint8  mIOUpdatePinNo;
  uint32 mMPSSEConfig;
  uint16 mCsAddress;

};

#endif // AFTESTER_SRC_AD9910DRIVER_H_
