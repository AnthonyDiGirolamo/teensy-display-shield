EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Teensy Display Shield"
Date ""
Rev "0"
Comp "Anthony DiGirolamo"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 750  850  0    79   ~ 0
Mounting Holes & Buttons
Connection ~ 1000 3250
Wire Wire Line
	1000 3250 1000 3350
Connection ~ 3200 3300
Wire Wire Line
	3200 3300 3200 3350
Connection ~ 4450 2500
$Comp
L power:GND #PWR?
U 1 1 60375D71
P 3200 3350
AR Path="/60375D71" Ref="#PWR?"  Part="1" 
AR Path="/60352106/60375D71" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 3200 3100 50  0001 C CNN
F 1 "GND" H 3205 3177 50  0000 C CNN
F 2 "" H 3200 3350 50  0001 C CNN
F 3 "" H 3200 3350 50  0001 C CNN
	1    3200 3350
	1    0    0    -1  
$EndComp
Connection ~ 3200 2900
Connection ~ 3200 2500
Wire Wire Line
	3200 2500 3200 2900
Wire Wire Line
	1000 2950 1000 3250
Connection ~ 1000 2950
Wire Wire Line
	1000 2650 1000 2950
Connection ~ 1000 2650
Wire Wire Line
	1000 2350 1000 2650
Connection ~ 1000 2350
Connection ~ 1000 2100
Wire Wire Line
	1000 2100 1000 2350
Wire Wire Line
	4450 2500 4450 2100
Wire Wire Line
	4450 2100 4450 1700
Connection ~ 4450 2100
Wire Wire Line
	4450 1700 4450 1300
Connection ~ 4450 1700
Wire Wire Line
	3200 2500 3200 2100
Wire Wire Line
	3200 2100 3200 1700
Connection ~ 3200 2100
Wire Wire Line
	3200 1700 3200 1300
Connection ~ 3200 1700
$Comp
L power:GND #PWR?
U 1 1 60375D8C
P 4450 3350
AR Path="/60375D8C" Ref="#PWR?"  Part="1" 
AR Path="/60352106/60375D8C" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 4450 3100 50  0001 C CNN
F 1 "GND" H 4455 3177 50  0000 C CNN
F 2 "" H 4450 3350 50  0001 C CNN
F 3 "" H 4450 3350 50  0001 C CNN
	1    4450 3350
	1    0    0    -1  
$EndComp
Text GLabel 2700 3300 0    50   Input ~ 0
Button-Select
Text GLabel 2700 2900 0    50   Input ~ 0
Button-Start
Text GLabel 3950 2500 0    50   Input ~ 0
Button-Y
Text GLabel 3950 2100 0    50   Input ~ 0
Button-X
Text GLabel 3950 1700 0    50   Input ~ 0
Button-B
Text GLabel 3950 1300 0    50   Input ~ 0
Button-A
Text GLabel 2700 2500 0    50   Input ~ 0
Button-Right
Text GLabel 2700 2100 0    50   Input ~ 0
Button-Left
Text GLabel 2700 1700 0    50   Input ~ 0
Button-Down
Text GLabel 2700 1300 0    50   Input ~ 0
Button-Up
Wire Wire Line
	1000 1800 1000 2100
Connection ~ 1000 1800
Wire Wire Line
	1000 1500 1000 1800
Connection ~ 1000 1500
Wire Wire Line
	1000 1200 1000 1500
