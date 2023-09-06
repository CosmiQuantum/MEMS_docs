## Labeled picture of the box


## Components List
* stationary mirror
* IR filter
* focuser
* fancy spring washers
*  list of all screws needed --> probably the most important part of this doc...!

## MEMS Box Parts and Assembly
### Mechanical assembly
First attach three side walls to the breadboard base.  The fourth wall is left off temporarily for ease of access.

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Wall 1 to breadboard | M4 x 20mm | 2 | countersunk |
| Wall 2 to breadboard | M4 x 16mm | 3 | countersunk |
| Wall 3 to breadboard | M4 x 16mm | 2 | countersunk |
| Wall 4 to breadboard | M4 x 16mm | 3 | countersunk |
| Wall 1 to Wall 2 | M4 x 16mm | 3 | countersunk |
| Wall 1 to Wall 4 | M4 x 16mm | 3 | countersunk |
| Wall 3 to Wall 2 | M3 x 12mm | 3 | countersunk |
| Wall 3 to Wall 4 | M3 x 12mm | 3 | countersunk |

<img width="550" alt="walls" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/236ec04f-bc9a-413f-89f4-848ea010f5f3">

----

Then attach the focuser front plate to the focuser mount. We can leave the focuser out of the housing for now. 

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Focuser mount front plate | M4 x 8mm | 2 | no |

<img width="550" alt="focuser" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/004150d1-7dfc-43dc-9ed7-36facf4974ee">

----

Next, we screw the bottom layer of translation plates and focuser mount into the breadboard as shown here.  It's difficult to see from this angle, but the focuser mount screw holes are 
positioned in the back corner of the breadboard.  The translation plates can either be mounted using either the dead-reckoning screw holes, or the translation slots.  In the past, the dead-reckoning 
screw holes worked fine with the refractive setup (which is what we're currently using in LOUD with the silicon qubit).  Note that some of the screw holes lie underneath the next level of translation 
plates.  These locations will require the use of countersunk screws.

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Focuser mount to breadboard | M4 x 8mm | 2 | no |
| Stationary mirror bottom translation plate to breadboard | M4 x 8mm | 3 | no |
| Stationary mirror bottom translation plate to breadboard | M4 x 8mm | 3 | yes |
| MEMS mirror bottom translation plate to breadboard | M4 x 8mm | 2 | no |
| MEMS mirror bottom translation plate to breadboard | M4 x 8mm | 3 | yes |

<img width="550" alt="vertical_translation" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/ee5ecfdb-fd2a-4b89-b6eb-5651b3976186">

----

We repeat the process for the next layer of translation plates.  Once again, the plates can be mounted using either translation slots or dead-reckoning screw holes.  When the dead-reckoning holes are used, 
extra screws can be placed in the slots for stability.

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Stationary mirror middle translation plate | M4 x 8mm | 4 | no |
| MEMS mirror middle translation plate | M4 x 8mm | 5 | no |

<img width="550" alt="horizontal_translation" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/b7b2cbb7-9c62-4210-a117-8a5be0d02626">

----

### Mouting stationary mirror and MEMS mirror
The mirror mounts shown below include slots for angular rotational adjustments during mounting. 

<img width="300" alt="mirror_mounts" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/0128e768-d2c9-4692-8136-1d56caf76567">

The stationary mirror is dropped into its holder.  A front plate is screwed over the top to hold it in.  Note that the cutout in the front plate is a rectangle and not a square. Calipers can 
be used to determine which direction is larger.  In the silicon qubit setup, I mounted the mirror such that the wider direction is horizontal.  This choice was somewhat arbitrary.  

<img width="300" alt="mirror" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/153c2171-2599-409c-bf83-2168452b544b">

Mounting the MEMS mirror is a bit more involved.  To prevent electrical shorts, the copper housing must be covered in a layer of kapton tape.  There are many ways to do this, but images of my 
taping method are included here.

<img height="300" alt="wow_its_tape" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/70f25bbf-6222-4aff-a482-bbb99b145af0">
<img height="300" alt="wow_its_tape" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/ad51bc06-cb94-44de-9f34-80efcccee6fd">

Here, small pieces of tape were cut and pressed into the corners of the rectangular cutout to fill the gaps in the tape along the inner edge of the opening.

<img height="300" alt="wow_its_tape" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/7d9da831-e826-433d-a1fd-24bc9a06a697">
<img height="300" alt="wow_its_tape" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/d727d315-c7cb-4e39-b93f-0888726cb59e">

Once all copper surfaces are covered in tape, screw the mirror on from the back.  Note that the mirrors are very fragile-- a bump from a piece of paper broke one at SLAC.  It can be helpful to have two people for this step.

<img height="300" alt="MEMS_mounted" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/fd8f62b1-2094-4f8c-abb6-0bb6fe7417b1">
<img height="300" alt="MEMS_mounted" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/584ffc1e-6b7e-4238-884d-0b30b7d15496">

The two mirrors have identical mount hole patterns.  To maximize scanning range, I typically use the following configuration:

<img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/41a1ff5b-d197-4b25-990e-571dcfd72337">

### DC electrical connection

A similar taping procedure is used to prevent electrical shorts on the DC breakout board connection point on Wall \#2.  Once again, it's important to ensure that all exposed copper on both the outside and inner ridge is covered.  Once taping is complete, the breakout board can be mounted such that the MDM connector is located on the outside of the box, and the 10-pin connector faces inwards.  Either before or after mounting the board, you can connect the 10-pin ribbon cable from the board to the mirror.  Information about making these ribbon cables is included in the [MEMS pinouts README](https://github.com/CosmiQuantum/MEMS_docs/blob/main/LOUD_electrical/MEMS_pinouts.md)

<img height="250" alt="breakout_board_mounting" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/7c24fbd1-b361-4693-9440-0a95fd27ab4d">
<img height="250" alt="breakout_board_mounting" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/bbd0b8f7-2f81-4883-afee-c4580ad2fb1c">
<img height="250" alt="ribbon_cable" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/5bdee800-1f4f-4f94-a6ed-78bd882532a7">

### Focuser and optical connection

SAY SOMETHING ABOUT OPTICAL CHECKS BEFORE MOUNTING FOCUSER

Next, we mount the focuser by inserting it through the wall into its mount housing.  It is sometimes helpful to loosen the housing screws a bit during this step.  Then, align the focuser back plate as shown below and tighten its mount screws to fix the focuser orientation in place.  Ideally we would use spring washers underneath these screws.

<img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/10eb2cfb-7783-4383-91dd-efbc5d98dac0">

### Filter

### Final assembly
Finally, we attach Wall \#4 and the lid of the enclosure.  Then throw the box across the room.

<img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/828c30aa-4419-4c9c-9ca7-ddaf3dfe39c2">


## Hardware docs
* link to CAD
* link to installation instructions
