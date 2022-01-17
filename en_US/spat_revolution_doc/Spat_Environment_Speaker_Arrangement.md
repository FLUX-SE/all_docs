# Speaker Arrangement Editor

![width=700, atl=Spat Revolution Speaker Config](include/SpatRevolution_SpeakerConfig_1.png)

## Rendering to Speakers

In order for the virtual scene (our room) to translate correctly as an immersive sound experience on a speaker system, SPAT Revolution needs to have a model of a multi-channel speaker arrangement which will be used to apply the panning or synthesis method to map the information to the destination speakers and render the sound field correctly.

To this end, you will find a large library of standard and specialized speaker arrangements already built into SPAT Revolution which can be used in various places throughout the Environment Setup.

Speaker arrangements can be used to fit the format of a virtual room to match the actual speaker system being used to diffuse the mix in a real room. Channel-based speaker configurations are used to define a multi-channel source arrangement, a room speaker source arrangement, and can also be used in the transcoding phase of soundfields.

The golden rule when working with multi-channel based audio is to ensure to have the appropriate format, speaker arrangement, and channel routing throughout, otherwise the virtual space will not map correctly into a physical space.

!> *Pay attention to arrangements and channel routing, they are the key!*

## Custom speaker arrangement

![width=700, atl=Spat Revolution Speaker Position](include/SpatRevolution_UserGuide_-039.jpg)

While their is many standardized speaker array, such as Dolby Surround, Atmos, Auro 3D, DTS, Quad or even stereo, in many cases we are confronted to very specific speaker positioning.

For such use case, it is possible to create custom speaker arrangement. Using well defined custom speaker arrangement will improve the sound stage and the overall impression of immersion of the audience. We always highly recommend to take the time to measure the position of the speakers of your system and to input them in SPAT Revolution.

We also create a powerful automatic speaker alignement tool, that align, in time and in level, all the speaker of the arrangement on the furthest away one. These "virtual" positions are used by SPAT Revolution to process the sound stage. Please, check the [Speaker Arrangement Editor](Spat_Environment_Speaker_Arrangement_Editor.md) section for more information. 

To make this task as easy as possible, SPAT Revolution support both cartesian of spherical coordinate system and can also import speaker configurations from third-party software, such as NS-1, Blueprint or ArrayCal. Please, check the [Import Speaker Array](Spat_Environment_Speaker_Arrangement_Editor.md) section for more information.

## Understanding when a speaker arrangement, or a sound scene, is 2D or 3D

We can quickly be tempted to create very precise speaker array, including height information where it may not be necessary and can do more harm than good.

The rule of thumb is to think in plan and not in absolute height. If speakers are meant to reproduce the same sound plan, they should have the same height. Also, the main sound plan has to be set at a height of zero meter. If you try to validate a speaker arrangement that only has one plan and is not set to a height of 0, it will correct it automatically. It also applies for older sessions that were created before SPAT Revolution had this feature.

## Automatic Scaling

When going on the road with a show, the idea of SPAT Revolution is to always keep the same session, which store our input routing, our mixing metadata and all of our snapshot. But in such use case, each time the venue change, the speaker arrangement change and its size (or diamater) will much likely be different each time.

Because we use absolute instead of relative positions, we solve this common use case by using an automatic scalling process. 

If you change the speaker arrangement of a room where you already routed some sources, the global sound scene could be scaled to the new speaker arrangement.

For exemple, if you first created your session with a speaker arrangement with a diameter of four meter, and then deploy it in a venue where the actual diameter of the sound system is eight meter, then all the source position, in-coming automation and snapshot data will be scaled by a factor two. 

<!-- TODO: add the image -->

## Speaker arrangements examples

Here is some example of speaker configuration you can find in some venue, like RadioFrance Studio 115, Montreal Satosphere, or Berlin Planetarium. To discover it into SPAT Revolution, copy the python file on your desktop: **[Speaker arrangements for various domes and planetariums](https://public.3.basecamp.com/p/pPtg3qFrUsxyPPmQ3b3JLPqW)**.

## Speaker Arrangement Python File

If you want to build your own custom speaker arrangement script, explanation are provided into the following python file:
**[Custom Speaker Arrangement Script](https://public.3.basecamp.com/p/rQStK3igPkaXisYS4Gs5sJ2g)**.
