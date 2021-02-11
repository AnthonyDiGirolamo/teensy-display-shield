EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Teensy Display Shield"
Date ""
Rev "0"
Comp "Anthony DiGirolamo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5550 2550 0    50   Input ~ 0
D9
Text GLabel 5550 2650 0    50   Input ~ 0
D10-SPI-CS
Text GLabel 5550 2750 0    50   Input ~ 0
D11-SPI-MOSI
Text GLabel 5550 2850 0    50   Input ~ 0
D12-SPI-MISO
Text GLabel 5550 2950 0    50   Input ~ 0
D13-SPI-SCK
Text GLabel 6700 2900 3    50   Input ~ 0
A4-SDA
Text GLabel 6600 2900 3    50   Input ~ 0
A5-SCL
Text GLabel 2600 2700 0    50   Input ~ 0
D13-SPI-SCK
Text GLabel 2600 2900 0    50   Input ~ 0
D12-SPI-MISO
Text GLabel 2600 2800 0    50   Input ~ 0
D11-SPI-MOSI
Text GLabel 2600 3500 0    50   Input ~ 0
A5-SCL
Text GLabel 2600 3400 0    50   Input ~ 0
A4-SDA
Text GLabel 2950 1250 0    50   Input ~ 0
Feather-VBAT
Wire Wire Line
	3000 1250 3000 1400
Wire Wire Line
	3000 1250 2950 1250
Wire Wire Line
	3300 1350 3300 1400
$Comp
L power:GND #PWR?
U 1 1 6032624F
P 3100 3900
AR Path="/6032624F" Ref="#PWR?"  Part="1" 
AR Path="/602C4EF2/6032624F" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3100 3650 50  0001 C CNN
F 1 "GND" H 3105 3727 50  0000 C CNN
F 2 "" H 3100 3900 50  0001 C CNN
F 3 "" H 3100 3900 50  0001 C CNN
	1    3100 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60326255
P 6150 3350
AR Path="/60326255" Ref="#PWR?"  Part="1" 
AR Path="/602C4EF2/60326255" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 6150 3100 50  0001 C CNN
F 1 "GND" H 6155 3177 50  0000 C CNN
F 2 "" H 6150 3350 50  0001 C CNN
F 3 "" H 6150 3350 50  0001 C CNN
	1    6150 3350
	1    0    0    -1  
$EndComp
Text Notes 1200 950  0    118  ~ 0
Feather Header
Text Notes 4850 900  0    118  ~ 0
Arduino Header
NoConn ~ 2600 2500
$Comp
L TeensyDisplayShield-rescue:Adafruit_Feather_Generic-MCU_Module_Latest A?
U 1 1 6032625E
P 3100 2600
AR Path="/6032625E" Ref="A?"  Part="1" 
AR Path="/602C4EF2/6032625E" Ref="A1"  Part="1" 
F 0 "A1" H 2750 3750 50  0000 C CNN
F 1 "Adafruit_Feather_Generic" H 3100 4100 50  0000 C CNN
F 2 "Module_Latest:Adafruit_Feather" H 3200 1250 50  0001 L CNN
F 3 "https://cdn-learn.adafruit.com/downloads/pdf/adafruit-feather.pdf" H 3100 1800 50  0001 C CNN
	1    3100 2600
	1    0    0    -1  
$EndComp
$Comp
L TeensyDisplayShield-rescue:Arduino_UNO_R2-MCU_Module_Latest A?
U 1 1 60326264
P 6050 2250
AR Path="/60326264" Ref="A?"  Part="1" 
AR Path="/602C4EF2/60326264" Ref="A2"  Part="1" 
F 0 "A2" H 5700 3200 50  0000 C CNN
F 1 "Arduino_UNO_R2" V 6650 2850 50  0000 C CNN
F 2 "Module_Latest:Arduino_UNO_R2" H 6050 2250 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 6050 2250 50  0001 C CNN
	1    6050 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6032626A
P 3200 1350
AR Path="/6032626A" Ref="#PWR?"  Part="1" 
AR Path="/602C4EF2/6032626A" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 3200 1200 50  0001 C CNN
F 1 "+3.3V" H 3100 1500 50  0000 C CNN
F 2 "" H 3200 1350 50  0001 C CNN
F 3 "" H 3200 1350 50  0001 C CNN
	1    3200 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1350 3200 1400
