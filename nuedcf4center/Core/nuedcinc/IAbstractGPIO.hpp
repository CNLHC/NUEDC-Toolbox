#include <stdint.h>
#ifndef DRIVER_IABSTRACTGPIO_HPP
#define DRIVER_IABSTRACTGPIO_HPP

template <typename T>
class IAbstractGPIO{
public:
    ~IAbstractGPIO(){};
    IAbstractGPIO(){};
    virtual void WriteGPIO(T port){};
    virtual void ReadGPIO(T &port){};
    virtual void SetBit(uint32_t bitAddress);
    virtual void ReSetBit(uint32_t bitAddress);
};

template <typename T>
void IAbstractGPIO<T>::SetBit(uint32_t bitAddr) {
    T previousState;
    T newState;
    this->ReadGPIO(previousState);
    newState = (((unsigned)1 << bitAddr)) | previousState;
    this->WriteGPIO(newState);
}

template <typename T>
void IAbstractGPIO<T>::ReSetBit(uint32_t bitAddr) {
    T previousState;
    T newState;
    this->ReadGPIO(previousState);
    newState = (~((unsigned)1 <<bitAddr)) & previousState;
    this->WriteGPIO(newState);
}

template <typename T>
class IGPIOPin{
       IAbstractGPIO<T> *mHandle;
       uint16_t mAddress;
    public:
        IGPIOPin():mHandle(0){}
        IGPIOPin(IAbstractGPIO<T> *GPIOHandle,uint16_t Address):mHandle(GPIOHandle),mAddress(Address){ };
        IGPIOPin(const IGPIOPin<T> &p):mHandle(p.mHandle),mAddress(p.mAddress){ };
        void set(){
            if(mHandle)
                mHandle->SetBit(mAddress);
        }
        void reset(){
            if(mHandle)
                mHandle->ReSetBit(mAddress);
        }
};
#endif
