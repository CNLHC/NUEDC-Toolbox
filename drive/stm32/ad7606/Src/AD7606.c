#include "AD7606.h"

uint16_t datatemp[8];//AD7606 data acquisition TEMP
int ch_data[DATA_LENGTH]={1110};

void AD7606_init()
{
    AD7606_SETOS(0X00);//200Kbps
    AD7606_RESET();
    AD7606_CONVST_A_H;
    AD7606_CONVST_B_H;
}

void ADC_Delay(uint32_t nCount) 
{ 
  for(; nCount != 0; nCount--); 
} 

void AD7606_STARTCONV(void)
{
  AD7606_CONVST_A_L;
  AD7606_CONVST_B_L;
  ADC_Delay(0xF);
  AD7606_CONVST_A_H;
  AD7606_CONVST_B_H;
}

uint16_t AD7606_ReadBytes(void)
{
  uint16_t usData = 0;
  for (uint8_t i = 0; i < 16; i++)
  {
    AD7606_SCLK_L;
    usData = usData << 1;
    if(AD7606_DOUTA)
    {
      usData |= 0x0001;
    }
    AD7606_SCLK_H;
  }
  return usData;		
}

void AD7606_RESET(void)
{
  AD7606_RESET_H;
  ADC_Delay(0xFF);
  AD7606_RESET_L;
}

void AD7606_SETOS(uint8_t osv)
{
  switch(osv)
  {
  case 0://000  200Kbps
    AD7606OS0_L;
    AD7606OS1_L;
    AD7606OS2_L;
    break;
  case 1://001
    AD7606OS0_H;
    AD7606OS1_L;
    AD7606OS2_L;
    break;
  case 2://010
    AD7606OS0_L;
    AD7606OS1_H;
    AD7606OS2_L;
    break;
  case 3://011
    AD7606OS0_H;
    AD7606OS1_H;
    AD7606OS2_L;
    break;
  case 4://100
    AD7606OS0_L;
    AD7606OS1_L;
    AD7606OS2_H;
    break;
  case 5://101
    AD7606OS0_H;
    AD7606OS1_L;
    AD7606OS2_H;
    break;
  case 6://110
    AD7606OS0_L;
    AD7606OS1_H;
    AD7606OS2_H;
    break;
  }
}

void Data_Acquire1024(uint8_t ch)
{
    uint16_t data_points = 0;
    AD7606_init();
    while(data_points < DATA_LENGTH/2)
    {
        if(!AD7606_BUSY)
        {
            AD7606_CS_L;
            for(uint8_t i = 0;i < 8;i++)
            {
                datatemp[i]=AD7606_ReadBytes();//Read ADC data
                if(i==ch) 
                {
                ch_data[data_points]=datatemp[i];
                // ch_data[data_points+1]=0;
                data_points += 1;
                }
            }
        AD7606_CS_H;
        AD7606_STARTCONV();
        while(AD7606_BUSY);
        }     
    }
}