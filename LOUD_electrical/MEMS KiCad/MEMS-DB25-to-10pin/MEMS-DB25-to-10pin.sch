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
L dk_Rectangular-Connectors-Headers-Male-Pins:3220-10-0100-00 J6
U 1 1 64882BF5
P 5000 3700
F 0 "J6" H 5000 4147 60  0000 C CNN
F 1 "3220-10-0100-00" H 5000 4041 60  0000 C CNN
F 2 "digikey_10pin_1175-1627-ND:digikey_10pin_1175-1627-ND" H 5200 3900 60  0001 L CNN
F 3 "http://cnctech.us/pdfs/3220-XX-0100-00.pdf" V 5200 4000 60  0001 L CNN
F 4 "1175-1627-ND" H 5200 4100 60  0001 L CNN "Digi-Key_PN"
F 5 "3220-10-0100-00" H 5200 4200 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 5200 4300 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 5200 4400 60  0001 L CNN "Family"
F 8 "http://cnctech.us/pdfs/3220-XX-0100-00.pdf" H 5200 4500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/cnc-tech/3220-10-0100-00/1175-1627-ND/3883661" H 5200 4600 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 10POS 1.27MM" H 5200 4700 60  0001 L CNN "Description"
F 11 "CNC Tech" H 5200 4800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5200 4900 60  0001 L CNN "Status"
	1    5000 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 648908F4
P 3200 3150
F 0 "R1" H 3130 3104 50  0000 R CNN
F 1 "R" H 3130 3195 50  0000 R CNN
F 2 "digikey_resistor_RMCF0603ZT0R00:digikey_resistor_RMCF0603ZT0R00" V 3130 3150 50  0001 C CNN
F 3 "~" H 3200 3150 50  0001 C CNN
	1    3200 3150
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 64891C1F
P 3200 3750
F 0 "R2" H 3270 3796 50  0000 L CNN
F 1 "R" H 3270 3705 50  0000 L CNN
F 2 "digikey_resistor_RMCF0603ZT0R00:digikey_resistor_RMCF0603ZT0R00" V 3130 3750 50  0001 C CNN
F 3 "~" H 3200 3750 50  0001 C CNN
	1    3200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 64892182
P 3200 4400
F 0 "R3" H 3270 4446 50  0000 L CNN
F 1 "R" H 3270 4355 50  0000 L CNN
F 2 "digikey_resistor_RMCF0603ZT0R00:digikey_resistor_RMCF0603ZT0R00" V 3130 4400 50  0001 C CNN
F 3 "~" H 3200 4400 50  0001 C CNN
	1    3200 4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 64878A0C
P 3950 2750
F 0 "J2" H 3978 2776 50  0000 L CNN
F 1 "X+" H 3978 2685 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 3950 2750 50  0001 C CNN
F 3 "~" H 3950 2750 50  0001 C CNN
	1    3950 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 64879E9B
P 3950 3350
F 0 "J3" H 3978 3376 50  0000 L CNN
F 1 "X-" H 3978 3285 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 3950 3350 50  0001 C CNN
F 3 "~" H 3950 3350 50  0001 C CNN
	1    3950 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 6487A76A
P 3950 3950
F 0 "J4" H 3978 3976 50  0000 L CNN
F 1 "Y-" H 3978 3885 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 3950 3950 50  0001 C CNN
F 3 "~" H 3950 3950 50  0001 C CNN
	1    3950 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 6487AE98
P 3950 4550
F 0 "J5" H 3978 4576 50  0000 L CNN
F 1 "Y+" H 3978 4485 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 3950 4550 50  0001 C CNN
F 3 "~" H 3950 4550 50  0001 C CNN
	1    3950 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2850 3200 3000
Wire Wire Line
	3200 4650 3200 4550
Wire Wire Line
	3200 4250 3200 4050
Wire Wire Line
	3200 4050 3200 3900
Connection ~ 3200 4050
Wire Wire Line
	3200 3600 3200 3450
Wire Wire Line
	3200 3300 3200 3450
Connection ~ 3200 3450
Wire Wire Line
	3750 4550 3750 4750
Wire Wire Line
	3750 4750 3000 4750
Wire Wire Line
	3000 4550 2800 4550
NoConn ~ 2800 2950
NoConn ~ 2800 3050
NoConn ~ 2800 3150
NoConn ~ 2800 3250
NoConn ~ 2800 3550
NoConn ~ 2800 3650
NoConn ~ 2800 3750
NoConn ~ 2800 3850
NoConn ~ 2800 4150
NoConn ~ 2800 4250
NoConn ~ 2800 4350
NoConn ~ 2800 4450
NoConn ~ 2800 4750
NoConn ~ 2800 4850
NoConn ~ 2800 5050
Wire Wire Line
	3750 4750 4550 4750
Wire Wire Line
	4550 4750 4550 3800
Wire Wire Line
	4550 3800 4800 3800
Connection ~ 3750 4750
Wire Wire Line
	3750 3950 3750 3700
Wire Wire Line
	3750 3700 4800 3700
