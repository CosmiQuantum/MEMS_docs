# LOUD Optical Attenuation Map
The purpose of this document is to create a reference for in-line optical component transmission plots.

### Summary

| \# | Name | Transmisson % |
| --- | --- | --- |
| 1 | Warm filter bank (currently empty) | 100% |
| 2 | Fridge patch cables | 50% |
| 3 | Focuser coupling |
| 4 | MEMS enclosure | 98% |
| 5 | IR Filter | 63% |
| 6 | Device surface | ?% |


# Reference Material / Commentary

## Step Zero: Laser Diode

### Driver control pulse

Previously we had using an AWG to control our laser diode current setpoint.  In this configuration, we could send a minimum pulse length of 0.2us, with a ramp time on the order of 10ns.  *I've fallen out of touch with RFSoC control development.  If people find themselves using this github page, please feel free to update with RFSoC system limitations  and/or DC noise information*

### 635nm laser diode calibration curve

<img width="450" alt="laser_diode" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/e05263c4-cedf-47f8-b3bf-66f3097733a7">

To avoid fluctuations due to voltage noise, we want to operate the laser diode in the flat-top regime.  Let's target a current of 10-15mA for initial testing.

## Step One: Filter bank

It is possible to use an in-line filter bank with ND filters at the warm input to the fridge for additional beam atteuation.  This is not yet installed.

## Step Two: Cabling through fridge

There is some unknown attenuation through the [SMA fridge cabling](https://www.accuglassproducts.com/connector-connector-cable-100-uv-vis).  If I had to pick a number, I would say that transmission is something like 50%, based on camera imaging before and after routing the beam through the fridge.  This is a very rough approximation.  Patch cable lengths are shown here:

<img width="595" alt="laser_diode" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/86f8daba-457f-4345-8ebd-3cfe83ff5917">


## Step Three: Coupling to Focuser 
The SMA optical patch cables have a core diameter of 100um.  The refractive focuser has a fiber core diameter of 10um.  The junction between the two will therefore have attenuate the beam by a factor of 100.  

## Step Four: Focuser and in-box attenuation
There will be some attenuation at the surface of the MEMS and stationary mirrors.  The reflectance of the stationary mirror (thorlabs part number [BBSQ05-E02](https://www.thorlabs.com/thorproduct.cfm?partnumber=BBSQ05-E02) is about 99% at 635nm, as shown below.  The reflectance of the MEMS mirror is unknown to me.

![image](https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/163b1d4b-7876-4368-a7db-ff875d7bf625)


## Step Five: IR filter at output
A 330 - 665 nm bandpass is used as an IR filter at the output of the MEMS box.  The transmission plot is shown below as a function of wavelength.  Note that the 635nm wavelength chosen for the LOUD qubit falls at the high end of this range.  Transmission at 635nm is about 60-65%.

![image](https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/1fc0d1ed-b23a-48d6-a694-12dc7360197b)


## Step Eight: Surface of the device
this is a ryan problem i think.  
