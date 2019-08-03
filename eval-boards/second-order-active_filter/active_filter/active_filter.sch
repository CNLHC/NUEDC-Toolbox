EESchema Schematic File Version 4
LIBS:active_filter-cache
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
L Device:C C3
U 1 1 5D205F37
P 5100 2150
F 0 "C3" H 5215 2196 50  0000 L CNN
F 1 "C" H 5215 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5138 2000 50  0001 C CNN
F 3 "~" H 5100 2150 50  0001 C CNN
	1    5100 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5D2063DD
P 4300 1850
F 0 "R1" V 4093 1850 50  0000 C CNN
F 1 "R" V 4184 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 1850 50  0001 C CNN
F 3 "~" H 4300 1850 50  0001 C CNN
	1    4300 1850
	0    1    1    0   
$EndComp
$Comp
L Device:CP1 C4
U 1 1 5D2069DB
P 4700 6450
F 0 "C4" H 4585 6404 50  0000 R CNN
F 1 "10uF" H 4585 6495 50  0000 R CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 4700 6450 50  0001 C CNN
F 3 "~" H 4700 6450 50  0001 C CNN
	1    4700 6450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D206F21
P 5100 2400
F 0 "#PWR01" H 5100 2150 50  0001 C CNN
F 1 "GND" H 5105 2227 50  0000 C CNN
F 2 "" H 5100 2400 50  0001 C CNN
F 3 "" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5D2079DF
P 3550 1850
F 0 "J1" H 3478 2088 50  0000 C CNN
F 1 "IN_A" H 3478 1997 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 3550 1850 50  0001 C CNN
F 3 " ~" H 3550 1850 50  0001 C CNN
	1    3550 1850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J2
U 1 1 5D20801B
P 3650 3650
F 0 "J2" H 3578 3888 50  0000 C CNN
F 1 "IN_B" H 3578 3797 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 3650 3650 50  0001 C CNN
F 3 " ~" H 3650 3650 50  0001 C CNN
	1    3650 3650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5D208C37
P 5050 5600
F 0 "J3" V 5112 5412 50  0000 R CNN
F 1 "Conn_01x03_Male" V 5203 5412 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5050 5600 50  0001 C CNN
F 3 "~" H 5050 5600 50  0001 C CNN
	1    5050 5600
	0    -1   1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D20A9BB
P 4800 1850
F 0 "R3" V 4593 1850 50  0000 C CNN
F 1 "R" V 4684 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 1850 50  0001 C CNN
F 3 "~" H 4800 1850 50  0001 C CNN
	1    4800 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2400 5100 2350
Wire Wire Line
	5700 1850 5100 1850
Wire Wire Line
	4150 1850 3750 1850
$Comp
L Device:C C6
U 1 1 5D20D208
P 5600 1400
F 0 "C6" V 5348 1400 50  0000 C CNN
F 1 "C" V 5439 1400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5638 1250 50  0001 C CNN
F 3 "~" H 5600 1400 50  0001 C CNN
	1    5600 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	4650 1850 4550 1850
Wire Wire Line
	4550 1850 4550 1400
Wire Wire Line
	4550 1400 5450 1400
Connection ~ 4550 1850
Wire Wire Line
	4550 1850 4450 1850
Wire Wire Line
	5750 1400 6800 1400
Wire Wire Line
	5700 2050 5600 2050
Wire Wire Line
	5600 2050 5600 2400
Wire Wire Line
	5600 2400 6000 2400
Wire Wire Line
	5100 2000 5100 1850
Connection ~ 5100 1850
Wire Wire Line
	5100 1850 4950 1850
