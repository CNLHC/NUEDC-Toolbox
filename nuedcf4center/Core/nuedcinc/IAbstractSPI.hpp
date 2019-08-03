//
// Created by cn on 2019/7/3.
//

#include <stdint.h>

#ifndef DRIVE_IABSTRACTSPI_H
#define DRIVE_IABSTRACTSPI_H

template <typename T>
class IAbstractSPI {
public:
    IAbstractSPI(){};
    virtual ~IAbstractSPI(){}
    typedef uint16_t CSAddr;
    /*!
     * read some bytes
     * @param buf  data buffer
     * @param bytes  read length
     * @param timeout  timeout threshold
     */
    virtual  void ReadBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout )=0;
    /*!
     * read some bytes. if disableCS is true, after read, the chip select line will be disabled, which
     * commonly means to bring it high.
     *
     * @param buf data buf
     * @param bytes size to Read
     * @param timeout timeout threshold
     * @param disableCS  if disable chip select line after transfer
     */
    virtual  void ReadBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout ,bool disableCS)=0;
    /*!
     * write some bytes.
     *
     * @param buf data to be written
     * @param bytes size to be transferred
     * @param timeout timeout threshold
     */
    virtual  void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout )=0;
    /*!
     * write some bytes. and determine disable/enable chip select after transfer manually.
     *
     * @param buf data buf
     * @param bytes size to Read
     * @param timeout timeout threshold
     * @param disableCS  if disable chip select line after transfer
     */
    virtual  void WriteBytes (uint8_t * buf ,uint16_t bytes,uint16_t timeout , bool csDisable)=0;

     /*!
      * change current focused cs
      *
      * @param address  cs address
      */

    virtual void ChangeCSAddress(IGPIOPin<T> cs)=0;

};

#endif //DRIVE_IABSTRACTSPI_H
