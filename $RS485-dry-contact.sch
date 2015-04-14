EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:RS485-dry-contact-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "13 apr 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BRIDGE D2
U 1 1 5528FB75
P 2850 2150
F 0 "D2" H 2850 2200 70  0000 C CNN
F 1 "BRIDGE" H 2850 2100 70  0000 C CNN
F 2 "PIN_ARRAY_4x1" H 2850 2150 60  0000 C CNN
F 3 "~" H 2850 2150 60  0000 C CNN
	1    2850 2150
	1    0    0    -1  
$EndComp
$Comp
L CP1 C1
U 1 1 5528FC5B
P 2900 3600
F 0 "C1" H 2950 3700 50  0000 L CNN
F 1 "CP1" H 2950 3500 50  0000 L CNN
F 2 "c_tant_D" H 2900 3600 60  0000 C CNN
F 3 "~" H 2900 3600 60  0000 C CNN
	1    2900 3600
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 5528FC9A
P 2900 4150
F 0 "C2" H 2900 4250 40  0000 L CNN
F 1 "C" H 2906 4065 40  0000 L CNN
F 2 "SM1206" H 2938 4000 30  0000 C CNN
F 3 "~" H 2900 4150 60  0000 C CNN
	1    2900 4150
	0    -1   -1   0   
$EndComp
$Comp
L 7805 U1
U 1 1 5528FDD5
P 3650 5050
F 0 "U1" H 3800 4854 60  0000 C CNN
F 1 "7805" H 3650 5250 60  0000 C CNN
F 2 "TO92" H 3650 5050 60  0000 C CNN
F 3 "~" H 3650 5050 60  0000 C CNN
	1    3650 5050
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5528FDFC
P 2900 5550
F 0 "C3" H 2900 5650 40  0000 L CNN
F 1 "C" H 2906 5465 40  0000 L CNN
F 2 "SM1206" H 2938 5400 30  0000 C CNN
F 3 "~" H 2900 5550 60  0000 C CNN
	1    2900 5550
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5528FE23
P 3200 5950
F 0 "R1" V 3280 5950 40  0000 C CNN
F 1 "R" V 3207 5951 40  0000 C CNN
F 2 "SM1206" V 3130 5950 30  0000 C CNN
F 3 "~" H 3200 5950 30  0000 C CNN
	1    3200 5950
	0    -1   -1   0   
$EndComp
$Comp
L LED D1
U 1 1 5528FE3C
P 2400 5950
F 0 "D1" H 2400 6050 50  0000 C CNN
F 1 "LED" H 2400 5850 50  0000 C CNN
F 2 "LED-1206" H 2400 5950 60  0000 C CNN
F 3 "~" H 2400 5950 60  0000 C CNN
	1    2400 5950
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR01
U 1 1 5528FE8B
P 2000 6500
F 0 "#PWR01" H 2000 6500 30  0001 C CNN
F 1 "GND" H 2000 6430 30  0001 C CNN
F 2 "" H 2000 6500 60  0000 C CNN
F 3 "" H 2000 6500 60  0000 C CNN
	1    2000 6500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 5528FEC5
P 3700 6450
F 0 "#PWR02" H 3700 6550 30  0001 C CNN
F 1 "VCC" H 3700 6550 30  0000 C CNN
F 2 "" H 3700 6450 60  0000 C CNN
F 3 "" H 3700 6450 60  0000 C CNN
	1    3700 6450
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 5528FF66
P 750 2000
F 0 "P1" V 700 2000 40  0000 C CNN
F 1 "CONN_2" V 800 2000 40  0000 C CNN
F 2 "bornier2" H 750 2000 60  0000 C CNN
F 3 "~" H 750 2000 60  0000 C CNN
	1    750  2000
	-1   0    0    1   
