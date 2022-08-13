# Output

The main thing to note at the output stage is that you can have any number of output routes.
Like the [Inputs](6_Spat_Environment_6_4_Inputs_6_4_Inputs.md), they may be either direct hardware routes, which returns audio streams (via matrix routing) to the physical outputs of an audio interface connected to your _SPAT Revolution_ workstation.
The Hardware Output workflow is the most direct way to render in realtime to an actual loudspeaker system (or headphones).

!> Software outputs are created by the instantiation of a SPAT Return plug-in in a compatible DAW, when its local audio path is set to "on".

Outputs may also be linked to _SPAT Revolution_ RETURN plug-ins, which returns audio streams internally on the same workstation to a valid SPAT RETURN plug hosted in your DAW.
The software RETURN workflow offers an easy way to render the spatial scene to disk, as _Ambisonic encoded_, _Binaural encoded_ or _Sound system encoded_ multichannel audio.

> Create multiple output routes to capture Ambisonic recordings at the same time as sound system specific rendering.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/OutputSelected.png)
