# MEMS Mirrors FAQ
I'm starting a document to serve as a reference for students using MEMS mirrors at FNAL.

The MEMS (micro-electromechanical system) mirrors are purchased from [Mirrorcle Tech](https://www.mirrorcletech.com/wp/).  The deflection angle of the mirror is controlled using four DC high voltage inputs.  Setting these causes the circular center portion of the mirror to move in the $\pm X$ and $\pm Y$ directions.

<img width="400" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/9a0255f7-31a6-41c2-b502-80f7a5c1a3a6">


### MEMS Mirror Inventory
We have purchased MEMS mirrors of two different sizes: 2mm and 4.6mm diameter.  The large mirrors make alignment easier, since they are a larger target.  When the spot is misaligned on the mirror, parasitic reflections are introduced (i.e. part of your spot will hit the reflective backboard on the mirrors, and will not move when you change mirror position.  These reflections will always be present at some location on your device, which pretty much kills whatever measurement you're trying to make).  Both the Lab A and LOUD setups have used large mirrors to avoid this issue.  The disadvantage of the larger mirror size is that scanning range and speed are restricted, and the mirrors are much more fragile.

Images of the mirrors are included below:

| 2mm non-cryo | 2mm cryo | 4.6mm cryo |
| -------- | ------- | -------- |
| <img width="98" alt="2mm_roomtemp" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/768bc744-fba1-444d-816d-5995c2e0a42f">| <img width="96" alt="2mm_cryo" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/680c64cc-0d65-477e-9ec7-d8f4b5113dee">| <img width="99" alt="4_6mm_Cryo" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/d732c35b-cfd0-47bb-a9a3-db2b9a7598e5"> |

*Note that the 4.6mm mirror shown above has a layer of kapton tape over its face.  The mirrors were all delivered with this tape.  
The tape is not touching the face of the mirror; it is separated by a small piece of glass.  Before installing a mirror, this tape must be removed with tweezers 
(ideally plastic tweezers for ESD reasons).*

A serial number is printed on the back of each mirror pcb.  Mirror locations have historically been
tracked in [this spreadsheet](https://docs.google.com/spreadsheets/d/1SfAJXwR_5d47hqugquiN4ruBxzNecHy8UDuXBtk5U1g/edit#gid=0).  

**For ease of access, notable serial numbers are listed here:**
| Serial Number | Purpose |
| -------- | ------- |
| S50500 | LOUD silicon chip |
| S50499 | Lab A --> at Kelly's desk in a copper mount (reserved for QUIET) |

Mirror are stored in boxes, 
which are kept in ESD bubble wrap bags.  Each box holds two mirrors:

<img width="250" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/9a70fdf3-5c75-43b1-ac5e-15e93fb56d9e">

Sharpie labels on the top of each box indicate the serial numbers of the mirrors inside.  The left mirror is listed first, and the right mirror is listed second.

### Controlling MEMS mirrors
We currently have access to three types of mirror control software:
1. **USB Serial Control:** we wrote this, and it can be found [here](https://github.com/CosmiQuantum/MEMS_Ctrl) on github. Unless we want to spend $2,000 on another Mirrorcle software package, this is the only way that we can operate MEMS mirrors through the LOUD servers.  The only disadvantage of this method is that I have not yet written a way to control mirror speed.  If you are interested in doing this, talk to me (Hannah) first.
2. **MEMS Windows Software:** this is the software that we purchased from Mirrorcle.  There is both a Python and a C++ version.  Instructions for [installation](https://github.com/CosmiQuantum/MEMS_docs/blob/main/MEMS_mirrors/MEMS_windows_installation.md) and [usage](https://github.com/CosmiQuantum/MEMS_docs/blob/main/MEMS_mirrors/MEMS_windows_quickstart.md) are linked here.  This software has more features than the previous option, but most of these are not relevant to our applications.  
    * I'm a bit biased, but I strongly Option \#1 over this.  The serial control code is more streamlined, it can be run on any computer, it's compatible with non-archaic versions of python, and you only need to update mirror parameters in one location (which greatly reduces the risk of damaging the mirrors due to incorrect setup).  And as a bonus, you can actually see the source code.
4. **MirrorcleDraw:** a GUI to control the mirrors.  Very fun to use, since it lets you draw shapes and see the mirror trace them out. *[HM - I haven't used this in ages, and forget where to download this from... it probably lives on a USB stick at Kelly's desk?? need to come back and update this later]*


### Reading mirror datasheets
Mirrors are individually calibrated with bias voltage recommendations.  These are found in the mirror datasheets, which are posted in
[FNAL_mirror_datasheets.zip](https://github.com/CosmiQuantum/MEMS_docs/blob/main/MEMS_mirrors/FNAL_mirror_datasheets.zip).  

A sample datasheet is included below.  I've highlighted the relevant parameters.
<img width="658" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/8fdf0875-aab2-4114-ba21-cded8f157483">

When we initiailzie a mirror/driver connection, we need to provide three quantities:
* `Vbias` This is the baseline bias voltage that is applied when you turn HV (high voltage) on.  This serves as the zero point positiion for the mirror.
* `VdifferenceMax` This is the maximum voltage difference between each set of control lines.  The datasheet provides two specs for this number (one for the x-direction, and one for y).  The MEMS driver box only uses one value.  I just pick the lower of the two numbers to provide as an argument.
* `HardwareFilterBW` It is important to change this number when switching between large and small mirrors.  This is used to prevent the mirror from moving too fast and shaking itself apart.  

In the Windows setup, these numbers need to be saved to at least 3 different locations (4 to be safe).  In the [usb serial control code](https://github.com/CosmiQuantum/MEMS_Ctrl), they only need to be provided once.  More information is provided in the software readmes.




