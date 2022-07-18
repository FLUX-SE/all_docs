# Speaker Arrangement Editor

![width=700, atl=_SPAT Revolution_ Speaker Config](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditor1.png)

## Rendering to Speakers

In order for the virtual scene (our room) to translate correctly as an immersive sound experience on a speaker system, _SPAT Revolution_ needs to have a model of a multi-channel speaker arrangement which will be used to apply the panning or synthesis method to map the information to the destination speakers and render the sound field correctly.

To this end, you will find a large library of standard and specialized speaker arrangements already built into _SPAT Revolution_ which can be used in various places throughout the Environment Setup.

Speaker arrangements can be used to fit the format of a virtual room to match the actual speaker system being used to diffuse the mix in a real room. Channel-based speaker configurations are used to define a multi-channel source arrangement, a room speaker source arrangement, and can also be used in the transcoding phase of sound fields.

The golden rule when working with multi-channels based audio is to ensure to have the appropriate format, speaker arrangement, and channel routing throughout, otherwise the virtual space will not map correctly into a physical space.

!> *Pay attention to arrangements and channel routing, they are the key!*

## Custom speaker arrangement

![width=700, atl=_SPAT Revolution_ Speaker Position](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditorCompute2.png)

While there are many standardized speaker array, such as Dolby Surround, Atmos, Auro 3D, DTS, Quad or even stereo, we are in many cases confronted to a very specific speaker positioning.

For such use case, it is possible to create custom speaker arrangements. Using a well-defined custom speaker arrangement will improve the sound stage and the overall impression of immersion of the audience. We always highly recommend taking the time to measure the position of the speakers of your system and to input them in _SPAT Revolution_.

We also create a powerful automatic speaker alignment tool that aligns, in time and in level, all the speakers of the arrangement on the furthest away one. These "virtual" positions are used by _SPAT Revolution_ to process the sound stage through pan law. Please, check the [Speaker Arrangement Editor](Spat_Environment_Speaker_Arrangement_Editor.md) section for more information. 

To make this task as easy as possible, _SPAT Revolution_ supports both Cartesian and spherical coordinate system and can also import speaker configurations from third-party software, such as NS-1, Blueprint or ArrayCal.

## Understanding when a speaker arrangement, or a sound scene, is 2D or 3D

We can quickly be tempted to create very precise speaker arrays, including height information where it may not be necessary and can do more harm than good.

The rule of thumb is to think in plan and not in absolute height. If speakers are meant to reproduce the same sound plan, they should have the same height. Also, the main sound plan has to be set at a height of zero meter. If you try to validate a speaker arrangement that only has one plan and is not set to a height of 0, it will correct it automatically. It also applies for older sessions that were created before _SPAT Revolution_ had this feature.

## Automatic Scaling

When going on the road with a show, the idea of _SPAT Revolution_ is to always keep the same session, which stores our input routing, our mixing metadata and all of our snapshots. But in such use case, each time the venue changes, the speaker arrangement changes too and its size (or diameter) will much likely be different each time.

As we use absolute, we solve this common use case by using an automatic scaling process. 

If you change the speaker arrangement of a room where you already routed some sources, the global sound scene could be scaled to the new speaker arrangement.

For example, if you first created your session with a speaker arrangement with a diameter of four meters, and then deploy it in a venue where the actual diameter of the sound system is eight meters, then all the source position, incoming automation and snapshot data will be scaled by a factor of two. 

<!-- TODO: add the image -->

## Speaker arrangements examples

Here are some examples of speaker configurations you can find in some venue, like RadioFrance Studio 115, Montreal Satosphere, or Berlin Planetarium. To discover it into _SPAT Revolution_, copy the python file on your desktop: **[Speaker arrangements for various domes and planetariums](https://public.3.basecamp.com/p/pPtg3qFrUsxyPPmQ3b3JLPqW)**.

## Speaker arrangement Python file

Write the speaker arrangement on a python file provides the erasing of the data. It is recommended to do so on fixed installation, or if you really don't want to lose the speaker arrangement data. 
If you want to build your own custom speaker arrangement script, explanations are provided into the following python file:
**[Custom Speaker Arrangement Script](https://public.3.basecamp.com/p/rQStK3igPkaXisYS4Gs5sJ2g)**.
