EESchema Schematic File Version 4
LIBS:ADA4522-cache
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
L Device:R R3
U 1 1 5D1BAA4C
P 4450 3050
F 0 "R3" V 4243 3050 50  0000 C CNN
F 1 "R" V 4334 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4380 3050 50  0001 C CNN
F 3 "~" H 4450 3050 50  0001 C CNN
	1    4450 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5D1BB27E
P 4950 3750
F 0 "R7" H 5020 3796 50  0000 L CNN
F 1 "R" H 5020 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4880 3750 50  0001 C CNN
F 3 "~" H 4950 3750 50  0001 C CNN
	1    4950 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D1BBABB
P 4750 3750
F 0 "C1" H 4865 3796 50  0000 L CNN
F 1 "100pF" H 4865 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 3600 50  0001 C CNN
F 3 "~" H 4750 3750 50  0001 C CNN
	1    4750 3750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5D1BCD17
P 4050 3200
F 0 "R11" V 4257 3200 50  0000 C CNN
F 1 "R" V 4166 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 3200 50  0001 C CNN
F 3 "~" H 4050 3200 50  0001 C CNN
	1    4050 3200
	0    1    -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D1BCE46
P 4650 4250
F 0 "#PWR01" H 4650 4000 50  0001 C CNN
F 1 "GND" H 4655 4077 50  0000 C CNN
F 2 "" H 4650 4250 50  0001 C CNN
F 3 "" H 4650 4250 50  0001 C CNN
	1    4650 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5D1C72EF
P 2850 2900
F 0 "J2" H 2778 3138 50  0000 C CNN
F 1 "OUT_A" H 2778 3047 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 2850 2900 50  0001 C CNN
F 3 " ~" H 2850 2900 50  0001 C CNN
	1    2850 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4300 3050 4300 2900
Wire Wire Line
	4600 3050 5050 3050
Wire Wire Line
	5050 2900 4950 2900
Wire Wire Line
	4750 3600 4750 2900
Connection ~ 4750 2900
Wire Wire Line
	4750 2900 4300 2900
Wire Wire Line
	4950 3600 4950 2900
Connection ~ 4950 2900
Wire Wire Line
	4950 2900 4750 2900
Wire Wire Line
	4750 3900 4750 4100
Wire Wire Line
	4750 4100 4650 4100
Wire Wire Line
	4650 4100 4650 4250
Wire Wire Line
	4950 3900 4950 4100
Wire Wire Line
	4950 4100 4750 4100
Connection ~ 4750 4100
Wire Wire Line
	2450 3400 2450 4100
Wire Wire Line
	2450 4100 2850 4100
Wire Wire Line
	2850 3100 2850 4100
Connection ~ 2850 4100
Wire Wire Line
	5000 3350 5050 3350
Connection ~ 4950 4100
Wire Wire Line
	4300 2900 4150 2900
Connection ~ 4300 2900
$Comp
L Device:C C6
U 1 1 5D1F4078
P 3600 2900
F 0 "C6" H 3715 2946 50  0000 L CNN
F 1 "100pF" H 3715 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3638 2750 50  0001 C CNN
F 3 "~" H 3600 2900 50  0001 C CNN
	1    3600 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 2900 3850 2900
Wire Wire Line
	3050 2900 3450 2900
Wire Wire Line
	2650 3200 3750 3200
$Comp
L Device:R R10
U 1 1 5D1F6DF7
P 3750 3400
F 0 "R10" V 3957 3400 50  0000 C CNN
F 1 "R" V 3866 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3680 3400 50  0001 C CNN
F 3 "~" H 3750 3400 50  0001 C CNN
	1    3750 3400
	1    0    0    1   
$EndComp
Wire Wire Line
	4300 3250 4300 3200
Wire Wire Line
	4200 3200 4300 3200
Connection ~ 4300 3200
Wire Wire Line
	4300 3200 5050 3200
Wire Wire Line
	3750 3250 3750 3200
Connection ~ 3750 3200
Wire Wire Line
	3750 3200 3900 3200
Wire Wire Line
	3750 3550 3750 3650
Wire Wire Line
	3750 3650 4050 3650
Wire Wire Line
	4300 3650 4300 3550
Wire Wire Line
	4050 3650 4050 4100
Wire Wire Line
	4050 4100 4650 4100
