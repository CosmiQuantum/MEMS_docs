# MEMS Box Assembly
This section contains assembly instructions for the MEMS enclosure.  Assembly instructions for the silicon qubit setup can he found [here in google drive](https://docs.google.com/document/d/1rCzVcsyPv5U-AN3GMhoRoeWomr2Zmh909wud3GUkeqE/edit).  CAD for the silicon qubit mount setup is posted on the [QSC confluence](https://confluence.qscience.org/pages/viewpage.action?spaceKey=1HTCSA&title=LOUD+Run+0). 

The following wall numbering scheme is used throughout this document:

<img width="400" alt="numbering_scheme" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/ea65af90-81f0-49c2-afe2-bdb39d038ee9">

## Components List
* Stationary Mirror, Thorlabs [BBSQ05-E02](https://www.thorlabs.com/newgrouppage9.cfm?objectgroup_id=139&pn=BBSQ05-E02#2146)
* IR filter, Thorlabs [FGS600S](https://www.thorlabs.com/newgrouppage9.cfm?objectgroup_id=3695&pn=FGS600S#11363)
* Refractive focuser, OZ Optics, part number for 635nm, 20cm focal length: [LPF-04-635-10/125-QM-10-200-18AS-35-3S-1PE-1-UNC-UVVIS-VAC](https://www.ozoptics.com/ALLNEW_PDF/DTS0060.pdf)
* Spring washers, Seastrom [5807-4-1](https://www.seastrom-mfg.com/washerdetails.aspx?productNumber=5807-4-1)
* [Screws list](https://docs.google.com/spreadsheets/d/1jb8EKiFIDPo3E_T_oqH2WZctS7mlKIRE4Pj4M6Au0no/edit#gid=0)

----

# Mechanical assembly instructions

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

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Stationary mirror rotation plate | M4 x 6mm | 3 | no |
| Stationary mirror rotation plate | M4 x 6mm | 1 | yes |
| MEMS mirror rotation plate | M4 x 6mm | 3 | no |
| MEMS mirror rotation plate | M4 x 6mm | 1 | yes |
| Stationary mirror to mount| M2 x 4mm | 4 | no |
| MEMS mirror to mount | 0-80, 4mm length | 4 | no |

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

----

### DC electrical connection

A similar taping procedure is used to prevent electrical shorts on the DC breakout board connection point on Wall \#2.  Once again, it's important to ensure that all exposed copper on both the outside and inner ridge is covered.  Once taping is complete, the breakout board can be mounted such that the MDM connector is located on the outside of the box, and the 10-pin connector faces inwards.  Either before or after mounting the board, you can connect the 10-pin ribbon cable from the board to the mirror.  Information about making these ribbon cables is included in the [MEMS pinouts README](https://github.com/CosmiQuantum/MEMS_docs/blob/main/LOUD_electrical/MEMS_pinouts.md)

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| DC breakout to Wall 2 | M2 x 8mm | 4 | no |

<img height="250" alt="breakout_board_mounting" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/7c24fbd1-b361-4693-9440-0a95fd27ab4d">
<img height="250" alt="breakout_board_mounting" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/bbd0b8f7-2f81-4883-afee-c4580ad2fb1c">
<img height="250" alt="ribbon_cable" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/5bdee800-1f4f-4f94-a6ed-78bd882532a7">

----

### Focuser and optical connection

Before installing the focuser, it is good to connect it to a laser and visually confirm the existence of a spot.  The FCPC focuser connection is finicky, so it's good to check that light is emerging from the focuser before packing it up.  To check for a spot:
* turn on laser at highest possible setting
* aim focuser at a table at varying heights
* darken surrounding area to the best of your ability, either using a hand or the optical blanket
It can be difficult to see the light at first, so don't panic if nothing is there.  A good sanity check is to aim the light into your phone camera.  When I place the focuser directly above my iphone 11's selfie camera, I can very clearly see a red circle of light. 
  
Once you confirm that the focuser is connected correctly, you can mount it by inserting it through the wall into its mount housing.  It is sometimes helpful to loosen the housing screws a bit during this step.  Then, align the focuser back plate as shown below and tighten its mount screws to fix the focuser orientation in place.  Ideally we would use spring washers underneath these screws.

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Focuser back plate | M4 x 8mm | 2 | no |

<img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/10eb2cfb-7783-4383-91dd-efbc5d98dac0">

----

### Final assembly
Finally, we attach Wall \#4 and the lid of the enclosure.

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Lid to Wall 1 | M4 x 10mm | 3 | yes |
| Lid to Wall 3 | M4 x 10mm | 3 | yes |

<img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/828c30aa-4419-4c9c-9ca7-ddaf3dfe39c2">

----

### Filter
There are two slots in Wall \#1 for IR filtering of the laser beam.  The LOUD qubits setup uses the outer slot.  To install the filter, gently slide it into place.  Then, install the copper output plate using spring washers.  The output plate is designed to clamp the filter into place so that it can thermalize through Wall \#1.  We have been using [beryllium copper washer](https://www.seastrom-mfg.com/washerdetails.aspx?productNumber=5807-4-1) to ensure tight thermal contact.  It can sometimes be a bit difficult to get the washers to stay in place while screwing the output plate on.  I usually cut thin strips of kapton tape, and use them to hold the washers down.  Once the output plate is partially screwed in, I remove the tape with tweezers.  Some photos of this approach are included below.  This is probably unnecessary if you have two people present for this installation step.

| Location | Screws | Count | Countersunk? |
| -------- | ------- | ------- | ------- |
| Focuser back plate | M3 x 20 (ish??) mm | 4 | yes |

<img height="300" alt="taping" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/6d7a8090-2041-4a97-b377-89b9436773c3">
<img height="300" alt="taping" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/6e6da4eb-0423-447b-8b61-48e466b08371">

*(note that the photos above are from the KID version of this output plate, not the qubit one).* The qubit output plate installation assembly is shown below:

<img width="400" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/07acae3a-eaff-4ef4-acf5-a8ee63730cad">

----

### Misc screw holes
Threaded holes are placed along the exterior of the box to allow for attachment of thermalization straps and thermometry.

| Location | Size | Count | Intention |
| -------- | ------- | ------- | ------- |
| Wall 2 | M4 | 7 | thermalization strap? |
| Wall 3 | M3 | 1 | thermometer |

----
