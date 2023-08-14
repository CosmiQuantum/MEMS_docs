noteL: mapping this out as motivation to do it later

# Optical Map Through LOUD

| item | absolute minimum | typical low power | typical high power | 
| ---- | ---------------- | ----------------- | ------------------ |
| AWG pulse length | 0.2us + O(10ns) ramp time | 5us (?) | 5us | 
| Laser power | 3mA | 10mA | 15mA |


google drawing cartoon overview


## Step One: AWG Control
Currently we are using an AWG to control our laser diode current setpoint.  In this configuration, we can send a minimum pulse length of 0.2us, with a ramp time on the order of 10ns. 
 There is an audible time delay between when the command is sent to turn on the AWG, and the time that the AWG actually turns on.  There are a couple of ways to improve this lag, including setting the AWG to pulse on a trigger input, and switching to RFSoC DC output diode biasising.

## Step Two: Laser Diode
### 635nm laser diode calibration curve
<img width="595" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/e05263c4-cedf-47f8-b3bf-66f3097733a7">

To avoid fluctuations due to voltage noise, we want to operate the laser diode in the flat-top regime.  Let's target a current of 10-15mA for initial testing.

## Step Three: Filter bank
optional, list some of the filters for reference

## Step Four: Cabling through fridge
yeah this is a tossup

## Step Five: Coupling to Focuser 
biggest (known) attenuation factor

100um core down to 10um core

## Step Six: Focuser and in-box attenuation
also a tossup

## Step Seven: IR filter at output
find datasheet and calibration curve

## Step Eight: Surface of the device
this is a ryan problem i think.  
