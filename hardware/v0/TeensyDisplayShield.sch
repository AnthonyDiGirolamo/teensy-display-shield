EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Teensy Display Shield"
Date ""
Rev "0"
Comp "Anthony DiGirolamo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR010
U 1 1 60062D13
P 1050 7000
F 0 "#PWR010" H 1050 6750 50  0001 C CNN
F 1 "GND" H 1055 6827 50  0000 C CNN
F 2 "" H 1050 7000 50  0001 C CNN
F 3 "" H 1050 7000 50  0001 C CNN
	1    1050 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6008957B
P 1450 7000
F 0 "#PWR011" H 1450 6750 50  0001 C CNN
F 1 "GND" H 1455 6827 50  0000 C CNN
F 2 "" H 1450 7000 50  0001 C CNN
F 3 "" H 1450 7000 50  0001 C CNN
	1    1450 7000
	1    0    0    -1  
$EndComp
Text GLabel 1450 2950 2    50   Input ~ 0
USBHost_5V
Text GLabel 1400 3250 2    50   Input ~ 0
USBHost_D-
Text GLabel 1400 3150 2    50   Input ~ 0
USBHost_D+
Text GLabel 8050 3950 0    50   Input ~ 0
USBHost_5V
Text GLabel 10250 2300 2    50   Input ~ 0
A1-RX3
Text GLabel 10250 3500 2    50   Input ~ 0
D33
Text GLabel 10250 3400 2    50   Input ~ 0
D34-RX8
Text GLabel 10250 3300 2    50   Input ~ 0
D35-TX8
Text GLabel 10250 3200 2    50   Input ~ 0
D36-SPI-CS
Text GLabel 10250 3100 2    50   Input ~ 0
D37-SPI-CS
Text GLabel 10250 3000 2    50   Input ~ 0
A14-SPI1-CS1
Text GLabel 10250 2900 2    50   Input ~ 0
A15-SPI1-MISO1
Text GLabel 10250 2800 2    50   Input ~ 0
A16
Text GLabel 10250 2700 2    50   Input ~ 0
A17
Text GLabel 8050 3500 0    50   Input ~ 0
D32
Text GLabel 8050 3400 0    50   Input ~ 0
D31
Text GLabel 8050 3300 0    50   Input ~ 0
D30
Text GLabel 8050 3000 0    50   Input ~ 0
A13-SPI1-SCK1
Text GLabel 8050 2900 0    50   Input ~ 0
A12-SPI1-MOSI1
Text GLabel 8050 2800 0    50   Input ~ 0
A11-SDA2-RX6
Text GLabel 8050 2700 0    50   Input ~ 0
A10-SCL2-TX6
Text GLabel 10200 850  0    50   Input ~ 0
Teensy-VUSB
Text GLabel 8050 2500 0    50   Input ~ 0
D12-SPI-MISO
Text GLabel 8050 2400 0    50   Input ~ 0
D11-SPI-MOSI
Text GLabel 8050 2300 0    50   Input ~ 0
D10-SPI-CS
Text GLabel 8050 2200 0    50   Input ~ 0
D9
Text GLabel 8050 2100 0    50   Input ~ 0
D8-TX2
Text GLabel 8050 2000 0    50   Input ~ 0
D7-RX2
Text GLabel 8050 1900 0    50   Input ~ 0
D6
Text GLabel 8050 1800 0    50   Input ~ 0
D5
Text GLabel 8050 1700 0    50   Input ~ 0
D4
Text GLabel 8050 1600 0    50   Input ~ 0
D3
Text GLabel 8050 1500 0    50   Input ~ 0
D2
Text GLabel 8050 1400 0    50   Input ~ 0
D1-TX1-SPI1-MISO1
Text GLabel 8050 1300 0    50   Input ~ 0
D0-RX1-SPI-CS1
Text GLabel 10250 1500 2    50   Input ~ 0
A9
Text GLabel 10250 1600 2    50   Input ~ 0
A8
Text GLabel 10250 1700 2    50   Input ~ 0
A7-RX5
Text GLabel 10250 1800 2    50   Input ~ 0
A6-TX5
Text GLabel 10250 2500 2    50   Input ~ 0
D13-SPI-SCK
Text GLabel 10250 2400 2    50   Input ~ 0
A0-TX3
Text GLabel 10250 2200 2    50   Input ~ 0
A2-SCL1-RX4
Text GLabel 10250 2000 2    50   Input ~ 0
A4-SDA
Text GLabel 10250 1900 2    50   Input ~ 0
A5-SCL
Text GLabel 8050 4150 0    50   Input ~ 0
USBHost_D+
Text GLabel 8050 4050 0    50   Input ~ 0
USBHost_D-
$Comp
L power:+3.3V #PWR019
U 1 1 5FFA5A44
P 10600 1400
F 0 "#PWR019" H 10600 1250 50  0001 C CNN
F 1 "+3.3V" H 10750 1500 50  0000 C CNN
F 2 "" H 10600 1400 50  0001 C CNN
F 3 "" H 10600 1400 50  0001 C CNN
	1    10600 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6039BEA3