$Comp
L power:+5V #PWR?
U 1 1 60326271
P 3300 1350
AR Path="/60326271" Ref="#PWR?"  Part="1" 
AR Path="/602C4EF2/60326271" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3300 1200 50  0001 C CNN
F 1 "+5V" H 3300 1500 50  0000 C CNN
F 2 "" H 3300 1350 50  0001 C CNN
F 3 "" H 3300 1350 50  0001 C CNN
	1    3300 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1200 6250 1250
$Comp
L power:+3.3V #PWR?
U 1 1 60326278
P 6150 1200
AR Path="/60326278" Ref="#PWR?"  Part="1" 
AR Path="/602C4EF2/60326278" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 6150 1050 50  0001 C CNN
F 1 "+3.3V" H 6100 1200 50  0000 C CNN
F 2 "" H 6150 1200 50  0001 C CNN
F 3 "" H 6150 1200 50  0001 C CNN
	1    6150 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1200 6150 1250
$Comp
L power:+5V #PWR?
U 1 1 6032627F
P 5950 1200
AR Path="/6032627F" Ref="#PWR?"  Part="1" 
AR Path="/602C4EF2/6032627F" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 5950 1050 50  0001 C CNN
F 1 "+5V" H 5950 1350 50  0000 C CNN
F 2 "" H 5950 1200 50  0001 C CNN
F 3 "" H 5950 1200 50  0001 C CNN
	1    5950 1200
	1    0    0    -1  
$EndComp
Text GLabel 1600 4400 0    50   Input ~ 0
GD3-SCK
Text GLabel 1600 4500 0    50   Input ~ 0
GD3-MISO
Text GLabel 1600 4600 0    50   Input ~ 0
GD3-MOSI
Text GLabel 1600 4700 0    50   Input ~ 0
GD3-CS-MicroSD
Text GLabel 1600 4800 0    50   Input ~ 0
GD3-CS-GPU
Text GLabel 2000 4400 2    50   Input ~ 0
D13-SPI-SCK
Text GLabel 2000 4500 2    50   Input ~ 0
D12-SPI-MISO
Text GLabel 2000 4600 2    50   Input ~ 0
D11-SPI-MOSI
Wire Wire Line
	1600 4400 2000 4400
Wire Wire Line
	1600 4500 2000 4500
Wire Wire Line
	1600 4600 2000 4600
Wire Wire Line
	1600 4700 1850 4700
Connection ~ 1850 4700
Wire Wire Line
	1850 4700 2000 4700
Text Notes 1000 4300 0    79   ~ 0
Gameduino3 Connections
Text GLabel 2600 3200 0    50   Input ~ 0
D1-TX1-SPI1-MISO1
Text GLabel 2600 3100 0    50   Input ~ 0
D0-RX1-SPI-CS1
Text GLabel 1850 1800 0    50   Input ~ 0
Feather_GPIO5
Text GLabel 1850 1900 0    50   Input ~ 0
Feather_GPIO6
Text GLabel 1850 2100 0    50   Input ~ 0
Feather_GPIO10
Text GLabel 1850 2200 0    50   Input ~ 0
Feather_GPIO11
Text GLabel 1850 2300 0    50   Input ~ 0
Feather_GPIO12
Text GLabel 1850 2400 0    50   Input ~ 0
Feather_GPIO13
Text GLabel 1850 2000 0    50   Input ~ 0
Feather_GPIO9
Text GLabel 2000 5000 2    50   Input ~ 0
Feather_GPIO5
Text GLabel 2000 4900 2    50   Input ~ 0
Feather_GPIO6
Wire Wire Line
	1850 4700 1850 4900
Text GLabel 4000 2400 2    50   Input ~ 0
Feather_A0
Text GLabel 4000 2500 2    50   Input ~ 0
Feather_A1
Text GLabel 4000 2600 2    50   Input ~ 0
Feather_A2
Text GLabel 4000 2700 2    50   Input ~ 0
Feather_A3
Text GLabel 4000 2800 2    50   Input ~ 0
Feather_A4
Text GLabel 4000 2900 2    50   Input ~ 0
Feather_A5
Text GLabel 2300 1700 1    50   Input ~ 0
D2
Text GLabel 2200 1700 1    50   Input ~ 0
D3
Text GLabel 2100 1700 1    50   Input ~ 0
D4
Text GLabel 2000 1700 1    50   Input ~ 0
D5
Text GLabel 1900 1700 1    50   Input ~ 0
D6
Wire Wire Line
	2300 1700 2300 2000
