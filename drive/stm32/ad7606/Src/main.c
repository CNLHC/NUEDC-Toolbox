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

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#define AD7606OS0_H HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_SET)
#define AD7606OS0_L HAL_GPIO_WritePin(GPIOC, GPIO_PIN_0, GPIO_PIN_RESET)
#define AD7606OS1_H HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1, GPIO_PIN_SET)
#define AD7606OS1_L HAL_GPIO_WritePin(GPIOC, GPIO_PIN_1, GPIO_PIN_RESET)
#define AD7606OS2_H HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_SET)
#define AD7606OS2_L HAL_GPIO_WritePin(GPIOB, GPIO_PIN_2, GPIO_PIN_RESET)

#define AD7606_CONVST_A_H HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_SET)
#define AD7606_CONVST_A_L HAL_GPIO_WritePin(GPIOA, GPIO_PIN_4, GPIO_PIN_RESET)
#define AD7606_CONVST_B_H HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6, GPIO_PIN_SET)
#define AD7606_CONVST_B_L HAL_GPIO_WritePin(GPIOA, GPIO_PIN_6, GPIO_PIN_RESET)

#define AD7606_SCLK_H HAL_GPIO_WritePin(GPIOC,GPIO_PIN_10, GPIO_PIN_SET)
#define AD7606_SCLK_L HAL_GPIO_WritePin(GPIOC,GPIO_PIN_10, GPIO_PIN_RESET)
#define AD7606_RESET_H HAL_GPIO_WritePin(GPIOC,GPIO_PIN_11, GPIO_PIN_SET)
#define AD7606_RESET_L HAL_GPIO_WritePin(GPIOC,GPIO_PIN_11, GPIO_PIN_RESET)
#define AD7606_CS_H HAL_GPIO_WritePin(GPIOC,GPIO_PIN_12, GPIO_PIN_SET)
#define AD7606_CS_L HAL_GPIO_WritePin(GPIOC,GPIO_PIN_12, GPIO_PIN_RESET)

#define AD7606_BUSY HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_4)
#define AD7606_DOUTB HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_7)
#define AD7606_DOUTA HAL_GPIO_ReadPin(GPIOB, GPIO_PIN_6)

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
uint16_t test1,test2;//Waveform array subscript
uint16_t datatemp[8];//AD7606 data acquisition TEMP
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */
void Delay(uint32_t nCount);
void ADC1_Configuration(void);
void AD7606_SETOS(uint8_t osv);
void AD7606_RESET(void);
uint16_t ad7606_ReadBytes(void);
void AD7606_STARTCONV(void);

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
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */
  AD7606_SETOS(0X00);//200Kbps
  AD7606_RESET();
  AD7606_CONVST_A_H;
  AD7606_CONVST_B_H;
  test1=0;
  test2=100;
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
	if(!AD7606_BUSY)
    {
      AD7606_CS_L;
      for(uint8_t i = 0;i < 8;i++)
      {
        datatemp[i]=ad7606_ReadBytes();//Read ADC data
				uint8_t temp_hi=datatemp[i]>>8;
				uint8_t temp_lo=datatemp[i]&0XFF;
				HAL_UART_Transmit(&huart2, &temp_hi, 1, 32);
				HAL_UART_Transmit(&huart2, &temp_lo, 1, 32);
				
      }
      AD7606_CS_H;
      AD7606_STARTCONV();

      while(AD7606_BUSY);
		}
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

  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL9;
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
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, OS0_Pin|OS1_Pin|OS2_Pin|SCLK_Pin 
                          |RESET_Pin|CS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, STA_Pin|STB_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin : KEY0_Pin */
  GPIO_InitStruct.Pin = KEY0_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(KEY0_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : OS0_Pin OS1_Pin OS2_Pin */
  GPIO_InitStruct.Pin = OS0_Pin|OS1_Pin|OS2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : STA_Pin STB_Pin */
  GPIO_InitStruct.Pin = STA_Pin|STB_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pins : SCLK_Pin RESET_Pin CS_Pin */
  GPIO_InitStruct.Pin = SCLK_Pin|RESET_Pin|CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : BUSY_Pin */
  GPIO_InitStruct.Pin = BUSY_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(BUSY_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : OUTA_Pin OUTB_Pin */
  GPIO_InitStruct.Pin = OUTA_Pin|OUTB_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLDOWN;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void Delay(uint32_t nCount) 
{ 
  for(; nCount != 0; nCount--); 
} 

void AD7606_STARTCONV(void)
{
  AD7606_CONVST_A_L;
  AD7606_CONVST_B_L;
  Delay(0xF);
  AD7606_CONVST_A_H;
  AD7606_CONVST_B_H;
}

uint16_t ad7606_ReadBytes(void)
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
  Delay(0xFF);
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