P 9150 5050
F 0 "#PWR09" H 9150 4800 50  0001 C CNN
F 1 "GND" H 9155 4877 50  0000 C CNN
F 2 "" H 9150 5050 50  0001 C CNN
F 3 "" H 9150 5050 50  0001 C CNN
	1    9150 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 603A2A87
P 1000 3600
F 0 "#PWR021" H 1000 3350 50  0001 C CNN
F 1 "GND" H 1005 3427 50  0000 C CNN
F 2 "" H 1000 3600 50  0001 C CNN
F 3 "" H 1000 3600 50  0001 C CNN
	1    1000 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5400 1450 5500
Wire Wire Line
	10200 850  10300 850 
Wire Wire Line
	10300 850  10300 1050
Wire Wire Line
	10300 1050 10250 1050
Wire Wire Line
	10250 1400 10600 1400
Text Notes 7150 800  0    118  ~ 0
Teensy 4.1 Header
Text Notes 950  5000 0    118  ~ 0
5v Boost
Text GLabel 10250 2100 2    50   Input ~ 0
A3-SDA1-TX4
Text GLabel 8050 3100 0    50   Input ~ 0
D28-RX7
Text GLabel 8050 3200 0    50   Input ~ 0
D29-TX7
$Comp
L Teensy:Teensy4.1 U2
U 1 1 5FF9189B
P 9150 3350
F 0 "U2" H 8300 5800 50  0000 C CNN
F 1 "Teensy4.1" H 9150 5824 50  0000 C CNN
F 2 "Teensy:Teensy41NoEthernet" H 8750 3750 50  0001 C CNN
F 3 "" H 8750 3750 50  0001 C CNN
	1    9150 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 600537CC
P 1050 6650
F 0 "R3" H 1120 6696 50  0000 L CNN
F 1 "100k" H 1120 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 980 6650 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1003T5E_C25803.html/?href=jlc-SMT" H 1050 6650 50  0001 C CNN
F 4 "C25803" H 1050 6650 50  0001 C CNN "LCSC"
	1    1050 6650
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J2
U 1 1 5FF92C95
P 1000 3150
F 0 "J2" H 850 3500 50  0000 C CNN
F 1 "USB_A" H 1050 3500 50  0000 C CNN
F 2 "Connector_USB:USB_A_Molex_67643_Horizontal" H 1150 3100 50  0001 C CNN
F 3 " ~" H 1150 3100 50  0001 C CNN
	1    1000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3550 1000 3600
NoConn ~ 900  3550
NoConn ~ 8050 3700
NoConn ~ 8050 3800
NoConn ~ 10250 3750
NoConn ~ 10250 3850
NoConn ~ 10250 3950
NoConn ~ 10250 4050
NoConn ~ 10250 4150
NoConn ~ 10250 4250
NoConn ~ 9000 4650
NoConn ~ 9300 4650
NoConn ~ 9450 4650
$Comp
L Device:Battery_Cell BT1
U 1 1 601893D9
P 8850 4900
F 0 "BT1" H 8600 5000 50  0000 L CNN
F 1 "Coin_Cell_2032" H 8150 4900 50  0000 L CNN
F 2 "Teensy:CoinCell2032HarwinS8421-45R-HandSolder" V 8850 4960 50  0001 C CNN
F 3 "~" V 8850 4960 50  0001 C CNN
	1    8850 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60234F45
P 8850 5050
F 0 "#PWR08" H 8850 4800 50  0001 C CNN
F 1 "GND" H 8855 4877 50  0000 C CNN
F 2 "" H 8850 5050 50  0001 C CNN
F 3 "" H 8850 5050 50  0001 C CNN
	1    8850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5900 1450 6300
Text Notes 2250 5500 0    39   ~ 0
Boost:\nVout = 0.6v * (1+R1/R2)\n5v = R1 88k R2 12k\niOverCurrent = 48000 / R3
$Comp
L Device:R_Small R4
U 1 1 603CA6C8
P 2200 6700
F 0 "R4" H 2259 6746 50  0000 L CNN
F 1 "10k" H 2259 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2200 6700 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1002T5E_C25804.html/?href=jlc-SMT" H 2200 6700 50  0001 C CNN
F 4 "C25804" H 2200 6700 50  0001 C CNN "LCSC"
	1    2200 6700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 603DA908
P 1950 6550
F 0 "C5" H 1950 6600 50  0000 L CNN
F 1 "10uF" V 2000 6300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1950 6550 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html/?href=jlc-SMT" H 1950 6550 50  0001 C CNN
F 4 "C13585" H 1950 6550 50  0001 C CNN "LCSC"
	1    1950 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6300 1450 6450
Connection ~ 1450 6300
Wire Wire Line
	1450 6650 1450 7000