$EndComp
$Comp
L PWR_FLAG #FLG03
U 1 1 55290020
P 750 1550
F 0 "#FLG03" H 750 1645 30  0001 C CNN
F 1 "PWR_FLAG" H 750 1730 30  0000 C CNN
F 2 "" H 750 1550 60  0000 C CNN
F 3 "" H 750 1550 60  0000 C CNN
	1    750  1550
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 5529002D
P 750 2750
F 0 "#FLG04" H 750 2845 30  0001 C CNN
F 1 "PWR_FLAG" H 750 2930 30  0000 C CNN
F 2 "" H 750 2750 60  0000 C CNN
F 3 "" H 750 2750 60  0000 C CNN
	1    750  2750
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA168PA-A IC1
U 1 1 5529006D
P 6200 3800
F 0 "IC1" H 5450 5050 40  0000 L BNN
F 1 "ATMEGA168PA-A" H 6600 2400 40  0000 L BNN
F 2 "TQFP32" H 6200 3800 30  0000 C CIN
F 3 "" H 6200 3800 60  0000 C CNN
	1    6200 3800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR05
U 1 1 55290419
P 5100 2450
F 0 "#PWR05" H 5100 2550 30  0001 C CNN
F 1 "VCC" H 5100 2550 30  0000 C CNN
F 2 "" H 5100 2450 60  0000 C CNN
F 3 "" H 5100 2450 60  0000 C CNN
	1    5100 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 552904E9
P 5200 5200
F 0 "#PWR06" H 5200 5200 30  0001 C CNN
F 1 "GND" H 5200 5130 30  0001 C CNN
F 2 "" H 5200 5200 60  0000 C CNN
F 3 "" H 5200 5200 60  0000 C CNN
	1    5200 5200
	1    0    0    -1  
$EndComp
NoConn ~ 5300 4050
NoConn ~ 5300 4150
NoConn ~ 7200 4500
$Comp
L CONN_2 P4
U 1 1 55291219
P 10800 4900
F 0 "P4" V 10750 4900 40  0000 C CNN
F 1 "CONN_2" V 10850 4900 40  0000 C CNN
F 2 "bornier2" H 10800 4900 60  0000 C CNN
F 3 "~" H 10800 4900 60  0000 C CNN
	1    10800 4900
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 55291C4F
P 5800 6150
F 0 "C4" H 5800 6250 40  0000 L CNN
F 1 "C" H 5806 6065 40  0000 L CNN
F 2 "SM1206" H 5838 6000 30  0000 C CNN
F 3 "~" H 5800 6150 60  0000 C CNN
	1    5800 6150
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 55291C5E
P 6200 6150
F 0 "C5" H 6200 6250 40  0000 L CNN
F 1 "C" H 6206 6065 40  0000 L CNN
F 2 "SM1206" H 6238 6000 30  0000 C CNN
F 3 "~" H 6200 6150 60  0000 C CNN
	1    6200 6150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 55291E59
P 6200 6600
F 0 "#PWR07" H 6200 6600 30  0001 C CNN
F 1 "GND" H 6200 6530 30  0001 C CNN
F 2 "" H 6200 6600 60  0000 C CNN
F 3 "" H 6200 6600 60  0000 C CNN
	1    6200 6600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 55291F2A
P 6200 5700
F 0 "#PWR08" H 6200 5800 30  0001 C CNN
F 1 "VCC" H 6200 5800 30  0000 C CNN
F 2 "" H 6200 5700 60  0000 C CNN
F 3 "" H 6200 5700 60  0000 C CNN
	1    6200 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 55291FA4
P 8950 5400
F 0 "#PWR09" H 8950 5400 30  0001 C CNN
F 1 "GND" H 8950 5330 30  0001 C CNN
F 2 "" H 8950 5400 60  0000 C CNN
F 3 "" H 8950 5400 60  0000 C CNN
	1    8950 5400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR010
U 1 1 55292029
P 8950 4400
F 0 "#PWR010" H 8950 4500 30  0001 C CNN
F 1 "VCC" H 8950 4500 30  0000 C CNN
F 2 "" H 8950 4400 60  0000 C CNN
F 3 "" H 8950 4400 60  0000 C CNN
	1    8950 4400
	1    0    0    -1  
$EndComp
$Comp
L CONN_6 P2
U 1 1 552920AA
P 10800 2900
F 0 "P2" V 10750 2900 60  0000 C CNN
F 1 "CONN_6" V 10850 2900 60  0000 C CNN
F 2 "PIN_ARRAY-6X1" H 10800 2900 60  0000 C CNN
F 3 "~" H 10800 2900 60  0000 C CNN
	1    10800 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 55292317
