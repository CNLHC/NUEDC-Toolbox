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

    AD7606Driver(IAbstractSPI *SPIHandle, uint16 CsAddress, IAbstractGPIO<T> *GPIOHandle);

    std::vector<int16_t> ReadAllChannels();

private:
    IAbstractSPI *mSPIHandle;
    IAbstractGPIO<T> *mGPIOHandle;
    uint16 mCsAddress;
    uint8 mPinConA;
    uint8 mPinConB;
};


template<typename T>
AD7606Driver<T>::AD7606Driver(IAbstractSPI *SPIHandle, uint16 CAddress, IAbstractGPIO<T> *GPIOHandle)
        : mSPIHandle(SPIHandle),
          mGPIOHandle(GPIOHandle),
          mCsAddress(CAddress) {

}


template<typename T>
std::vector<int16_t> AD7606Driver<T>::ReadAllChannels() {
    uint8 buf[16];
    std::vector<int16_t> out;

    mGPIOHandle->SetBit(4);
    mGPIOHandle->SetBit(5);

    // TODO: Hardcoded waiting time
    // for more precised control , refer to 7606 datasheet and pay attention to
    // tconv parameter.

    mGPIOHandle->ReSetBit(1);
    mGPIOHandle->ReSetBit(3);

//    mSPIHandle->ChangeCSAddress(this->mCsAddress);
    mSPIHandle->ReadBytes(buf,16,1000);

    for (int i = 0; i < 8; ++i)
        out.push_back((int16) (((uint16) buf[2 * i] << 8) | (buf[2 * i + 1])));

    mGPIOHandle->SetBit(1);
    mGPIOHandle->SetBit(3);

    return std::move(out);
}

#endif // AFTESTER_INC_AD7606DRIVER_H_