$Comp
L power:GND #PWR014
U 1 1 603F66C1
P 2200 7000
F 0 "#PWR014" H 2200 6750 50  0001 C CNN
F 1 "GND" H 2205 6827 50  0000 C CNN
F 2 "" H 2200 7000 50  0001 C CNN
F 3 "" H 2200 7000 50  0001 C CNN
	1    2200 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 604041C3
P 1700 7000
F 0 "#PWR012" H 1700 6750 50  0001 C CNN
F 1 "GND" H 1705 6827 50  0000 C CNN
F 2 "" H 1700 7000 50  0001 C CNN
F 3 "" H 1700 7000 50  0001 C CNN
	1    1700 7000
	1    0    0    -1  
$EndComp
$Comp
L Teensy:FP6291LR-G1 U3
U 1 1 6043C687
P 2450 5850
F 0 "U3" H 2525 5765 50  0000 C CNN
F 1 "FP6291LR-G1" H 2525 5674 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2450 5850 197 0001 C CNN
F 3 "https://lcsc.com/product-detail/DC-DC-Converters_Feeling-Tech-FP6291LR-G1_C18701.html" H 2450 5850 197 0001 C CNN
F 4 "C18701" H 2450 5850 50  0001 C CNN "LCSC"
	1    2450 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6043CB24
P 2550 7000
F 0 "#PWR017" H 2550 6750 50  0001 C CNN
F 1 "GND" H 2555 6827 50  0000 C CNN
F 2 "" H 2550 7000 50  0001 C CNN
F 3 "" H 2550 7000 50  0001 C CNN
	1    2550 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6600 2550 7000
$Comp
L Device:D_Schottky D3
U 1 1 60444296
P 3100 6200
F 0 "D3" H 3100 5983 50  0000 C CNN
F 1 "B5819W" H 3100 6074 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3100 6200 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Changjiang-Electronics-Tech-CJ-B5819W_C8598.html/?href=jlc-SMT" H 3100 6200 50  0001 C CNN
F 4 "C8598" H 3100 6200 50  0001 C CNN "LCSC"
	1    3100 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:L_Small L1
U 1 1 6044DC3B
P 2500 5800
F 0 "L1" V 2685 5800 50  0000 C CNN
F 1 "3.3uH" V 2594 5800 50  0000 C CNN
F 2 "Inductor_SMD:L_Sunlord_MWSA0518_5.4x5.2mm" H 2500 5800 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Power-Inductors_Sunlord-MWSA0402S-3R3MT_C408336.html/?href=jlc-SMT" H 2500 5800 50  0001 C CNN
F 4 "C408336" H 2500 5800 50  0001 C CNN "LCSC"
	1    2500 5800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 6650 1700 7000
Wire Wire Line
	1700 6300 1700 6450
Wire Wire Line
	2850 6200 2900 6200
Connection ~ 2900 6200
Wire Wire Line
	2900 6200 2950 6200
$Comp
L Device:R_Small R5
U 1 1 60472072
P 3100 6400
F 0 "R5" H 3150 6450 50  0000 L CNN
F 1 "120k" H 3150 6350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3100 6400 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1203T5E_C25808.html/?href=jlc-SMT" H 3100 6400 50  0001 C CNN
F 4 "C25808" H 3100 6400 50  0001 C CNN "LCSC"
	1    3100 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 6047263E
P 3250 6750
F 0 "R6" H 3309 6796 50  0000 L CNN
F 1 "12k" H 3309 6705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3250 6750 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1202T5E_C22790.html/?href=jlc-SMT" H 3250 6750 50  0001 C CNN
F 4 "C22790" H 3250 6750 50  0001 C CNN "LCSC"
	1    3250 6750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 60496D9F
P 3400 6400
F 0 "R7" H 3450 6450 50  0000 L CNN
F 1 "330k" H 3450 6350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3400 6400 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF3303T5E_C23137.html/?href=jlc-SMT" H 3400 6400 50  0001 C CNN
F 4 "C23137" H 3400 6400 50  0001 C CNN "LCSC"
	1    3400 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6400 2850 6600
Wire Wire Line
	2850 6600 3250 6600
Wire Wire Line
	3250 6600 3250 6650
$Comp
L power:GND #PWR022
U 1 1 6051B28C
P 3250 7000
F 0 "#PWR022" H 3250 6750 50  0001 C CNN
F 1 "GND" H 3255 6827 50  0000 C CNN
F 2 "" H 3250 7000 50  0001 C CNN
F 3 "" H 3250 7000 50  0001 C CNN
	1    3250 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6013ECD2
P 3700 7000
F 0 "#PWR027" H 3700 6750 50  0001 C CNN
F 1 "GND" H 3705 6827 50  0000 C CNN
F 2 "" H 3700 7000 50  0001 C CNN
F 3 "" H 3700 7000 50  0001 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6850 3900 7000
Wire Wire Line
	3700 6850 3700 7000
