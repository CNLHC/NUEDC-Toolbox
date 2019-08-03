EESchema Schematic File Version 4
LIBS:HMC346AMS8GE-cache
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
U 1 1 5D1A5A45
P 7300 1950
F 0 "J2" H 7400 1925 50  0000 L CNN
F 1 "Conn_Coaxial" H 7400 1834 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_901-144_Vertical" H 7300 1950 50  0001 C CNN
F 3 " ~" H 7300 1950 50  0001 C CNN
	1    7300 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5D1A53A4
P 5400 1950
F 0 "J1" H 5328 2188 50  0000 C CNN
F 1 "Conn_Coaxial" H 5328 2097 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_901-144_Vertical" H 5400 1950 50  0001 C CNN
F 3 " ~" H 5400 1950 50  0001 C CNN
	1    5400 1950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5400 2150 5600 2150
Wire Wire Line
	5600 2150 5600 2650
Wire Wire Line
	7300 2150 7300 2650
Wire Wire Line
	7300 2650 5600 2650
$Comp
L SOP65P490X110-8N:HMC346AMS8GE U1
U 1 1 5D1A3E16
P 6400 2150
F 0 "U1" H 6400 2615 50  0000 C CNN
F 1 "HMC346AMS8GE" H 6400 2524 50  0000 C CNN
F 2 "Package_SO:MSOP-8-1EP_3x3mm_P0.65mm_EP1.95x2.15mm" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2100 5600 2150
Wire Wire Line
	5600 2100 6000 2100
Connection ~ 5600 2150
Wire Wire Line
	6800 2100 7300 2100
Wire Wire Line
	7300 2100 7300 2150
Connection ~ 7300 2150
Wire Wire Line
	6000 2250 5800 2250
Wire Wire Line
	5800 2250 5800 2800
Wire Wire Line
	6000 2400 6000 2700
Wire Wire Line
	6800 2250 7000 2250
Wire Wire Line
	7000 2250 7000 2850
Wire Wire Line
	7000 2850 6550 2850
Wire Wire Line
	6550 2850 6550 2950
Wire Wire Line
	6450 2700 6450 2950
Wire Wire Line
	6000 2700 6450 2700
Wire Wire Line
	5800 2800 6350 2800
Text Label 5750 2100 0    50   ~ 0
GND
$Comp
L Amplifier_Operational:THS4631D U2
U 1 1 5D2443A5
P 5150 4450
F 0 "U2" H 5150 3969 50  0000 C CNN
F 1 "THS4631D" H 5150 4060 50  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm" H 5050 4250 50  0001 L CNN
F 3 "www.ti.com/lit/ds/symlink/ths4631.pdf" H 5300 4600 50  0001 C CNN
	1    5150 4450
	1    0    0    1   
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5D2454F0
P 5000 3600
F 0 "D1" V 5046 3521 50  0000 R CNN
F 1 "1N4148" V 4955 3521 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5000 3425 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5000 3600 50  0001 C CNN
	1    5000 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D24A023
P 4000 5100
F 0 "#PWR02" H 4000 4850 50  0001 C CNN
F 1 "GND" H 4005 4927 50  0000 C CNN
F 2 "" H 4000 5100 50  0001 C CNN
F 3 "" H 4000 5100 50  0001 C CNN
	1    4000 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5D24A5D8
P 4000 4850
F 0 "R2" H 3930 4804 50  0000 R CNN
F 1 "500" H 3930 4895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 4850 50  0001 C CNN
F 3 "~" H 4000 4850 50  0001 C CNN
	1    4000 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5D24C171
P 4400 4850
F 0 "R3" H 4330 4804 50  0000 R CNN
F 1 "3.92k" H 4330 4895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 4850 50  0001 C CNN
F 3 "~" H 4400 4850 50  0001 C CNN
	1    4400 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 5000 4000 5100
Wire Wire Line
	4850 4550 4400 4550
Wire Wire Line
	4000 4550 4000 4700
Wire Wire Line
	4400 4550 4400 4700
Connection ~ 4400 4550
Wire Wire Line
	4400 4550 4000 4550
Text Label 5050 5000 0    50   ~ 0
VCC
Wire Wire Line
	5050 4150 5050 3950
Text Label 5050 3950 0    50   ~ 0
VEE
Wire Wire Line
	4100 4350 4450 4350
Wire Wire Line
	5450 4450 5700 4450
Wire Wire Line
	5700 4450 5700 3600
Wire Wire Line
	5700 3600 5150 3600
Text Label 5700 3100 0    50   ~ 0
V2
Text Label 4100 3350 0    50   ~ 0
I
Wire Wire Line
	4100 3350 4100 4350
$Comp
L Device:R R1
U 1 1 5D253ED2
P 3650 4850
F 0 "R1" H 3580 4804 50  0000 R CNN
F 1 "3.92k" H 3580 4895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3580 4850 50  0001 C CNN
F 3 "~" H 3650 4850 50  0001 C CNN
	1    3650 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 4350 3650 4350
Wire Wire Line
	3650 4350 3650 4700
Connection ~ 4100 4350
Wire Wire Line
	4400 5000 4400 5400
Wire Wire Line
	3650 5000 3650 5400
Wire Wire Line
	3650 5400 4400 5400
