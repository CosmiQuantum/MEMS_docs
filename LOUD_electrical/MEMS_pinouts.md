# MEMS DC Pinouts
A list of MEMS pinpouts is included below.  The pins were chosen such that each control line will fall into an MDM twisted pair with a ground.  All grounds are wired together at the breakout boards.  The grounds should also be connected to the shielding of the fischer cables.  Note that each cable type has a dedicated subsection with more information on pin numbering.


| Driver box output | 10pin ribbon cable to breakout board | DB25 on breakout board | Fischer cable to fridge | MDM in fridge to breakout board | 10pin ribbon cable from board to mirror |
| --- | --- | --- | --- | --- | --- |
| GND | 3, 5, 7, 9 | 3, 6, 9, 12 | see below | 3, 6, 9, 12 | 3, 5, 7, 9 |
| Y+ | 4 | 16 | see below | 16 | 4 |
| Y- | 6 | 19 | see below | 19 | 6 |
| X- | 8 | 22 | see below | 22 | 8 |
| X+ | 10 | 25 | see below | 25 | 10 |

---

## MEMS MDM pinouts
In the fischer cable setup currently installed with the silicon qubit, the pinout should be the same for all MDM connectors in the chain.  Note that the pin numbering of the female connectors is mirrored. 

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

For clarity, a drawing of each connector is shown below.  In these drawings, the connection point of the MDM is facing out- it's as if you are touching the connector (and not its solder cups) with a multimeter.

#### Female Connector
<img width="650" alt="female" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/3e00249b-bbcb-4c35-8dd5-41c5304ae647">

#### Male Connector
<img width="650" alt="male" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/69b41106-f843-426b-8378-2ecd20e44706">

---

## MEMS 10pin cables
My numbering convention for the 10pin ribbon cables is shown here:

<img width="600" alt="10pin" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/72dca59b-d6c1-4e92-9576-da10e95ae1ca">

The 10 pin ribbon cables are homemade.  To put one together, cut a length of the grey plastic cable (part number unknown) and press a terminator on each end.  I suggest that you refer to a previously made cable to ensure that the orientation of the terminators with respect to one another is correct.  I've found that about 1/3 of the cables that I make using this method have some sort of short.  Before using the cable with a MEMS mirror, it's good to connect each end to a breakout board and beep it out with a multimeter.

Commercial 10pin ribbon cables have small notches on the terminators.  This ensures that the connection polarity is correct.

<img width="300" alt="notch" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/d7c34fd9-8969-45d7-ae70-390970d7bcd3">

Some of the homemade ribbon cables do not have these notches.  I've tried to replace all homamde cables with these new terminators, but some old ones may linger.  Please try to check that a notch is present before you connect things. Additionally, some of the homemade terminators fall apart from time to time.  They are easy to fix.  To ensure that connections are made with the right orientation, I have adopted the following sharpie notation on all cables:

<img width="1000" alt="convention" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/81c91fea-dc44-47b8-af83-c1ef3250fa99">

---

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

The fischer cable shielding is not wired to its casing, meaning it needs to be grounded through pin \#13.  To ground the shielding, I soldered a jumper cable between pin #13 and MEMS ground on one of the breakout boards.  It has since been suggested that I instead solder the shielding to a flying lead, then clamp it directly to fridge ground, however I didn't have time to test this.

<img width="350" alt="jumper_cable" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/3de55b7c-27e7-40b3-857b-84771b95ca1c">

---

# Breakout boards

### Background

