//
// Created by cn on 2019/5/18.
//

#ifndef AFTESTER_INC_DAC8563DRIVER_H_
#define AFTESTER_INC_DAC8563DRIVER_H_

#include "DAC8563Driver.h"
#include "../../headers/libMPSSE_spi.h"

class DAC8563Driver {

public:
  enum DAC8563Command {
    CMD_WRITE_REG = 0b000,
    CMD_SOFT_LDAC = 0b001,
    CMD_WRITE_AND_UPDATE_ALL = 0b010,
    CMD_WRITE_AND_UPDATE_ONE = 0b011,
    CMD_SET_POWER_MODE = 0b100,
    CMD_SOFT_RST = 0b101,
    CMD_SET_LDAC_REG = 0b110,
    CMD_ENABLE_INTERN_REF = 0b111
  };
  enum DAC8563Address {
    ADDR_CHA = 0b000,
    ADDR_CHB = 0b001,
    ADDR_GAIN = 0b010,
    ADDR_DUAL_CH = 0b111,
    ADDR_NOT_CARE = 0b000,
  };
  enum DAC8563Data{
    DATA_NOT_CARED=0xff,

  };

  DAC8563Driver(FT_HANDLE SPIHandle, FT_HANDLE GPIOHandle, uint32 MPSSEConfig);
  void execCommand(DAC8563Command cmd, DAC8563Address addr, uint16 data);
  void Init();
  void setDualChannelValue(float voltage);

private:
  FT_HANDLE mSPIHandle;
  uint32 mMPSSEConfig;
};

#endif // AFTESTER_INC_DAC8563DRIVER_H_
