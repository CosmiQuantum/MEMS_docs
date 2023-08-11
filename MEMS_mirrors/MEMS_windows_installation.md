# MEMS Windows Software Installation

**Note that this is NOT the software currently being used in LOUD.  This is the Windows-only MEMS code that we purchased from Mirrorcle when we bought the mirrors.  For MEMS in LOUD software instructions, see [the MEMS_ctrl repo](https://github.com/CosmiQuantum/MEMS_Ctrl), which sends serial commands from the linux servers.  I highly discourage you from following the instructions on this MEMS Windows page unless there are features you know you want from here (notably: control over mirror speed).**

#### Software Development Package (SDK)
Github says that the software package is too large to upload as a zip file.  Instead, it can be found:
* on the QSC confluence page: https://confluence.qscience.org/display/1HTCSA/MEMS+Software+Installation
* on the NEXUS confluence page:  https://confluence.slac.stanford.edu/display/NEXUS/MEMS+Operation
* on a USB stick somewhere at Kelly's sidet desk...
* contact Hannah Magoon

Mirrorcle's Programming Guide: https://mirrorcletech.com/documentation/Guides/Programming%20Guide.html

#### Setting up a virtual environment on Windows:

1. Install anaconda
2. Install required version of python
```
conda install python=3.7.11
```
3. Create a MEMS software directory, download software from zip file link above.  Navigate to this directory in windows anaconda command prompt.

4. Create a virtual environment for MEMS:
```
conda create -n mems_env python=3.7 anaconda
```
* ``mems_env`` is the name of the virtual environment. You can change it to whatever you like
* Note: This step is blocked by the fermilab guest wifi. Not sure whether it works on fgz.  I needed to use a phone hotspot for wifi while running this command.
  * [HM 8/4/2023]: this comment may be out of date... I think I saw an email about this being fixed. Not sure
  
5. Start the environmentwith the command
```
activate mems_env
```
* If this worked, you should see the environment name listed on the left of your terminal prompt in parentheses.

6. Install packages in virtual environment using normal commands listed below
```
python -m pip install numpy
python -m pip install openvc-python
python -m pip install freetype-py
```
You can check that you installed them correctly using the command ``conda list``

7. Go to Windows File Explorer and put a copy of the MirrorcleTech folder inside the folder holding your virtual environment
    * Check that your copy of the MirrorcleTech folder contains "SDK-Python" (the python development kit). If you downloaded the folder from the confluence links, you should be fine.

8. Navigate to the Python-SDK folder and run the demo script called ``MTIDevice-Demo.py``

9. To leave the virtual environment, use ``conda deactivate``

### Questions?
For questions & troubleshooting, please don't hesitate to reach out-- either on slack or at hwmagoon@stanford.edu

Good luck :D
