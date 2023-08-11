# Homemade cable setup
Two cables are used to route the MEMS driver 10pin output to pins on the ficher fridge port:
<img width="614" alt="cable" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/fb048c5c-4145-48de-8206-c0851cd57dcb">

# Cable \#1: Fischer to MDM
This was designed to be a multi-purpose ribbon cable.  All 24 pins on the fischer cable were soldered to the MDM.  The pinout convention was designed to follow that of the 5m commercial Fischer to MDM cables purchased for LOUD.  Pin \#13 of the MDM is left floating (note that in the commercial fischer cables, pin 13 is wired to the twisted pair shielding).

### MDM pinouts
The drawing below is used to define an MDM pin numbering scheme.  Annotations with MEMS-specific pinouts are included to help with multimeter testing, but note that this cable was not designed specifically for MEMS.  It was instead designed to match the pinouts of the commercially bought shielded Fischer cables.

<img width="500" alt="mdm_male" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/c925157f-572e-45fc-91b6-f3d7a190218a">

### Fischer pinouts
The following drawing shows the MDM pin numbers mapped to pins on the ficher end of the connector. Once again, annotations with MEMS pinouts are included.

<img width="400" alt="fischer" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/04d6ad15-25a1-4387-a271-732cc9549c52">

# Cable \#2: MDM to 10pin

### MDM pinouts
The following drawing shows the female MDM pin numbers.  On this cable, only the speciically called-out MEMS pins are soldered.  Everything else is floating.  Notice that this is soldered to plug into the male MDM on cable \#1.

<img width="500" alt="mdm_male" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/ab0fa749-46c4-42ce-bc8e-8e8223b8816b">

### 10pin cable
It is easiest to standardize the 10pin cable pinouts in reference to the red painted wire.  A drawing is shown below. In this drawing, the green box surrounding pin numbers indicates ground.

<img width="389" alt="10pin" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/7c4fd8cd-eed8-45f3-8a7a-b792b0689b52">

For more information about orientation of 10pin cables, see the [MEMS pinouts readme](https://github.com/CosmiQuantum/MEMS_docs/blob/main/LOUD_electrical/MEMS_pinouts.md).
# Other notes
A cheat sheet with a summary of this information is included in the ziplock bag with the cable:

<img height="200" alt="hannah_drawing1" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/f5e79b29-6bcf-49c0-8a64-e6cf9efd3fe3">
<img height="200" alt="hannah_drawing2" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/6c06e029-9114-4729-970e-09d19e906ddf">
