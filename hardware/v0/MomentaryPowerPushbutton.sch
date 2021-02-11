EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Transistor_FET:AO3401A Q?
U 1 1 6019751A
P 1800 1650
F 0 "Q?" V 2150 1600 50  0000 L CNN
F 1 "DMG3415UQ" V 2050 1600 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2000 1575 50  0001 L CIN
F 3 "https://lcsc.com/product-detail/MOSFET_Diodes-Incorporated-DMG3415UQ-7_C459537.html/?href=jlc-SMT" H 1800 1650 50  0001 L CNN
F 4 "C459537" H 1800 1650 50  0001 C CNN "LCSC"
	1    1800 1650
	0    1    -1   0   
$EndComp
Text GLabel 1350 1550 0    50   Input ~ 0
Switch-IN
Wire Wire Line
	1350 1550 1450 1550
Connection ~ 1450 1550
Wire Wire Line
	1450 1550 1550 1550
$Comp
L Device:R_Small R?
U 1 1 60197525
P 2150 1900
F 0 "R?" H 2209 1946 50  0000 L CNN
F 1 "100k" H 2209 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2150 1900 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1003T5E_C25803.html/?href=jlc-SMT" H 2150 1900 50  0001 C CNN
F 4 "C25803" H 2150 1900 50  0001 C CNN "LCSC"
	1    2150 1900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW?
U 1 1 6019752B
P 2550 2350
F 0 "SW?" H 2500 2600 50  0000 L CNN
F 1 "Power Button" H 2350 2500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2550 2350 50  0001 C CNN
F 3 "~" H 2550 2350 50  0001 C CNN
	1    2550 2350
	1    0    0    -1  
$EndComp
Text GLabel 3500 1550 2    50   Input ~ 0
Switch-OUT
$Comp
L Device:R_Small R?
U 1 1 60197532
P 2900 1900
F 0 "R?" H 2959 1946 50  0000 L CNN
F 1 "1M" H 2959 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 2900 1900 50  0001 C CNN
F 3 "~" H 2900 1900 50  0001 C CNN
	1    2900 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 60197539
P 3350 1900
F 0 "R?" H 3409 1946 50  0000 L CNN
F 1 "100k" H 3409 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 3350 1900 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1003T5E_C25803.html/?href=jlc-SMT" H 3350 1900 50  0001 C CNN
F 4 "C25803" H 3350 1900 50  0001 C CNN "LCSC"
	1    3350 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60197540
P 2900 2800
F 0 "C?" H 3000 2850 50  0000 L CNN
F 1 "22uF" H 3000 2750 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2900 2800 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_SAMSUNG_CL31B104KBCNNNC_100nF-104-10-50V_C24497.html/?href=jlc-SMT" H 2900 2800 50  0001 C CNN
F 4 "C24497" H 2900 2800 50  0001 C CNN "LCSC"
	1    2900 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60197546
P 2900 3050
F 0 "#PWR?" H 2900 2800 50  0001 C CNN
F 1 "GND" H 2905 2877 50  0000 C CNN
F 2 "" H 2900 3050 50  0001 C CNN
F 3 "" H 2900 3050 50  0001 C CNN
	1    2900 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2000 3350 2350
Wire Wire Line
	1550 1550 1550 1200
Wire Wire Line
	1550 1200 3350 1200
Wire Wire Line
	3350 1200 3350 1800
Connection ~ 1550 1550
Wire Wire Line
	1550 1550 1600 1550
$Comp
L power:GND #PWR?
U 1 1 60197552
P 1800 2700
F 0 "#PWR?" H 1800 2450 50  0001 C CNN
F 1 "GND" H 1805 2527 50  0000 C CNN
F 2 "" H 1800 2700 50  0001 C CNN
F 3 "" H 1800 2700 50  0001 C CNN
	1    1800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2700 1800 2550
Wire Wire Line
	2750 2350 3350 2350
Connection ~ 3350 2350
Wire Wire Line
	3050 2650 2900 2650
Wire Wire Line
	3350 2850 3350 2950
Wire Wire Line
	3350 2950 2900 2950
Wire Wire Line
	2900 2900 2900 2950
Wire Wire Line
	2900 2700 2900 2650
Wire Wire Line
	3350 2350 3350 2450
Wire Wire Line
	2900 3050 2900 2950
Connection ~ 2900 2950
Wire Wire Line
	1800 1850 1800 2050
$Comp
L Device:R_Small R?
U 1 1 60197565
P 1450 1900
F 0 "R?" H 1509 1946 50  0000 L CNN
F 1 "100k" H 1509 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" H 1450 1900 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Chip-Resistor-Surface-Mount_Uniroyal-Elec-0603WAF1003T5E_C25803.html/?href=jlc-SMT" H 1450 1900 50  0001 C CNN
F 4 "C25803" H 1450 1900 50  0001 C CNN "LCSC"
	1    1450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2000 1450 2050
Wire Wire Line
	1450 2050 1800 2050
Connection ~ 1800 2050
Wire Wire Line
	1800 2050 1800 2150
Wire Wire Line
	1450 1550 1450 1800
Wire Wire Line
	2100 2350 2150 2350
Wire Wire Line
	2000 1550 2150 1550
Wire Wire Line
	2900 1800 2900 1550
Connection ~ 2900 1550
Wire Wire Line
	2900 1550 3500 1550
Wire Wire Line
	2900 2000 2900 2650
Connection ~ 2900 2650
Wire Wire Line
	2150 1800 2150 1550
Connection ~ 2150 1550
Wire Wire Line
	2150 1550 2900 1550
Wire Wire Line
	2150 2000 2150 2350
Connection ~ 2150 2350
Wire Wire Line
	2150 2350 2350 2350
$Comp
L Transistor_BJT:BC817 Q?
U 1 1 6019757D
P 1900 2350
F 0 "Q?" H 2091 2396 50  0000 L CNN
F 1 "BC817" H 2091 2305 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2100 2275 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC818-D.pdf" H 1900 2350 50  0001 L CNN
	1    1900 2350
	-1   0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC817 Q?
U 1 1 60197583
P 3250 2650
F 0 "Q?" H 3441 2696 50  0000 L CNN
F 1 "BC817" H 3441 2605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3450 2575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC818-D.pdf" H 3250 2650 50  0001 L CNN
	1    3250 2650
	1    0    0    -1  
$EndComp
Text Notes 900  1100 0    118  ~ 0
Battery Power Button
$EndSCHEMATC
