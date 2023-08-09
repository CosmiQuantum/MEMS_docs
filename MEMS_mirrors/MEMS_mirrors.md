# MEMS Mirrors FAQ
I'm starting a document to serve as a reference for students using MEMS mirrors at FNAL.

### MEMS Mirror Inventory
HANNAH COMMENT ABOUT PROS AND CONS OF LARGE VS SMALL MIRRORS


| 2mm non-cryo | 2mm cryo | 4.6mm cryo |
| -------- | ------- | -------- |
| <img width="98" alt="2mm_roomtemp" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/768bc744-fba1-444d-816d-5995c2e0a42f">| <img width="96" alt="2mm_cryo" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/680c64cc-0d65-477e-9ec7-d8f4b5113dee">| <img width="99" alt="4_6mm_Cryo" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/d732c35b-cfd0-47bb-a9a3-db2b9a7598e5"> |

Note that the 4.6mm mirror shown above has a layer of kapton tape over its face.  The mirrors were all delivered with this tape.  
The tape is not touching the face of the mirror; it is separated by a small piece of glass.  Before installing a mirror, this tape must be removed with tweezers 
(ideally plastic tweezers for ESD reasons).

A serial number is printed on the back of each mirror pcb.  Mirror locations have historically been
tracked in [this spreadsheet](https://docs.google.com/spreadsheets/d/1SfAJXwR_5d47hqugquiN4ruBxzNecHy8UDuXBtk5U1g/edit#gid=0).  

**For ease of access, notable serial numbers are included below:**
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
<img width="705" alt="datasheet" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/c5125d16-a371-4c28-9f78-e6707fcbf5fb">

When we initiailzie a mirror/driver connection, we need to provide two quantities:




