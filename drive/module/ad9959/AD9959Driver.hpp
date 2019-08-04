#include "IAbstractSPI.hpp"
#include "IAbstractGPIO.hpp"
#include <stdint.h>

#ifndef AFTESTER_SRC_AD9959DRIVER_H_
#define AFTESTER_SRC_AD9959DRIVER_H_

template<typename T>
class AD9959Driver {
    typedef uint8_t uint8;
    typedef uint32_t uint32;
    typedef uint16_t uint16;
public:

    enum PinIndexMap {
        AD9959CS = 0,
        AD9959IOUP = 1,
        AD9959PWR = 2,
        AD9959RESET = 3,
    };

    enum  RegisterAddress{
        AD9959CSR=0x00,
        AD9959FR1=0x01,
        AD9959FR2=0x02,
        AD9959CFR=0x03,
        AD9959CFTW0=0x04
    };
    AD9959Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[4]);

    void Init();

    bool ReadRegister(RegisterAddress  addr, uint8 length, uint8 *buf);
    bool WriteRegister(RegisterAddress addr, uint8 length, uint8 *data, bool disableCS);
    void setSingleOutput(uint32_t FTW);

private:
    IAbstractSPI<T> *mSPIHandle;
    IGPIOPin<T> mPinCS;
    IGPIOPin<T> mPinIOUP;
    IGPIOPin<T> mPinPWR;
    IGPIOPin<T> mPinRESET;
};

template<typename T>
AD9959Driver<T>::AD9959Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[4]):
        mSPIHandle(SPIHandle),
        mPinCS(PinList[AD9959CS]),
        mPinIOUP(PinList[AD9959IOUP]),
        mPinPWR(PinList[AD9959PWR]),
        mPinRESET(PinList[AD9959RESET]) {
    mPinRESET.set();
    for(int i=0;i<255;i++);
    mPinRESET.reset();
    mPinPWR.reset();
}


template<typename T>
bool AD9959Driver<T>::WriteRegister(RegisterAddress address, uint8 length, uint8 *data, bool disableCS) {
    mSPIHandle->ChangeCSAddress(mPinCS);
    uint8 ad9959cmd = address & 0b01111111;
    mSPIHandle->WriteBytes(&ad9959cmd, 1, 1000, false);
    mSPIHandle->WriteBytes(data, length, 1000, disableCS);
    mPinIOUP.reset();
    mPinIOUP.set();
    mPinIOUP.reset();
    return true;
}

template<typename T>
bool AD9959Driver<T>::ReadRegister(RegisterAddress address, uint8 length, uint8 *buf) {
    mSPIHandle->ChangeCSAddress(mPinCS);
    uint8 ad9910cmd = address | 0b10000000;
    mSPIHandle->WriteBytes(&ad9910cmd, 1, 1000, false);
    mSPIHandle->ReadBytes(buf, length, 1000, true);
    return true;
}

template  <typename  T>
void AD9959Driver<T>::setSingleOutput(uint32_t FTW) {
    uint8_t buf[4];
    buf[0] = (uint8_t) (FTW >> 24);
    buf[1] = (uint8_t) (FTW >> 16);
    buf[2] = (uint8_t) (FTW >> 8);
    buf[3] = (uint8_t) (FTW);

    WriteRegister(AD9959CFTW0,4,buf, true);

}
template<typename T>
void AD9959Driver<T>::Init() {
    mPinRESET.reset();
    for(int i=0;i<255;i++);
    mPinRESET.set();
    //hardcode delay
    for(int i=0;i<255;i++);

    mPinRESET.reset();

    uint8_t buf[4];
    /*CSR0: Channel Select Register
      [7:4]: active high, enable channel, choose to 1111
      [3]: MUST BE 0
      [2:1]: Choose 3-wire mode, Old fashioned SPI standard. use 01
      [0]: use MSB first, keep default 0
      So we use 1111_0_01_0 === 0xF2
  */

    buf[0] = 0x92;
    WriteRegister(AD9959CSR, 1, buf, false);

    /*FR1: Function Register 1
        [23]: VCO Gain control, sys_clock=500>160, so we use 1
        [22:18]: PLL Factor, 25Mhz* 20 ===500(Max), so we use 200(10)=10100
        [17:16]: Pump current, use 150uA, choose 11
        [15]: keep 1
        [14:12]: ABout modulation , just keep 000
        [11:10]: relative to ramp up/down, keep 00
        [9:8]: modilation level, keep 00
        [7]: refclk, enable ,choose 0
        [6]: about power, keep 0
        [5]: syncClk, enable ,choose 0
        [4]: DAC,ref ,enable choose 0
        [3:2]: about multiple devices sync, choose 00
        [1:0]: relative to sync, choose 00

        so we use (1_101)(00_11)(1_000)(00_00)(0_0_0_0)(00_00) === 0xD3,0x80,0x00
    */
    buf[0] = 0xD3;
    buf[1] = 0x80;
    buf[2] = 0x00;
    WriteRegister(AD9959FR1, 3, buf,true);

    /*FR1: Function Register 2
     * keep default
    */

}






#endif
