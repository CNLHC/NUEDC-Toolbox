//
// Created by cn on 2019/5/18.
//

#ifndef AFTESTER_INC_FTD2XXBITMODE_H_
#define AFTESTER_INC_FTD2XXBITMODE_H_

#include "libMPSSE_spi.h"

class FTD2xxBitMode {

public:
  void BitSet(FT_HANDLE GPIOHandle,uint8 PinNo);
  void BitReset(FT_HANDLE GPIOHandle,uint8 PinNo);
};



#endif //AFTESTER_INC_FTD2XXBITMODE_H_