P 10350 3250
F 0 "#PWR011" H 10350 3250 30  0001 C CNN
F 1 "GND" H 10350 3180 30  0001 C CNN
F 2 "" H 10350 3250 60  0000 C CNN
F 3 "" H 10350 3250 60  0000 C CNN
	1    10350 3250
	1    0    0    -1  
$EndComp
NoConn ~ 5300 3300
$Comp
L CRYSTAL X1
U 1 1 552935AB
P 7750 2200
F 0 "X1" H 7750 2350 60  0000 C CNN
F 1 "CRYSTAL" H 7750 2050 60  0000 C CNN
F 2 "crystal_FA238-TSX3225" H 7750 2200 60  0000 C CNN
F 3 "~" H 7750 2200 60  0000 C CNN
	1    7750 2200
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 552936C2
P 7450 1750
F 0 "C7" H 7450 1850 40  0000 L CNN
F 1 "C" H 7456 1665 40  0000 L CNN
F 2 "SM1206" H 7488 1600 30  0000 C CNN
F 3 "~" H 7450 1750 60  0000 C CNN
	1    7450 1750
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 552936C8
P 8050 1750
F 0 "C8" H 8050 1850 40  0000 L CNN
F 1 "C" H 8056 1665 40  0000 L CNN
F 2 "SM1206" H 8088 1600 30  0000 C CNN
F 3 "~" H 8050 1750 60  0000 C CNN
	1    8050 1750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 552937E0
P 8050 1400
F 0 "#PWR012" H 8050 1400 30  0001 C CNN
F 1 "GND" H 8050 1330 30  0001 C CNN
F 2 "" H 8050 1400 60  0000 C CNN
F 3 "" H 8050 1400 60  0000 C CNN
	1    8050 1400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 552937E6
P 7450 1400
F 0 "#PWR013" H 7450 1400 30  0001 C CNN
F 1 "GND" H 7450 1330 30  0001 C CNN
F 2 "" H 7450 1400 60  0000 C CNN
F 3 "" H 7450 1400 60  0000 C CNN
	1    7450 1400
	-1   0    0    1   
$EndComp
$Comp
L SP3485EN IC2
U 1 1 5529018F
P 8950 4900
F 0 "IC2" H 8750 5150 40  0000 C CNN
F 1 "SP3485EN" H 9150 4650 40  0000 C CNN
F 2 "SO8N" H 8950 4900 35  0000 C CIN
F 3 "" H 8950 4900 60  0000 C CNN
	1    8950 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2150 3700 4650
Wire Wire Line
	4650 3600 3100 3600
Wire Wire Line
	2000 2150 2000 6500
Wire Wire Line
	2000 3600 2700 3600
Wire Wire Line
	3700 4150 3100 4150
Connection ~ 3700 3600
Wire Wire Line
	2000 4150 2700 4150
Connection ~ 2000 3600
Connection ~ 2000 4150
Connection ~ 3700 4150
Wire Wire Line
	2000 5050 3400 5050
Wire Wire Line
	3700 5450 3700 6450
Wire Wire Line
	3700 5550 3100 5550
Wire Wire Line
	2000 5550 2700 5550
Connection ~ 2000 5050
Wire Wire Line
	2000 5950 2200 5950
Connection ~ 2000 5550
Wire Wire Line
	3700 5950 3450 5950
Connection ~ 3700 5550
Wire Wire Line
	2950 5950 2600 5950
Connection ~ 2000 5950
Connection ~ 3700 5950
Wire Wire Line
	1100 1300 2850 1300
Wire Wire Line
	1100 1300 1100 1900
Wire Wire Line
	1100 2100 1100 3000
Wire Wire Line
	750  3000 2850 3000
Wire Wire Line
	750  3000 750  2750
Connection ~ 1100 3000
Wire Wire Line
	750  1550 750  1700
Wire Wire Line
	750  1700 1100 1700
