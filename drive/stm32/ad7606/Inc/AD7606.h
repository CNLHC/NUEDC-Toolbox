#ifndef __AD7606_H
#define __AD7606_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

#define AD7606OS0_H HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, GPIO_PIN_SET)
#define AD7606OS0_L HAL_GPIO_WritePin(GPIOE, GPIO_PIN_2, GPIO_PIN_RESET)
#define AD7606OS1_H HAL_GPIO_WritePin(GPIOE, GPIO_PIN_4, GPIO_PIN_SET)
#define AD7606OS1_L HAL_GPIO_WritePin(GPIOE, GPIO_PIN_4, GPIO_PIN_RESET)
#define AD7606OS2_H HAL_GPIO_WritePin(GPIOE, GPIO_PIN_5, GPIO_PIN_SET)
#define AD7606OS2_L HAL_GPIO_WritePin(GPIOE, GPIO_PIN_5, GPIO_PIN_RESET)

#define AD7606_CONVST_A_H HAL_GPIO_WritePin(GPIOE, GPIO_PIN_6, GPIO_PIN_SET)
#define AD7606_CONVST_A_L HAL_GPIO_WritePin(GPIOE, GPIO_PIN_6, GPIO_PIN_RESET)
#define AD7606_CONVST_B_H HAL_GPIO_WritePin(GPIOE, GPIO_PIN_3, GPIO_PIN_SET)
#define AD7606_CONVST_B_L HAL_GPIO_WritePin(GPIOE, GPIO_PIN_3, GPIO_PIN_RESET)

#define AD7606_SCLK_H HAL_GPIO_WritePin(GPIOF,GPIO_PIN_7, GPIO_PIN_SET)
#define AD7606_SCLK_L HAL_GPIO_WritePin(GPIOF,GPIO_PIN_7, GPIO_PIN_RESET)
#define AD7606_RESET_H HAL_GPIO_WritePin(GPIOF,GPIO_PIN_8, GPIO_PIN_SET)
#define AD7606_RESET_L HAL_GPIO_WritePin(GPIOF,GPIO_PIN_8, GPIO_PIN_RESET)
#define AD7606_CS_H HAL_GPIO_WritePin(GPIOF,GPIO_PIN_9, GPIO_PIN_SET)
#define AD7606_CS_L HAL_GPIO_WritePin(GPIOF,GPIO_PIN_9, GPIO_PIN_RESET)

#define AD7606_BUSY HAL_GPIO_ReadPin(GPIOG, GPIO_PIN_1)
#define AD7606_DOUTA HAL_GPIO_ReadPin(GPIOG, GPIO_PIN_0)
#define AD7606_DOUTB HAL_GPIO_ReadPin(GPIOD, GPIO_PIN_1)

#define DATA_LENGTH 2048

void AD7606_init();
void ADC_Delay(uint32_t nCount);
void ADC1_Configuration(void);
void AD7606_SETOS(uint8_t osv);
void AD7606_RESET(void);
uint16_t AD7606_ReadBytes(void);
void AD7606_STARTCONV(void);
void Data_Acquire1024(uint8_t ch);


#ifdef __cplusplus
}
#endif

#endif 