$Comp
L Device:C_Small C6
U 1 1 6014256F
P 3700 6750
F 0 "C6" H 3750 6850 50  0000 L CNN
F 1 "10uF" V 3800 6550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3700 6750 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html/?href=jlc-SMT" H 3700 6750 50  0001 C CNN
F 4 "C13585" H 3700 6750 50  0001 C CNN "LCSC"
	1    3700 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 600A68FC
P 3900 7000
F 0 "#PWR028" H 3900 6750 50  0001 C CNN
F 1 "GND" H 3905 6827 50  0000 C CNN
F 2 "" H 3900 7000 50  0001 C CNN
F 3 "" H 3900 7000 50  0001 C CNN
	1    3900 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 600A11F3
P 3900 6750
F 0 "C7" H 3950 6850 50  0000 L CNN
F 1 "10uF" V 4000 6550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3900 6750 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html/?href=jlc-SMT" H 3900 6750 50  0001 C CNN
F 4 "C13585" H 3900 6750 50  0001 C CNN "LCSC"
	1    3900 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6650 3700 6200
$Comp
L power:+5V #PWR029
U 1 1 60547183
P 4100 6100
F 0 "#PWR029" H 4100 5950 50  0001 C CNN
F 1 "+5V" H 4115 6273 50  0000 C CNN
F 2 "" H 4100 6100 50  0001 C CNN
F 3 "" H 4100 6100 50  0001 C CNN
	1    4100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6850 3250 7000
$Comp
L power:+5V #PWR018
U 1 1 605687EC
P 10600 1100
F 0 "#PWR018" H 10600 950 50  0001 C CNN
F 1 "+5V" H 10700 1150 50  0000 C CNN
F 2 "" H 10600 1100 50  0001 C CNN
F 3 "" H 10600 1100 50  0001 C CNN
	1    10600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6800 1050 7000
Wire Wire Line
	8050 4250 8050 4350
Connection ~ 8050 4350
$Comp
L power:GND #PWR04
U 1 1 605A85DF
P 8050 1200
F 0 "#PWR04" H 8050 950 50  0001 C CNN
F 1 "GND" V 8055 1072 50  0000 R CNN
F 2 "" H 8050 1200 50  0001 C CNN
F 3 "" H 8050 1200 50  0001 C CNN
	1    8050 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 605A9D65
P 10250 2600
F 0 "#PWR016" H 10250 2350 50  0001 C CNN
F 1 "GND" V 10255 2472 50  0000 R CNN
F 2 "" H 10250 2600 50  0001 C CNN
F 3 "" H 10250 2600 50  0001 C CNN
	1    10250 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 605B5113
P 10250 1300
F 0 "#PWR015" H 10250 1050 50  0001 C CNN
F 1 "GND" V 10255 1172 50  0000 R CNN
F 2 "" H 10250 1300 50  0001 C CNN
F 3 "" H 10250 1300 50  0001 C CNN
	1    10250 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6007C619
P 1700 6550
F 0 "C4" H 1700 6600 50  0000 L CNN
F 1 "10uF" V 1750 6300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1700 6550 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html/?href=jlc-SMT" H 1700 6550 50  0001 C CNN
F 4 "C13585" H 1700 6550 50  0001 C CNN "LCSC"
	1    1700 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 1100 10600 1200
Wire Wire Line
	10600 1200 10250 1200
$Comp
L power:+3.3V #PWR01
U 1 1 60758279
P 7350 2600
F 0 "#PWR01" H 7350 2450 50  0001 C CNN
F 1 "+3.3V" H 7200 2700 50  0000 C CNN
F 2 "" H 7350 2600 50  0001 C CNN
F 3 "" H 7350 2600 50  0001 C CNN
	1    7350 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2600 7350 2600
$Comp
L Device:D_Schottky D2
U 1 1 60051EEE
P 1250 6300
F 0 "D2" H 1250 6083 50  0000 C CNN
F 1 "B5819W" H 1250 6174 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 1250 6300 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Schottky-Barrier-Diodes-SBD_Changjiang-Electronics-Tech-CJ-B5819W_C8598.html/?href=jlc-SMT" H 1250 6300 50  0001 C CNN
F 4 "C8598" H 1250 6300 50  0001 C CNN "LCSC"
	1    1250 6300
	-1   0    0    1   
$EndComp
Connection ~ 1050 5700
Wire Wire Line
	1050 5400 1050 5700
$Comp
L Transistor_FET:AO3401A Q1
U 1 1 60030FA7
P 1350 5700
F 0 "Q1" H 1555 5746 50  0000 L CNN
F 1 "DMG3415UQ" H 1555 5655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1550 5625 50  0001 L CIN
F 3 "https://lcsc.com/product-detail/MOSFET_Diodes-Incorporated-DMG3415UQ-7_C459537.html/?href=jlc-SMT" H 1350 5700 50  0001 L CNN
F 4 "C459537" H 1350 5700 50  0001 C CNN "LCSC"
	1    1350 5700
	1    0    0    -1  