Connection ~ 1100 1700
Wire Wire Line
	5100 3000 5300 3000
Wire Wire Line
	5100 2450 5100 3000
Wire Wire Line
	5100 2700 5300 2700
Wire Wire Line
	5300 2800 5100 2800
Connection ~ 5100 2800
Wire Wire Line
	5200 4800 5200 5200
Wire Wire Line
	5200 5000 5300 5000
Wire Wire Line
	5200 4900 5300 4900
Wire Wire Line
	7550 2650 7550 3000
Wire Wire Line
	7550 3000 7200 3000
Connection ~ 5100 2700
Connection ~ 5200 5000
Wire Wire Line
	8400 4150 7200 4150
Wire Wire Line
	7200 4300 7850 4300
Wire Wire Line
	7850 4300 7850 4750
Wire Wire Line
	7850 4750 8550 4750
Wire Wire Line
	7750 5050 8550 5050
Wire Wire Line
	7750 5050 7750 4400
Wire Wire Line
	7750 4400 7200 4400
Wire Wire Line
	10450 4800 9350 4800
Wire Wire Line
	9350 5000 10450 5000
Wire Wire Line
	5800 5950 5800 5850
Wire Wire Line
	5800 5850 6200 5850
Wire Wire Line
	6200 5700 6200 5950
Connection ~ 6200 5850
Wire Wire Line
	5800 6350 5800 6450
Wire Wire Line
	5800 6450 6200 6450
Wire Wire Line
	6200 6350 6200 6600
Connection ~ 6200 6450
Wire Wire Line
	8950 5400 8950 5250
Wire Wire Line
	8950 4550 8950 4400
Wire Wire Line
	10450 2650 10350 2650
Wire Wire Line
	10350 2650 10350 3250
Wire Wire Line
	10350 3150 10450 3150
Wire Wire Line
	10450 3050 10350 3050
Connection ~ 10350 3050
Wire Wire Line
	10450 2950 10350 2950
Connection ~ 10350 2950
Wire Wire Line
	10450 2850 10350 2850
Connection ~ 10350 2850
Wire Wire Line
	10450 2750 10350 2750
Connection ~ 10350 2750
Connection ~ 10350 3150
Wire Wire Line
	7450 1950 7450 3300
Wire Wire Line
	8050 1950 8050 3400
Wire Wire Line
	8050 3400 7200 3400
Connection ~ 8050 2200
Wire Wire Line
	7450 1550 7450 1400
Wire Wire Line
	8050 1550 8050 1400
Wire Wire Line
	7200 4800 7300 4800
Wire Wire Line
	4450 1650 4450 5350
Wire Wire Line
	4450 5350 7550 5350
Wire Wire Line
	7550 5350 7550 4700
Wire Wire Line
	7550 4700 7200 4700
NoConn ~ 4350 1750
$Comp
L GND #PWR014
U 1 1 55295093
P 4250 2000
F 0 "#PWR014" H 4250 2000 30  0001 C CNN
F 1 "GND" H 4250 1930 30  0001 C CNN
F 2 "" H 4250 2000 60  0000 C CNN
F 3 "" H 4250 2000 60  0000 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1550 4250 2000
$Comp
L GND #PWR015
U 1 1 55295132
P 4550 2000
F 0 "#PWR015" H 4550 2000 30  0001 C CNN
F 1 "GND" H 4550 1930 30  0001 C CNN
F 2 "" H 4550 2000 60  0000 C CNN
F 3 "" H 4550 2000 60  0000 C CNN
	1    4550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1200 4550 2000
Wire Wire Line
	4650 1300 4650 3600
$Comp
L GND #PWR016
U 1 1 5529525F
P 4750 2000
F 0 "#PWR016" H 4750 2000 30  0001 C CNN
F 1 "GND" H 4750 1930 30  0001 C CNN
F 2 "" H 4750 2000 60  0000 C CNN
F 3 "" H 4750 2000 60  0000 C CNN
	1    4750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1500 4750 2000
