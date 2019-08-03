EESchema Schematic File Version 4
LIBS:General Purpose Op Amp Eval-Board-cache
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
L Connector:Conn_01x03_Male J2
U 1 1 5D1E82E2
P 9150 4700
F 0 "J2" H 9258 4981 50  0000 C CNN
F 1 "Conn_01x03_Male" H 9258 4890 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 9150 4700 50  0001 C CNN
F 3 "~" H 9150 4700 50  0001 C CNN
	1    9150 4700
	0    -1   -1   0   
$EndComp
$Comp
L Amplifier_Operational:ADA4075-2 U1
U 1 1 5D269E1F
P 4600 2100
F 0 "U1" H 4600 1733 50  0000 C CNN
F 1 "ADA4075-2" H 4600 1824 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4600 2100 50  0001 C CNN
F 3 "https://www.analog.com/static/imported-files/data_sheets/ADA4075-2.pdf" H 4600 2100 50  0001 C CNN
	1    4600 2100
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:ADA4075-2 U1
U 2 1 5D26B820
P 4400 5050
F 0 "U1" H 4400 4683 50  0000 C CNN
F 1 "ADA4075-2" H 4400 4774 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4400 5050 50  0001 C CNN
F 3 "https://www.analog.com/static/imported-files/data_sheets/ADA4075-2.pdf" H 4400 5050 50  0001 C CNN
	2    4400 5050
	1    0    0    1   
$EndComp
$Comp
L Amplifier_Operational:ADA4075-2 U1
U 3 1 5D26D153
P 9150 2800
F 0 "U1" V 8825 2800 50  0000 C CNN
F 1 "ADA4075-2" V 8916 2800 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 9150 2800 50  0001 C CNN
F 3 "https://www.analog.com/static/imported-files/data_sheets/ADA4075-2.pdf" H 9150 2800 50  0001 C CNN
	3    9150 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial INA-1
U 1 1 5D279603
P 1650 1650
F 0 "INA-1" H 1578 1888 50  0000 C CNN
F 1 "Conn_Coaxial" H 1578 1797 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 1650 1650 50  0001 C CNN
F 3 " ~" H 1650 1650 50  0001 C CNN
	1    1650 1650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial INA+1
U 1 1 5D27B13F
P 1700 2500
F 0 "INA+1" H 1628 2738 50  0000 C CNN
F 1 "Conn_Coaxial" H 1628 2647 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 1700 2500 50  0001 C CNN
F 3 " ~" H 1700 2500 50  0001 C CNN
	1    1700 2500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5D27BA63
P 5300 2100
F 0 "R15" V 5093 2100 50  0000 C CNN
F 1 "R" V 5184 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5230 2100 50  0001 C CNN
F 3 "~" H 5300 2100 50  0001 C CNN
	1    5300 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5D27E6CB
P 2350 2050
F 0 "#PWR01" H 2350 1800 50  0001 C CNN
F 1 "GND" H 2355 1877 50  0000 C CNN
F 2 "" H 2350 2050 50  0001 C CNN
F 3 "" H 2350 2050 50  0001 C CNN
	1    2350 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5D27F837
P 4350 1000
F 0 "C4" V 4098 1000 50  0000 C CNN
F 1 "C" V 4189 1000 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 850 50  0001 C CNN
F 3 "~" H 4350 1000 50  0001 C CNN
	1    4350 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 1650 3800 1650
Wire Wire Line
	3800 1650 3800 2000
Wire Wire Line
	3800 2000 4300 2000
$Comp
L Device:R R1
U 1 1 5D280625
P 2350 1850
F 0 "R1" H 2280 1804 50  0000 R CNN
F 1 "R" H 2280 1895 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2280 1850 50  0001 C CNN
F 3 "~" H 2350 1850 50  0001 C CNN
	1    2350 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	1850 1650 2350 1650
Wire Wire Line
	2350 1700 2350 1650
Connection ~ 2350 1650
Wire Wire Line
	2350 1650 2900 1650
Wire Wire Line
	2350 2000 2350 2050
$Comp
L Device:R R2
U 1 1 5D2816FE
P 2350 2700
F 0 "R2" H 2280 2654 50  0000 R CNN
F 1 "R" H 2280 2745 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2280 2700 50  0001 C CNN
F 3 "~" H 2350 2700 50  0001 C CNN
	1    2350 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5D281989