$Comp
L power:GND #PWR?
U 1 1 60375DA1
P 1000 3350
AR Path="/60375DA1" Ref="#PWR?"  Part="1" 
AR Path="/60352106/60375DA1" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 1000 3100 50  0001 C CNN
F 1 "GND" H 1005 3177 50  0000 C CNN
F 2 "" H 1000 3350 50  0001 C CNN
F 3 "" H 1000 3350 50  0001 C CNN
	1    1000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2900 3200 3300
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375DAA
P 1100 1200
AR Path="/60375DAA" Ref="H?"  Part="1" 
AR Path="/60352106/60375DAA" Ref="H1"  Part="1" 
F 0 "H1" V 1050 1350 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 1350 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 1200 50  0001 C CNN
F 3 "~" H 1100 1200 50  0001 C CNN
	1    1100 1200
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375DB0
P 1100 1500
AR Path="/60375DB0" Ref="H?"  Part="1" 
AR Path="/60352106/60375DB0" Ref="H2"  Part="1" 
F 0 "H2" V 1050 1650 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 1650 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 1500 50  0001 C CNN
F 3 "~" H 1100 1500 50  0001 C CNN
	1    1100 1500
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375DB6
P 1100 1800
AR Path="/60375DB6" Ref="H?"  Part="1" 
AR Path="/60352106/60375DB6" Ref="H3"  Part="1" 
F 0 "H3" V 1050 1950 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 1950 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 1800 50  0001 C CNN
F 3 "~" H 1100 1800 50  0001 C CNN
	1    1100 1800
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375DBC
P 1100 2100
AR Path="/60375DBC" Ref="H?"  Part="1" 
AR Path="/60352106/60375DBC" Ref="H4"  Part="1" 
F 0 "H4" V 1050 2250 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 2250 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 2100 50  0001 C CNN
F 3 "~" H 1100 2100 50  0001 C CNN
	1    1100 2100
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DC2
P 3000 1700
AR Path="/60375DC2" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DC2" Ref="SW3"  Part="1" 
F 0 "SW3" H 3000 1985 50  0000 C CNN
F 1 "SW_Push" H 3000 1894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3000 1900 50  0001 C CNN
F 3 "~" H 3000 1900 50  0001 C CNN
	1    3000 1700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DC8
P 3000 2100
AR Path="/60375DC8" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DC8" Ref="SW4"  Part="1" 
F 0 "SW4" H 3000 2385 50  0000 C CNN
F 1 "SW_Push" H 3000 2294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3000 2300 50  0001 C CNN
F 3 "~" H 3000 2300 50  0001 C CNN
	1    3000 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DCE
P 3000 2500
AR Path="/60375DCE" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DCE" Ref="SW5"  Part="1" 
F 0 "SW5" H 3000 2785 50  0000 C CNN
F 1 "SW_Push" H 3000 2694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3000 2700 50  0001 C CNN
F 3 "~" H 3000 2700 50  0001 C CNN
	1    3000 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DD4
P 4250 1700
AR Path="/60375DD4" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DD4" Ref="SW9"  Part="1" 
F 0 "SW9" H 4250 1985 50  0000 C CNN
F 1 "SW_Push" H 4250 1894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4250 1900 50  0001 C CNN
F 3 "~" H 4250 1900 50  0001 C CNN
	1    4250 1700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DDA
P 4250 2100
AR Path="/60375DDA" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DDA" Ref="SW10"  Part="1" 
F 0 "SW10" H 4250 2385 50  0000 C CNN
F 1 "SW_Push" H 4250 2294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4250 2300 50  0001 C CNN
F 3 "~" H 4250 2300 50  0001 C CNN
	1    4250 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DE0
P 4250 2500
AR Path="/60375DE0" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DE0" Ref="SW11"  Part="1" 
F 0 "SW11" H 4250 2785 50  0000 C CNN
F 1 "SW_Push" H 4250 2694 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4250 2700 50  0001 C CNN
F 3 "~" H 4250 2700 50  0001 C CNN
	1    4250 2500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DE6
P 3000 2900
AR Path="/60375DE6" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DE6" Ref="SW6"  Part="1" 
F 0 "SW6" H 3000 3185 50  0000 C CNN
F 1 "SW_Push" H 3000 3094 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3000 3100 50  0001 C CNN
F 3 "~" H 3000 3100 50  0001 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DEC
P 4250 1300
AR Path="/60375DEC" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DEC" Ref="SW8"  Part="1" 
F 0 "SW8" H 4250 1585 50  0000 C CNN
F 1 "SW_Push" H 4250 1494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4250 1500 50  0001 C CNN
F 3 "~" H 4250 1500 50  0001 C CNN
	1    4250 1300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DF2