Wire Wire Line
	2300 2000 2600 2000
Wire Wire Line
	2200 1700 2200 2100
Wire Wire Line
	2200 2100 2600 2100
Wire Wire Line
	2100 1700 2100 2200
Wire Wire Line
	2100 2200 2600 2200
Wire Wire Line
	2000 1700 2000 2300
Wire Wire Line
	2000 2300 2600 2300
Wire Wire Line
	1900 1700 1900 2400
Wire Wire Line
	1900 2400 2600 2400
Wire Wire Line
	1850 2000 2300 2000
Connection ~ 2300 2000
Wire Wire Line
	1850 2100 2200 2100
Connection ~ 2200 2100
Wire Wire Line
	1850 2200 2100 2200
Connection ~ 2100 2200
Wire Wire Line
	1850 2300 2000 2300
Connection ~ 2000 2300
Wire Wire Line
	1850 2400 1900 2400
Connection ~ 1900 2400
Wire Wire Line
	1850 1800 2500 1800
Wire Wire Line
	2500 1800 2600 1800
Connection ~ 2500 1800
Text GLabel 2000 4700 2    50   Input ~ 0
D9
Wire Wire Line
	2400 1900 2600 1900
Wire Wire Line
	1850 1900 2400 1900
Connection ~ 2400 1900
Wire Wire Line
	2400 1700 2400 1900
Text GLabel 2400 1700 1    50   Input ~ 0
D9
Text GLabel 6550 2450 2    50   Input ~ 0
A8
Text GLabel 5550 2450 0    50   Input ~ 0
D8-TX2
Wire Wire Line
	6550 2750 6600 2750
Wire Wire Line
	6600 2750 6600 2900
Wire Wire Line
	6550 2650 6700 2650
Wire Wire Line
	6700 2650 6700 2900
Wire Wire Line
	1850 4900 2000 4900
Wire Wire Line
	2000 5000 1750 5000
Wire Wire Line
	1600 4800 1750 4800
Wire Wire Line
	1750 5000 1750 4800
Connection ~ 1750 4800
Wire Wire Line
	1750 4800 2000 4800
Text GLabel 4000 2000 2    50   Input ~ 0
A9
Text GLabel 4000 1900 2    50   Input ~ 0
A8
Text GLabel 4000 1800 2    50   Input ~ 0
A17
Text GLabel 4000 1700 2    50   Input ~ 0
A16
Text GLabel 4000 2100 2    50   Input ~ 0
D30
Text GLabel 4000 2200 2    50   Input ~ 0
D31
Wire Wire Line
	3900 1700 4000 1700
Wire Wire Line
	3900 2400 3900 1700
Wire Wire Line
	3850 1800 4000 1800
Wire Wire Line
	3850 2500 3850 1800
Wire Wire Line
	3800 1900 4000 1900
Wire Wire Line
	3800 2600 3800 1900
Wire Wire Line
	3750 2000 4000 2000
Wire Wire Line
	3700 2100 4000 2100
Wire Wire Line
	3650 2200 4000 2200
Wire Wire Line
	3600 2900 3650 2900
Connection ~ 3650 2900
Wire Wire Line
	3600 2800 3700 2800
Connection ~ 3700 2800
Wire Wire Line
	3600 2700 3750 2700
Connection ~ 3750 2700
Wire Wire Line
	3800 2600 4000 2600
Connection ~ 3800 2600
Wire Wire Line
	3850 2500 4000 2500
Connection ~ 3850 2500
Wire Wire Line
	3900 2400 4000 2400
Connection ~ 3900 2400
Wire Wire Line
	3750 2700 4000 2700
Wire Wire Line
	3700 2800 4000 2800
Wire Wire Line
	3650 2900 4000 2900
Wire Wire Line
	3600 2600 3800 2600
Wire Wire Line
	3750 2000 3750 2700
Wire Wire Line
	3600 2500 3850 2500
Wire Wire Line
	3700 2100 3700 2800
Wire Wire Line
	3600 2400 3900 2400
Wire Wire Line
	3650 2200 3650 2900
Wire Wire Line
	5950 3350 6050 3350
Connection ~ 6050 3350
Wire Wire Line
	6050 3350 6150 3350
Connection ~ 6150 3350
Wire Wire Line
	5950 1200 5950 1250
