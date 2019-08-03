EESchema Schematic File Version 4
LIBS:eval-board-ADA4817-1-cache
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
L Connector:Conn_Coaxial J2
U 1 1 5D1EF0B1
P 3100 2800
F 0 "J2" H 3028 3038 50  0000 C CNN
F 1 "-VIN" H 3028 2947 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 3100 2800 50  0001 C CNN
F 3 " ~" H 3100 2800 50  0001 C CNN
	1    3100 2800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J3
U 1 1 5D1EFD69
P 3100 4100
F 0 "J3" H 3199 3982 50  0000 L CNN
F 1 "+VIN" H 3199 4073 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 3100 4100 50  0001 C CNN
F 3 " ~" H 3100 4100 50  0001 C CNN
	1    3100 4100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5D1F0559
P 4050 2800
F 0 "R5" V 3843 2800 50  0000 C CNN
F 1 "R" V 3934 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3980 2800 50  0001 C CNN
F 3 "~" H 4050 2800 50  0001 C CNN
	1    4050 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5D1F1A6B
P 4300 3050
F 0 "R6" H 4230 3004 50  0000 R CNN
F 1 "R" H 4230 3095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 3050 50  0001 C CNN
F 3 "~" H 4300 3050 50  0001 C CNN
	1    4300 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5D1F1D26
P 3750 3050
F 0 "R2" H 3680 3004 50  0000 R CNN
F 1 "RTN" H 3680 3095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3680 3050 50  0001 C CNN
F 3 "~" H 3750 3050 50  0001 C CNN
	1    3750 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 2800 3750 2800
Wire Wire Line
	4200 2800 4300 2800
Wire Wire Line
	4300 2900 4300 2800
Connection ~ 4300 2800
Wire Wire Line
	4300 2800 5200 2800
Wire Wire Line
	3750 2900 3750 2800
Connection ~ 3750 2800
Wire Wire Line
	3750 2800 3900 2800
$Comp
L power:GNDREF #PWR01
U 1 1 5D1F2C45
P 4050 3400
F 0 "#PWR01" H 4050 3150 50  0001 C CNN
F 1 "GNDREF" H 4055 3227 50  0000 C CNN
F 2 "" H 4050 3400 50  0001 C CNN
F 3 "" H 4050 3400 50  0001 C CNN
	1    4050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3300 3750 3200
Wire Wire Line
	4050 3400 4050 3300
Wire Wire Line
	4050 3300 4300 3300
Wire Wire Line
	4300 3300 4300 3200
Wire Wire Line
	3750 3300 4050 3300
Connection ~ 4050 3300
Wire Wire Line
	3100 3000 3100 3300
Connection ~ 3750 3300
Wire Wire Line
	4650 2650 4300 2650
Wire Wire Line
	4300 2650 4300 2800
$Comp
L Device:C C3
U 1 1 5D1F4AF7
P 4800 2650
F 0 "C3" V 4548 2650 50  0000 C CNN
F 1 "CF" V 4639 2650 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4838 2500 50  0001 C CNN
F 3 "~" H 4800 2650 50  0001 C CNN
	1    4800 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2250 4300 2650
Connection ~ 4300 2650
$Comp
L Device:R R4
U 1 1 5D1F59D6
P 4000 4100
F 0 "R4" V 3793 4100 50  0000 C CNN
F 1 "R" V 3884 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 4100 50  0001 C CNN
F 3 "~" H 4000 4100 50  0001 C CNN
	1    4000 4100
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D1F5ECF
P 3750 3800
F 0 "R3" H 3680 3754 50  0000 R CNN
F 1 "RTP" H 3680 3845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3680 3800 50  0001 C CNN
F 3 "~" H 3750 3800 50  0001 C CNN
	1    3750 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5D1F61A4
P 4300 3800
F 0 "R7" H 4230 3754 50  0000 R CNN
F 1 "R" H 4230 3845 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 3800 50  0001 C CNN
F 3 "~" H 4300 3800 50  0001 C CNN
	1    4300 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 4100 3750 4100
Wire Wire Line
	3100 3900 3100 3300
Connection ~ 3100 3300
Wire Wire Line
	3100 3300 3750 3300
Wire Wire Line
	3750 3650 3750 3300
Wire Wire Line
	4300 3650 4300 3300