P 2750 2500
F 0 "R6" V 2543 2500 50  0000 C CNN
F 1 "R" V 2634 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2680 2500 50  0001 C CNN
F 3 "~" H 2750 2500 50  0001 C CNN
	1    2750 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D281E3D
P 3800 3050
F 0 "#PWR05" H 3800 2800 50  0001 C CNN
F 1 "GND" H 3805 2877 50  0000 C CNN
F 2 "" H 3800 3050 50  0001 C CNN
F 3 "" H 3800 3050 50  0001 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D282192
P 2350 3050
F 0 "#PWR02" H 2350 2800 50  0001 C CNN
F 1 "GND" H 2355 2877 50  0000 C CNN
F 2 "" H 2350 3050 50  0001 C CNN
F 3 "" H 2350 3050 50  0001 C CNN
	1    2350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2500 2350 2500
Wire Wire Line
	2350 2500 2350 2550
Wire Wire Line
	2350 2500 2600 2500
Connection ~ 2350 2500
$Comp
L Device:R R9
U 1 1 5D28327B
P 3250 2500
F 0 "R9" V 3043 2500 50  0000 C CNN
F 1 "R" V 3134 2500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3180 2500 50  0001 C CNN
F 3 "~" H 3250 2500 50  0001 C CNN
	1    3250 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2500 3000 2500
$Comp
L Device:C C2
U 1 1 5D2838D5
P 3800 2700
F 0 "C2" H 3915 2746 50  0000 L CNN
F 1 "C" H 3915 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 2550 50  0001 C CNN
F 3 "~" H 3800 2700 50  0001 C CNN
	1    3800 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5D28415C
P 4050 2700
F 0 "R12" H 3980 2654 50  0000 R CNN
F 1 "R" H 3980 2745 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3980 2700 50  0001 C CNN
F 3 "~" H 4050 2700 50  0001 C CNN
	1    4050 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 2200 3800 2200
Wire Wire Line
	3800 2200 3800 2550
Wire Wire Line
	3400 2500 4050 2500
Wire Wire Line
	4050 2500 4050 2550
Wire Wire Line
	4050 2850 4050 2950
Wire Wire Line
	4050 2950 3800 2950
Wire Wire Line
	3800 2950 3800 2850
Wire Wire Line
	3800 3050 3800 2950
Connection ~ 3800 2950
Wire Wire Line
	2350 2850 2350 2950
$Comp
L Device:R R17
U 1 1 5D2877EE
P 5650 2400
F 0 "R17" H 5580 2354 50  0000 R CNN
F 1 "R" H 5580 2445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 2400 50  0001 C CNN
F 3 "~" H 5650 2400 50  0001 C CNN
	1    5650 2400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5D287BB6
P 5650 2850
F 0 "C7" H 5535 2804 50  0000 R CNN
F 1 "C" H 5535 2895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5688 2700 50  0001 C CNN
F 3 "~" H 5650 2850 50  0001 C CNN
	1    5650 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 2100 5050 2100
Wire Wire Line
	5450 2100 5650 2100
Wire Wire Line
	5650 2100 5650 2250
Wire Wire Line
	5650 2550 5650 2700
$Comp
L power:GND #PWR07
U 1 1 5D289104
P 5650 3100
F 0 "#PWR07" H 5650 2850 50  0001 C CNN
F 1 "GND" H 5655 2927 50  0000 C CNN
F 2 "" H 5650 3100 50  0001 C CNN
F 3 "" H 5650 3100 50  0001 C CNN
	1    5650 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3000 5650 3050
$Comp
L Device:R R19
U 1 1 5D289964
P 6050 2400
F 0 "R19" H 5980 2354 50  0000 R CNN
F 1 "R" H 5980 2445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5980 2400 50  0001 C CNN
F 3 "~" H 6050 2400 50  0001 C CNN
	1    6050 2400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 5D289ACD
P 6450 2400
F 0 "C9" H 6335 2354 50  0000 R CNN
F 1 "C" H 6335 2445 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6488 2250 50  0001 C CNN
F 3 "~" H 6450 2400 50  0001 C CNN
	1    6450 2400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 2100 6050 2100
Wire Wire Line
	6050 2100 6050 2250
