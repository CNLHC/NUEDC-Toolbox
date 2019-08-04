/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define AD9910PF0_Pin GPIO_PIN_3
#define AD9910PF0_GPIO_Port GPIOE
#define AD9910IOUP_Pin GPIO_PIN_4
#define AD9910IOUP_GPIO_Port GPIOE
#define USER_Btn_Pin GPIO_PIN_13
#define USER_Btn_GPIO_Port GPIOC
#define DAC8563LDAC_Pin GPIO_PIN_0
#define DAC8563LDAC_GPIO_Port GPIOF
#define AD9910CS_Pin GPIO_PIN_1
#define AD9910CS_GPIO_Port GPIOF
#define DAC8563CS_Pin GPIO_PIN_2
#define DAC8563CS_GPIO_Port GPIOF
#define AD7606STA_Pin GPIO_PIN_6
#define AD7606STA_GPIO_Port GPIOF
#define AD7606STB_Pin GPIO_PIN_7
#define AD7606STB_GPIO_Port GPIOF
#define MCO_Pin GPIO_PIN_0
#define MCO_GPIO_Port GPIOH
#define RMII_MDC_Pin GPIO_PIN_1
#define RMII_MDC_GPIO_Port GPIOC
#define RMII_MDIO_Pin GPIO_PIN_2
#define RMII_MDIO_GPIO_Port GPIOA
#define RMII_RXD0_Pin GPIO_PIN_4
#define RMII_RXD0_GPIO_Port GPIOC
#define RMII_RXD1_Pin GPIO_PIN_5
#define RMII_RXD1_GPIO_Port GPIOC
#define AD9959PWR_Pin GPIO_PIN_0
#define AD9959PWR_GPIO_Port GPIOG
#define AD9959CS_Pin GPIO_PIN_1
#define AD9959CS_GPIO_Port GPIOG
#define RMII_TXD1_Pin GPIO_PIN_13
#define RMII_TXD1_GPIO_Port GPIOB
#define LD3_Pin GPIO_PIN_14
#define LD3_GPIO_Port GPIOB
#define STLK_RX_Pin GPIO_PIN_8
#define STLK_RX_GPIO_Port GPIOD
#define STLK_TX_Pin GPIO_PIN_9
#define STLK_TX_GPIO_Port GPIOD
#define AD9910RST_Pin GPIO_PIN_2
#define AD9910RST_GPIO_Port GPIOG
#define AD9910PF1_Pin GPIO_PIN_3
#define AD9910PF1_GPIO_Port GPIOG
#define USB_PowerSwitchOn_Pin GPIO_PIN_6
#define USB_PowerSwitchOn_GPIO_Port GPIOG
#define USB_OverCurrent_Pin GPIO_PIN_7
#define USB_OverCurrent_GPIO_Port GPIOG
#define LD1_Pin GPIO_PIN_9
#define LD1_GPIO_Port GPIOC
#define USB_SOF_Pin GPIO_PIN_8
#define USB_SOF_GPIO_Port GPIOA
#define USB_VBUS_Pin GPIO_PIN_9
#define USB_VBUS_GPIO_Port GPIOA
#define USB_ID_Pin GPIO_PIN_10
#define USB_ID_GPIO_Port GPIOA
#define USB_DM_Pin GPIO_PIN_11
#define USB_DM_GPIO_Port GPIOA
#define USB_DP_Pin GPIO_PIN_12
#define USB_DP_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define AD7606RST_Pin GPIO_PIN_15
#define AD7606RST_GPIO_Port GPIOA
#define AD9959IOUP_Pin GPIO_PIN_0
#define AD9959IOUP_GPIO_Port GPIOD
#define DAC8563CLR_Pin GPIO_PIN_1
#define DAC8563CLR_GPIO_Port GPIOD
#define AD7606CS_Pin GPIO_PIN_2
#define AD7606CS_GPIO_Port GPIOD
#define AD9910PWR_Pin GPIO_PIN_6
#define AD9910PWR_GPIO_Port GPIOD
#define AD9910PF2_Pin GPIO_PIN_7
#define AD9910PF2_GPIO_Port GPIOD
#define AD9959AlterCS_Pin GPIO_PIN_10
#define AD9959AlterCS_GPIO_Port GPIOG
#define RMII_TX_EN_Pin GPIO_PIN_11
#define RMII_TX_EN_GPIO_Port GPIOG
#define RMII_TXD0_Pin GPIO_PIN_13
#define RMII_TXD0_GPIO_Port GPIOG
#define LD2_Pin GPIO_PIN_7
#define LD2_GPIO_Port GPIOB
#define AD9959RST_Pin GPIO_PIN_1
#define AD9959RST_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