Connection ~ 4300 3300
Wire Wire Line
	3750 3950 3750 4100
Connection ~ 3750 4100
Wire Wire Line
	3750 4100 3850 4100
Wire Wire Line
	4150 4100 4300 4100
Wire Wire Line
	4300 4100 4300 3950
Wire Wire Line
	5200 2950 4700 2950
Wire Wire Line
	4700 2950 4700 4100
Wire Wire Line
	4700 4100 4300 4100
Connection ~ 4300 4100
$Comp
L Device:R R9
U 1 1 5D1FDE76
P 6200 3200
F 0 "R9" H 6130 3154 50  0000 R CNN
F 1 "RS" H 6130 3245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6130 3200 50  0001 C CNN
F 3 "~" H 6200 3200 50  0001 C CNN
	1    6200 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5D1FE306
P 6450 2950
F 0 "R11" V 6657 2950 50  0000 C CNN
F 1 "R" V 6566 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6380 2950 50  0001 C CNN
F 3 "~" H 6450 2950 50  0001 C CNN
	1    6450 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5D1FE69B
P 6700 3200
F 0 "R12" H 6630 3154 50  0000 R CNN
F 1 "R" H 6630 3245 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6630 3200 50  0001 C CNN
F 3 "~" H 6700 3200 50  0001 C CNN
	1    6700 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5D1FE9A4
P 6200 3650
F 0 "C5" H 6315 3696 50  0000 L CNN
F 1 "CL" H 6315 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6238 3500 50  0001 C CNN
F 3 "~" H 6200 3650 50  0001 C CNN
	1    6200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5D1FEE0F
P 6550 3850
F 0 "#PWR04" H 6550 3600 50  0001 C CNN
F 1 "GNDREF" H 6555 3677 50  0000 C CNN
F 2 "" H 6550 3850 50  0001 C CNN
F 3 "" H 6550 3850 50  0001 C CNN
	1    6550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2950 6200 2950
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5D201368
P 7500 2950
F 0 "J5" H 7600 2925 50  0000 L CNN
F 1 "VOUT" H 7600 2834 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 7500 2950 50  0001 C CNN
F 3 " ~" H 7500 2950 50  0001 C CNN
	1    7500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 2950 6700 2950
Wire Wire Line
	6200 3050 6200 2950
Connection ~ 6200 2950
Wire Wire Line
	6200 2950 6300 2950
Wire Wire Line
	6700 3050 6700 2950
Connection ~ 6700 2950
Wire Wire Line
	6700 2950 7300 2950
Wire Wire Line
	6200 3500 6200 3350
Wire Wire Line
	6200 3800 6550 3800
Wire Wire Line
	6550 3800 6550 3850
Wire Wire Line
	6700 3350 6700 3800
Wire Wire Line
	6700 3800 6550 3800
Connection ~ 6550 3800
Wire Wire Line
	7500 3150 7500 3800
Wire Wire Line
	7500 3800 6700 3800
Connection ~ 6700 3800
$Comp
L Device:R R10
U 1 1 5D205BE9
P 5500 3550
F 0 "R10" V 5707 3550 50  0000 C CNN
F 1 "R" V 5616 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5430 3550 50  0001 C CNN
F 3 "~" H 5500 3550 50  0001 C CNN
	1    5500 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5D2066B1
P 5850 3550
F 0 "C6" V 5598 3550 50  0000 C CNN
F 1 "C" V 5689 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5888 3400 50  0001 C CNN
F 3 "~" H 5850 3550 50  0001 C CNN
	1    5850 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5D206BCC
P 5700 4000
F 0 "C8" V 5448 4000 50  0000 C CNN
F 1 "C" V 5539 4000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5738 3850 50  0001 C CNN
F 3 "~" H 5700 4000 50  0001 C CNN
	1    5700 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 3700 5700 3700
Wire Wire Line
	5700 3700 5700 3850
Wire Wire Line
	5500 3700 5700 3700
Connection ~ 5700 3700
Wire Wire Line
	5700 4150 5700 4300