Connection ~ 3750 3950
Wire Wire Line
	3750 3350 3750 3600
Wire Wire Line
	3750 3600 4800 3600
Connection ~ 3750 3350
Wire Wire Line
	5200 3500 5450 3500
Wire Wire Line
	5450 3600 5200 3600
Wire Wire Line
	3700 3350 3750 3350
Wire Wire Line
	5200 3700 5450 3700
Wire Wire Line
	5450 3700 5450 3600
Connection ~ 5450 3600
Wire Wire Line
	5200 3800 5450 3800
Wire Wire Line
	5450 3800 5450 3700
Connection ~ 5450 3700
Wire Wire Line
	5450 3500 5450 3600
$Comp
L Device:R R4
U 1 1 6489DA62
P 4750 4950
F 0 "R4" V 4543 4950 50  0000 C CNN
F 1 "R" V 4634 4950 50  0000 C CNN
F 2 "digikey_resistor_RMCF0603ZT0R00:digikey_resistor_RMCF0603ZT0R00" V 4680 4950 50  0001 C CNN
F 3 "~" H 4750 4950 50  0001 C CNN
	1    4750 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 4650 3200 4650
Wire Wire Line
	3200 4050 2800 4050
Wire Wire Line
	3750 3950 2800 3950
Wire Wire Line
	3200 3450 2800 3450
Wire Wire Line
	2800 3350 3750 3350
Wire Wire Line
	2800 2850 3200 2850
Wire Wire Line
	3000 4750 3000 4550
$Comp
L Connector:DB25_Female_MountingHoles J1
U 1 1 64884101
P 2500 3850
F 0 "J1" H 2680 3852 50  0000 L CNN
F 1 "DB25_Female_MountingHoles" H 2680 3761 50  0000 L CNN
F 2 "digikey_DSub_NOR1137-ND:digikey_DSub_NOR1137-ND" H 2500 3850 50  0001 C CNN
F 3 " ~" H 2500 3850 50  0001 C CNN
	1    2500 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 4950 4600 4950
Wire Wire Line
	4900 4950 5450 4950
Wire Wire Line
	5450 4950 5450 4350
Connection ~ 5450 3800
$Comp
L Device:R R5
U 1 1 6489BB87
P 4750 5150
F 0 "R5" V 4543 5150 50  0000 C CNN
F 1 "R" V 4634 5150 50  0000 C CNN
F 2 "digikey_resistor_RMCF0603ZT0R00:digikey_resistor_RMCF0603ZT0R00" V 4680 5150 50  0001 C CNN
F 3 "~" H 4750 5150 50  0001 C CNN
	1    4750 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 2750 3750 3150
Wire Wire Line
	3750 3150 4550 3150
Wire Wire Line
	4550 3150 4550 3500
Wire Wire Line
	4550 3500 4800 3500
Wire Wire Line
	3200 4650 3200 5150
Wire Wire Line
	3200 5150 4600 5150
Connection ~ 3200 4650
Wire Wire Line
	4900 5150 5450 5150
Wire Wire Line
	5450 5150 5450 4950
Connection ~ 5450 4950
NoConn ~ 4800 3900
NoConn ~ 5200 3900
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 648973B6
P 5650 4350
F 0 "J7" H 5678 4376 50  0000 L CNN
F 1 "GND" H 5678 4285 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 5650 4350 50  0001 C CNN
F 3 "~" H 5650 4350 50  0001 C CNN
	1    5650 4350
	1    0    0    -1  
$EndComp
Connection ~ 5450 4350
Wire Wire Line
	5450 4350 5450 3800
NoConn ~ 2500 2450
$Comp
L Mechanical:MountingHole H1
U 1 1 648A3027
P 2700 5500
F 0 "H1" H 2800 5546 50  0000 L CNN
F 1 "MountingHole" H 2800 5455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 2700 5500 50  0001 C CNN
F 3 "~" H 2700 5500 50  0001 C CNN
	1    2700 5500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J8
U 1 1 649B3132
P 3400 2550
F 0 "J8" H 3428 2576 50  0000 L CNN
F 1 "Fischer Shield" H 3428 2485 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 3400 2550 50  0001 C CNN
F 3 "~" H 3400 2550 50  0001 C CNN
	1    3400 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 649AC217
P 3200 2700
F 0 "R6" H 3130 2654 50  0000 R CNN
F 1 "R" H 3130 2745 50  0000 R CNN
F 2 "digikey_resistor_RMCF0603ZT0R00:digikey_resistor_RMCF0603ZT0R00" V 3130 2700 50  0001 C CNN
F 3 "~" H 3200 2700 50  0001 C CNN
	1    3200 2700
	-1   0    0    1   
$EndComp
Connection ~ 3200 2850
Wire Wire Line
	2800 2650 2800 2550
Wire Wire Line
	2800 2550 3200 2550
Connection ~ 3200 2550
Wire Wire Line
	2800 2750 3750 2750
Connection ~ 3750 2750
$EndSCHEMATC
