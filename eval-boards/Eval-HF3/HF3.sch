EESchema Schematic File Version 4
LIBS:HF3-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Parts:CDPGA_B U1
U 1 1 5D71D0D7
P 1700 2900
F 0 "U1" H 1700 3565 50  0000 C CNN
F 1 "CDPGA_B" H 1700 3474 50  0000 C CNN
F 2 "HF3:CDPGA_B" H 1700 2900 50  0001 C CNN
F 3 "" H 1700 2900 50  0001 C CNN
	1    1700 2900
	1    0    0    -1  
$EndComp
$Comp
L Common-Parts-Library:HF3-91 U2
U 1 1 5D71E0CD
P 5150 2900
F 0 "U2" H 5175 3715 50  0000 C CNN
F 1 "HF3-91" H 5175 3624 50  0000 C CNN
F 2 "footprints:Relay_SPDT_AXICOM_HF3Series_50ohms_Pitch1.27mm_handsolder" H 5150 2900 50  0001 C CNN
F 3 "" H 5150 2900 50  0001 C CNN
	1    5150 2900
	1    0    0    -1  
$EndComp
$Comp
L Common-Parts-Library:HF3-91 U4
U 1 1 5D720B47
P 5150 4550
F 0 "U4" H 5175 5365 50  0000 C CNN
F 1 "HF3-91" H 5175 5274 50  0000 C CNN
F 2 "footprints:Relay_SPDT_AXICOM_HF3Series_50ohms_Pitch1.27mm_handsolder" H 5150 4550 50  0001 C CNN
F 3 "" H 5150 4550 50  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
$Comp
L Common-Parts-Library:HF3-91 U3
U 1 1 5D7215C7
P 7300 3750
F 0 "U3" H 7325 4565 50  0000 C CNN
F 1 "HF3-91" H 7325 4474 50  0000 C CNN
F 2 "footprints:Relay_SPDT_AXICOM_HF3Series_50ohms_Pitch1.27mm_handsolder" H 7300 3750 50  0001 C CNN
F 3 "" H 7300 3750 50  0001 C CNN
	1    7300 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2900 6000 2900
Wire Wire Line
	6000 2900 6000 3650
Wire Wire Line
	6000 3650 6750 3650
Wire Wire Line
	6000 4550 6000 3850
Wire Wire Line
	6000 3850 6750 3850
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5D723F9C
P 3800 2800
F 0 "J2" H 3900 2682 50  0000 L CNN
F 1 "Conn_Coaxial" H 3900 2773 50  0000 L CNN
F 2 "footprints:SMA" H 3800 2800 50  0001 C CNN
F 3 " ~" H 3800 2800 50  0001 C CNN
	1    3800 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5D724EEC
P 3450 3000
F 0 "J3" H 3550 2882 50  0000 L CNN
F 1 "Conn_Coaxial" H 3550 2973 50  0000 L CNN
F 2 "footprints:SMA" H 3450 3000 50  0001 C CNN
F 3 " ~" H 3450 3000 50  0001 C CNN
	1    3450 3000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J6
U 1 1 5D7252FB
P 3850 4450
F 0 "J6" H 3950 4332 50  0000 L CNN
F 1 "Conn_Coaxial" H 3950 4423 50  0000 L CNN
F 2 "footprints:SMA" H 3850 4450 50  0001 C CNN
F 3 " ~" H 3850 4450 50  0001 C CNN
	1    3850 4450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J7
U 1 1 5D725FB6
P 3450 4650
F 0 "J7" H 3550 4532 50  0000 L CNN
F 1 "Conn_Coaxial" H 3550 4623 50  0000 L CNN
F 2 "footprints:SMA" H 3450 4650 50  0001 C CNN
F 3 " ~" H 3450 4650 50  0001 C CNN
	1    3450 4650
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5D72700E
P 8400 3750
F 0 "J4" H 8500 3725 50  0000 L CNN
F 1 "Conn_Coaxial" H 8500 3634 50  0000 L CNN
F 2 "footprints:SMA" H 8400 3750 50  0001 C CNN
F 3 " ~" H 8400 3750 50  0001 C CNN
	1    8400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 3750 7850 3750
Wire Wire Line
	4000 2800 4600 2800
Wire Wire Line
	4600 3000 3650 3000
Wire Wire Line
	4050 4450 4600 4450
