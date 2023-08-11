# MEMS Windows Quickstart Guide

[HM] This was written as an instruction manual for students at SLAC.  There is no permanent MEMS windows setup currently at Fermilab (this is intentional).  A lot of this is general computing background information, but **if you are running MEMS on windows, please pay attention to step \#5!!  It contains important information about where to update device parameters to avoid breaking the mirrors.**

#### MEMS on Windows for SLAC undergrads:
1. Open the app "Anaconda Prompt"
2. Navigate to filepath ``C:\MirrorcleTech\SDK-Python``
Guide to command prompt navigation:

| Desired Action    | Terminal Command |
| -------- | ------- |
| Go back a directory | ``cd ..`` |
| Enter a directory | ``cd folderName`` |
| List contents of a directory | ``dir`` |

* Note that when you open Anaconda prompt, you will likely start off with the initial filepath ``C:\Users\darkMatter``
* From here, you should use the command  ``cd ../../MirrorcleTech/SDK-Python``

3. Start up virtual environment using the command  
```
activate memsenv
```
* If you did this correctly, it should say ``(memsenv)`` instead of ``(base)`` on the far left side of the command line

4. Make sure that MEMS driver box is plugged into the computer

5. Make sure mirror parameters are correct in each of the following locations.  To do this, open the ``mtidevice.ini`` file in each of the following locations:
```
C:\MirrorcleTech\exe
C:\MirrorcleTech\SDK-Cpp
C:\MirrorcleTech\SDK-Python
```
The ``mtidevice.ini`` files should look like this:

<img width="400" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/1903ee48-8da8-4930-a94c-873dad6f3f9c">

Once you have it open, change ``VdifferenceMax``, ``VBias``, amd ``HardwareFilterBw``to match values given in the datasheet for the specific mirror you are using.  Instructions for how to get these values from the MEMS datasheets can be found on the [MEMS_mirror.md](https://github.com/CosmiQuantum/MEMS_docs/blob/main/MEMS_mirrors/MEMS_mirrors.md) page.

A fourth bonus location is found in ``Demo-Template.py``.  This is not as important, but if there is an error pulling values from the .ini file, then the python script will use these defaults.  So it;s probably best to have them be correct.
<img width="400" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/391908c7-b190-42b6-9282-4ba51e2f29f6">

More information about this step can be found on pg 25 of the MEMS Mirror Development Kit packet located at SLAC.

6. Run a python script
* The command to run the demo script is: ''python MTIDevice-Demo.py''
* If you get an error message about .dll files, there’s a python version issue.  Check that the virtual environment is activated, and/or see the installation guide linked above
* It will ask you to enter a port number. This number can be found in the line above the prompt that says, for example, COM3. You would in that case enter 3.

#### Turning things off
##### Important: Never unplug a mirror while high voltage is on (as shown by red light on demo box)
If you are running a python script, make sure to exit the script and visually confirm that the red light is off on the driver box.  Next, unplug the driver box from the computer and confirm that the green (+5V) light is off as well.  Then unplug mirror from driver


If you are running the MirrorcleDraw app, slowly ramp down vdifference towards zero.  Then uncheck the box that says “Enable MEMS driver”.  This turns off the red HV light on the driver box.  Then close the MirrorcleDraw App.  Finally unplug the black driver box from the computer.  This turns off the green +5V light.  Finally unplug the mirror from the driver

Deactivating virtual environment:
Either close the anaconda prompt window, or type ``conda deactivate``