Connection ~ 5650 2100
Wire Wire Line
	6050 2550 6050 3050
Wire Wire Line
	6050 3050 5650 3050
Connection ~ 5650 3050
Wire Wire Line
	5650 3050 5650 3100
Wire Wire Line
	6450 2250 6450 2100
Wire Wire Line
	6450 2100 6050 2100
Connection ~ 6050 2100
Wire Wire Line
	6450 3050 6050 3050
Connection ~ 6050 3050
$Comp
L Connector:Conn_Coaxial OUTA1
U 1 1 5D28B80C
P 7500 2100
F 0 "OUTA1" H 7600 2075 50  0000 L CNN
F 1 "Conn_Coaxial" H 7600 1984 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 7500 2100 50  0001 C CNN
F 3 " ~" H 7500 2100 50  0001 C CNN
	1    7500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 2100 6450 2100
Connection ~ 6450 2100
Wire Wire Line
	6450 2550 6450 3050
Wire Wire Line
	7500 2300 7500 3050
Wire Wire Line
	7500 3050 6450 3050
Connection ~ 6450 3050
Wire Wire Line
	1650 1850 1650 2050
Wire Wire Line
	1650 2050 2350 2050
Connection ~ 2350 2050
Wire Wire Line
	1700 2700 1700 2950
Wire Wire Line
	1700 2950 2350 2950
Connection ~ 2350 2950
Wire Wire Line
	2350 2950 2350 3050
$Comp
L Device:R R8
U 1 1 5D28FCD1
P 3050 1650
F 0 "R8" V 2843 1650 50  0000 C CNN
F 1 "R" V 2934 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2980 1650 50  0001 C CNN
F 3 "~" H 3050 1650 50  0001 C CNN
	1    3050 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5D2900BB
P 4350 1350
F 0 "R13" V 4143 1350 50  0000 C CNN
F 1 "R" V 4234 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4280 1350 50  0001 C CNN
F 3 "~" H 4350 1350 50  0001 C CNN
	1    4350 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2100 5050 1350
Wire Wire Line
	5050 1350 4500 1350
Connection ~ 5050 2100
Wire Wire Line
	5050 2100 5150 2100
Wire Wire Line
	4200 1350 3800 1350
Wire Wire Line
	3800 1350 3800 1650
Connection ~ 3800 1650
Wire Wire Line
	4200 1000 3800 1000
Wire Wire Line
	3800 1000 3800 1350
Connection ~ 3800 1350
Wire Wire Line
	4500 1000 5050 1000
Wire Wire Line
	5050 1000 5050 1350
Connection ~ 5050 1350
$Comp
L Connector:Conn_Coaxial INB-1
U 1 1 5D295255
P 2000 4750
F 0 "INB-1" H 1928 4988 50  0000 C CNN
F 1 "Conn_Coaxial" H 1928 4897 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 2000 4750 50  0001 C CNN
F 3 " ~" H 2000 4750 50  0001 C CNN
	1    2000 4750
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial INB+1
U 1 1 5D295A33
P 2000 5800
F 0 "INB+1" H 1928 6038 50  0000 C CNN
F 1 "Conn_Coaxial" H 1928 5947 50  0000 C CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 2000 5800 50  0001 C CNN
F 3 " ~" H 2000 5800 50  0001 C CNN
	1    2000 5800
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5D295C38
P 2450 5000
F 0 "R4" H 2520 5046 50  0000 L CNN
F 1 "R" H 2520 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2380 5000 50  0001 C CNN
F 3 "~" H 2450 5000 50  0001 C CNN
	1    2450 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5D295EBA
P 2450 5300
F 0 "#PWR04" H 2450 5050 50  0001 C CNN
F 1 "GND" H 2455 5127 50  0000 C CNN
F 2 "" H 2450 5300 50  0001 C CNN
F 3 "" H 2450 5300 50  0001 C CNN
	1    2450 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5D29614F
P 3650 6050
F 0 "C1" H 3535 6004 50  0000 R CNN
F 1 "C" H 3535 6095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3688 5900 50  0001 C CNN
F 3 "~" H 3650 6050 50  0001 C CNN
	1    3650 6050
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 4950 2000 5250
Wire Wire Line
	2000 5250 2450 5250
Wire Wire Line
	2450 5250 2450 5300