Wire Wire Line
	3650 4650 4600 4650
$Comp
L power:GND #PWR06
U 1 1 5D728489
P 3450 4450
F 0 "#PWR06" H 3450 4200 50  0001 C CNN
F 1 "GND" H 3455 4277 50  0000 C CNN
F 2 "" H 3450 4450 50  0001 C CNN
F 3 "" H 3450 4450 50  0001 C CNN
	1    3450 4450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D728F59
P 3850 4250
F 0 "#PWR05" H 3850 4000 50  0001 C CNN
F 1 "GND" H 3855 4077 50  0000 C CNN
F 2 "" H 3850 4250 50  0001 C CNN
F 3 "" H 3850 4250 50  0001 C CNN
	1    3850 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D729165
P 3800 2600
F 0 "#PWR02" H 3800 2350 50  0001 C CNN
F 1 "GND" H 3805 2427 50  0000 C CNN
F 2 "" H 3800 2600 50  0001 C CNN
F 3 "" H 3800 2600 50  0001 C CNN
	1    3800 2600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D72982D
P 3450 2800
F 0 "#PWR03" H 3450 2550 50  0001 C CNN
F 1 "GND" H 3455 2627 50  0000 C CNN
F 2 "" H 3450 2800 50  0001 C CNN
F 3 "" H 3450 2800 50  0001 C CNN
	1    3450 2800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D729B14
P 8400 3950
F 0 "#PWR04" H 8400 3700 50  0001 C CNN
F 1 "GND" H 8405 3777 50  0000 C CNN
F 2 "" H 8400 3950 50  0001 C CNN
F 3 "" H 8400 3950 50  0001 C CNN
	1    8400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2800 8150 3400
Wire Wire Line
	7850 3400 8150 3400
Wire Wire Line
	6700 2800 6700 3200
Wire Wire Line
	6700 3200 6750 3200
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5D72D8AB
P 7450 1350
F 0 "J1" H 7558 1531 50  0000 C CNN
F 1 "Conn_01x02_Male" H 7558 1440 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B02B-XH-A_1x02_P2.50mm_Vertical" H 7450 1350 50  0001 C CNN
F 3 "~" H 7450 1350 50  0001 C CNN
	1    7450 1350
	1    0    0    -1  
$EndComp
Text Label 7650 1350 0    50   ~ 0
5V
$Comp
L power:GND #PWR01
U 1 1 5D72E0CC
P 7800 1450
F 0 "#PWR01" H 7800 1200 50  0001 C CNN
F 1 "GND" H 7805 1277 50  0000 C CNN
F 2 "" H 7800 1450 50  0001 C CNN
F 3 "" H 7800 1450 50  0001 C CNN
	1    7800 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1450 7800 1450
Wire Wire Line
	6100 1950 6100 2550
Wire Wire Line
	6100 2550 5700 2550
Wire Wire Line
	4450 1900 4450 2350
Wire Wire Line
	4450 2350 4600 2350
Text Label 4450 1500 0    50   ~ 0
5V
Text Label 6100 1550 0    50   ~ 0
5V
Text Label 6700 2400 0    50   ~ 0
5V
Text Label 8150 2400 0    50   ~ 0
5V
Text Label 7800 1450 0    50   ~ 0
GND
Text Label 6750 3400 2    50   ~ 0
GND
Text Label 7850 3200 0    50   ~ 0
GND
Text Label 5700 2350 0    50   ~ 0
GND
Text Label 4600 2550 2    50   ~ 0
GND
Text Label 4600 3400 2    50   ~ 0
GND
Text Label 4600 3700 2    50   ~ 0
GND
Wire Wire Line
	4600 3700 4800 3700
Connection ~ 4800 3700
Wire Wire Line
	4800 3700 4900 3700
Connection ~ 4900 3700
Wire Wire Line
	4900 3700 5000 3700
Connection ~ 5000 3700
Wire Wire Line
	5000 3700 5100 3700
Connection ~ 5100 3700
Wire Wire Line
	5100 3700 5200 3700
Connection ~ 5200 3700
Wire Wire Line
	5200 3700 5300 3700
Connection ~ 5300 3700
Wire Wire Line
	5300 3700 5400 3700
Connection ~ 5400 3700
Wire Wire Line
	5400 3700 5500 3700
Wire Wire Line
	4600 5050 4600 5350
