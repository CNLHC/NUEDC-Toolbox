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
    AD9910Driver(IAbstractSPI *SPIHandle,uint16 CsAddress,IAbstractGPIO<T> *GPIOHandle );
    bool WriteRegister(uint8 address, uint8 length, uint8 *data);
    bool ReadRegister(uint8 address, uint8 length, uint8 *buf);
    void Init();
    void setSingleTuneOutput(uint16 amp,double Freq);
    void linearFreqSweep(double Start, double Stop, double seconds);

private:
    void pIOUSet();
    void pIOUReset();
    IAbstractSPI *mSPIHandle;
    IAbstractGPIO<T> *mGPIOHandle;
    uint8  mIOUpdatePinNo;
    uint32 mMPSSEConfig;
    uint16 mCsAddress;
};

#endif // AFTESTER_SRC_AD9910DRIVER_H_

template <typename T>
bool AD9910Driver<T>::WriteRegister(uint8 address, uint8 length, uint8 *data) {
    mSPIHandle->ChangeCSAddress(this->mCsAddress);
    uint8 ad9910cmd = address & 0b01111111;
    uint32 writternCb;
    mSPIHandle->WriteBytes(&ad9910cmd, 1, 1000, false);
    mSPIHandle->WriteBytes(data, length, 1000, true);
	
    pIOUReset();

    pIOUSet();


    pIOUReset();
    return true;
}

template <typename T>
bool AD9910Driver<T>::ReadRegister(uint8 address, uint8 length, uint8 *buf) {
    mSPIHandle->ChangeCSAddress(this->mCsAddress);
    uint8 ad9910cmd = address | 0b10000000;
    mSPIHandle->WriteBytes(&ad9910cmd, 1, 1000);
    mSPIHandle->ReadBytes(buf, length, 1000, true);
		return true;
}

template <typename T>
AD9910Driver<T>::AD9910Driver(IAbstractSPI *SPIHandle,
                           uint16 CSAddress,
                          IAbstractGPIO<T>*GPIOHandle) : mCsAddress(CSAddress),
                                                 mSPIHandle(SPIHandle),
                                                 mGPIOHandle(GPIOHandle)
{}



template <typename T>
void AD9910Driver<T>::pIOUReset() {
//    mBitMode.BitReset(mGPIOHandle, mIOUpdatePinNo);
    mGPIOHandle->ReSetBit(3);
}

template <typename T>
void AD9910Driver<T>::pIOUSet() {
//    mBitMode.BitSet(mGPIOHandle, mIOUpdatePinNo);
    mGPIOHandle->SetBit(3);
}

template <typename T>
void AD9910Driver<T>::Init() {
    //Set CFR1
    uint8 test[4] = {0, 0x40, 0x00, 0x02};
    WriteRegister(0x00, 4, test);

    //Set CFR2
    uint8 test5[4] = {0x01, 0x40, 0x08, 0x20};
    WriteRegister(0x01, 4, test5);

    //Set CFR3
    uint8 test3[4] = {0x05, 0x0f, 0x41, 0x32};
    WriteRegister(0x02, 4, test3);

    //Set DAC
    uint8 test6[4] = {0x00, 0x00, 0x00, 0xff};
    WriteRegister(0x03, 4, test6);

//  For Test
    uint8 db[4];
    ReadRegister(0x01, 4, db);
//    for (auto &i : db)
//        printf("0x%x\n", i);
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
    WriteRegister(0x0e, 8, profile);
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