Breakout boards are used to convert to and from the MEMS 10pin ribbon cables.  Originally the boards were purchased from mirrorcle, but I made a knock-off version in KiCad so that we could quickly and cheaply order them through [OSHpark](https://oshpark.com/).  These files are posted to this github, along with footprint and CAD of the mount components listed in the table below. 

There are two board designs- one converts the 10-pin cable to a female MDM, the other converts it to a female D-sub.  Each version has a standard and "INVERTED" version.  When correctly soldered, the standard version follows the previously described MEMS pinout scheme.  The "INVERTED" version flips the polarity, meaning that the female 25-pin connector will actually take on the male pin assignments.  

If you (the person soldering) don't like the intended polarity of a board, there are two ways that you can flip it: either solder a male 25-pin connector to the board, or mount the female connector on the "wrong" side.

A list of components is included here:

| Image | Description | Digikey Part Number | Links |
| --- | --- | --- | --- | 
| <img width="120" alt="10pin_cable" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/676825bc-4fe1-4be1-8b88-135359bcf621"> | 10 pin terminator with notch for cable-making | 3230-10-0102-00-ND | [Digikey](https://www.digikey.com/en/products/detail/cnc-tech/3230-10-0102-00/3883464?s=N4IgTCBcDaIMxjgBgLQEZVI2FTUDkAREAXQF8g) |
| <img width="120" alt="10pin" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/055e20f8-a7b1-4468-9121-20dab27e3fbe"> | 10 pin connector pcb mount with notch | 3220-10-0100-00 CNC | [Digikey](https://www.digikey.com/en/products/detail/cnc-tech/3220-10-0100-00/3883661), ([KiCad](https://app.ultralibrarian.com/details/2CCEEED1-05B2-11EB-9033-0A34D6323D74/CNC-Tech/3220-10-0100-00?ref=digikey)) |
| <img width="120" alt="db25" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/71488d4f-c9a4-481f-a29c-011ff4d94daf"> | DB25 female connector pcb mount | 182-25FE-ND | [Digikey](https://www.digikey.com/en/products/detail/norcomp-inc/182-025-213R531/858365), ([KiCad](https://app.ultralibrarian.com/details/E3E87A03-1040-11EC-9033-0A34D6323D74/Norcomp-Inc--/182-025-213R531?ref=digikey)) |
| <img width="120" alt="mdm" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/76b6d032-ba5b-4588-9da3-b6642d2aefa9"> | MDM 25 pin female connector pcb mount | 380-025-213L001 | [Digikey](https://www.digikey.com/en/products/detail/norcomp-inc/380-025-213L001/2798600), ([KiCad](https://app.ultralibrarian.com/details/054A7CCB-1E3E-11EB-9033-0A34D6323D74/Norcomp-Inc--/380-025-213L001?ref=digikey)) | 

</br> 

## \#1: MDM Breakout Board

**Commercial/mirrorcle's version of the board:**

<img height="150" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/1787dc92-14d8-40ea-b1e9-9268be7f406b"> 
<img height="150" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/0492d877-a326-46de-801a-dad76433db9c">

</br> 
</br> 

**Our version of the board:**

| | Standard polarity | "Inverted" polarity | 
| --- | --- | --- |
| **Board** | <img width="330" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/a4083bfe-8fad-4299-9403-73fd7fdf2541"> | <img width="330" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/35a1b001-8dbf-4c2c-b65a-24a88341718a"> |
| **Traces** |  |  |
| **MDM soldering** | Female, front of board (same as commercial version shown above) | Female, front of board (same as commercial version shown above) |
| **10pin soldering** | Back of board, notch facing up (same as commercial version shown above) | Back of board, notch facing down (rotated 180 degrees from commercial version) |

</br> 

**Notes:**
* All grounds are wired together
* Mount holes are floating, and are designed to mount with M2 screws to the hole pattern on the [MEMS box](https://github.com/CosmiQuantum/MEMS_docs/blob/main/LOUD_hardware/MEMS_box.md)
* The footprint of the 10pin connector is drawn on the wrong side of the board
* Text indicating board polarity is located at the top of the board, by the header

</br> 

## \#2: D-sub Breakout Board

**Commercial version of the board:** 

<img width="300" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/31ef05d2-e6fa-4827-afe5-5503f9c197b6">

The wiring of this board is a bit more complicated to allow for ground noise debugging.  Theere are six surface mount resistor mount slots on the board.  These are intended to be used as manual soldered switches or break points.  During standard operation, most of them should be shorted with a solder bridge (a zero ohm resistor is also fine).  The resistors are used for four purposes:
* Three of the resistors can be used to isolate the four MEMS ground wires.  Disconnecting any of these resistors will cause one or more of the D-sub grounds to be floating / disconnected from the 10pin cable.  These should be shorted for normal MEMS operation.
* Once the D-sub grounds are connected to one another, a single resistor is used to connect them to the 10-pin ground wires.  This should be shorted for normal MEMS operation.
* A resistor can be used to connect all the shared 10-pin shared grounds to pin #14 of the D-sub cable.  When the previous resistor is shorted, all grounds are connected to one another and D-sub pin #14.  Historically, I've left this resistor open except while debugging.
* A final resistor can be used used to ground pin #13 of the female connector.  In our case, this is connected to the fischer cable shielding. This should be shorted when fischer cables are in use.

</br> 

**Our versioin of the board:**
|  | Standard Polarity | Inverted Polarity |
| --- | --- | --- |
| **Board** | <img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/eae5819c-0abb-4cbb-84a0-fd74e080f9f0"> |  <img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/6fc8ccf4-c083-47cc-8e06-183fccac6ba9"> |
| **Traces** | <img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/514d041d-93ee-4fb4-98d8-df59ca176f31"> | <img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/6c312daf-2fba-400a-a922-cad8bde65466"> |
| **D-Sub soldering** | Female connector, front of board  | Front of board | 
| **10-pin soldering** |  Female connector, front of board, notch facing up | Front of board, notch facing up |
| **Connect 25pin grounds to one another** | right three zero ohm resistors on back of board| left three zero ohm resistors on back of board |
| **Connect 25pin grounds to 10pin grounds** (note that 25pin grounds must first be connected to one another) | upper resistor on front of board | upper resistor on front of board |
| **Connect 10pin grounds to floating pin of D-sub** | lower resistor on front of board -- if soldered as instructed, this goes to female pin #14 | lower resistor on front of board  -- if soldered as instructed, this goes to female pin #25 |
| **Ground pin #13** | far left resistor on back of board | far right resistor on back of board |

</br> 

**Notes:** 
* I just noticed that I put the pin labels on the wrong layer of the inverted board.  Oops.  Someone should take a sharpie and write in order ``X+, X-, Y-, Y+`` on the front of the board.  The labeling order should be opposite that of the "standard" D-sub breakout board.  The unlabeled pin on both boards is ground. This should be fixed for future iterations.
* The D-sub connector is supposed to hang off the pcb a little bit- I tried to copy the design of the commercial board.  If people dislike this, it's pretty easy to change.
* Text indicating board polarity is located on the bottom of the board, by the date
* 
</br> 

---

# Other

## Homemade divider breakout board
The MEMS driver box can output 180+ volts on each of the DC control lines.  This is fine for most multimeters, but not for oscilloscopes (the older ones in lab G are rated for 120V).  Sometimes it's useful to look at the MEMS signal in the time domain.  In the past we've done this while debugging grounding issues and unstable mirror behavior.  I soldered a breakout board with voltage dividers placed on the signal wires that can be used to connect the driver to an oscilloscope.  A schematic of the board is shown here:con

<img width="750" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/ef7a30c1-6173-4ae6-96d2-a1f38a4b94f5">

All resistors shown here are $1 M \Omega$.  Reading out from the center of the voltage divier will show exactly half of the voltage output of the box.  The divider setup itself will draw negligible current (<0.1mA) and should not impact mirror function.



