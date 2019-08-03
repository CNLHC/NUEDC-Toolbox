/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "eth.h"
#include "spi.h"
#include "usart.h"
#include "usb_otg.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "GPIOBridge.h"
#include "SPIBridge.h"
#include "AD7606Driver.hpp"
#include "AD9910Driver.hpp"
#include "DAC8563Driver.hpp"
#include "AD9959Driver.hpp"
#include <cstdio>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
extern SPI_HandleTypeDef hspi1;

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ETH_Init();
  MX_USART3_UART_Init();
  MX_USB_OTG_FS_PCD_Init();
  MX_SPI1_Init();
  MX_SPI3_Init();
  MX_SPI4_Init();
  /* USER CODE BEGIN 2 */
  auto hGPIOA = new HALF1Bridge(GPIOA);
  auto hGPIOB = new HALF1Bridge(GPIOB);
  auto hGPIOC = new HALF1Bridge(GPIOC);
  auto hGPIOD = new HALF1Bridge(GPIOD);
  auto hGPIOE = new HALF1Bridge(GPIOE);
  auto hGPIOF = new HALF1Bridge(GPIOF);
  auto hGPIOG = new HALF1Bridge(GPIOG);
  auto hSPI1 = new HALF1SPIBridge(&hspi1);

  IGPIOPin<uint16_t> PinCfgAD7606[4]={
		  IGPIOPin<uint16_t>(hGPIOD,2),
		  IGPIOPin<uint16_t>(hGPIOA,13),
		  IGPIOPin<uint16_t>(hGPIOF,6),
		  IGPIOPin<uint16_t>(hGPIOF,7),
  };

  IGPIOPin<uint16_t> PinCfgAD9910[7]={
		  IGPIOPin<uint16_t>(hGPIOF,1),
		  IGPIOPin<uint16_t>(hGPIOE,3),
		  IGPIOPin<uint16_t>(hGPIOG,3),
		  IGPIOPin<uint16_t>(hGPIOD,7),
		  IGPIOPin<uint16_t>(hGPIOE,4),
		  IGPIOPin<uint16_t>(hGPIOD,6),
		  IGPIOPin<uint16_t>(hGPIOG,2),
  };

  IGPIOPin<uint16_t> PinCfgDAC8563[3]={
		  IGPIOPin<uint16_t>(hGPIOF,2),
		  IGPIOPin<uint16_t>(hGPIOF,0),
		  IGPIOPin<uint16_t>(hGPIOD,1),
  };

  //CS-IOUP-PWR-RST
  IGPIOPin<uint16_t> PinCfgAD9959[4]={
		  IGPIOPin<uint16_t>(hGPIOG,10),
		  IGPIOPin<uint16_t>(hGPIOD,0),
		  IGPIOPin<uint16_t>(hGPIOG,0),
		  IGPIOPin<uint16_t>(hGPIOE,1),
  };


  uint8_t db[4];
  auto hAD7606 = AD7606Driver<uint16_t>(hSPI1,PinCfgAD7606);
  auto hAD9910 = AD9910Driver<uint16_t>(hSPI1,PinCfgAD9910);
  auto hDAC8563 = DAC8563Driver<uint16_t> (hSPI1,PinCfgDAC8563);
  auto hAD9959 = AD9959Driver<uint16_t> (hSPI1,PinCfgAD9959);
//  hAD9910.Init();
//  hDAC8563.Init();
  hAD9959.Init();

//  hAD9910.setSingleTuneOutput()tput(0x3fff,233333333);
  uint8_t a;



  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */
//	  hAD9910.ReadRegister(0x01, 4, db);
//	  for (auto &i : db)
//		  printf("0x%x\n", i);
//	  HAL_Delay(1000);
//	  auto a = hAD7606.ReadAllChannels();
//	  for(auto &i :a)
//		  printf("%d, ",i);
//
//	  printf("\n");

//	  hDAC8563.setDualChannelValue(2.23);
//	  HAL_Delay(1000);
//
//	  hAD9910.ReadRegister(0x01, 4, db);
//	  for (auto &i : db)
//		  printf("0x%x\n", i);
//



	  hAD9959.setSingleOutput(0x9FFFFFFF);
	  HAL_Delay(1000);
	  hAD9959.ReadRegister(AD9959Driver<uint16_t>::AD9959CSR,1,&a);
	  HAL_Delay(1000);



    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 168;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