$EndComp
Text GLabel 1050 5400 1    50   Input ~ 0
VUSB
Text GLabel 1450 5400 1    50   Input ~ 0
VBAT
Wire Wire Line
	3900 6200 3900 6650
$Comp
L power:GND #PWR031
U 1 1 60A4B310
P 4300 7000
F 0 "#PWR031" H 4300 6750 50  0001 C CNN
F 1 "GND" H 4305 6827 50  0000 C CNN
F 2 "" H 4300 7000 50  0001 C CNN
F 3 "" H 4300 7000 50  0001 C CNN
	1    4300 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6300 4300 7000
Text GLabel 4300 5950 1    50   Input ~ 0
VBAT
$Comp
L Switch:SW_SPST SW1
U 1 1 602DC184
P 2000 1650
F 0 "SW1" H 1900 1900 50  0000 L CNN
F 1 "Battery Switch" H 1900 1800 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2000 1650 50  0001 C CNN
F 3 "~" H 2000 1650 50  0001 C CNN
	1    2000 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 60955B56
P 1800 1450
F 0 "R8" H 1870 1496 50  0000 L CNN
F 1 "100k" H 1870 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1730 1450 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1003T5E_C25803.html/?href=jlc-SMT" H 1800 1450 50  0001 C CNN
F 4 "C25803" H 1800 1450 50  0001 C CNN "LCSC"
	1    1800 1450
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:AO3401A Q2
U 1 1 60954E6E
P 1550 1600
F 0 "Q2" H 1755 1646 50  0000 L CNN
F 1 "DMG3415UQ" H 1755 1555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1750 1525 50  0001 L CIN
F 3 "https://lcsc.com/product-detail/MOSFET_Diodes-Incorporated-DMG3415UQ-7_C459537.html/?href=jlc-SMT" H 1550 1600 50  0001 L CNN
F 4 "C459537" H 1550 1600 50  0001 C CNN "LCSC"
	1    1550 1600
	-1   0    0    1   
$EndComp
Text Notes 600  750  0    118  ~ 0
Battery Slide Switch
Text GLabel 2850 3200 0    50   Input ~ 0
Teensy-VUSB
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 60155E05
P 3000 3200
F 0 "JP1" H 3000 3405 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 3000 3314 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged2Bar_Pad1.0x1.5mm" H 3000 3200 50  0001 C CNN
F 3 "~" H 3000 3200 50  0001 C CNN
	1    3000 3200
	1    0    0    -1  
$EndComp
Text GLabel 3150 3200 2    50   Input ~ 0
VUSB
Text GLabel 1350 1900 0    50   Input ~ 0
VBAT
$Comp
L Device:C_Small C3
U 1 1 6008E142
P 1450 6550
F 0 "C3" H 1450 6600 50  0000 L CNN
F 1 "100nF" V 1500 6300 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 1450 6550 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31B104KBCNNNC_100nF-104-10-50V_C24497.html/?href=jlc-SMT" H 1450 6550 50  0001 C CNN
F 4 "C24497" H 1450 6550 50  0001 C CNN "LCSC"
	1    1450 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6300 1950 6450
Connection ~ 1950 6300
$Comp
L power:GND #PWR013
U 1 1 6009D82A
P 1950 7000
F 0 "#PWR013" H 1950 6750 50  0001 C CNN
F 1 "GND" H 1955 6827 50  0000 C CNN
F 2 "" H 1950 7000 50  0001 C CNN
F 3 "" H 1950 7000 50  0001 C CNN
	1    1950 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6650 1950 7000
Connection ~ 3700 6200
Wire Wire Line
	3700 6200 3900 6200
Wire Wire Line
	4100 6850 4100 7000
$Comp
L power:GND #PWR030
U 1 1 600FDE98
P 4100 7000
F 0 "#PWR030" H 4100 6750 50  0001 C CNN
F 1 "GND" H 4105 6827 50  0000 C CNN
F 2 "" H 4100 7000 50  0001 C CNN
F 3 "" H 4100 7000 50  0001 C CNN
	1    4100 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 600FDE9E
P 4100 6750
F 0 "C8" H 4150 6850 50  0000 L CNN
F 1 "100nF" V 4200 6550 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4100 6750 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31B104KBCNNNC_100nF-104-10-50V_C24497.html/?href=jlc-SMT" H 4100 6750 50  0001 C CNN
F 4 "C24497" H 4100 6750 50  0001 C CNN "LCSC"
	1    4100 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6650 4100 6200
Connection ~ 4100 6200
Wire Wire Line
	4100 6100 4100 6200
Text GLabel 5050 5950 1    50   Input ~ 0
VUSB
$Comp
L power:GND #PWR034
U 1 1 60137F40
P 5050 7000
F 0 "#PWR034" H 5050 6750 50  0001 C CNN
F 1 "GND" H 5055 6827 50  0000 C CNN
F 2 "" H 5050 7000 50  0001 C CNN
F 3 "" H 5050 7000 50  0001 C CNN
	1    5050 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5950 5050 6200
