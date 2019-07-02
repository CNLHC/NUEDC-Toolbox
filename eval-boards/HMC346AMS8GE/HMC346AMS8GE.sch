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
P 6750 3550
F 0 "J2" H 6850 3525 50  0000 L CNN
F 1 "Conn_Coaxial" H 6850 3434 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_901-144_Vertical" H 6750 3550 50  0001 C CNN
F 3 " ~" H 6750 3550 50  0001 C CNN
	1    6750 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J1
U 1 1 5D1A53A4
P 4850 3550
F 0 "J1" H 4778 3788 50  0000 C CNN
F 1 "Conn_Coaxial" H 4778 3697 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_901-144_Vertical" H 4850 3550 50  0001 C CNN
F 3 " ~" H 4850 3550 50  0001 C CNN
	1    4850 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 3750 5050 3750
Wire Wire Line
	5050 3750 5050 4250
Wire Wire Line
	6750 3750 6750 4250
Wire Wire Line
	6750 4250 5050 4250
Wire Wire Line
	6550 3550 6250 3550
Wire Wire Line
	5050 3550 5450 3550
$Comp
L SOP65P490X110-8N:HMC346AMS8GE U1
U 1 1 5D1A3E16
P 5850 3750
F 0 "U1" H 5850 4215 50  0000 C CNN
F 1 "HMC346AMS8GE" H 5850 4124 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 5850 3300 50  0001 C CNN
F 3 "" H 5850 3300 50  0001 C CNN
	1    5850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3700 5050 3750
Wire Wire Line
	5050 3700 5450 3700
Connection ~ 5050 3750
Wire Wire Line
	6250 3700 6750 3700
Wire Wire Line
	6750 3700 6750 3750
Connection ~ 6750 3750
Wire Wire Line
	5450 3850 5250 3850
Wire Wire Line
	5250 3850 5250 4400
Wire Wire Line
	5450 4000 5450 4300
Wire Wire Line
	6250 3850 6450 3850
$Comp
L power:GND #PWR01
U 1 1 5D1A6416
P 5500 4550
F 0 "#PWR01" H 5500 4300 50  0001 C CNN
F 1 "GND" H 5505 4377 50  0000 C CNN
F 2 "" H 5500 4550 50  0001 C CNN
F 3 "" H 5500 4550 50  0001 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5D1BCB11
P 5800 4750
F 0 "J3" V 5954 4462 50  0000 R CNN
F 1 "Conn_01x04_Male" V 5863 4462 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5800 4750 50  0001 C CNN
F 3 "~" H 5800 4750 50  0001 C CNN
	1    5800 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 3850 6450 4450
Wire Wire Line
	6450 4450 6000 4450
Wire Wire Line
	6000 4450 6000 4550
Wire Wire Line
	5900 4300 5900 4550
Wire Wire Line
	5450 4300 5900 4300
Wire Wire Line
	5800 4400 5800 4550
Wire Wire Line
	5250 4400 5800 4400
Wire Wire Line
	5500 4550 5700 4550
Text Label 5200 3700 0    50   ~ 0
GND
$EndSCHEMATC