$Comp
L CONN_6 P3
U 1 1 55295FCC
P 9500 2900
F 0 "P3" V 9450 2900 60  0000 C CNN
F 1 "CONN_6" V 9550 2900 60  0000 C CNN
F 2 "PIN_ARRAY-6X1" H 9500 2900 60  0000 C CNN
F 3 "~" H 9500 2900 60  0000 C CNN
	1    9500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2650 9150 2650
Wire Wire Line
	7850 2850 9150 2850
Wire Wire Line
	7200 3100 7650 3100
Wire Wire Line
	7650 3100 7650 2750
Wire Wire Line
	7650 2750 9150 2750
Wire Wire Line
	7200 3200 7850 3200
Wire Wire Line
	7850 3200 7850 2850
Wire Wire Line
	7200 3550 8200 3550
Wire Wire Line
	8200 3550 8200 2950
Wire Wire Line
	8200 2950 9150 2950
Wire Wire Line
	9150 3050 8300 3050
Wire Wire Line
	8300 3050 8300 3650
Wire Wire Line
	8300 3650 7200 3650
Wire Wire Line
	8400 3150 8400 4150
Wire Wire Line
	8400 3150 9150 3150
$Comp
L R R2
U 1 1 5529650E
P 9050 3900
F 0 "R2" V 9130 3900 40  0000 C CNN
F 1 "R" V 9057 3901 40  0000 C CNN
F 2 "SM1206" V 8980 3900 30  0000 C CNN
F 3 "~" H 9050 3900 30  0000 C CNN
	1    9050 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 3900 8400 3900
Connection ~ 8400 3900
$Comp
L VCC #PWR017
U 1 1 552965A3
P 9550 3900
F 0 "#PWR017" H 9550 4000 30  0001 C CNN
F 1 "VCC" H 9550 4000 30  0000 C CNN
F 2 "" H 9550 3900 60  0000 C CNN
F 3 "" H 9550 3900 60  0000 C CNN
	1    9550 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	9550 3900 9300 3900
Wire Wire Line
	8550 4950 7950 4950
Wire Wire Line
	7950 4950 7950 3950
Wire Wire Line
	7950 3950 7200 3950
Wire Wire Line
	7200 4050 8050 4050
Wire Wire Line
	8050 4050 8050 4850
Wire Wire Line
	8050 4850 8550 4850
Wire Wire Line
	4150 1400 4150 2200
Wire Wire Line
	4150 2200 7300 2200
Wire Wire Line
	7300 2200 7300 4800
$Comp
L CONN_3 K1
U 1 1 552AB124
P 4100 750
F 0 "K1" V 4050 750 50  0000 C CNN
F 1 "CONN_3" V 4150 750 40  0000 C CNN
F 2 "bornier3" H 4100 750 60  0000 C CNN
F 3 "~" H 4100 750 60  0000 C CNN
	1    4100 750 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_4 P5
U 1 1 552AB135
P 5300 650
F 0 "P5" V 5250 650 50  0000 C CNN
F 1 "CONN_4" V 5350 650 50  0000 C CNN
F 2 "bornier4" H 5300 650 60  0000 C CNN
F 3 "~" H 5300 650 60  0000 C CNN
	1    5300 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 7200 2700
NoConn ~ 7200 2800
NoConn ~ 7200 2900
NoConn ~ 7200 3750
NoConn ~ 7200 3850
NoConn ~ 7200 4900
NoConn ~ 7200 5000
$Comp
L LED D3
U 1 1 552AB21A
P 8500 4450
F 0 "D3" H 8500 4550 50  0000 C CNN
F 1 "LED" H 8500 4350 50  0000 C CNN
F 2 "LED-1206" H 8500 4450 60  0000 C CNN
F 3 "~" H 8500 4450 60  0000 C CNN
	1    8500 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8500 4750 8500 4650
Connection ~ 8500 4750
Wire Wire Line
	8500 4250 8500 4100
Wire Wire Line
	8500 4100 8800 4100
$Comp
L R R3
U 1 1 552AB339
P 9050 4100
F 0 "R3" V 9130 4100 40  0000 C CNN
F 1 "R" V 9057 4101 40  0000 C CNN
F 2 "SM1206" V 8980 4100 30  0000 C CNN
F 3 "~" H 9050 4100 30  0000 C CNN
	1    9050 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 4100 9550 4100