$Comp
L power:+5V #PWR?
U 1 1 603262FD
P 6250 1200
AR Path="/603262FD" Ref="#PWR?"  Part="1" 
AR Path="/602C4EF2/603262FD" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 6250 1050 50  0001 C CNN
F 1 "+5V" H 6250 1350 50  0000 C CNN
F 2 "" H 6250 1200 50  0001 C CNN
F 3 "" H 6250 1200 50  0001 C CNN
	1    6250 1200
	1    0    0    -1  
$EndComp
Text GLabel 2000 4800 2    50   Input ~ 0
D8-TX2
Wire Wire Line
	2500 1700 2500 1800
Text GLabel 2500 1700 1    50   Input ~ 0
D8-TX2
Text GLabel 8350 1400 2    50   Input ~ 0
D0-RX1-SPI-CS1
Text GLabel 8350 1500 2    50   Input ~ 0
D1-TX1-SPI1-MISO1
Text GLabel 8350 1700 2    50   Input ~ 0
A1-RX3
Text GLabel 8350 2100 2    50   Input ~ 0
A6-TX5
Text GLabel 8350 2000 2    50   Input ~ 0
A7-RX5
Text GLabel 9450 2450 2    50   Input ~ 0
A2-SCL1-RX4
Text GLabel 9450 2550 2    50   Input ~ 0
A3-SDA1-TX4
Text GLabel 8350 1800 2    50   Input ~ 0
A0-TX3
Text GLabel 8350 2300 2    50   Input ~ 0
A11-SDA2-RX6
Text GLabel 8350 2400 2    50   Input ~ 0
A10-SCL2-TX6
Text GLabel 8350 2500 2    50   Input ~ 0
D28-RX7
Text GLabel 8350 2600 2    50   Input ~ 0
D29-TX7
Text GLabel 8350 2700 2    50   Input ~ 0
D34-RX8
Text GLabel 8350 2800 2    50   Input ~ 0
D35-TX8
$Comp
L Connector:Conn_01x16_Male J3
U 1 1 600E5EAB
P 8150 2000
F 0 "J3" H 8200 2900 50  0000 C CNN
F 1 "Serial Breakouts" H 8450 2800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x16_P2.54mm_Vertical" H 8150 2000 50  0001 C CNN
F 3 "~" H 8150 2000 50  0001 C CNN
	1    8150 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 600E5EB1
P 9250 2350
F 0 "J4" H 9250 2650 50  0000 L CNN
F 1 "I2C1 Breakout" H 9250 2550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9250 2350 50  0001 C CNN
F 3 "~" H 9250 2350 50  0001 C CNN
	1    9250 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 600E5EB7
P 9450 2250
F 0 "#PWR0113" H 9450 2000 50  0001 C CNN
F 1 "GND" V 9455 2122 50  0000 R CNN
F 2 "" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 600E5EBD
P 9450 2350
F 0 "#PWR0114" H 9450 2200 50  0001 C CNN
F 1 "+3V3" V 9465 2478 50  0000 L CNN
F 2 "" H 9450 2350 50  0001 C CNN
F 3 "" H 9450 2350 50  0001 C CNN
	1    9450 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 600E5EC3
P 8350 1300
F 0 "#PWR0115" H 8350 1050 50  0001 C CNN
F 1 "GND" V 8355 1172 50  0000 R CNN
F 2 "" H 8350 1300 50  0001 C CNN
F 3 "" H 8350 1300 50  0001 C CNN
	1    8350 1300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 600E5EC9
P 8350 1600
F 0 "#PWR0116" H 8350 1350 50  0001 C CNN
F 1 "GND" V 8355 1472 50  0000 R CNN
F 2 "" H 8350 1600 50  0001 C CNN
F 3 "" H 8350 1600 50  0001 C CNN
	1    8350 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 600E5ECF
P 8350 1900
F 0 "#PWR0117" H 8350 1650 50  0001 C CNN
F 1 "GND" V 8355 1772 50  0000 R CNN
F 2 "" H 8350 1900 50  0001 C CNN
F 3 "" H 8350 1900 50  0001 C CNN
	1    8350 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 600E5ED5
P 8350 2200
F 0 "#PWR0118" H 8350 1950 50  0001 C CNN
F 1 "GND" V 8355 2072 50  0000 R CNN
F 2 "" H 8350 2200 50  0001 C CNN
F 3 "" H 8350 2200 50  0001 C CNN
	1    8350 2200
	0    -1   -1   0   
$EndComp
Text Notes 8050 950  0    118  ~ 0
Serial & I2C Breakouts
$EndSCHEMATC