Wire Wire Line
	5050 6200 5100 6200
Wire Wire Line
	5050 7000 5050 6300
Wire Wire Line
	5050 6300 5100 6300
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 60114317
P 5300 6300
F 0 "J6" H 5250 6100 50  0000 R CNN
F 1 "VBUS Breakout Header" V 5200 7050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5300 6300 50  0001 C CNN
F 3 "~" H 5300 6300 50  0001 C CNN
	1    5300 6300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J5
U 1 1 60083938
P 4600 6200
F 0 "J5" H 4550 6000 50  0000 R CNN
F 1 "VBAT/5v Breakout Header" V 4500 7050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4600 6200 50  0001 C CNN
F 3 "~" H 4600 6200 50  0001 C CNN
	1    4600 6200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 5950 4300 6000
Wire Wire Line
	4300 6000 4400 6000
Wire Wire Line
	4300 6100 4400 6100
Wire Wire Line
	4100 6200 4300 6200
Wire Wire Line
	4300 6300 4400 6300
Wire Wire Line
	4300 6100 4300 6200
Connection ~ 4300 6200
Wire Wire Line
	4300 6200 4400 6200
$Comp
L Jumper:SolderJumper_3_Bridged12 JP2
U 1 1 60250EB2
P 1450 1100
F 0 "JP2" H 1450 1305 50  0000 C CNN
F 1 "Battery Select" H 1450 1214 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged12_Pad1.0x1.5mm" H 1450 1100 50  0001 C CNN
F 3 "~" H 1450 1100 50  0001 C CNN
	1    1450 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1100 1750 1100
Text GLabel 1200 1100 0    50   Input ~ 0
Onboard-VBAT
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 600C69E3
P 3200 3650
F 0 "J1" H 3300 3650 50  0000 L CNN
F 1 "JSTPH" H 3300 3550 50  0000 L CNN
F 2 "Connector_JST:JST_PH_S2B-PH-K_1x02_P2.00mm_Horizontal" H 3200 3650 50  0001 C CNN
F 3 "~" H 3200 3650 50  0001 C CNN
	1    3200 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 600CDD9E
P 2200 1900
F 0 "#PWR035" H 2200 1650 50  0001 C CNN
F 1 "GND" H 2205 1727 50  0000 C CNN
F 2 "" H 2200 1900 50  0001 C CNN
F 3 "" H 2200 1900 50  0001 C CNN
	1    2200 1900
	1    0    0    -1  
$EndComp
Text GLabel 2900 3650 0    50   Input ~ 0
Onboard-VBAT
Wire Wire Line
	2900 3650 3000 3650
$Comp
L power:GND #PWR020
U 1 1 603637F8
P 3000 3850
F 0 "#PWR020" H 3000 3600 50  0001 C CNN
F 1 "GND" H 3005 3677 50  0000 C CNN
F 2 "" H 3000 3850 50  0001 C CNN
F 3 "" H 3000 3850 50  0001 C CNN
	1    3000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3750 3000 3850
Text GLabel 1750 1100 2    50   Input ~ 0
Feather-VBAT
Wire Wire Line
	1450 1900 1450 1800
Wire Wire Line
	1450 1250 1450 1300
Wire Wire Line
	1750 1600 1800 1600
Wire Wire Line
	1800 1600 1800 1550
Wire Wire Line
	1450 1300 1800 1300
Wire Wire Line
	1800 1300 1800 1350
Connection ~ 1450 1300
Wire Wire Line
	1450 1300 1450 1400
Wire Wire Line
	1800 1600 1800 1650
Connection ~ 1800 1600
Wire Wire Line
	1450 1900 1350 1900
Wire Wire Line
	1250 1100 1200 1100
$Sheet
S 7000 5650 2200 150 
U 602C4EF2
F0 "Feather and Arduino Headers" 79
F1 "Headers.sch" 79
$EndSheet
$Sheet
S 7000 6150 2200 150 
U 60352106
F0 "Buttons and Mounting Holes" 79
F1 "ButtonsAndMountingHoles.sch" 79
$EndSheet
Wire Wire Line
	4000 1200 4300 1200
Connection ~ 4000 1200
Wire Wire Line
	4000 1000 4000 1200
Wire Wire Line
	4050 1000 4000 1000
Wire Wire Line
	4400 1000 4350 1000
Wire Wire Line
	4750 1000 4700 1000
Wire Wire Line
	4750 1650 4750 1000
Wire Wire Line
	4700 1650 4750 1650
Wire Wire Line
	3700 1200 4000 1200
Connection ~ 3700 1200
Wire Wire Line
	4300 1200 4300 1250
Wire Wire Line
	3600 1200 3700 1200