$Comp
L GND #PWR018
U 1 1 552AB3BD
P 9550 4100
F 0 "#PWR018" H 9550 4100 30  0001 C CNN
F 1 "GND" H 9550 4030 30  0001 C CNN
F 2 "" H 9550 4100 60  0000 C CNN
F 3 "" H 9550 4100 60  0000 C CNN
	1    9550 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 3300 7200 3300
Connection ~ 7450 2200
$Comp
L LED D4
U 1 1 552AB893
P 8500 5500
F 0 "D4" H 8500 5600 50  0000 C CNN
F 1 "LED" H 8500 5400 50  0000 C CNN
F 2 "LED-1206" H 8500 5500 60  0000 C CNN
F 3 "~" H 8500 5500 60  0000 C CNN
	1    8500 5500
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 552AB899
P 9100 5800
F 0 "R4" V 9180 5800 40  0000 C CNN
F 1 "R" V 9107 5801 40  0000 C CNN
F 2 "SM1206" V 9030 5800 30  0000 C CNN
F 3 "~" H 9100 5800 30  0000 C CNN
	1    9100 5800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR019
U 1 1 552AB89F
P 9550 5800
F 0 "#PWR019" H 9550 5800 30  0001 C CNN
F 1 "GND" H 9550 5730 30  0001 C CNN
F 2 "" H 9550 5800 60  0000 C CNN
F 3 "" H 9550 5800 60  0000 C CNN
	1    9550 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 5800 9350 5800
Wire Wire Line
	8850 5800 8500 5800
Wire Wire Line
	8500 5800 8500 5700
Wire Wire Line
	8500 5300 8500 5050
Connection ~ 8500 5050
Wire Wire Line
	7200 4600 7650 4600
Wire Wire Line
	7650 4600 7650 5300
$Comp
L LED D5
U 1 1 552ABAE8
P 7650 5500
F 0 "D5" H 7650 5600 50  0000 C CNN
F 1 "LED" H 7650 5400 50  0000 C CNN
F 2 "LED-1206" H 7650 5500 60  0000 C CNN
F 3 "~" H 7650 5500 60  0000 C CNN
	1    7650 5500
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 552ABAEE
P 9100 6000
F 0 "R5" V 9180 6000 40  0000 C CNN
F 1 "R" V 9107 6001 40  0000 C CNN
F 2 "SM1206" V 9030 6000 30  0000 C CNN
F 3 "~" H 9100 6000 30  0000 C CNN
	1    9100 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR020
U 1 1 552ABAF4
P 9550 6000
F 0 "#PWR020" H 9550 6000 30  0001 C CNN
F 1 "GND" H 9550 5930 30  0001 C CNN
F 2 "" H 9550 6000 60  0000 C CNN
F 3 "" H 9550 6000 60  0000 C CNN
	1    9550 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 6000 9350 6000
Wire Wire Line
	8850 6000 7650 6000
Wire Wire Line
	7650 6000 7650 5700
Wire Wire Line
	4950 4800 5300 4800
Connection ~ 5200 4900
Wire Wire Line
	2000 6350 3100 6350
Wire Wire Line
	3100 6350 3100 6800
Wire Wire Line
	3100 6800 4950 6800
Wire Wire Line
	4950 6800 4950 4800
Connection ~ 5200 4800
Connection ~ 2000 6350
Wire Wire Line
	4150 1400 5450 1400
Wire Wire Line
	5450 1400 5450 1000
Wire Wire Line
	4250 1550 5350 1550
Wire Wire Line
	5350 1550 5350 1000
Wire Wire Line
	4450 1650 5150 1650
Wire Wire Line
	5150 1650 5150 1000
Wire Wire Line
	4550 1200 4200 1200
Wire Wire Line
	4200 1200 4200 1100
Wire Wire Line
	4650 1300 4100 1300
Wire Wire Line
	4100 1300 4100 1100
Wire Wire Line
	4750 1500 4000 1500
Wire Wire Line
	4000 1500 4000 1100
NoConn ~ 5250 1000
$EndSCHEMATC