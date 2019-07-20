#include <vector>
#include <chrono>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <thread>
#include <lib/libMPSSE_spi.h>
#include "SPIBridge.h"
#include "GPIOBridge.h"
#include "AD9910Driver.hpp"

using namespace std;
auto CheckStatus = [](FT_STATUS ft, const char *s) {	
	if (ft == FT_OK)
		return true;
    else{
        printf("FTStatus Chck Error: %s", s);
        return false;
    }
};




int main() {
    Init_libMPSSE();
    FT_HANDLE spiHandle;
    FT_HANDLE GPIOHandle;
    FT_HANDLE UartHandle;
    printf("open temp file\n");
    FILE * fp = fopen("/tmp/test.plot","w");
    FT_STATUS ftStatus;
    printf("open  GPIO Port\n");
    ftStatus = FT_Open(3, &GPIOHandle);
    if(!CheckStatus(ftStatus, "GPIO Port Open"))
        return 0;
    ftStatus = FT_Open(1, &UartHandle);
    printf("open  Uart Port\n");
    if(!CheckStatus(ftStatus, "Uart Port Open"))
        return 0;
    FT_SetBaudRate(UartHandle, 115200);
    FT_SetDataCharacteristics(UartHandle, FT_BITS_8, FT_STOP_BITS_1, FT_PARITY_NONE);


    printf("open  SPI Port\n");
    ftStatus = SPI_OpenChannel(0, &spiHandle);
    CheckStatus(ftStatus, "SPI Port Open");

    ftStatus = FT_SetBitMode(GPIOHandle, 0xff, FT_BITMODE_ASYNC_BITBANG);
    unsigned int dummy;
    unsigned  char ch = 0x00;
    CheckStatus(ftStatus, "GPIO Init");
    FT_Write(GPIOHandle,&ch, 1, &dummy);

    ChannelConfig spiConf;
    spiConf.ClockRate = 1500000;
    spiConf.configOptions = SPI_CONFIG_OPTION_MODE2 | SPI_CONFIG_OPTION_CS_DBUS5 |
                            SPI_CONFIG_OPTION_CS_ACTIVELOW;
    spiConf.LatencyTimer = 0;
    spiConf.Pin = 0;
    ftStatus = SPI_InitChannel(spiHandle, &spiConf);
    CheckStatus(ftStatus, "SPI Init");

    auto gSPI= new ftdiSPI(spiHandle,SPI_CONFIG_OPTION_MODE2 | SPI_CONFIG_OPTION_CS_DBUS5 |SPI_CONFIG_OPTION_CS_ACTIVELOW);
    auto gGPIO = new ftdiGPIO(GPIOHandle);

    auto h9910 = AD9910Driver<uint8_t>(gSPI,0,gGPIO);
    auto voltageMapping = [](double voltage)
    {
        return uint16(23.396* voltage  - 26.597);
    };

    printf("Initing 9910\n");
    h9910.Init();
    h9910.setSingleTuneOutput(0x3FFF,150000000);

	getchar();


}