Wire Wire Line
	2450 5250 2450 5150
Connection ~ 2450 5250
$Comp
L Device:R R7
U 1 1 5D29C473
P 2900 4750
F 0 "R7" V 2693 4750 50  0000 C CNN
F 1 "R" V 2784 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2830 4750 50  0001 C CNN
F 3 "~" H 2900 4750 50  0001 C CNN
	1    2900 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 4750 2450 4750
Wire Wire Line
	2450 4850 2450 4750
Connection ~ 2450 4750
Wire Wire Line
	2450 4750 2750 4750
Wire Wire Line
	3050 4750 3800 4750
Wire Wire Line
	3800 4950 4100 4950
$Comp
L Device:R R5
U 1 1 5D2A4ABB
P 2700 5800
F 0 "R5" V 2493 5800 50  0000 C CNN
F 1 "R" V 2584 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2630 5800 50  0001 C CNN
F 3 "~" H 2700 5800 50  0001 C CNN
	1    2700 5800
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5D2A4E7B
P 2400 6050
F 0 "R3" H 2470 6096 50  0000 L CNN
F 1 "R" H 2470 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2330 6050 50  0001 C CNN
F 3 "~" H 2400 6050 50  0001 C CNN
	1    2400 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D2A51E1
P 2400 6300
F 0 "#PWR03" H 2400 6050 50  0001 C CNN
F 1 "GND" H 2405 6127 50  0000 C CNN
F 2 "" H 2400 6300 50  0001 C CNN
F 3 "" H 2400 6300 50  0001 C CNN
	1    2400 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 5800 2400 5800
Wire Wire Line
	2000 6000 2000 6250
Wire Wire Line
	2000 6250 2400 6250
Wire Wire Line
	2400 6250 2400 6300
Wire Wire Line
	2400 6250 2400 6200
Connection ~ 2400 6250
Wire Wire Line
	2400 5900 2400 5800
Connection ~ 2400 5800
Wire Wire Line
	2400 5800 2550 5800
$Comp
L Device:R R10
U 1 1 5D2AB384
P 3300 5800
F 0 "R10" V 3093 5800 50  0000 C CNN
F 1 "R" V 3184 5800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3230 5800 50  0001 C CNN
F 3 "~" H 3300 5800 50  0001 C CNN
	1    3300 5800
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 5800 3000 5800
$Comp
L Device:R R11
U 1 1 5D2AEB67
P 3950 6050
F 0 "R11" H 4020 6096 50  0000 L CNN
F 1 "R" H 4020 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3880 6050 50  0001 C CNN
F 3 "~" H 3950 6050 50  0001 C CNN
	1    3950 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5800 3950 5800
Wire Wire Line
	3950 5800 3950 5900
$Comp
L power:GND #PWR06
U 1 1 5D2B0890
P 3800 6300
F 0 "#PWR06" H 3800 6050 50  0001 C CNN
F 1 "GND" H 3805 6127 50  0000 C CNN
F 2 "" H 3800 6300 50  0001 C CNN
F 3 "" H 3800 6300 50  0001 C CNN
	1    3800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6200 3650 6300
Wire Wire Line
	3650 6300 3800 6300
Wire Wire Line
	3950 6200 3950 6300
Wire Wire Line
	3950 6300 3800 6300
Connection ~ 3800 6300
Wire Wire Line
	3650 5900 3650 5150
Wire Wire Line
	3650 5150 4100 5150
$Comp
L Device:C C5
U 1 1 5D2B643A
P 4400 3300
F 0 "C5" V 4148 3300 50  0000 C CNN
F 1 "C" V 4239 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4438 3150 50  0001 C CNN
F 3 "~" H 4400 3300 50  0001 C CNN
	1    4400 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2100 5050 3300
Wire Wire Line
	5050 3300 4550 3300
Wire Wire Line
	3000 2500 3000 3300
Wire Wire Line
	3000 3300 4250 3300
Connection ~ 3000 2500
Wire Wire Line
	3000 2500 3100 2500
$Comp
L Device:C C6
U 1 1 5D2BA723
P 4400 3950
F 0 "C6" V 4148 3950 50  0000 C CNN
F 1 "C" V 4239 3950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4438 3800 50  0001 C CNN
F 3 "~" H 4400 3950 50  0001 C CNN
	1    4400 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5D2BA9DA
