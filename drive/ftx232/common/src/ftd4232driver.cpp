//
// Created by cn on 2019/5/8.
//

#include "../inc/ftd4232driver.h"
#include "ftd2xx.h"
#include "libMPSSE_spi.h"
#include <stdio.h>

void FTD4232driver::listAllDevices() {
  DWORD numDevs;
  DWORD Flags;
  DWORD ID;
  DWORD Type;
  DWORD LocId;
  FT_HANDLE ftHandleTemp;
  FT_STATUS ftStatus;
  char SerialNumber[16];
  char Description[64];

  ftStatus = FT_CreateDeviceInfoList(&numDevs);
  if (ftStatus == FT_OK)
    printf("Number of devices is %d\n", numDevs);
  else
    printf("List Failed");

  if (numDevs > 0) {
    for (int deviceId = 0; deviceId < numDevs; ++deviceId) {
      ftStatus =
          FT_GetDeviceInfoDetail(deviceId, &Flags, &Type, &ID, &LocId,
                                 SerialNumber, Description, &ftHandleTemp);
      if (ftStatus == FT_OK) {
        printf("Dev %d:\n", deviceId);
        printf(" Flags=0x%x\n", Flags);
        printf(" Type=0x%x\n", Type);
        printf(" ID=0x%x\n", ID);
        printf(" LocId=0x%x\n", LocId);
        printf(" SerialNumber=%s\n", SerialNumber);
        printf(" Description=%s\n", Description);
      }
    }
  }
}

void FTD4232driver::listSPIDevices() {
  uint32 channelCounts;
  FT_STATUS ftStatus;

  ftStatus = SPI_GetNumChannels(&channelCounts);
  if (ftStatus == FT_OK) {
    printf("Totally SPI Channels: %d\n", channelCounts);
  }

  for (int i = 0; i < channelCounts; i++) {
    printf("SPI Channel %d Info:\n", i);
    FT_DEVICE_LIST_INFO_NODE cinfo;
    ftStatus = SPI_GetChannelInfo(i, &cinfo);
    if (ftStatus == FT_OK) {
      printf("\t Type=%d\n", cinfo.Type);
      printf("\t ID=%d\n", cinfo.ID);
      printf("\t LocId=%d\n", cinfo.LocId);
      printf("\t SN=%s\n", cinfo.SerialNumber);
      printf("\t Desc=%s\n", cinfo.Description);
    }
  }

}
