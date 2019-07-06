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

#endif
