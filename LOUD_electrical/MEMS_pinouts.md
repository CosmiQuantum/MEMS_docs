# MEMS DC Pinouts

## Digikey Parts

| Image | Part | Number | Link |
| --- | --- | --- | --- | 
| <img width="235" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/676825bc-4fe1-4be1-8b88-135359bcf621"> | 10 pin terminator with notch | 3230-10-0102-00-ND | https://www.digikey.com/en/products/detail/cnc-tech/3230-10-0102-00/3883464?s=N4IgTCBcDaIMxjgBgLQEZVI2FTUDkAREAXQF8g |


## MEMS MDM pinouts
A list of MDM pinpouts is included below.  The pins were chosen such that each control line will fall into a twisted pair with a ground.  All grounds are wired together.  The grounds should also be connected to the shielding of the fischer cables.  Note that the pin assignments of male and female cables are the same- this is because the pin numbering of the female connectors is mirrored, as shown in the drawings below.  

| Pin | Purpose | 
| --- | --- | 
| 3 | GND |
| 6 | GND |
| 9 | GND |
| 12 | GND |
| 16 | Y+ |
| 19 | Y- |
| 22 | X- |
| 25 | X+ |

For clarity, a drawing of each connector is shown below.  In these drawings, the connection point of the MDM is facing out (i.e. it's as if you are touching the connector itself, and not its solder cups with a multimeter).

## MEMS 10pin cables
The 10 pin ribbon cables are homemade.  To put one together, cut a length of the grey plastic cables (part number unknown) and press a terminator on each end.  I suggest that you refer to a previously made cable to ensure that the orientation of the terminators with respect to one another is correct.  I've found that about 1/3 of the cables that I make using this method have some sort of short.  Before using the cable with a MEMS mirror, it's good to connect each end to a breakout board and beep it out with a multimeter.

Commercial 10pin ribbon cables have small notches on the terminators.  This ensures that the connection polarity is correct.

<img width="300" alt="notch" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/d7c34fd9-8969-45d7-ae70-390970d7bcd3">

Some of the homemade ribbon cables do not have these notches.  I've tried to replace all homamde cables with these new terminators, but some old ones may linger.  Please try to check that a notch is present before you connect things. Additionally, some of the homemade terminators fall apart from time to time.  They are easy to fix.  To ensure that connections are made with the right orientation, I have adopted the following sharpie notation on all cables:

<img width="1000" alt="convention" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/81c91fea-dc44-47b8-af83-c1ef3250fa99">


#### Female Connector
<img width="650" alt="female" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/3e00249b-bbcb-4c35-8dd5-41c5304ae647">

#### Male Connector
<img width="650" alt="male" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/69b41106-f843-426b-8378-2ecd20e44706">

## Commercial fischer cables
This section contains information about commercial fischer cables currently in use in LOUD.  Note that there is a dedicated readme for the [homemade fischer cable](https://github.com/CosmiQuantum/MEMS_docs/blob/main/LOUD_electrical/Homemade_fischer.md).  

The commercial fischer cables were custom made and were based on one of Adam's previous orders.  The quote for the order is linked [here](https://drive.google.com/drive/folders/1V6wbRQNjcHt9PDM3NEVwb76GJAeRPWf0).  The cables use the folliowing pinout:

```
Fischer -> Dsub
1 -> 1 (pair 1)
2 -> 14 (pair 1)
3 -> 2 (pair 2)
4 -> 15 (pair 2)
5 -> 3 (pair 3)
6 -> 16 (pair 3)
7 -> 4 (pair 4)
8 -> 17 (pair 4)
9 -> 5 (pair 5)
10 -> 18 (pair 5)
11 -> 6 (pair 6)
12 -> 19 (pair 6)
13 -> 7 (pair 7)
14 -> 20 (pair 7)
15 -> 8 (pair 8)
16 -> 21 (pair 8)
17 -> 9 (pair 9)
18 -> 22 (pair 9)
19 -> 10 (pair 10)
20 -> 23 (pair 10)
21 -> 11 (pair 11)
22 -> 24 (pair 11)
23 -> 12 (pair 12)
24 -> 25 (pair 12)
N/A -> 13 (drain)
```
The pinouts are also shown as drawings below, with labels on MEMS-specific pins.

**Male MDM pinout**

<img height="150" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/b596e3d8-4a24-410e-a208-9c8a80d8506c">

**Fischer pinout**

<img height="300" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/a7bda917-b3e5-45ef-898c-d2b11cc66449">

The fischer cable shielding is not wired to its casing, meaning it *needs* to be grounded through pin \#13.  To ground the shielding, I soldered a jumper cable between pin #13 and MEMS ground on one of the breakout boards.  It has since been suggested that I instead solder the shielding to a flying lead, then clamp it directly to fridge ground, however I didn't have time to test this.

<img width="350" alt="jumper_cable" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/3de55b7c-27e7-40b3-857b-84771b95ca1c">



## Breakout boards

### Commercial breakout board \#1

### Commercial breakout board \#2

### Homemade divider breakout board
The MEMS driver box can output 180+ volts on each of the DC control lines.  This is fine for most multimeters, but not for oscilloscopes (the older ones in lab G are rated for 120V).  Sometimes it's useful to look at the MEMS signal in the time domain.  In the past we've done this while debugging grounding issues and unstable mirror behavior.  I soldered a breakout board with voltage dividers placed on the signal wires that can be used to connect the driver to an oscilloscope.  A schematic of the board is shown here:

<img width="750" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/ef7a30c1-6173-4ae6-96d2-a1f38a4b94f5">

All resistors shown here are $1 M \Omega$.  Reading out from the center of the voltage divier will show exactly half of the voltage output of the box.  The divider setup itself will draw negligible current (<0.1mA) and should not impact mirror function.


## Useful links
link to voltage testing spreadsheet

link to dc cabling mega-slidedeck