Connection ~ 4050 3650
Wire Wire Line
	4050 3650 4300 3650
Connection ~ 4650 4100
Wire Wire Line
	2850 4100 4050 4100
Connection ~ 4050 4100
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5D1C6A54
P 2450 3200
F 0 "J1" H 2378 3438 50  0000 C CNN
F 1 "IN_A" H 2378 3347 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 2450 3200 50  0001 C CNN
F 3 " ~" H 2450 3200 50  0001 C CNN
	1    2450 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5D1FE84A
P 6300 3350
F 0 "R9" V 6507 3350 50  0000 C CNN
F 1 "R" V 6416 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 3350 50  0001 C CNN
F 3 "~" H 6300 3350 50  0001 C CNN
	1    6300 3350
	0    1    -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5D1FEE6C
P 6050 3600
F 0 "R8" V 6257 3600 50  0000 C CNN
F 1 "R" V 6166 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 3600 50  0001 C CNN
F 3 "~" H 6050 3600 50  0001 C CNN
	1    6050 3600
	1    0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5D1FF37B
P 6550 3600
F 0 "R6" V 6757 3600 50  0000 C CNN
F 1 "R" V 6666 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6480 3600 50  0001 C CNN
F 3 "~" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    1   
$EndComp
Wire Wire Line
	6050 3450 6050 3350
Connection ~ 6050 3350
Wire Wire Line
	6050 3350 6150 3350
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5D201D36
P 8150 3050
F 0 "J5" H 8078 3288 50  0000 C CNN
F 1 "OUT_B" H 8078 3197 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 8150 3050 50  0001 C CNN
F 3 " ~" H 8150 3050 50  0001 C CNN
	1    8150 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5D207326
P 7750 3350
F 0 "J4" H 7678 3588 50  0000 C CNN
F 1 "IN_B" H 7678 3497 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 7750 3350 50  0001 C CNN
F 3 " ~" H 7750 3350 50  0001 C CNN
	1    7750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3350 6550 3350
Wire Wire Line
	7750 3550 7750 4100
Wire Wire Line
	8150 4100 7750 4100
Connection ~ 7750 4100
$Comp
L Device:C C8
U 1 1 5D20CD40
P 7600 3050
F 0 "C8" H 7715 3096 50  0000 L CNN
F 1 "100pF" H 7715 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7638 2900 50  0001 C CNN
F 3 "~" H 7600 3050 50  0001 C CNN
	1    7600 3050
	0    1    -1   0   
$EndComp
Wire Wire Line
	5850 3350 6050 3350
Wire Wire Line
	6550 1750 7600 1750
Connection ~ 6550 1750
Wire Wire Line
	6550 2100 6550 1750
Wire Wire Line
	6550 2450 6850 2450
Connection ~ 6550 2450
Wire Wire Line
	6550 2400 6550 2450
Connection ~ 6850 2450
Wire Wire Line
	6300 2450 6550 2450
Wire Wire Line
	6300 2400 6300 2450
Wire Wire Line
	6300 1750 6550 1750
Connection ~ 6300 1750
Wire Wire Line
	6300 2100 6300 1750
$Comp
L Device:C C2
U 1 1 5D1DDD6E
P 6300 2250
F 0 "C2" H 6415 2296 50  0000 L CNN
F 1 "10uf" H 6415 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6338 2100 50  0001 C CNN
F 3 "~" H 6300 2250 50  0001 C CNN
	1    6300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D1DD870
P 6550 2250
F 0 "C3" H 6665 2296 50  0000 L CNN
F 1 "0.1uf" H 6665 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6588 2100 50  0001 C CNN
F 3 "~" H 6550 2250 50  0001 C CNN
	1    6550 2250
	1    0    0    -1  
$EndComp
Connection ~ 7200 2450
Wire Wire Line
	6850 2450 7200 2450
Wire Wire Line
	6850 2400 6850 2450
Wire Wire Line
	6850 1950 7200 1950
Connection ~ 6850 1950
Wire Wire Line
	6850 2100 6850 1950
$Comp
L Device:C C4
U 1 1 5D1DCAC1
P 6850 2250
F 0 "C4" H 6965 2296 50  0000 L CNN
F 1 "10uf" H 6965 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6888 2100 50  0001 C CNN
F 3 "~" H 6850 2250 50  0001 C CNN
	1    6850 2250
	1    0    0    -1  
