# ADM-OSC


ADM-OSC is an industry initiative developed by **FLUX:: Immersive**, L-Acoustics and Radio France (the later leading the case study and specific application) to facilitate the sharing of audio objects metadata between a live ecosystem and a broadcast or studio ecosystem.
If tries to define a basic layer of interoperability between object editors and object renderers in a live production workflow.
It does so with [OSC](https://opensoundcontrol.stanford.edu/index.html) a communication protocol widely used in the live industry.
 At the base the ADM-OSC is a specific grammar and definition.


Immersive audio is gaining ground in different industries, from music streaming to gaming, from live sound to broadcast.
[ADM](https://adm.ebu.io/) or _Audio Definition Model_, is becoming a popular standard metadata model in some of these industries, with serial ADM used in broadcast or ADM xml files used in the studio.

A first implementation of ADM-OSC is now included with the latest release of _SPAT Revolution_.
Other industry peers have implemented early versions of ADM-OSC such as L-Acoustics (L-ISA), Merging Technologies (Ovation) and Yamaha Steinberg Media (Nuendo). It is supported by default on OSC input and as an option on OSC output.

More information abd specifications on the **ADM-OSC** initiative can be found on the GitHub repository [immersive-audio-live/ADM-OSC](https://github.com/immersive-audio-live/ADM-OSC)


## ADM-OSC in SPAT Revolution

![_SPAT Revolution_ ADM OSC](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Education/ADMOSC.png )

_SPAT Revolution_ supports **ADM-OSC** in input as an alternate grammar, and on output as an option. The specification calls for normalized (linear) data value to provide interoperability and tend to align with the ADM protocol. Typically, object-based mixing renderers will handle the scaling based on the system configuration.

Specifications calls for:

* Linear 0.00,1.00 for Gain and LFE (aux send) messages
* Invert Azimuth to clockwise
* Distance normalized to 0.00,1.00
* XYZ to a normalized cube -1.00,+1.00 (square in 2D, XY)

To configure ADM-OSC, make sure OSC is enabled and go to the OSC Connection section in the software preferences.

* Choose an **input | ADM** preset to receive ADM-OSC data and select the receiving network interface.

* Choose an **output | ADM XYZ (or AED)** preset to send ADM-OSC data.

* Enter the IP address of the destination.

![OSC I/O presets](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnectionsADM.png )

On the OSC input connection, you can see that Port #9000 is our default incoming port and that and ADM Transformation preset is applied to match the specification.
To modify the incoming range (the automation zone), simply enter your desired value. In this example, we are scaling to -3.00, 3.00.

![OSC I/O presets]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCTransformPresetsADM.png)

On the OSC output connection, you can see that port #9001 is our default sending port and that an ADM Transformation preset is applied to match the specification.
To modify the incoming range (the automation zone), simply enter your desired value.
In this example, we are sending data from the -3.00, 3.00 zone.
All output options are already set with the preset.

![OSC I/O presets](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCTransformPresetADMOutput.png)



## Third party example

Recently, L-Acoustics released their new L-ISA controller that can now output ADM-OSC as an alternate method (hardware required) and is functional to be received by _SPAT Revolution_, for example. OSC messages can be sent using the ADM-OSC format and be interpreted identically by any ADM-OSC compatible device.

![L-ISA](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/LisaOSCConfiguration.png)

Furthermore, Nuendo V11 adds the support of external OSC renderers, by mapping bidirectionally the multi-panner

![Nuendo](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoPanner.png)