Text Label 5800 2250 0    50   ~ 0
V2
Text Label 6000 2550 2    50   ~ 0
I
Text Label 6900 2250 0    50   ~ 0
V1
Text Label 6900 4050 1    50   ~ 0
VCC
Text Label 6800 4050 1    50   ~ 0
GND
Text Label 6700 4050 1    50   ~ 0
VEE
Connection ~ 4450 4350
Wire Wire Line
	4450 4350 4850 4350
Wire Wire Line
	6350 2800 6350 2950
Wire Wire Line
	6600 3800 6600 4050
Text Label 6600 4050 1    50   ~ 0
V1
Wire Wire Line
	4850 3600 4450 3600
Wire Wire Line
	4450 3600 4450 4350
Connection ~ 5700 3600
$Comp
L Device:C C2
U 1 1 5D26CDFD
P 6650 4400
F 0 "C2" H 6765 4446 50  0000 L CNN
F 1 "C" H 6765 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6688 4250 50  0001 C CNN
F 3 "~" H 6650 4400 50  0001 C CNN
	1    6650 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5D26D67D
P 6950 4400
F 0 "C3" H 7065 4446 50  0000 L CNN
F 1 "C" H 7065 4355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6988 4250 50  0001 C CNN
F 3 "~" H 6950 4400 50  0001 C CNN
	1    6950 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D26D782
P 3350 4750
F 0 "C1" H 3465 4796 50  0000 L CNN
F 1 "C" H 3465 4705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3388 4600 50  0001 C CNN
F 3 "~" H 3350 4750 50  0001 C CNN
	1    3350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4250 6950 4250
Wire Wire Line
	6900 3800 6900 4250
Wire Wire Line
	6700 4250 6650 4250
Wire Wire Line
	6700 3800 6700 4250
$Comp
L power:GND #PWR03
U 1 1 5D26F883
P 6800 4750
F 0 "#PWR03" H 6800 4500 50  0001 C CNN
F 1 "GND" H 6805 4577 50  0000 C CNN
F 2 "" H 6800 4750 50  0001 C CNN
F 3 "" H 6800 4750 50  0001 C CNN
	1    6800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4550 6650 4650
Wire Wire Line
	6650 4650 6800 4650
Wire Wire Line
	6800 4650 6800 4750
Wire Wire Line
	6950 4550 6950 4650
Wire Wire Line
	6950 4650 6800 4650
Connection ~ 6800 4650
$Comp
L power:GND #PWR04
U 1 1 5D272ECE
P 7300 2650
F 0 "#PWR04" H 7300 2400 50  0001 C CNN
F 1 "GND" H 7305 2477 50  0000 C CNN
F 2 "" H 7300 2650 50  0001 C CNN
F 3 "" H 7300 2650 50  0001 C CNN
	1    7300 2650
	1    0    0    -1  
$EndComp
Connection ~ 7300 2650
Wire Wire Line
	3650 4350 3350 4350
Wire Wire Line
	3350 4350 3350 4600
Connection ~ 3650 4350
$Comp
L power:GND #PWR01
U 1 1 5D274DEC
P 3350 5050
F 0 "#PWR01" H 3350 4800 50  0001 C CNN
F 1 "GND" H 3355 4877 50  0000 C CNN
F 2 "" H 3350 5050 50  0001 C CNN
F 3 "" H 3350 5050 50  0001 C CNN
	1    3350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4900 3350 5050
Wire Wire Line
	6800 3800 6800 4050
Wire Wire Line
	5050 4750 5050 5000
Wire Wire Line
	4400 5400 4750 5400
Connection ~ 4400 5400
Text Label 4750 5400 0    50   ~ 0
VEE
$Comp
L Device:R R5
U 1 1 5D28126A
P 5750 1950
F 0 "R5" H 5680 1904 50  0000 R CNN
F 1 "R" H 5680 1995 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5680 1950 50  0001 C CNN
F 3 "~" H 5750 1950 50  0001 C CNN
	1    5750 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 1950 6000 1950
$Comp
L Device:R R6
U 1 1 5D2817D3
P 6950 1950
F 0 "R6" H 6880 1904 50  0000 R CNN
F 1 "R" H 6880 1995 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6880 1950 50  0001 C CNN
F 3 "~" H 6950 1950 50  0001 C CNN
	1    6950 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5700 3100 5700 3150
$Comp
L Device:R R4
U 1 1 5D283590
P 5700 3300
F 0 "R4" H 5630 3254 50  0000 R CNN
F 1 "R" H 5630 3345 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 3300 50  0001 C CNN
F 3 "~" H 5700 3300 50  0001 C CNN
	1    5700 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 3450 5700 3600
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5D292A76
P 6800 3600
F 0 "J4" V 6862 3744 50  0000 L CNN
F 1 "Conn_01x03_Male" V 6953 3744 50  0000 L CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 6800 3600 50  0001 C CNN
F 3 "~" H 6800 3600 50  0001 C CNN
	1    6800 3600
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x01_Male J3
U 1 1 5D29518D
P 6600 3600
F 0 "J3" V 6754 3512 50  0000 R CNN
F 1 "Conn_01x01_Male" V 6663 3512 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 6600 3600 50  0001 C CNN
F 3 "~" H 6600 3600 50  0001 C CNN
	1    6600 3600
	0    1    1    0   
$EndComp
$EndSCHEMATC