Wire Wire Line
	4600 5350 4800 5350
Connection ~ 4800 5350
Wire Wire Line
	4800 5350 4900 5350
Connection ~ 4900 5350
Wire Wire Line
	4900 5350 5000 5350
Connection ~ 5000 5350
Wire Wire Line
	5000 5350 5100 5350
Connection ~ 5100 5350
Wire Wire Line
	5100 5350 5200 5350
Connection ~ 5200 5350
Wire Wire Line
	5200 5350 5300 5350
Connection ~ 5300 5350
Wire Wire Line
	5300 5350 5400 5350
Connection ~ 5400 5350
Wire Wire Line
	5400 5350 5500 5350
Text Label 4600 5350 2    50   ~ 0
GND
Wire Wire Line
	4100 3600 4100 4000
Wire Wire Line
	4100 4000 4600 4000
Wire Wire Line
	6350 4700 5800 4700
Wire Wire Line
	5800 4700 5800 4200
Wire Wire Line
	5800 4200 5700 4200
Wire Wire Line
	6350 4450 6350 4700
Text Label 4100 3200 0    50   ~ 0
5V
Text Label 6350 4050 0    50   ~ 0
5V
Text Label 4600 4200 2    50   ~ 0
GND
Text Label 5700 4000 0    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x08_Counter_Clockwise J5
U 1 1 5D738770
P 1700 3900
F 0 "J5" H 1750 4417 50  0000 C CNN
F 1 "Conn_02x08_Counter_Clockwise_MountingPin" H 1750 4326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 1700 3900 50  0001 C CNN
F 3 "~" H 1700 3900 50  0001 C CNN
	1    1700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2500 900  2500
Wire Wire Line
	900  2500 900  3600
Wire Wire Line
	900  3600 1500 3600
Wire Wire Line
	1100 2600 1000 2600
Wire Wire Line
	1000 2600 1000 3700
Wire Wire Line
	1000 3700 1500 3700
Wire Wire Line
	1100 2700 1050 2700
Wire Wire Line
	1050 2700 1050 3800
Wire Wire Line
	1050 3800 1500 3800
Wire Wire Line
	1100 2800 850  2800
Wire Wire Line
	850  2800 850  3900
Wire Wire Line
	850  3900 1500 3900
Wire Wire Line
	1100 2900 800  2900
Wire Wire Line
	800  2900 800  4000
Wire Wire Line
	800  4000 1500 4000
Wire Wire Line
	1100 3000 750  3000
Wire Wire Line
	750  3000 750  4100
Wire Wire Line
	750  4100 1500 4100
Wire Wire Line
	1100 3100 700  3100
Wire Wire Line
	700  3100 700  4200
Wire Wire Line
	700  4200 1500 4200
Wire Wire Line
	1100 3200 650  3200
Wire Wire Line
	650  3200 650  4300
Wire Wire Line
	650  4300 1350 4300
Wire Wire Line
	2300 2500 2800 2500
Wire Wire Line
	2800 2500 2800 3600
Wire Wire Line
	2800 3600 2000 3600
Wire Wire Line
	2300 2600 2750 2600
Wire Wire Line
	2750 2600 2750 3700
Wire Wire Line
	2750 3700 2000 3700
Wire Wire Line
	2300 2700 2700 2700
Wire Wire Line
	2700 2700 2700 3800
Wire Wire Line
	2700 3800 2000 3800
Wire Wire Line
	2300 2800 2650 2800
Wire Wire Line
	2650 2800 2650 3900
Wire Wire Line
	2650 3900 2000 3900
Wire Wire Line
	2300 2900 2600 2900
Wire Wire Line
	2600 2900 2600 4000
Wire Wire Line
	2600 4000 2000 4000
Wire Wire Line
	2300 3000 2550 3000
Wire Wire Line
	2550 3000 2550 4100
Wire Wire Line
	2550 4100 2000 4100
Wire Wire Line
	2300 3100 2500 3100
Wire Wire Line
	2500 3100 2500 4200
Wire Wire Line
	2500 4200 2000 4200
Wire Wire Line
	2300 3200 2450 3200
Wire Wire Line
	2450 3200 2450 4300
Wire Wire Line
	2450 4300 2300 4300