$EndComp
Connection ~ 7400 2450
Wire Wire Line
	7200 2450 7400 2450
Wire Wire Line
	7200 2400 7200 2450
Wire Wire Line
	7200 1950 7600 1950
Connection ~ 7200 1950
Wire Wire Line
	7200 2100 7200 1950
Wire Wire Line
	5000 1950 6850 1950
Wire Wire Line
	7400 1850 7400 2450
Wire Wire Line
	5850 1750 6300 1750
$Comp
L Device:C C5
U 1 1 5D1D659F
P 7200 2250
F 0 "C5" H 7315 2296 50  0000 L CNN
F 1 "0.1uf" H 7315 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7238 2100 50  0001 C CNN
F 3 "~" H 7200 2250 50  0001 C CNN
	1    7200 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1850 7400 1850
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5D1D0B75
P 7800 1850
F 0 "J3" H 7772 1874 50  0000 R CNN
F 1 "Conn_01x03_Male" H 7772 1783 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 7800 1850 50  0001 C CNN
F 3 "~" H 7800 1850 50  0001 C CNN
	1    7800 1850
	-1   0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:ADA4522-2 U1
U 1 1 5D1B6B77
P 5450 3100
F 0 "U1" H 5450 3525 50  0000 C CNN
F 1 "ADA4522-2" H 5450 3434 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5450 2750 50  0001 C CNN
F 3 "" H 5450 2750 50  0001 C CNN
	1    5450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4100 6050 4100
Wire Wire Line
	5000 1950 5000 3350
Wire Wire Line
	5850 1750 5850 2900
Wire Wire Line
	7400 2450 7400 4100
Connection ~ 7400 4100
Wire Wire Line
	7400 4100 7750 4100
Wire Wire Line
	8150 3250 8150 4100
Wire Wire Line
	7750 3050 7950 3050
Wire Wire Line
	7450 3050 7200 3050
Wire Wire Line
	6900 3050 6750 3050
$Comp
L Device:R R4
U 1 1 5D21C88C
P 6600 3200
F 0 "R4" V 6807 3200 50  0000 C CNN
F 1 "R" V 6716 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6530 3200 50  0001 C CNN
F 3 "~" H 6600 3200 50  0001 C CNN
	1    6600 3200
	0    1    -1   0   
$EndComp
Wire Wire Line
	6750 3200 6750 3050
Connection ~ 6750 3050
Wire Wire Line
	6750 3050 5850 3050
Wire Wire Line
	5850 3200 6450 3200
$Comp
L Device:C C7
U 1 1 5D21F1D3
P 6900 3650
F 0 "C7" H 7015 3696 50  0000 L CNN
F 1 "100pF" H 7015 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6938 3500 50  0001 C CNN
F 3 "~" H 6900 3650 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3500 6900 3050
Connection ~ 6900 3050
Wire Wire Line
	6900 3800 6900 4100
Connection ~ 6900 4100
Wire Wire Line
	6900 4100 7400 4100
Wire Wire Line
	6550 3450 6550 3350
Connection ~ 6550 3350
Wire Wire Line
	6550 3350 7550 3350
Wire Wire Line
	6050 3750 6050 4100
Connection ~ 6050 4100
Wire Wire Line
	6050 4100 6550 4100
Wire Wire Line
	6550 3750 6550 4100
Connection ~ 6550 4100
Wire Wire Line
	6550 4100 6900 4100
$Comp
L Device:R R1
U 1 1 5D1F3513
P 4000 2900
F 0 "R1" V 3793 2900 50  0000 C CNN
F 1 "R" V 3884 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3930 2900 50  0001 C CNN
F 3 "~" H 4000 2900 50  0001 C CNN
	1    4000 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5D1F8F1E
P 4300 3400
F 0 "R2" V 4507 3400 50  0000 C CNN
F 1 "R" V 4416 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4230 3400 50  0001 C CNN
F 3 "~" H 4300 3400 50  0001 C CNN
	1    4300 3400
	1    0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5D20D5E1
P 7050 3050
F 0 "R5" V 6843 3050 50  0000 C CNN
F 1 "R" V 6934 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 3050 50  0001 C CNN
F 3 "~" H 7050 3050 50  0001 C CNN
	1    7050 3050
	0    1    1    0   
$EndComp
$EndSCHEMATC
