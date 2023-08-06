# LOUD MEMS Optical Parts List

## Silicon Qubit Warm Setup
#### Current Setup (as of 8/6/2023):
**Diagram:**

AWG
* Agilent A33220
* Control code linked [here](https://github.com/CosmiQuantum/MEMS_Ctrl)


Laser Driver
* Thorlabs part number CLD1010LP ($2,643.71)
* https://www.thorlabs.com/thorproduct.cfm?partnumber=CLD1010LP 
* Quantity = 1

Laser Diode
* Thorlabs part number LPS-635-FC ($423.93)
* https://www.thorlabs.com/thorproduct.cfm?partnumber=LPS-635-FC 
* 635nm 2.5mW
* FCPC male fiber connection
* Quantity = 1


FCPC/SMA warm patch cable
* Thorlabs part number UM22-100-CUSTOM (0.2m) (137.69)
* Used to connect laser diode to vacuum flange feedthrough
* https://www.thorlabs.com/newgrouppage9.cfm?objectgroup_ID=2410
* Quantity = 5


SMA/SMA vacuum flange feedthrough
* Accuglass part number 112429 ($1,332)
* 100 Dual Fiber, ISO NW40 KF, UV/VIS
* https://www.accuglassproducts.com/100-dual-fiber-iso-nw40-kf-uvvis 
* Quote: https://drive.google.com/file/d/1dejjxgeG52KTp32YmdXtu5H_m2HNgR35/view?usp=sharing 
* Quantity = 1
* Note: Ordered dual ported version to share optical wiring with Dylan/KID setup
* Note: male/male connection will not screw directly to patch cable (solution: use SMA/SMA mating sleeve on either end)

SMA/FCPC adapters
* Accuglass part number 112648 ($44)
* https://www.accuglassproducts.com/sma-fc-fiber-optic-adapter 
* Spare, intended for warm use
* Quantity = 2 (not required for operation)

#### Plans for Future Development
**Diagram**
Hannah add notes here!

## Cold setup
**Diagram:**

SMA/SMA 100um core UVVIS optical patch cable
* Accuglass part number 112548 ($190)
* Quantity = 12 (5 for MEMS, 5 for KID, and two 19” standard length spare)
* https://www.accuglassproducts.com/connector-connector-cable-100-uv-vis 
* Note: custom lengths, see slide: 9/20/2022 - LOUD Optical Routing

SMA/SMA optical feedthroughs
* Thorlabs part number ADASMAV ($31.15)
* ADASMAV - Vacuum-Compatible SMA to SMA Mating Sleeve 
* https://www.thorlabs.com/thorproduct.cfm?partnumber=ADASMAV 
* Quantity = 16 (lots of extras)

Copper Fridge Feedthrough Plate
* Custom made from xometry ($173.44)
* ***HANNAH LINK CAD!!!***
* Quote: https://drive.google.com/file/d/18JkAJzehZ1leWmbV_zOHlxQnQzcpN-mu/view?usp=sharing (listed as item \#10)
* Quantity = 5


SMA/FCPC optical feedthrough
* Edmund Optics, Stock #90-983
* https://www.edmundoptics.com/p/fc-sma-hybrid-adapter-fc-sma/32521/ 
* Quantity =  3
* Note: used as feedthrough in the mc plate - allows for connection between SMA optical fibers and FCPC focuser fiber


FCPC focuser
* OZ Optics, custom made (171.50)
* LPF-04-635-10/125-QM-7.3-150-18AS-35-3S-1PE-1-UNC-UVVIS-VAC
* Quote: https://drive.google.com/file/d/1EjZ8DObmlxEo7VRcBNdxH7uZpw8VsoxW/view?usp=sharing 
* 635nm, FCPC connection
* Quantity = 1 (ordered 3 to have spare)