$Comp
L Amplifier_Operational:ADA4075-2 U1
U 3 1 5D211D31
P 5100 5350
F 0 "U1" V 4775 5350 50  0000 C CNN
F 1 "ADA4075-2" V 4866 5350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5100 5350 50  0001 C CNN
F 3 "https://www.analog.com/static/imported-files/data_sheets/ADA4075-2.pdf" H 5100 5350 50  0001 C CNN
	3    5100 5350
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5D217004
P 4350 6450
F 0 "C2" H 4465 6496 50  0000 L CNN
F 1 "0.1uf" H 4465 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 6300 50  0001 C CNN
F 3 "~" H 4350 6450 50  0001 C CNN
	1    4350 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D217509
P 4050 6450
F 0 "C1" H 4165 6496 50  0000 L CNN
F 1 "0.1uf" H 4165 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4088 6300 50  0001 C CNN
F 3 "~" H 4050 6450 50  0001 C CNN
	1    4050 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5D2177E0
P 5600 6450
F 0 "C9" H 5715 6496 50  0000 L CNN
F 1 "0.1uF" H 5715 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5638 6300 50  0001 C CNN
F 3 "~" H 5600 6450 50  0001 C CNN
	1    5600 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C8
U 1 1 5D217C3D
P 5350 6450
F 0 "C8" H 5465 6496 50  0000 L CNN
F 1 "10uF" H 5465 6405 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.3" H 5350 6450 50  0001 C CNN
F 3 "~" H 5350 6450 50  0001 C CNN
	1    5350 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 5D217F57
P 5900 6450
F 0 "C10" H 6015 6496 50  0000 L CNN
F 1 "0.1uF" H 6015 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5938 6300 50  0001 C CNN
F 3 "~" H 5900 6450 50  0001 C CNN
	1    5900 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D2185D5
P 4400 3650
F 0 "R2" V 4193 3650 50  0000 C CNN
F 1 "R" V 4284 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 3650 50  0001 C CNN
F 3 "~" H 4400 3650 50  0001 C CNN
	1    4400 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5D218FD5
P 4950 3650
F 0 "R4" V 4743 3650 50  0000 C CNN
F 1 "R" V 4834 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4880 3650 50  0001 C CNN
F 3 "~" H 4950 3650 50  0001 C CNN
	1    4950 3650
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 5D2195A0
P 5350 4000
F 0 "C5" H 5465 4046 50  0000 L CNN
F 1 "C" H 5465 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5388 3850 50  0001 C CNN
F 3 "~" H 5350 4000 50  0001 C CNN
	1    5350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3650 4250 3650
Wire Wire Line
	5100 3650 5350 3650
Wire Wire Line
	5350 3850 5350 3650
Connection ~ 5350 3650
Wire Wire Line
	5350 3650 5800 3650
$Comp
L power:GND #PWR02
U 1 1 5D21B82E
P 5350 4350
F 0 "#PWR02" H 5350 4100 50  0001 C CNN
F 1 "GND" H 5355 4177 50  0000 C CNN
F 2 "" H 5350 4350 50  0001 C CNN
F 3 "" H 5350 4350 50  0001 C CNN
	1    5350 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 4350 5350 4250
Wire Wire Line
	5800 3850 5700 3850
Wire Wire Line
	5700 3850 5700 4200
Wire Wire Line
	5700 4200 6000 4200
Wire Wire Line
	6800 4200 6800 3750
Wire Wire Line
	6800 3750 6400 3750
$Comp
L Connector:Conn_Coaxial J4
U 1 1 5D21CE82
P 7400 1950
F 0 "J4" H 7500 1925 50  0000 L CNN
F 1 "OUT_A" H 7500 1834 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 7400 1950 50  0001 C CNN
F 3 " ~" H 7400 1950 50  0001 C CNN
	1    7400 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J5
U 1 1 5D21D906
P 7450 3750
F 0 "J5" H 7550 3725 50  0000 L CNN
F 1 "OUT_B" H 7550 3634 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 7450 3750 50  0001 C CNN
F 3 " ~" H 7450 3750 50  0001 C CNN
	1    7450 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3750 7250 3750
Connection ~ 6800 3750
Wire Wire Line
	6400 4200 6800 4200
