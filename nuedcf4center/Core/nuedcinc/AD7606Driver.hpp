#ifndef AFTESTER_INC_AD7606DRIVER_H_
#define AFTESTER_INC_AD7606DRIVER_H_

#include "IAbstractSPI.hpp"
#include "IAbstractGPIO.hpp"
#include <vector>


template<typename T>
class AD7606Driver {
public:
    enum OverSampling {
        AD7606_NO_OverSample = 0x0,
        AD7606_2x_OverSample = 0x1,
        AD7606_4x_OverSample = 0x2,
        AD7606_8x_OverSample = 0x3,
        AD7606_16x_OverSample = 0x4,
        AD7606_32x_OverSample = 0x5,
        AD7606_64x_OverSample = 0x6
    };

    /*!
     *
     * @param SPIHandle
     * @param GPIOHandle
     * @param PinList  0-CS 1-RST 2-STA 3-STB
     */
    AD7606Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[4]);
    enum PinIndexMap{
        CS=0,
        RST=1,
        STA=2,
        STB=3
    };

    std::vector<int16_t> ReadAllChannels();

private:
    IAbstractSPI<T> *mSPIHandle;
    IGPIOPin<T> mPinCS;
    IGPIOPin<T> mPinRST;
    IGPIOPin<T> mPinSTA;
    IGPIOPin<T> mPinSTB;
};


template<typename T>
AD7606Driver<T>::AD7606Driver(IAbstractSPI<T> *SPIHandle, IGPIOPin<T> PinList[4])
        : mSPIHandle(SPIHandle),
          mPinCS(PinList[CS]),
          mPinRST(PinList[RST]),
          mPinSTA(PinList[STA]),
          mPinSTB(PinList[STB])
          {
              mPinSTB.reset();
}


template<typename T>
std::vector<int16_t> AD7606Driver<T>::ReadAllChannels() {
    uint8_t buf[16];
    std::vector<int16_t> out;

    mPinSTB.reset();

    // TODO: Hardcoded waiting time
    // for more precised control , refer to 7606 datasheet and pay attention to
    // tconv parameter.

    mPinSTA.reset();
    mPinSTB.reset();

    mSPIHandle->ChangeCSAddress(mPinCS);
    mSPIHandle->ReadBytes(buf, 16, 1000);

    for (int i = 0; i < 8; ++i)
        out.push_back((int16_t) (((uint16_t) buf[2 * i] << 8) | (buf[2 * i + 1])));

    mPinSTA.set();
    mPinSTB.set();

    return std::move(out);
}

#endif // AFTESTER_INC_AD7606DRIVER_H_