P 4400 4200
F 0 "R14" V 4193 4200 50  0000 C CNN
F 1 "R" V 4284 4200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 4200 50  0001 C CNN
F 3 "~" H 4400 4200 50  0001 C CNN
	1    4400 4200
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5D2BAD80
P 4250 6700
F 0 "C3" V 3998 6700 50  0000 C CNN
F 1 "C" V 4089 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4288 6550 50  0001 C CNN
F 3 "~" H 4250 6700 50  0001 C CNN
	1    4250 6700
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 5D2BB31A
P 5300 5050
F 0 "R16" V 5093 5050 50  0000 C CNN
F 1 "R" V 5184 5050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5230 5050 50  0001 C CNN
F 3 "~" H 5300 5050 50  0001 C CNN
	1    5300 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 5D2BB579
P 5700 5350
F 0 "R18" H 5630 5304 50  0000 R CNN
F 1 "R" H 5630 5395 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 5350 50  0001 C CNN
F 3 "~" H 5700 5350 50  0001 C CNN
	1    5700 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C8
U 1 1 5D2BB81D
P 5700 5800
F 0 "C8" H 5585 5754 50  0000 R CNN
F 1 "C" H 5585 5845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5738 5650 50  0001 C CNN
F 3 "~" H 5700 5800 50  0001 C CNN
	1    5700 5800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R20
U 1 1 5D2BBCB8
P 6050 5350
F 0 "R20" H 5980 5304 50  0000 R CNN
F 1 "R" H 5980 5395 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5980 5350 50  0001 C CNN
F 3 "~" H 6050 5350 50  0001 C CNN
	1    6050 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:C C10
U 1 1 5D2BC056
P 6500 5350
F 0 "C10" H 6385 5304 50  0000 R CNN
F 1 "C" H 6385 5395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6538 5200 50  0001 C CNN
F 3 "~" H 6500 5350 50  0001 C CNN
	1    6500 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 5050 4900 5050
Wire Wire Line
	5450 5050 5700 5050
Wire Wire Line
	5700 5050 5700 5200
Wire Wire Line
	5700 5500 5700 5650
$Comp
L power:GND #PWR08
U 1 1 5D2C2DD0
P 5700 6150
F 0 "#PWR08" H 5700 5900 50  0001 C CNN
F 1 "GND" H 5705 5977 50  0000 C CNN
F 2 "" H 5700 6150 50  0001 C CNN
F 3 "" H 5700 6150 50  0001 C CNN
	1    5700 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 5950 5700 6000
Wire Wire Line
	5700 5050 6050 5050
Wire Wire Line
	6050 5050 6050 5200
Connection ~ 5700 5050
Wire Wire Line
	6050 5500 6050 6000
Wire Wire Line
	6050 6000 5700 6000
Connection ~ 5700 6000
Wire Wire Line
	5700 6000 5700 6150
Wire Wire Line
	6050 5050 6500 5050
Wire Wire Line
	6500 5050 6500 5200
Connection ~ 6050 5050
Wire Wire Line
	6500 5500 6500 6000
Wire Wire Line
	6500 6000 6050 6000
Connection ~ 6050 6000
$Comp
L Connector:Conn_Coaxial OUTB1
U 1 1 5D2CF967
P 7050 5050
F 0 "OUTB1" H 7150 5025 50  0000 L CNN
F 1 "Conn_Coaxial" H 7150 4934 50  0000 L CNN
F 2 "Connector_Coaxial:SMA_Amphenol_132134-11_Vertical" H 7050 5050 50  0001 C CNN
F 3 " ~" H 7050 5050 50  0001 C CNN
	1    7050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 5050 6850 5050
Connection ~ 6500 5050
Wire Wire Line
	7050 5250 7050 6000
Wire Wire Line
	7050 6000 6500 6000
Connection ~ 6500 6000
Wire Wire Line
	4900 6700 4400 6700
Connection ~ 4900 5050
Wire Wire Line
	4900 5050 5150 5050
Wire Wire Line
	4100 6700 3000 6700
Wire Wire Line
	3000 6700 3000 5800
Connection ~ 3000 5800
Wire Wire Line
	3000 5800 3150 5800
Wire Wire Line
	4550 3950 4900 3950
Wire Wire Line
	4900 3950 4900 4200
