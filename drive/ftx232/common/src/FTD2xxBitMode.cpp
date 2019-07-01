//
// Created by cn on 2019/5/18.
//

#include "FTD2xxBitMode.h"

void FTD2xxBitMode::BitReset(FT_HANDLE GPIOHandle, uint8 PinNo){
  unsigned int dummy;
  uint8 previousState;
  uint8 newState;
  FT_Read(GPIOHandle, &previousState, 1, &dummy);
  newState = (~((unsigned)1 <<PinNo)) & previousState;
  FT_Write(GPIOHandle, &newState, 1, &dummy);
}


void FTD2xxBitMode::BitSet(FT_HANDLE GPIOHandle, uint8 PinNo) {
  unsigned int dummy;
  uint8 previousState;
  uint8 newState;
  FT_Read(GPIOHandle, &previousState, 1, &dummy);
  newState = (((unsigned)1 <<PinNo)) | previousState;
  FT_Write(GPIOHandle, &newState, 1, &dummy);
}