$Comp
L power:GND #PWR04
U 1 1 5D2294C0
P 6800 4700
F 0 "#PWR04" H 6800 4450 50  0001 C CNN
F 1 "GND" H 6805 4527 50  0000 C CNN
F 2 "" H 6800 4700 50  0001 C CNN
F 3 "" H 6800 4700 50  0001 C CNN
	1    6800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4700 6800 4650
Wire Wire Line
	6800 4250 6800 4200
Connection ~ 6800 4200
Wire Wire Line
	4550 3650 4700 3650
Wire Wire Line
	6800 3250 6800 3750
Wire Wire Line
	5950 3250 6800 3250
Wire Wire Line
	4700 3250 5650 3250
Wire Wire Line
	4700 3650 4700 3250
$Comp
L Device:C C7
U 1 1 5D225B23
P 5800 3250
F 0 "C7" V 5548 3250 50  0000 C CNN
F 1 "C" V 5639 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5838 3100 50  0001 C CNN
F 3 "~" H 5800 3250 50  0001 C CNN
	1    5800 3250
	0    1    1    0   
$EndComp
$Comp
L Amplifier_Operational:ADA4075-2 U1
U 2 1 5D20FED3
P 6100 3750
F 0 "U1" H 6100 4117 50  0000 C CNN
F 1 "ADA4075-2" H 6100 4026 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6100 3750 50  0001 C CNN
F 3 "https://www.analog.com/static/imported-files/data_sheets/ADA4075-2.pdf" H 6100 3750 50  0001 C CNN
	2    6100 3750
	1    0    0    -1  
$EndComp
Connection ~ 4700 3650
Wire Wire Line
	4700 3650 4800 3650
$Comp
L power:GND #PWR03
U 1 1 5D23AC21
P 6800 2850
F 0 "#PWR03" H 6800 2600 50  0001 C CNN
F 1 "GND" H 6805 2677 50  0000 C CNN
F 2 "" H 6800 2850 50  0001 C CNN
F 3 "" H 6800 2850 50  0001 C CNN
	1    6800 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5900 4700 5900
Wire Wire Line
	4050 5900 4050 6300
Wire Wire Line
	4350 6300 4350 5900
Connection ~ 4350 5900
Wire Wire Line
	4350 5900 4050 5900
Wire Wire Line
	4700 6300 4700 5900
Connection ~ 4700 5900
Wire Wire Line
	4700 5900 4350 5900
Wire Wire Line
	4050 6600 4050 6750
Wire Wire Line
	4050 6750 4350 6750
Wire Wire Line
	4350 6600 4350 6750
Connection ~ 4350 6750
Wire Wire Line
	4350 6750 4700 6750
Wire Wire Line
	4700 6600 4700 6750
Connection ~ 4700 6750
Wire Wire Line
	5600 5900 5600 6300
Wire Wire Line
	5600 5900 5900 5900
Wire Wire Line
	5900 5900 5900 6300
Connection ~ 5600 5900
Wire Wire Line
	5350 6300 5350 5900
Wire Wire Line
	5350 6600 5350 6750
Wire Wire Line
	5600 6600 5600 6750
Wire Wire Line
	5600 6750 5350 6750
Connection ~ 5350 6750
Wire Wire Line
	5900 6600 5900 6750
Wire Wire Line
	5900 6750 5600 6750
Connection ~ 5600 6750
Text Label 5900 5900 0    50   ~ 0
VCC
Text Label 4800 5800 2    50   ~ 0
VEE
Wire Wire Line
	7450 3950 7450 4650
Wire Wire Line
	7450 4650 6800 4650
Wire Wire Line
	3650 3850 3650 4250
Wire Wire Line
	3650 4250 5350 4250
Connection ~ 5350 4250
Wire Wire Line
	5350 4250 5350 4150
Wire Wire Line
	3550 2050 3550 2350
Wire Wire Line
	3550 2350 5100 2350
Connection ~ 5100 2350
Wire Wire Line
	5100 2350 5100 2300