Text Label 2800 2500 0    50   ~ 0
SET1
Text Label 4150 1700 2    50   ~ 0
SET1
Text Label 2750 2600 0    50   ~ 0
RESET1
Text Label 5800 1750 2    50   ~ 0
RESET1
Text Label 2700 2700 0    50   ~ 0
SET2
Text Label 3800 3400 2    50   ~ 0
SET2
Text Label 6050 4250 2    50   ~ 0
RESET2
Text Label 2600 2900 0    50   ~ 0
SET3
Text Label 6400 2600 2    50   ~ 0
SET3
Text Label 2650 2800 0    50   ~ 0
RESET2
Text Label 7850 2600 2    50   ~ 0
RESET3
Text Label 2550 3000 0    50   ~ 0
RESET3
Text Label 6700 4550 2    50   ~ 0
GND
Wire Wire Line
	6750 4250 6750 4550
Wire Wire Line
	6750 4550 6700 4550
Wire Wire Line
	6750 4550 6950 4550
Connection ~ 6750 4550
Connection ~ 6950 4550
Wire Wire Line
	6950 4550 7050 4550
Connection ~ 7050 4550
Wire Wire Line
	7050 4550 7150 4550
Connection ~ 7150 4550
Wire Wire Line
	7150 4550 7250 4550
Connection ~ 7250 4550
Wire Wire Line
	7250 4550 7350 4550
Connection ~ 7350 4550
Wire Wire Line
	7350 4550 7450 4550
Connection ~ 7450 4550
Wire Wire Line
	7450 4550 7550 4550
Connection ~ 7550 4550
Wire Wire Line
	7550 4550 7650 4550
Wire Wire Line
	6000 4550 5700 4550
$Comp
L Common-Parts-Library:TPS73233 U5
U 1 1 5D408033
P 2000 5450
F 0 "U5" H 2000 5915 50  0000 C CNN
F 1 "TPS73233" H 2000 5824 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 2000 5450 50  0001 C CNN
F 3 "" H 2000 5450 50  0001 C CNN
	1    2000 5450
	1    0    0    -1  
$EndComp
Text Label 1600 5250 2    50   ~ 0
5V
Text Label 1600 5400 2    50   ~ 0
5V
$Comp
L power:GND #PWR09
U 1 1 5D40C63E
P 2500 5550
F 0 "#PWR09" H 2500 5300 50  0001 C CNN
F 1 "GND" H 2505 5377 50  0000 C CNN
F 2 "" H 2500 5550 50  0001 C CNN
F 3 "" H 2500 5550 50  0001 C CNN
	1    2500 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5550 2400 5550
Wire Wire Line
	2400 5250 2550 5250
Wire Wire Line
	2550 5250 2550 5150
Wire Wire Line
	2550 4700 1350 4700
Wire Wire Line
	1350 4700 1350 4300
Connection ~ 1350 4300
Wire Wire Line
	1350 4300 1500 4300
$Comp
L Device:R R1
U 1 1 5D415372
P 2950 5300
F 0 "R1" H 3020 5346 50  0000 L CNN
F 1 "6.8k" H 3020 5255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2880 5300 50  0001 C CNN
F 3 "~" H 2950 5300 50  0001 C CNN
	1    2950 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5150 2550 5150
Connection ~ 2550 5150
Wire Wire Line
	2550 5150 2550 4900
$Comp
L Device:R R2
U 1 1 5D415F53
P 2950 5800
F 0 "R2" H 3020 5846 50  0000 L CNN
F 1 "12k" H 3020 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2880 5800 50  0001 C CNN
F 3 "~" H 2950 5800 50  0001 C CNN
	1    2950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5450 2950 5550
Wire Wire Line
	2950 5950 2650 5950
Wire Wire Line
	2650 5950 2650 5550
Wire Wire Line
	2650 5550 2500 5550
Connection ~ 2500 5550
Wire Wire Line
	2950 5550 3300 5550
Wire Wire Line
	3300 5550 3300 6150
Wire Wire Line
	3300 6150 1450 6150
Wire Wire Line
	1450 6150 1450 5550
Wire Wire Line
	1450 5550 1600 5550
Connection ~ 2950 5550
Wire Wire Line
	2950 5550 2950 5650
$Comp
L Device:C C1
U 1 1 5D42D206
P 2750 4900
F 0 "C1" V 2498 4900 50  0000 C CNN
F 1 "0.1u" V 2589 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2788 4750 50  0001 C CNN
F 3 "~" H 2750 4900 50  0001 C CNN
	1    2750 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4900 2550 4900