$Comp
L power:GND #PWR02
U 1 1 602F9A31
P 3700 2250
F 0 "#PWR02" H 3700 2000 50  0001 C CNN
F 1 "GND" H 3705 2077 50  0000 C CNN
F 2 "" H 3700 2250 50  0001 C CNN
F 3 "" H 3700 2250 50  0001 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
Text GLabel 3600 1200 0    50   Input ~ 0
VUSB
Wire Wire Line
	4850 1450 4950 1450
Connection ~ 4850 1450
Wire Wire Line
	4700 1450 4850 1450
Text Notes 5000 800  0    39   ~ 0
Charge Rate Prog Resistor:\nr = (1200 - (4000/3)*i) / i\nR 1k   = 0.514 A\nR 2.2k = 0.340 A
$Comp
L Device:R_Small R1
U 1 1 600B57B0
P 3900 1950
F 0 "R1" H 3970 1996 50  0000 L CNN
F 1 "1k" H 3970 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3830 1950 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1001T5E_C21190.html/?href=jlc-SMT" H 3900 1950 50  0001 C CNN
F 4 "C21190" H 3900 1950 50  0001 C CNN "LCSC"
	1    3900 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 600DA144
P 4850 1950
F 0 "C2" H 4942 1996 50  0000 L CNN
F 1 "10uF" H 4942 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 4850 1950 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html/?href=jlc-SMT" H 4850 1950 50  0001 C CNN
F 4 "C13585" H 4850 1950 50  0001 C CNN "LCSC"
	1    4850 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 600DDA75
P 4200 1000
F 0 "R2" V 4000 900 50  0000 L CNN
F 1 "2k" V 4100 900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4130 1000 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF2001T5E_C22975.html/?href=jlc-SMT" H 4200 1000 50  0001 C CNN
F 4 "C22975" H 4200 1000 50  0001 C CNN "LCSC"
	1    4200 1000
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 600E4666
P 4550 1000
F 0 "D1" H 4650 850 50  0000 C CNN
F 1 "LED-RED" H 4400 850 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4550 1000 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Light-Emitting-Diodes-LED_Hubei-KENTO-Elec-KT-0603R_C2286.html/?href=jlc-SMT" H 4550 1000 50  0001 C CNN
F 4 "C2286" H 4550 1000 50  0001 C CNN "LCSC"
	1    4550 1000
	-1   0    0    1   
$EndComp
$Comp
L Battery_Management:MCP73831-2-OT U1
U 1 1 600B35D4
P 4300 1550
F 0 "U1" H 4050 1800 50  0000 C CNN
F 1 "TP4054" H 4500 1800 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 4350 1300 50  0001 L CIN
F 3 "https://lcsc.com/product-detail/PMIC-Battery-Management_TP4054_C32574.html/?href=jlc-SMT" H 4150 1500 50  0001 C CNN
F 4 "C32574" H 4300 1550 50  0001 C CNN "LCSC"
	1    4300 1550
	1    0    0    -1  
$EndComp
Text GLabel 4950 1450 2    50   Input ~ 0
VBAT
Text Notes 3350 700  0    118  ~ 0
Battery Charging
$Comp
L power:GND #PWR07
U 1 1 600DC15D
P 4850 2250
F 0 "#PWR07" H 4850 2000 50  0001 C CNN
F 1 "GND" H 4855 2077 50  0000 C CNN
F 2 "" H 4850 2250 50  0001 C CNN
F 3 "" H 4850 2250 50  0001 C CNN
	1    4850 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 600C198B
P 4300 2250
F 0 "#PWR06" H 4300 2000 50  0001 C CNN
F 1 "GND" H 4305 2077 50  0000 C CNN
F 2 "" H 4300 2250 50  0001 C CNN
F 3 "" H 4300 2250 50  0001 C CNN
	1    4300 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 600B5DB1
P 3900 2250
F 0 "#PWR03" H 3900 2000 50  0001 C CNN
F 1 "GND" H 3905 2077 50  0000 C CNN
F 2 "" H 3900 2250 50  0001 C CNN
F 3 "" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1650 2200 1900
Wire Wire Line
	5550 1200 5550 1300
Wire Wire Line
	5550 1700 5800 1700
$Comp
L Device:R R10
U 1 1 600EFECF
P 5550 1950
F 0 "R10" H 5600 2000 50  0000 L CNN
F 1 "10M" H 5600 1900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5480 1950 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1005T5E_C7250.html/?href=jlc-SMT" H 5550 1950 50  0001 C CNN
F 4 "C7250" H 5550 1950 50  0001 C CNN "LCSC"
	1    5550 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 600F06BA
P 5550 1450
F 0 "R9" H 5600 1500 50  0000 L CNN
F 1 "10M" H 5600 1400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5480 1450 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1005T5E_C7250.html/?href=jlc-SMT" H 5550 1450 50  0001 C CNN
F 4 "C7250" H 5550 1450 50  0001 C CNN "LCSC"
	1    5550 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1700 5550 1800
Connection ~ 5550 1700
Wire Wire Line
	5550 1600 5550 1700
Wire Wire Line
	5550 1200 5600 1200