Text Label 5700 4300 3    50   ~ 0
VEE
Text Label 5050 3100 2    50   ~ 0
VEE
Text Label 5900 2650 0    50   ~ 0
PD
$Comp
L Amplifier_Operational:ADA4817-1 U1
U 1 1 5D1EE680
P 5550 2850
F 0 "U1" H 5550 3315 50  0000 C CNN
F 1 "ADA4817-1" H 5550 3224 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5550 3100 50  0001 C CNN
F 3 "" H 5550 3100 50  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3400 5700 3400
Wire Wire Line
	5900 3100 5900 3250
Connection ~ 5700 3400
Wire Wire Line
	5700 3400 5500 3400
Text Label 6150 2800 0    50   ~ 0
VCC
Wire Wire Line
	5700 3250 5900 3250
Wire Wire Line
	5700 3250 5700 3400
$Comp
L Device:R R1
U 1 1 5D239622
P 6400 2650
F 0 "R1" H 6330 2604 50  0000 R CNN
F 1 "1kΩ" H 6330 2695 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6330 2650 50  0001 C CNN
F 3 "~" H 6400 2650 50  0001 C CNN
	1    6400 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4750 5350 4750
Connection ~ 4800 4750
Wire Wire Line
	4550 4750 4800 4750
$Comp
L Device:CP1 C10
U 1 1 5D241CFD
P 7400 4950
F 0 "C10" H 7515 4996 50  0000 L CNN
F 1 "10uF" H 7515 4905 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 7400 4950 50  0001 C CNN
F 3 "~" H 7400 4950 50  0001 C CNN
	1    7400 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5D240ED7
P 4800 4900
F 0 "C4" H 4915 4946 50  0000 L CNN
F 1 "10uF" H 4915 4855 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 4800 4900 50  0001 C CNN
F 3 "~" H 4800 4900 50  0001 C CNN
	1    4800 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D20EF4F
P 4200 4900
F 0 "C1" H 4315 4946 50  0000 L CNN
F 1 "0.1uF" H 4315 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4238 4750 50  0001 C CNN
F 3 "~" H 4200 4900 50  0001 C CNN
	1    4200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5200 4550 5200
Text Label 6700 4600 0    50   ~ 0
VEE
Wire Wire Line
	7400 5250 7100 5250
Wire Wire Line
	7400 5100 7400 5250
Connection ~ 7100 5250
Wire Wire Line
	7100 5100 7100 5250
Wire Wire Line
	7100 5250 7100 5300
Wire Wire Line
	6700 5250 7100 5250
Wire Wire Line
	6700 5100 6700 5250
Connection ~ 7100 4750
Wire Wire Line
	7400 4750 7100 4750
Wire Wire Line
	7400 4800 7400 4750
Connection ~ 6700 4750
Wire Wire Line
	7100 4750 6700 4750
Wire Wire Line
	7100 4800 7100 4750
Wire Wire Line
	6700 4750 6700 4800
Wire Wire Line
	5550 4750 6700 4750
Wire Wire Line
	5450 4750 5450 4900
$Comp
L power:GNDREF #PWR03
U 1 1 5D228067
P 5450 4900
F 0 "#PWR03" H 5450 4650 50  0001 C CNN
F 1 "GNDREF" H 5455 4727 50  0000 C CNN
F 2 "" H 5450 4900 50  0001 C CNN
F 3 "" H 5450 4900 50  0001 C CNN
	1    5450 4900
	1    0    0    -1  
$EndComp
Text Label 4800 4600 0    50   ~ 0
VCC
Connection ~ 4550 4750
Wire Wire Line
	4200 4750 4550 4750
Connection ~ 4550 5200
Wire Wire Line
	4800 5200 4550 5200
Wire Wire Line
	4800 5050 4800 5200
Wire Wire Line
	4550 5050 4550 5200
Wire Wire Line
	4200 5050 4200 5200
$Comp
L power:GNDREF #PWR05
U 1 1 5D20FB7F
P 7100 5300
F 0 "#PWR05" H 7100 5050 50  0001 C CNN
F 1 "GNDREF" H 7105 5127 50  0000 C CNN
F 2 "" H 7100 5300 50  0001 C CNN
F 3 "" H 7100 5300 50  0001 C CNN
	1    7100 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR02
U 1 1 5D20F7A0
P 4550 5200
F 0 "#PWR02" H 4550 4950 50  0001 C CNN
F 1 "GNDREF" H 4555 5027 50  0000 C CNN
F 2 "" H 4550 5200 50  0001 C CNN
F 3 "" H 4550 5200 50  0001 C CNN
	1    4550 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5D20F3B0
