#include "IAbstractSPI.hpp"
#include "IAbstractGPIO.hpp"
#include <stdint.h>

#ifndef AFTESTER_SRC_DAC8563DRIVER_H_
#define AFTESTER_SRC_DAC8563DRIVER_H_

template<typename T>
class DAC8563Driver {
    typedef uint8_t uint8;
    typedef uint32_t uint32;
    typedef uint16_t uint16;
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
    enum DAC8563Data {
        DATA_NOT_CARED = 0xff,
    };
    enum PinIndexMap {
        DAC8563CS = 0,
        DAC8563LDAC = 1,
        DAC8563CLR = 2,
    };

    DAC8563Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[3]);

    void execCommand(DAC8563Command cmd, DAC8563Address addr, uint16 data);

    void setDualChannelValue(float voltage);

    void Init();

private:
    IAbstractSPI<T> *mSPIHandle;
    IGPIOPin<T> mPinCS;
    IGPIOPin<T> mPinLDAC;
    IGPIOPin<T> mPinCLR;
};

template<typename T>
DAC8563Driver<T>::DAC8563Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[3]):
        mSPIHandle(SPIHandle),
        mPinCS(PinList[DAC8563CS]),
        mPinLDAC(PinList[DAC8563LDAC]),
        mPinCLR(PinList[DAC8563CLR]) {}

template<typename T>
void DAC8563Driver<T>::execCommand(DAC8563Command cmd, DAC8563Address addr, uint16 data) {
    uint8 payload[3];
    uint32 writternCb;
    payload[0] = ((uint8) cmd << 3) | addr;
    payload[1] = (uint8) (data >> 8);
    payload[2] = (uint8) (data);
    mSPIHandle->ChangeCSAddress(mPinCS);
    mSPIHandle->WriteBytes(payload, 3, 1000, true);
}

template<typename T>
void DAC8563Driver<T>::Init() {
    mPinCLR.reset();
    mPinLDAC.reset();
    execCommand(DAC8563Driver::CMD_SOFT_RST, DAC8563Driver::ADDR_NOT_CARE, DAC8563Driver::DATA_NOT_CARED);
    execCommand(DAC8563Driver::CMD_SET_POWER_MODE, DAC8563Driver::ADDR_DUAL_CH, 0x0003);
    execCommand(DAC8563Driver::CMD_ENABLE_INTERN_REF, DAC8563Driver::ADDR_DUAL_CH, 0x00001);
}

template<typename T>
void DAC8563Driver<T>::setDualChannelValue(float voltage) {
    uint16 data = (unsigned) ((voltage + 10.0) * 0xffff / 20.0);
    execCommand(DAC8563Driver::CMD_WRITE_AND_UPDATE_ALL, DAC8563Driver::ADDR_CHA, data);
}

#endif