Connection ~ 2550 4900
Wire Wire Line
	2550 4900 2550 4700
$Comp
L power:GND #PWR07
U 1 1 5D433230
P 3100 4950
F 0 "#PWR07" H 3100 4700 50  0001 C CNN
F 1 "GND" H 3105 4777 50  0000 C CNN
F 2 "" H 3100 4950 50  0001 C CNN
F 3 "" H 3100 4950 50  0001 C CNN
	1    3100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4950 3100 4900
Wire Wire Line
	3100 4900 2900 4900
$Comp
L Device:C C2
U 1 1 5D4389A9
P 1050 5400
F 0 "C2" H 935 5354 50  0000 R CNN
F 1 "0.1u" H 935 5445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1088 5250 50  0001 C CNN
F 3 "~" H 1050 5400 50  0001 C CNN
	1    1050 5400
	-1   0    0    1   
$EndComp
Text Label 1050 5250 2    50   ~ 0
5V
$Comp
L power:GND #PWR08
U 1 1 5D4391C0
P 1050 5550
F 0 "#PWR08" H 1050 5300 50  0001 C CNN
F 1 "GND" H 1055 5377 50  0000 C CNN
F 2 "" H 1050 5550 50  0001 C CNN
F 3 "" H 1050 5550 50  0001 C CNN
	1    1050 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q4
U 1 1 5D456852
P 8050 2600
F 0 "Q4" H 8256 2646 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 8256 2555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 8250 2700 50  0001 C CNN
F 3 "~" H 8050 2600 50  0001 C CNN
	1    8050 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q3
U 1 1 5D457825
P 6600 2600
F 0 "Q3" H 6806 2646 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6806 2555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6800 2700 50  0001 C CNN
F 3 "~" H 6600 2600 50  0001 C CNN
	1    6600 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 5D4582D2
P 6000 1750
F 0 "Q2" H 6206 1796 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6206 1705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6200 1850 50  0001 C CNN
F 3 "~" H 6000 1750 50  0001 C CNN
	1    6000 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5D458DC7
P 4350 1700
F 0 "Q1" H 4556 1746 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 4556 1655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4550 1800 50  0001 C CNN
F 3 "~" H 4350 1700 50  0001 C CNN
	1    4350 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q5
U 1 1 5D459CE6
P 4000 3400
F 0 "Q5" H 4206 3446 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 4206 3355 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4200 3500 50  0001 C CNN
F 3 "~" H 4000 3400 50  0001 C CNN
	1    4000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q6
U 1 1 5D45AB44
P 6250 4250
F 0 "Q6" H 6456 4296 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6456 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 6450 4350 50  0001 C CNN
F 3 "~" H 6250 4250 50  0001 C CNN
	1    6250 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5D4691CE
P 8600 1300
F 0 "D1" H 8593 1045 50  0000 C CNN
F 1 "LED" H 8593 1136 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8600 1300 50  0001 C CNN
F 3 "~" H 8600 1300 50  0001 C CNN
	1    8600 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5D469B7D
P 8250 1300
F 0 "R3" V 8043 1300 50  0000 C CNN
F 1 "R" V 8134 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 1300 50  0001 C CNN
F 3 "~" H 8250 1300 50  0001 C CNN
	1    8250 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 1300 8450 1300
Text Label 8100 1300 2    50   ~ 0
5V
$Comp
L power:GND #PWR010
U 1 1 5D46FD54
P 8750 1300
F 0 "#PWR010" H 8750 1050 50  0001 C CNN
F 1 "GND" H 8755 1127 50  0000 C CNN
F 2 "" H 8750 1300 50  0001 C CNN
F 3 "" H 8750 1300 50  0001 C CNN
	1    8750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5D498C9B
P 2300 4300
F 0 "#PWR0101" H 2300 4050 50  0001 C CNN
F 1 "GND" H 2305 4127 50  0000 C CNN
F 2 "" H 2300 4300 50  0001 C CNN
F 3 "" H 2300 4300 50  0001 C CNN
	1    2300 4300
	1    0    0    -1  
$EndComp
Connection ~ 2300 4300
Wire Wire Line
	2300 4300 2000 4300
$EndSCHEMATC