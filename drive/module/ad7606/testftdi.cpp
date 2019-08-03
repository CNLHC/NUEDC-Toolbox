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
#include "AD7606Driver.hpp"

using namespace std;
auto CheckStatus = [](FT_STATUS ft, const char *s) {
    if (ft == FT_OK)
        return true;
    else {
        printf("FTStatus Chck Error: %s", s);
        return false;
    }
};

int main() {
    Init_libMPSSE();
    FT_HANDLE spiHandle;
    FT_HANDLE GPIOHandle;
    printf("open temp file\n");
    FILE *fp = fopen("/tmp/test.plot", "w");
    FT_STATUS ftStatus;
    printf("open  GPIO Port\n");
    ftStatus = FT_Open(1, &GPIOHandle);
    if (!CheckStatus(ftStatus, "GPIO Port Open"))
        return 0;
    printf("open  SPI Port\n");
    ftStatus = SPI_OpenChannel(0, &spiHandle);
    CheckStatus(ftStatus, "SPI Port Open");

    ftStatus = FT_SetBitMode(GPIOHandle, 0xff, FT_BITMODE_ASYNC_BITBANG);
    unsigned int dummy;
    unsigned char ch = 0x00;
    CheckStatus(ftStatus, "GPIO Init");
    FT_Write(GPIOHandle, &ch, 1, &dummy);

    ChannelConfig spiConf;
    spiConf.ClockRate = 100000;
    spiConf.configOptions = SPI_CONFIG_OPTION_MODE2 | SPI_CONFIG_OPTION_CS_DBUS3 |
                            SPI_CONFIG_OPTION_CS_ACTIVELOW;
    spiConf.LatencyTimer = 0;
    spiConf.Pin = 0;
    ftStatus = SPI_InitChannel(spiHandle, &spiConf);
    CheckStatus(ftStatus, "SPI Init");

    auto gSPI = new ftdiSPI(spiHandle,
                            SPI_CONFIG_OPTION_MODE2 | SPI_CONFIG_OPTION_CS_DBUS3 | SPI_CONFIG_OPTION_CS_ACTIVELOW);
    auto gGPIO = new ftdiGPIO(GPIOHandle);


    auto h7606 = AD7606Driver<uint8_t>(gSPI, 0, gGPIO);
    while (1) {
        auto a = h7606.ReadAllChannels();
        for (int j = 0; j < 8; j++)
            printf("CH%d,%d\n", j + 1, a[j]);
        printf("==================================================\n");
        std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    }
    getchar();
}

