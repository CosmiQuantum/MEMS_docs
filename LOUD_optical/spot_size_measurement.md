# Camera Notes
We use the [Thorlabs CS235MU camera](https://www.thorlabs.com/thorproduct.cfm?partnumber=CS235MU) for warm bench testing.  Windows control software is available for download on the thorlabs website, linked previously.  Note that the camera is monochrome, and you may need to play around with gain and display coloring to get good pictures of the beam.

Notable camera specs are included here:

<img height="200" alt="thorcam" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/3ca9df94-0fee-4b17-bb75-3788b388a5eb">
<img height="200" alt="thorcam_efficiency" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/423d1927-e673-414d-b127-6f804b3ad682">

# Measuring spot size
The thorlabs camera saves images as ``.tif`` files.  These can later be analyzed using the python package "[laserbeamsize](https://pypi.org/project/laserbeamsize/)".  The package is installed with ``pip``, and is used to get the spot size of a camera image.  The code that I have been using is shown below.  Note that this is pretty much identical to the demo code linked above.  The only difference is that I've set the pixel size equal to 5.86 µm to match the specs of the camera.

```
## source: https://pypi.org/project/laserbeamsize/
import imageio
import numpy as np
import matplotlib.pyplot as plt
import laserbeamsize as lbs

def get_spot_size(imagename):
    beam = imageio.imread(imagename + ".tif")
    x, y, dx, dy, phi = lbs.beam_size(beam)

    print("The center of the beam ellipse is at (%.0f, %.0f)" % (x,y))
    print("The ellipse diameter (closest to horizontal) is %.0f pixels" % dx)
    print("The ellipse diameter (closest to   vertical) is %.0f pixels" % dy)
    print("The ellipse is rotated %.0f° ccw from horizontal" % (phi*180/3.1416))

    lbs.beam_size_plot(beam, f"Original Image, {imagename}.tif", pixel_size = 5.86, units='µm')
    plt.show()

get_spot_size("07272022_05")

```

This is used to generate the following plots:

<img width="550" alt="image" src="https://github.com/CosmiQuantum/MEMS_docs/assets/80175523/aadadfb4-3dc0-4e34-b4de-8ff881227c38">
