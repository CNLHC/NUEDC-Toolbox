#include "IAbstractSPI.hpp"
#include "IAbstractGPIO.hpp"
#include <stdint.h>

#ifndef AFTESTER_SRC_AD9910DRIVER_H_
#define AFTESTER_SRC_AD9910DRIVER_H_

template <typename T>
class AD9910Driver {
    typedef uint8_t uint8;
    typedef uint32_t uint32;
    typedef uint16_t uint16;
    typedef uint64_t uint64;
public:
    AD9910Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[7]);
    enum PinIndexMap{
        AD9910CS=0,
        AD9910PF0=1,
        AD9910PF1=2,
        AD9910PF2=3,
        AD9910IOUP=4,
        AD9910PWR=5,
        AD9910RST=6
    };
    void reset();
    bool WriteRegister(uint8 address, uint8 length, uint8 *data,bool disableCS);
    bool ReadRegister(uint8 address, uint8 length, uint8 *buf);
    void Init();
    void setSingleTuneOutput(uint16 amp,double Freq);
    void linearFreqSweep(double Start, double Stop, double seconds);

private:
    void pIOUSet();
    void pIOUReset();
    IAbstractSPI<T> *mSPIHandle;
    IGPIOPin<T> mPinCS;
    IGPIOPin<T> mPinPF0;
    IGPIOPin<T> mPinPF1;
    IGPIOPin<T> mPinPF2;
    IGPIOPin<T> mPinIOUP;
    IGPIOPin<T> mPinPWR;
    IGPIOPin<T> mPinRST;
};
#endif // AFTESTER_SRC_AD9910DRIVER_H_
template <typename T>
void AD9910Driver<T>::reset() {
    mPinRST.set();
    for (int i = 0; i < 255 ; ++i) ;
    mPinRST.reset();
}

template <typename T>
bool AD9910Driver<T>::WriteRegister(uint8 address, uint8 length, uint8 *data,bool disableCS) {
    mSPIHandle->ChangeCSAddress(mPinCS);
    uint8 ad9910cmd = address & 0b01111111;
    uint32 writternCb;
    mSPIHandle->WriteBytes(&ad9910cmd, 1, 1000, false);
    mSPIHandle->WriteBytes(data, length, 1000,disableCS);

    pIOUReset();
    pIOUSet();
    pIOUReset();
    return true;
}

template <typename T>
bool AD9910Driver<T>::ReadRegister(uint8 address, uint8 length, uint8 *buf) {
    mSPIHandle->ChangeCSAddress(mPinCS);
    uint8 ad9910cmd = address | 0b10000000;
    mSPIHandle->WriteBytes(&ad9910cmd, 1, 1000, false);
    mSPIHandle->ReadBytes(buf, length, 1000, true);
		return true;
}

template <typename T>
AD9910Driver<T>::AD9910Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[7]) :
mSPIHandle(SPIHandle),
mPinCS(PinList[AD9910CS]),
mPinIOUP(PinList[AD9910IOUP]),
mPinPF0(PinList[AD9910PF0]),
mPinPF1(PinList[AD9910PF1]),
mPinPF2(PinList[AD9910PF2]),
mPinRST(PinList[AD9910RST]),
mPinPWR(PinList[AD9910PWR])
{
    reset();
    mPinPWR.reset();
    mPinPF0.reset();
    mPinPF1.reset();
    mPinPF2.reset();
}



template <typename T>
void AD9910Driver<T>::pIOUReset() {
    mPinIOUP.reset();
}

template <typename T>
void AD9910Driver<T>::pIOUSet() {
    mPinIOUP.set();
}

template <typename T>
void AD9910Driver<T>::Init() {

    //Set CFR1
    uint8 test[4] = {0, 0x40, 0x00, 0x02};
    WriteRegister(0x00, 4, test, false);

    //Set CFR2
    uint8 test5[4] = {0x01, 0x40, 0x08, 0x20};
    WriteRegister(0x01, 4, test5, false);

    //Set CFR3
    uint8 test3[4] = {0x05, 0x0f, 0x41, 0x32};
    WriteRegister(0x02, 4, test3, false);

    //Set DAC
    uint8 test6[4] = {0x00, 0x00, 0x00, 0xff};
    WriteRegister(0x03, 4, test6, true);


}



template <typename T>
void AD9910Driver<T>::setSingleTuneOutput(uint16 amp, double Freq) {

    uint32 FTW = (uint64) Freq * 4294967296 / 1000000000;
    uint8 profile[8] = {0x00, 0x00, 0x00, 0x00, 0x0a, 0x3d, 0x70, 0xa4};

    profile[0] = 0x00 | (uint8) ((uint16) amp >> 8);
    profile[1] = (uint8) (amp);

    profile[4] = (uint8) (FTW >> 24);
    profile[5] = (uint8) (FTW >> 16);
    profile[6] = (uint8) (FTW >> 8);
    profile[7] = (uint8) (FTW);
    WriteRegister(0x0e, 8, profile, true);
}


template <typename T>
void AD9910Driver<T>::linearFreqSweep(double Start, double Stop, double seconds) {
    if (Stop < Start)
        return;
    uint64 tTimeStep = (seconds * 1000000) / 100.0;
    unsigned points = 1000;
    double tFreqStep = (Stop - Start) / (double) points;
    for (int i = 0; i <= points; i++) {
        setSingleTuneOutput(1024, Start + tFreqStep * i);
//        std::this_thread::sleep_for(std::chrono::microseconds(tTimeStep));
    }
}