P 7100 4950
F 0 "C9" H 7215 4996 50  0000 L CNN
F 1 "0.1uF" H 7215 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7138 4800 50  0001 C CNN
F 3 "~" H 7100 4950 50  0001 C CNN
	1    7100 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5D20F0FB
P 6700 4950
F 0 "C7" H 6815 4996 50  0000 L CNN
F 1 "0.1uF" H 6815 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6738 4800 50  0001 C CNN
F 3 "~" H 6700 4950 50  0001 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5D20EE18
P 4550 4900
F 0 "C2" H 4665 4946 50  0000 L CNN
F 1 "0.1uF" H 4665 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4588 4750 50  0001 C CNN
F 3 "~" H 4550 4900 50  0001 C CNN
	1    4550 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5D1EBE00
P 5450 4550
F 0 "J4" V 5512 4694 50  0000 L CNN
F 1 "Conn_01x03_Male" V 5603 4694 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 5450 4550 50  0001 C CNN
F 3 "~" H 5450 4550 50  0001 C CNN
	1    5450 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4600 4800 4750
Wire Wire Line
	6700 4750 6700 4600
Wire Wire Line
	5900 2650 6250 2650
Wire Wire Line
	6550 2650 6550 2800
Wire Wire Line
	5900 2800 6550 2800
Wire Wire Line
	5200 3100 5050 3100
$Comp
L Device:R RF2
U 1 1 5D22C675
P 4600 2050
F 0 "RF2" V 4700 2050 50  0000 C CNN
F 1 "R" V 4500 2050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 2050 50  0001 C CNN
F 3 "~" H 4600 2050 50  0001 C CNN
	1    4600 2050
	0    -1   1    0   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5D22DEC7
P 4600 1600
F 0 "RV1" V 4850 1600 50  0000 C CNN
F 1 "R_POT" V 4500 1600 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4600 1600 50  0001 C CNN
F 3 "~" H 4600 1600 50  0001 C CNN
	1    4600 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4950 2650 5100 2650
Wire Wire Line
	4450 2250 4300 2250
Wire Wire Line
	4450 1850 4300 1850
Wire Wire Line
	4300 1850 4300 2050
Connection ~ 4300 2250
Wire Wire Line
	4450 2050 4300 2050
Connection ~ 4300 2050
Wire Wire Line
	4300 2050 4300 2250
Wire Wire Line
	4450 1600 4300 1600
Wire Wire Line
	4300 1600 4300 1850
Connection ~ 4300 1850
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 5D243A9D
P 4950 1950
F 0 "JP1" V 5000 1450 50  0000 L CNN
F 1 "Jumper_3_Open" V 4950 1150 50  0000 L CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm_NumberLabels" H 4950 1950 50  0001 C CNN
F 3 "~" H 4950 1950 50  0001 C CNN
	1    4950 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5100 1950 5100 2650
Connection ~ 5100 2650
Wire Wire Line
	5100 2650 5200 2650
Wire Wire Line
	4950 1700 4950 1450
Wire Wire Line
	4950 1450 4600 1450
Wire Wire Line
	4950 2200 4800 2200
Wire Wire Line
	4800 2200 4800 2250
Wire Wire Line
	4800 2250 4750 2250
Wire Wire Line
	4750 2050 4800 2050
Wire Wire Line
	4800 2050 4800 2200
Connection ~ 4800 2200
Wire Wire Line
	4750 1850 4800 1850
Wire Wire Line
	4800 1850 4800 2050
Connection ~ 4800 2050
$Comp
L Device:R RF1
U 1 1 5D1F3FF1
P 4600 2250
F 0 "RF1" V 4393 2250 50  0000 C CNN
F 1 "R" V 4484 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 2250 50  0001 C CNN
F 3 "~" H 4600 2250 50  0001 C CNN
	1    4600 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R RF3
U 1 1 5D2342B5
P 4600 1850
F 0 "RF3" V 4500 1850 50  0000 C CNN
F 1 "R" V 4550 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4530 1850 50  0001 C CNN
F 3 "~" H 4600 1850 50  0001 C CNN
	1    4600 1850
	0    1    1    0   
$EndComp
$EndSCHEMATC
