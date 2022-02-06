EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector:Conn_01x13_Female J3
U 1 1 61C01F22
P 5000 5150
F 0 "J3" H 5028 5176 50  0000 L CNN
F 1 "Conn_01x13_Female" H 5028 5085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x13_P2.54mm_Vertical" H 5000 5150 50  0001 C CNN
F 3 "~" H 5000 5150 50  0001 C CNN
	1    5000 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J4
U 1 1 61C03423
P 6050 4850
F 0 "J4" H 6078 4826 50  0000 L CNN
F 1 "Conn_01x08_Female" H 6078 4735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 6050 4850 50  0001 C CNN
F 3 "~" H 6050 4850 50  0001 C CNN
	1    6050 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 61C0515D
P 6050 5550
F 0 "J5" H 6078 5526 50  0000 L CNN
F 1 "Conn_01x06_Female" H 6078 5435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x06_P2.54mm_Vertical" H 6050 5550 50  0001 C CNN
F 3 "~" H 6050 5550 50  0001 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61C06C01
P 4650 7000
F 0 "#PWR0101" H 4650 6750 50  0001 C CNN
F 1 "GND" H 4655 6827 50  0000 C CNN
F 2 "" H 4650 7000 50  0001 C CNN
F 3 "" H 4650 7000 50  0001 C CNN
	1    4650 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6150 4650 6150
Connection ~ 4650 6150
Wire Wire Line
	4650 6150 4650 6450
Wire Wire Line
	3000 6050 2800 6050
Wire Wire Line
	4100 6050 4400 6050
Wire Wire Line
	4400 6050 4400 5100
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 61C096E9
P 2400 5200
F 0 "J1" H 2292 4875 50  0000 C CNN
F 1 "Conn_01x02_Female" H 2292 4966 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2400 5200 50  0001 C CNN
F 3 "~" H 2400 5200 50  0001 C CNN
	1    2400 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 6650 4250 6650
Wire Wire Line
	4250 6650 4250 7050
Wire Wire Line
	4250 7050 2600 7050
Wire Wire Line
	3000 6650 2900 6650
Wire Wire Line
	2900 6650 2900 6950
Wire Wire Line
	2900 6950 2600 6950
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 61C0BA7E
P 2400 7050
F 0 "J2" H 2292 6725 50  0000 C CNN
F 1 "Conn_01x02_Female" H 2292 6816 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2400 7050 50  0001 C CNN
F 3 "~" H 2400 7050 50  0001 C CNN
	1    2400 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 5100 2600 5100
$Comp
L NJM2670D2:NJM2670D2 D1
U 1 1 61C011F4
P 3550 5650
F 0 "D1" H 3550 5775 50  0000 C CNN
F 1 "NJM2670D2" H 3550 5684 50  0000 C CNN
F 2 "NJM2670D2:NJM2670D2" H 3550 5650 50  0001 C CNN
F 3 "" H 3550 5650 50  0001 C CNN
	1    3550 5650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 61C0628C
P 4800 7000
F 0 "#PWR0102" H 4800 6850 50  0001 C CNN
F 1 "VCC" H 4750 7200 50  0000 C CNN
F 2 "" H 4800 7000 50  0001 C CNN
F 3 "" H 4800 7000 50  0001 C CNN
	1    4800 7000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 5750 4800 5750
Connection ~ 4800 5750
Wire Wire Line
	3000 5850 2900 5850
Wire Wire Line
	4100 5950 4250 5950
Wire Wire Line
	4250 5950 4250 4850
Wire Wire Line
	4250 4850 4800 4850
Wire Wire Line
	3000 6350 2700 6350
Wire Wire Line
	4500 6350 4100 6350
Wire Wire Line
	4650 5550 4800 5550
Wire Wire Line
	4800 5450 4500 5450
Wire Wire Line
	4500 5450 4500 6350
Wire Wire Line
	3000 6450 2600 6450
Wire Wire Line
	3000 5950 2500 5950
Wire Wire Line
	2500 5950 2500 5250
Wire Wire Line
	2500 5250 4800 5250
Wire Wire Line
	4800 4950 4050 4950
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 61C1A252
P 6050 6350
F 0 "J6" H 6078 6376 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6078 6285 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 6050 6350 50  0001 C CNN
F 3 "~" H 6050 6350 50  0001 C CNN
	1    6050 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 5750 5700 5750
Wire Wire Line
	5850 6450 4650 6450
Connection ~ 4650 6450
Wire Wire Line
	4650 6450 4400 6450
Wire Wire Line
	4650 6450 4650 6900
Wire Wire Line
	4100 6750 4800 6750
Connection ~ 4800 6750
Wire Wire Line
	4800 6750 4800 7000
Wire Wire Line
	4400 6900 3000 6900
Wire Wire Line
	3000 6750 3000 6900
Wire Wire Line
	4400 6450 4400 6900
Wire Wire Line
	4650 5550 4650 5650
Wire Wire Line
	3000 5750 3000 5650
Wire Wire Line
	3000 5650 4650 5650
Connection ~ 4650 5650
Wire Wire Line
	4650 5650 4650 6150
Wire Wire Line
	2900 5850 2900 4750
Wire Wire Line
	2900 4750 4800 4750
Wire Wire Line
	2800 6050 2800 5200
Wire Wire Line
	2600 5200 2800 5200
Wire Wire Line
	2700 6350 2700 5450
Wire Wire Line
	2600 6450 2600 5350
Wire Wire Line
	2600 5350 4800 5350
Wire Wire Line
	4050 5450 2700 5450
Wire Wire Line
	4050 4950 4050 5450
Wire Wire Line
	5850 6350 4800 6350
Connection ~ 4800 6350
Wire Wire Line
	4800 6350 4800 6600
Wire Wire Line
	5700 5750 5700 6250
Wire Wire Line
	5700 6250 5850 6250
Wire Wire Line
	4800 5750 4800 6350
Wire Wire Line
	4800 5650 4750 5650
Wire Wire Line
	4750 5650 4750 5850
Wire Wire Line
	4750 5850 4100 5850
$Comp
L Device:C C1
U 1 1 61C433BC
P 5200 6900
F 0 "C1" V 4948 6900 50  0000 C CNN
F 1 "C" V 5039 6900 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W2.0mm_P2.50mm" H 5238 6750 50  0001 C CNN
F 3 "~" H 5200 6900 50  0001 C CNN
	1    5200 6900
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 6900 4650 6900
Connection ~ 4650 6900
Wire Wire Line
	4650 6900 4650 7000
Wire Wire Line
	5350 6900 5350 6600
Wire Wire Line
	5350 6600 4800 6600
Connection ~ 4800 6600
Wire Wire Line
	4800 6600 4800 6750
$EndSCHEMATC