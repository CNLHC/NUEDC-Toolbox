//
// Created by cn on 2019/5/18.
//

#include "DAC8563Driver.h"
#include <stdio.h>

DAC8563Driver::DAC8563Driver(FT_HANDLE SPIHandle, FT_HANDLE GPIOHandle,
                             uint32 MPSSEConfig)
    : mSPIHandle(SPIHandle), mMPSSEConfig(MPSSEConfig) {}

void DAC8563Driver::execCommand(DAC8563Driver::DAC8563Command cmd,
                                DAC8563Driver::DAC8563Address addr,
                                uint16 data) {

  uint8 payload[3];
  uint32 writternCb;

  payload[0] = ((uint8)cmd << 3) | addr;
  payload[1] = (uint8)(data>>8);
  payload[2] = (uint8)(data);

//  for(auto &i:payload)
//    printf("%02x\n",i);
//
//  printf("====================\n");


  SPI_ChangeCS(mSPIHandle, mMPSSEConfig);
  SPI_Write(mSPIHandle, payload, 3, &writternCb,
            SPI_TRANSFER_OPTIONS_CHIPSELECT_ENABLE |
                SPI_TRANSFER_OPTIONS_SIZE_IN_BYTES|
                SPI_TRANSFER_OPTIONS_CHIPSELECT_DISABLE
                );
}
void DAC8563Driver::Init() {
  execCommand(DAC8563Driver::CMD_SOFT_RST,DAC8563Driver::ADDR_NOT_CARE,DAC8563Driver::DATA_NOT_CARED);
  execCommand(DAC8563Driver::CMD_SET_POWER_MODE,DAC8563Driver::ADDR_DUAL_CH,0x0003);
  execCommand(DAC8563Driver::CMD_ENABLE_INTERN_REF,DAC8563Driver::ADDR_DUAL_CH,0x00001);
}

void DAC8563Driver::setDualChannelValue(float voltage) {
  uint16  data = (unsigned)((voltage+10.0)*0xffff/20.0);
  execCommand(DAC8563Driver::CMD_WRITE_AND_UPDATE_ALL,DAC8563Driver::ADDR_CHA,data);
}

