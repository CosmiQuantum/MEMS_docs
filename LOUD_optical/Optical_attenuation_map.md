## LOUD Optical Attenuation
This document contains the datasheets & plots required to make a very rough approximation of laser optical output.  A drawing of the setup is included below for reference:

<img width="400" alt="laser_diode" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/8a617a5b-f487-4ea1-8148-642fb0ae38bc">

---

## Summary
Using the following numbers, we can make a hand-wavy approximation of photon output of the laser diode:

$$ \lambda = 635 \times 10^{-9} $$

$$ h = 6.625 \times 10^{-34} $$

$$ P = 0.1 \times 10^{-3} W $$

$$ \text{photon number per second} = \frac{P \cdot \lambda}{h \cdot c} =  \frac{(0.1\cdot10^{-3} J/s)(635\cdot10^{-9})m}{(6.625\cdot10^{-34}J/s)(3\cdot10^{8}m/s)} $$

$$ = 3.194 \times 10^{14} \text{ per sec} $$

Next, we approximate transmission through the fridge lines:

| \# | Name | Transmisson % |
| --- | --- | --- |
| 1 | Warm filter bank (currently empty) | 100% |
| 2 | Fridge patch cables | 50% |
| 3 | Focuser coupling | 1% |
| 4 | MEMS enclosure | 98% |
| 5 | IR Filter | 63% |
| 6 | Device surface | ?% |
| | **TOTAL** | 0.3087% | 

Using this number for attenuation and a 1us square pulse, **we get almost exactly $1 \times 10^{6}$ photons per pulse**.  

---

# Justification / Commentary

## Step Zero: Laser Diode

### Driver control pulse

Previously we had using an AWG to control our laser diode current setpoint.  In this configuration, we could send a minimum pulse length of 0.2us, with a ramp time on the order of 10ns.  *I've fallen out of touch with RFSoC control development.  If people find themselves using this github page, please feel free to update with RFSoC system limitations  and/or DC noise information*

### 635nm laser diode calibration curve

<img width="450" alt="laser_diode" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/e05263c4-cedf-47f8-b3bf-66f3097733a7">

To avoid fluctuations due to voltage noise, we want to operate the laser diode in the flat-top regime.  Let's target a current of 10-15mA for initial testing.  It's quite difficult to read an actual value of optical power in this regime.  We can use **0.1mW** as an upper bound approximation?


## Step One: Filter bank

It is possible to use an in-line filter bank with ND filters at the warm input to the fridge for additional beam atteuation.  This is not yet installed.

## Step Two: Cabling through fridge

There is some unknown attenuation through the [SMA fridge cabling](https://www.accuglassproducts.com/connector-connector-cable-100-uv-vis).  If I had to pick a number, I would say that transmission is something like 50%, based on camera imaging before and after routing the beam through the fridge.  This is a very rough approximation.  Patch cable lengths are shown here:

<img width="595" alt="laser_diode" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/86f8daba-457f-4345-8ebd-3cfe83ff5917">


## Step Three: Coupling to Focuser 
The SMA optical patch cables have a core diameter of 100um.  The refractive focuser has a fiber core diameter of 10um.  The junction between the two will therefore have attenuate the beam by a factor of 100.  

## Step Four: Focuser and in-box attenuation
There will be some attenuation inside the focuser itself, and at the surface of the two mirrors.  The reflectance of the stationary mirror (thorlabs part number [BBSQ05-E02](https://www.thorlabs.com/thorproduct.cfm?partnumber=BBSQ05-E02) is about 99% at 635nm, as shown below.  The reflectance of the MEMS mirror is unknown to me.

![image](https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/163b1d4b-7876-4368-a7db-ff875d7bf625)


## Step Five: IR filter at output
A 330 - 665 nm bandpass is used as an IR filter at the output of the MEMS box.  The transmission plot is shown below as a function of wavelength.  Note that the 635nm wavelength chosen for the LOUD qubit falls at the high end of this range.  Transmission at 635nm is about 60-65%.

![image](https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/1fc0d1ed-b23a-48d6-a694-12dc7360197b)


## Step Eight: Surface of the device
this is a ryan problem i think.  