P 3000 3300
AR Path="/60375DF2" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DF2" Ref="SW7"  Part="1" 
F 0 "SW7" H 3000 3585 50  0000 C CNN
F 1 "SW_Push" H 3000 3494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3000 3500 50  0001 C CNN
F 3 "~" H 3000 3500 50  0001 C CNN
	1    3000 3300
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 60375DF8
P 3000 1300
AR Path="/60375DF8" Ref="SW?"  Part="1" 
AR Path="/60352106/60375DF8" Ref="SW2"  Part="1" 
F 0 "SW2" H 3000 1585 50  0000 C CNN
F 1 "SW_Push" H 3000 1494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3000 1500 50  0001 C CNN
F 3 "~" H 3000 1500 50  0001 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375DFE
P 1100 2350
AR Path="/60375DFE" Ref="H?"  Part="1" 
AR Path="/60352106/60375DFE" Ref="H5"  Part="1" 
F 0 "H5" V 1050 2500 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 2500 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 2350 50  0001 C CNN
F 3 "~" H 1100 2350 50  0001 C CNN
	1    1100 2350
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375E04
P 1100 2650
AR Path="/60375E04" Ref="H?"  Part="1" 
AR Path="/60352106/60375E04" Ref="H6"  Part="1" 
F 0 "H6" V 1050 2800 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 2800 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 2650 50  0001 C CNN
F 3 "~" H 1100 2650 50  0001 C CNN
	1    1100 2650
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375E0A
P 1100 2950
AR Path="/60375E0A" Ref="H?"  Part="1" 
AR Path="/60352106/60375E0A" Ref="H7"  Part="1" 
F 0 "H7" V 1050 3100 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 3100 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 2950 50  0001 C CNN
F 3 "~" H 1100 2950 50  0001 C CNN
	1    1100 2950
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60375E10
P 1100 3250
AR Path="/60375E10" Ref="H?"  Part="1" 
AR Path="/60352106/60375E10" Ref="H8"  Part="1" 
F 0 "H8" V 1050 3400 50  0000 L CNN
F 1 "MountingHole_Pad" V 1150 3400 50  0001 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1100 3250 50  0001 C CNN
F 3 "~" H 1100 3250 50  0001 C CNN
	1    1100 3250
	0    1    1    0   
$EndComp
Text GLabel 2700 1800 0    50   Input ~ 0
Feather_GPIO10
Text GLabel 2700 2200 0    50   Input ~ 0
Feather_GPIO11
Text GLabel 2700 2600 0    50   Input ~ 0
Feather_GPIO12
Text GLabel 2700 3400 0    50   Input ~ 0
Feather_GPIO13
Text GLabel 2700 1400 0    50   Input ~ 0
Feather_GPIO9
Text GLabel 2700 3000 0    50   Input ~ 0
Feather_A0
Text GLabel 3950 1400 0    50   Input ~ 0
Feather_A1
Text GLabel 3950 2200 0    50   Input ~ 0
Feather_A3
Text GLabel 3950 2600 0    50   Input ~ 0
Feather_A4
Text GLabel 3950 1800 0    50   Input ~ 0
Feather_A5
Wire Wire Line
	4050 1300 4000 1300
Wire Wire Line
	4050 1700 4000 1700
Wire Wire Line
	4050 2100 4000 2100
Wire Wire Line
	4050 2500 4000 2500
Wire Wire Line
	2800 1300 2750 1300
Wire Wire Line
	2800 1700 2750 1700
Wire Wire Line
	2800 2100 2750 2100
Wire Wire Line
	2800 2500 2750 2500
Wire Wire Line
	2800 2900 2750 2900
Wire Wire Line
	2800 3300 2750 3300
Wire Wire Line
	2750 1300 2750 1400
Wire Wire Line
	2750 1400 2700 1400
Connection ~ 2750 1300
Wire Wire Line
	2750 1300 2700 1300
Wire Wire Line
	2750 1700 2750 1800
Wire Wire Line
	2750 1800 2700 1800
Connection ~ 2750 1700
Wire Wire Line
	2750 1700 2700 1700
Wire Wire Line
	2750 2100 2750 2200
Wire Wire Line
	2750 2200 2700 2200
Connection ~ 2750 2100
Wire Wire Line
	2750 2100 2700 2100
Wire Wire Line
	2750 2500 2750 2600
Wire Wire Line
	2750 2600 2700 2600
Connection ~ 2750 2500
Wire Wire Line
	2750 2500 2700 2500
Wire Wire Line
	2750 2900 2750 3000
Wire Wire Line
	2750 3000 2700 3000