Wire Wire Line
	4250 3950 3800 3950
Wire Wire Line
	3800 3950 3800 4200
Wire Wire Line
	4900 5050 4900 6700
Connection ~ 3800 4750
Wire Wire Line
	3800 4750 3800 4950
Wire Wire Line
	4250 4200 3800 4200
Connection ~ 3800 4200
Wire Wire Line
	3800 4200 3800 4750
Wire Wire Line
	4550 4200 4900 4200
Connection ~ 4900 4200
Wire Wire Line
	4900 4200 4900 5050
$Comp
L Device:R R21
U 1 1 5D3312CA
P 8150 3100
F 0 "R21" H 8080 3054 50  0000 R CNN
F 1 "R" H 8080 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8080 3100 50  0001 C CNN
F 3 "~" H 8150 3100 50  0001 C CNN
	1    8150 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 5D331655
P 10150 3100
F 0 "R22" H 10080 3054 50  0000 R CNN
F 1 "R" H 10080 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10080 3100 50  0001 C CNN
F 3 "~" H 10150 3100 50  0001 C CNN
	1    10150 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C12
U 1 1 5D331833
P 8800 3100
F 0 "C12" H 8685 3054 50  0000 R CNN
F 1 "C" H 8685 3145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8838 2950 50  0001 C CNN
F 3 "~" H 8800 3100 50  0001 C CNN
	1    8800 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C13
U 1 1 5D331C2A
P 9450 3100
F 0 "C13" H 9335 3054 50  0000 R CNN
F 1 "C" H 9335 3145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9488 2950 50  0001 C CNN
F 3 "~" H 9450 3100 50  0001 C CNN
	1    9450 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 2700 8800 2700
Wire Wire Line
	9450 2950 9450 2700
Wire Wire Line
	8800 2950 8800 2700
$Comp
L Device:C C11
U 1 1 5D35AE30
P 8500 3100
F 0 "C11" H 8385 3054 50  0000 R CNN
F 1 "C" H 8385 3145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8538 2950 50  0001 C CNN
F 3 "~" H 8500 3100 50  0001 C CNN
	1    8500 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:C C14
U 1 1 5D35B189
P 9800 3100
F 0 "C14" H 9685 3054 50  0000 R CNN
F 1 "C" H 9685 3145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9838 2950 50  0001 C CNN
F 3 "~" H 9800 3100 50  0001 C CNN
	1    9800 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9450 2700 9800 2700
Wire Wire Line
	9800 2700 9800 2950
Connection ~ 9450 2700
Wire Wire Line
	8800 2700 8500 2700
Wire Wire Line
	8500 2700 8500 2950
Connection ~ 8800 2700
$Comp
L power:GND #PWR09
U 1 1 5D362CFF
P 9200 3450
F 0 "#PWR09" H 9200 3200 50  0001 C CNN
F 1 "GND" H 9205 3277 50  0000 C CNN
F 2 "" H 9200 3450 50  0001 C CNN
F 3 "" H 9200 3450 50  0001 C CNN
	1    9200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3250 8800 3250
Wire Wire Line
	9200 3250 9200 3450
Connection ~ 8800 3250
Wire Wire Line
	8800 3250 9200 3250
Wire Wire Line
	9800 3250 9450 3250
Connection ~ 9200 3250
Connection ~ 9450 3250
Wire Wire Line
	9450 3250 9200 3250
Wire Wire Line
	9800 2700 10150 2700
Wire Wire Line
	10150 2700 10150 2950
Connection ~ 9800 2700
Wire Wire Line
	10150 3250 10150 3350
Wire Wire Line
	8150 2950 8150 2700
Wire Wire Line
	8150 2700 8500 2700
Connection ~ 8500 2700
Wire Wire Line
	8150 3250 8150 3350
Text Label 8150 3350 0    50   ~ 0
VEE
Text Label 10150 3350 0    50   ~ 0
VCC
Wire Wire Line
	9050 4500 9050 4200
Wire Wire Line
	9150 4500 9150 4200
Text Label 9050 4200 2    50   ~ 0
VEE
Text Label 9150 4200 0    50   ~ 0
GND
Wire Wire Line
	9250 4500 9250 4350
Text Label 9250 4350 0    50   ~ 0
VCC
$EndSCHEMATC