Connection ~ 5800 1700
$Comp
L power:GND #PWR036
U 1 1 600F8DB1
P 5550 2250
F 0 "#PWR036" H 5550 2000 50  0001 C CNN
F 1 "GND" H 5555 2077 50  0000 C CNN
F 2 "" H 5550 2250 50  0001 C CNN
F 3 "" H 5550 2250 50  0001 C CNN
	1    5550 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2100 5550 2150
Wire Wire Line
	5800 2050 5800 2150
Wire Wire Line
	5800 2150 5550 2150
Connection ~ 5550 2150
Wire Wire Line
	5550 2150 5550 2250
Wire Wire Line
	5800 1700 5800 1850
Text GLabel 5850 1700 2    50   Input ~ 0
A8
Wire Wire Line
	5800 1700 5850 1700
Text GLabel 5600 1200 2    50   Input ~ 0
VBAT
$Comp
L Device:C_Small C9
U 1 1 600EF4AF
P 5800 1950
F 0 "C9" H 5850 2000 50  0000 L CNN
F 1 "100nF" H 5800 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 5800 1950 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31B104KBCNNNC_100nF-104-10-50V_C24497.html/?href=jlc-SMT" H 5800 1950 50  0001 C CNN
F 4 "C24497" H 5800 1950 50  0001 C CNN "LCSC"
	1    5800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5700 1150 5700
Wire Wire Line
	1400 6300 1450 6300
Wire Wire Line
	1050 5700 1050 6300
Wire Wire Line
	1100 6300 1050 6300
Connection ~ 1050 6300
Wire Wire Line
	1050 6300 1050 6500
Wire Wire Line
	1700 6300 1950 6300
Wire Wire Line
	1450 6300 1700 6300
Connection ~ 1700 6300
Wire Wire Line
	2200 6400 2200 6600
Wire Wire Line
	2200 6800 2200 7000
Wire Wire Line
	2400 5800 1950 5800
Wire Wire Line
	2600 5800 2900 5800
Wire Wire Line
	2900 5800 2900 6200
Wire Wire Line
	1950 5800 1950 6300
Wire Wire Line
	1950 6300 2100 6300
Wire Wire Line
	2200 6200 2100 6200
Wire Wire Line
	2100 6200 2100 6300
Connection ~ 2100 6300
Wire Wire Line
	2100 6300 2200 6300
Wire Wire Line
	3900 6200 4100 6200
Connection ~ 3900 6200
Wire Wire Line
	3100 6300 3250 6300
Wire Wire Line
	3250 6200 3700 6200
Wire Wire Line
	3250 6300 3250 6200
Connection ~ 3250 6300
Wire Wire Line
	3250 6300 3400 6300
Connection ~ 3250 6200
Wire Wire Line
	3100 6500 3250 6500
Wire Wire Line
	3250 6500 3250 6600
Connection ~ 3250 6500
Wire Wire Line
	3250 6500 3400 6500
Connection ~ 3250 6600
Wire Wire Line
	1300 2950 1450 2950
Wire Wire Line
	1300 3150 1400 3150
Wire Wire Line
	1300 3250 1400 3250
Text Notes 600  2600 0    118  ~ 0
Teensy USB Host Jack
Text Notes 2250 2900 0    79   ~ 0
VUSB Disconnect
Text Notes 2250 3500 0    79   ~ 0
LiPo Battery Jack
Text Notes 6750 5400 0    118  ~ 0
Sub Sheets
Text Notes 5450 1100 0    118  ~ 0
Battery Monitor
Text Notes 4250 5500 0    118  ~ 0
Power Breakouts
Wire Wire Line
	9150 5050 9150 4650
Wire Wire Line
	8850 4650 8850 4700
Wire Wire Line
	8850 5000 8850 5050
Wire Wire Line
	8050 4350 8050 4450
$Comp
L power:GND #PWR05
U 1 1 605864FE
P 8050 4450
F 0 "#PWR05" H 8050 4200 50  0001 C CNN
F 1 "GND" H 8055 4277 50  0000 C CNN
F 2 "" H 8050 4450 50  0001 C CNN
F 3 "" H 8050 4450 50  0001 C CNN
	1    8050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 602F6F4F
P 3700 1950
F 0 "C1" H 3792 1996 50  0000 L CNN
F 1 "10uF" H 3792 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 3700 1950 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31A106KBHNNNE_10uF-106-10-50V_C13585.html/?href=jlc-SMT" H 3700 1950 50  0001 C CNN
F 4 "C13585" H 3700 1950 50  0001 C CNN "LCSC"
	1    3700 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 1850 3700 1200
Wire Wire Line
	3700 2050 3700 2250
Wire Wire Line
	3900 2050 3900 2250
Wire Wire Line
	3900 1650 3900 1850
Wire Wire Line
	4300 1850 4300 2250
Wire Wire Line
	4850 1450 4850 1850
Wire Wire Line
	4850 2050 4850 2250
$EndSCHEMATC