Connection ~ 2750 2900
Wire Wire Line
	2750 2900 2700 2900
Wire Wire Line
	2750 3300 2750 3400
Wire Wire Line
	2750 3400 2700 3400
Connection ~ 2750 3300
Wire Wire Line
	2750 3300 2700 3300
Wire Wire Line
	4000 2500 4000 2600
Wire Wire Line
	4000 2600 3950 2600
Connection ~ 4000 2500
Wire Wire Line
	4000 2500 3950 2500
Wire Wire Line
	4000 2100 4000 2200
Wire Wire Line
	4000 2200 3950 2200
Connection ~ 4000 2100
Wire Wire Line
	4000 2100 3950 2100
Wire Wire Line
	4000 1700 4000 1800
Wire Wire Line
	4000 1800 3950 1800
Connection ~ 4000 1700
Wire Wire Line
	4000 1700 3950 1700
Wire Wire Line
	4000 1300 4000 1400
Wire Wire Line
	4000 1400 3950 1400
Connection ~ 4000 1300
Wire Wire Line
	4000 1300 3950 1300
Wire Wire Line
	4450 2500 4450 3350
Text GLabel 5550 1350 0    50   Input ~ 0
Button-Up
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J7
U 1 1 600F1221
P 5750 1550
F 0 "J7" H 5800 1967 50  0000 C CNN
F 1 "Conn_02x05_Top_Bottom" H 5800 1876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 5750 1550 50  0001 C CNN
F 3 "~" H 5750 1550 50  0001 C CNN
	1    5750 1550
	1    0    0    -1  
$EndComp
Text GLabel 5550 1450 0    50   Input ~ 0
Button-Down
Text GLabel 5550 1550 0    50   Input ~ 0
Button-Left
Text GLabel 5550 1650 0    50   Input ~ 0
Button-Right
Text GLabel 6850 1750 0    50   Input ~ 0
Button-Select
Text GLabel 5550 1750 0    50   Input ~ 0
Button-Start
Text GLabel 6850 1650 0    50   Input ~ 0
Button-Y
Text GLabel 6850 1550 0    50   Input ~ 0
Button-X
Text GLabel 6850 1450 0    50   Input ~ 0
Button-B
Text GLabel 6850 1350 0    50   Input ~ 0
Button-A
$Comp
L power:GND #PWR?
U 1 1 600F4876
P 6050 1850
AR Path="/600F4876" Ref="#PWR?"  Part="1" 
AR Path="/60352106/600F4876" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 6050 1600 50  0001 C CNN
F 1 "GND" H 6055 1677 50  0000 C CNN
F 2 "" H 6050 1850 50  0001 C CNN
F 3 "" H 6050 1850 50  0001 C CNN
	1    6050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1350 6050 1450
Connection ~ 6050 1450
Wire Wire Line
	6050 1450 6050 1550
Connection ~ 6050 1550
Wire Wire Line
	6050 1550 6050 1650
Connection ~ 6050 1650
Wire Wire Line
	6050 1650 6050 1750
Connection ~ 6050 1750
Wire Wire Line
	6050 1750 6050 1850
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J8
U 1 1 600F9415
P 7050 1550
F 0 "J8" H 7100 1967 50  0000 C CNN
F 1 "Conn_02x05_Top_Bottom" H 7100 1876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 7050 1550 50  0001 C CNN
F 3 "~" H 7050 1550 50  0001 C CNN
	1    7050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 600F941B
P 7350 1850
AR Path="/600F941B" Ref="#PWR?"  Part="1" 
AR Path="/60352106/600F941B" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 7350 1600 50  0001 C CNN
F 1 "GND" H 7355 1677 50  0000 C CNN
F 2 "" H 7350 1850 50  0001 C CNN
F 3 "" H 7350 1850 50  0001 C CNN
	1    7350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1350 7350 1450
Connection ~ 7350 1450
Wire Wire Line
	7350 1450 7350 1550
Connection ~ 7350 1550
Wire Wire Line
	7350 1550 7350 1650
Connection ~ 7350 1650
Wire Wire Line
	7350 1650 7350 1750
Connection ~ 7350 1750
Wire Wire Line
	7350 1750 7350 1850
$EndSCHEMATC