Wire Wire Line
	4950 5800 4800 5800
Wire Wire Line
	4800 5800 4800 5900
Wire Wire Line
	5350 5900 5600 5900
Wire Wire Line
	5150 5800 5350 5800
Wire Wire Line
	5350 5800 5350 5900
Connection ~ 5350 5900
$Comp
L power:GND #PWR0101
U 1 1 5D312011
P 5000 6800
F 0 "#PWR0101" H 5000 6550 50  0001 C CNN
F 1 "GND" H 5005 6627 50  0000 C CNN
F 2 "" H 5000 6800 50  0001 C CNN
F 3 "" H 5000 6800 50  0001 C CNN
	1    5000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6750 5000 6800
Wire Wire Line
	4700 6750 5000 6750
Wire Wire Line
	5000 6750 5050 6750
Connection ~ 5000 6750
Wire Wire Line
	5050 5800 5050 6750
Connection ~ 5050 6750
Wire Wire Line
	5050 6750 5350 6750
Wire Wire Line
	4800 5250 4650 5250
Text Label 4650 5250 2    50   ~ 0
VEE
Wire Wire Line
	5400 5250 5650 5250
Text Label 5650 5250 0    50   ~ 0
VCC
$Comp
L Device:R_POT RV2
U 1 1 5D26EB7B
P 6150 4200
F 0 "RV2" V 5943 4200 50  0000 C CNN
F 1 "R_POT" V 6034 4200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6150 4200 50  0001 C CNN
F 3 "~" H 6150 4200 50  0001 C CNN
	1    6150 4200
	0    1    1    0   
$EndComp
$Comp
L Device:R_POT RV4
U 1 1 5D26EECE
P 6800 4400
F 0 "RV4" H 6730 4354 50  0000 R CNN
F 1 "R_POT" H 6730 4445 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6800 4400 50  0001 C CNN
F 3 "~" H 6800 4400 50  0001 C CNN
	1    6800 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 4400 6650 4650
Wire Wire Line
	6650 4650 6800 4650
Connection ~ 6800 4650
Wire Wire Line
	6150 4350 6400 4350
Wire Wire Line
	6400 4350 6400 4200
Wire Wire Line
	7400 2150 7400 2800
Connection ~ 6800 2800
Wire Wire Line
	6650 2800 6800 2800
Wire Wire Line
	6650 2550 6650 2800
Connection ~ 6800 2400
$Comp
L Device:R_POT RV3
U 1 1 5D26BC6B
P 6800 2550
F 0 "RV3" H 6730 2504 50  0000 R CNN
F 1 "R_POT" H 6730 2595 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6800 2550 50  0001 C CNN
F 3 "~" H 6800 2550 50  0001 C CNN
	1    6800 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 2550 6400 2400
Wire Wire Line
	6150 2550 6400 2550
$Comp
L Device:R_POT RV1
U 1 1 5D268119
P 6150 2400
F 0 "RV1" V 5943 2400 50  0000 C CNN
F 1 "R_POT" V 6034 2400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6150 2400 50  0001 C CNN
F 3 "~" H 6150 2400 50  0001 C CNN
	1    6150 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2800 6800 2800
Wire Wire Line
	6800 2850 6800 2800
Wire Wire Line
	6400 2400 6800 2400
Wire Wire Line
	6800 1950 7200 1950
Connection ~ 6800 1950
Wire Wire Line
	6800 2400 6800 1950
Wire Wire Line
	6800 1950 6300 1950
Wire Wire Line
	6800 1400 6800 1950
$Comp
L Amplifier_Operational:ADA4075-2 U1
U 1 1 5D204576
P 6000 1950
F 0 "U1" H 6000 2317 50  0000 C CNN
F 1 "ADA4075-2" H 6000 2226 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6000 1950 50  0001 C CNN
F 3 "https://www.analog.com/static/imported-files/data_sheets/ADA4075-2.pdf" H 6000 1950 50  0001 C CNN
	1    6000 1950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
