# MEMS_docs
Hello and welcome to MEMS in LOUD.  This repository is intended to serve as a central (and sharable) location with instructions and datasheets for the MEMS system.  Control code for the system is stored in the [MEMS_Ctrl](https://github.com/CosmiQuantum/MEMS_Ctrl) repo.  It is kept separate so that users of the system do not need to download this entire handbook to run things.  

This documentation is broken into four categories: 
1. ``LOUD_Electrical`` contains information about the DC cable chain.
2. ``LOUD_Optical`` contains information about the laser routing and control. 
3. ``LOUD_Hardware`` contains information about the design and assembly of the MEMS and qubit housings
4. ``MEMS_Mirrors`` contains mirror datasheets as well as instructions for running the MEMS Windows software (which serves as an alternative to the usb/serial control software linked above).  

----
## What is MEMS
The MEMS laser system can be used to sweep a laser beam across the surface of a given quantum device.  In LOUD, the system is currently hooked up to a 6-qubit [silicon transmon chip](https://github.com/CosmiQuantum/MEMS_docs/blob/main/LOUD_hardware/silicon_qubit_setup.md) from Robert Mcdermott's group at the University of Wisconsin.  A block diagram of the system is shown here:

<img height="350" alt="steering_unit" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/ef668e47-3325-4e0f-9d95-8fa455790018">

*Image credit: Kelly Stifter*


-----
## Helpful Links
**MEMS google drive:** https://drive.google.com/drive/folders/1IxKxNAd-OEq4rYUD9z-39MRGrSPkV5Ok?usp=drive_link

**MEMS QSC confluence:** https://confluence.qscience.org/display/1HTCSA/MEMS+System

**Running slide decks:**
* [Planning hardware/wiring for LOUD (8/2022 - present)](https://docs.google.com/presentation/d/1KGMi7ChWB6aNYRg5WBvVhE06Tzbi3BEKmCEu2dWy-tE/edit#slide=id.g2295b13efb6_0_0)
* [MEMS + qubits tests in LOUD (5/2023 - present](https://docs.google.com/presentation/d/11gDJgIZLsgrVuI4iNvbL_12GYMmGFXiDUxQpM1qBsPI/edit#slide=id.g256b424b535_0_0)

----  
## Onboarding resources:
* [Kelly's description of the MEMS program, pre-installation in LOUD (8/2022)](https://docs.google.com/presentation/d/1EdDBv1uNEWqCI73cme1L7-Cg87s-V7iwivkqoPncXTw/edit#slide=id.p)
* [Folder with presentation slides](https://drive.google.com/drive/folders/1UWY2XsLM5ypoSD7gy8bRqhrUESGADwUB)
* Talks available on youtube:
  * *Note that these are both horribly out of date, and do not include results of cold testing. Nevertheless, they may be helpful for students trying to familiarize themselves with the MEMS system & its big-picture goals*
  * [Kelly Stifter, Snowmass 2022](https://www.youtube.com/watch?v=Wy0oarMECdM) (awarded best poster!)
  * [Kelly Stifter, QSC summer school 2022](https://youtu.be/VW6oRTCWZw8?t=2815)

----
## Contact
Please reach out if you have questions or comments.  Even if I'm not around, I'm more than happy to help clarify or troubleshoot.  My contact info is listed here:

| Name | Email | Phone? |
| --- | --- | --- |
| Hannah Magoon | hwmagoon@stanford.edu | 508-665-8282 | 

*I don't want to volunteer the contact info of others, but if you are reading this and have a baseline understanding of the system, please add your name to the table & edit this documentation as you see fit.*


----
## Archived MEMS Links

**MEMS at FNAL photo album:** 
* https://photos.google.com/share/AF1QipMmqoWbn3RVLo4tqv78I0vS4r6iMvlEblVydgLS6NxNUOYILnwoK53Qj7WT-ZwPpg?key=R2o0NlpHQnVBcFBGemhvR2Q4Rk5NVkxOU0pIbUpB
* contains pictures from Lab A and first installation in LOUD (i.e. all MEMS photos from the year 2022)

**MEMS on the NEXUS confluence:** 
* https://confluence.slac.stanford.edu/display/NEXUS/MEMS+mirror+project
* Contains information about the Lab A setup, and project notes pre-Kelly/Hannah
* (Note that more recent documentation can be found on the [QSC confluence](https://confluence.qscience.org/display/1HTCSA/MEMS+System))
  
**Running Slide Decks**
* [MEMS Project Status (1/2023 - present)](https://docs.google.com/presentation/d/1zzwaTrPCd6iAJnR8lv24U-RBMRbJIyfRHySXNWpxKuQ/edit)
* [First cold test in Lab A with Adam's KID (3/2022 - 9/2022)](https://docs.google.com/presentation/d/1kEx_I9y4r-qSOtKWM2qjZcWUeaD-5IixSUfKqjTUWgM/edit#slide=id.g15028d90891_0_0)
* [Lab A datataking (9/2022 - 12/2022)](https://docs.google.com/presentation/d/1aT7D16LCWrzIWNsnplRhRge39xQKbSNosBU8oI7OwhY/edit#slide=id.g1c52c33cf82_0_0)
* [Initial CAD design (3/2022)](https://docs.google.com/presentation/d/1Ot2j-huilQjQEyUlkndx-m_U-fPALiF_-bEYakDAZJo/edit#slide=id.g11e369db084_0_0)
* [Reflective focusing at SLAC (11/2022)](https://docs.google.com/presentation/d/1IvIgyGEyYdLRP5Z9ZWvfET_vtNke7xzl7hGHc7-LfRQ/edit#slide=id.p)
----
