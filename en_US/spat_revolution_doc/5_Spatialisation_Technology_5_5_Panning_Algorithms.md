# Panning Algorithms

There has been a lot of scientific and artistic work to discover new methods for the electronic reproduction of audio signals to achieve the sensory impression that sounds are positioned in the space between speakers, rather than only coming from a single speaker. One of the underlying mechanisms that makes it possible to position sounds or make it seem like sounds are moving around the listener, is conventionally referred to as _panning_.

Broadly speaking, panning is the result of an algorithm - sometimes called 'the panning law' - that is used to calculate the amplitudes of signals sent to two or more identical loudspeakers (or virtual sources) arranged in a particular spatial configuration. In stereo - which we could say is the lowest resolution of speaker array - a simple panning algorithm can make the sound of a voice, for example, seem to be placed in the air between two speakers - as if there were an invisible speaker there. This illusion works up to a point, and breaks down if the speakers are too far apart. With only two speakers in the system, the panning law is a simple graph which has become quite standardised over the years. Things get more complicated when panning over 2D or 3D speaker setups and methods for spatialising on multichannel systems are not really standardised yet. Many algorithms and standards have been advanced by the audio engineering industry, composers and
academics. 

Essentially, when we start working with multiple speakers in different configurations, things get more complex for the panning algorithms - goals have also expanded over time, with spatial sound design able to reach beyond simple point source panning into fully immersive audio experiences that can be hyper-realistic or totally synthesised. Many practitioners will have their preferred methods, but really it is up to the spatial sound designer to choose methods that seems to give the best experience for the listener on any given type of setup. There's never been just one way to spatialise sound. And with a powerful system like Spat Revolution, panning methods can even be combined in novel ways to achieve high quality immersive audio experiences.


**Spat Revolution lets you explore some of the most advanced
panning algorithms for surround, immersive 3D or ad-hoc
sound systems.**

In SPAT, you will be able to explore some of the best panning algorithms for multispeaker setups. You can apply them in realtime and identify their characteristic differences by ear. Trying them out in realtime on a setup will help you select the panning algorithm that is best suited for your particular project and material.

Although there are technical aspects to be interested in and aware of, you are still invited to be creative and use your ears when deciding which are the right panning types for your project and intended audience.

> ★ Try using more than one Spat Room to use different panning
algorithms for sound material that has different sonic qualities.

## Vector Base Amplitude panning (VBAP)

Vector Base Amplitude Panning has become one of the more standardised methods for multichannel spatialisation. It can reproduce on a 2D or 3D configuration. Its sound is characterised by clearly localisable virtual sound sources. Multiple moving or stationary sounds can be positioned in any direction over the speaker array using this method. In theory, VBAP can be used on an unlimited number of loudspeakers and can even be reliable on relatively asymmetric setups.

**How does it work?**


Traditional VBAP works by manipulating the gain of the signals being routed to the two (in 2D) or three (in 3D) closest speakers to a virtual sound source. VBAP relies heavily on an accurate speaker arrangement model to do this. It triangulates gain vectors mathematically in order to render a virtual object in the physical space and achieves its characteristic 'sharp' focus by using only a few speakers closest to the virtual source location. Additionally, it is possible to uniformly extend the traditional VBAP pair-wise (or triplet-wise) speaker picking and activate more of the sound system, effectively diffusing the relationship between individual speakers and sounds using _spread_.

> ★ Widen a VBAP point source by increasing the Spread source parameter.

Three important dependencies to consider when using VBAP:
 
 1. Speakers must be placed _around_ the listening position.
 2. Speakers ideally should be equidistant from the listening position*.
 3. 2D Speakers should be on the same horizontal plane as the ears.
 4. VBAP works best when the listening room is not very reverberant.

*See section 4.5 the speaker alignment feature can give the impression that the actual
speakers are equidistant even when they are not.

## Vector Base Intensity (VBIP)

Vector Base Intensity Panning is a similar variation to the VBAP technique. It can also reproduce a 2D or 3D immersive sound field with sharply localised virtual sound sources.

**How does it work?**

VBIP was designed to improve on VBAP when calculating the high-frequency (above 700 hz) localisation criteria. The selection of which speakers to use to render a virtual sound source is similar to VBAP, only the gain calculations differ.

The same 4 dependencies mentioned for VBAP, also apply to VBIP. You will need to listen for quite a nuanced difference between these two panning algorithms. Try to compare how each panning type handles the higher frequency content of your material.

## Dual Band Vector Based Panning (DualBandVBP)

Both Intensity and Amplitude Vector Based panning has an ideal frequency range of action:

* Localization of low frequencies is better with Amplitude Panning.
* Localisation of high frequencies is better with Intensity Panning.

A hybrid approach of vector based panning has been developed in this way: the Dual Band Vector Based Panning.
This panning type merges the two approaches in order to combine the best of both worlds and to reach a better localization.
Amplitude panning is applied below the crossover frequency, while the intensity panning is applied above.
The crossover frequency has been defined to 700Hz by default.

The dependencies mentioned in the VBAP section also apply to Dual Band Vector Based Panning.

## Layer based amplitude panning (LBAP)

Layer based amplitude panning could be thought as multiple 2D VBAP layers.
The speaker setup is split into several layers, depending on the speaker elevation.
The panning used between speakers on the same layer is the VBAP 2D.
Between these layers, a crossfade is applied between the two nearest layers.

The difference between VBAP 3D and LBAP is the number of speakers which will be actived between the layers: 3 in VBAP versus 4 in LBAP.

## Distance Base Angular panning (DBAP)

As we mentioned earlier, there are a few panning algorithms that are **not** _Sweet Spot_ dependent. Distance-base amplitude panning is one of them. DBAP is useful in a number of practical situations such as concerts, stage productions, installations and museum sound design where the predefined geometric speaker layouts which immersive sound fields rely on, are not possible to establish.

DBAP was constructed with two assumptions:
- All speakers are always active, independently of the source position.
- The resulting level is independent of the source position.

Only level differences are used with this panning method.

**How does it work?**

DBAP localises sounds towards arbitrarily positioned speakers in a space using a matrix based technique. It calculates signal amplitudes according to the actual positions of the speakers in a space, while making no assumptions as to where the listeners are situated. Speaker tuning and interesting acoustic features in a room should be utilised more when working with DBAP.

> ★ Speakers can be freely positioned when using DBAP - look for reflections and reverberations in a room to enhance spatial aspects.

## K Nearest Neighbour (KNN)

KNN is another panning type that does not depend on a sweet spot to be perceived correctly. It is a version of a 'Nearest-neighbour' interpolation algorithm. This family of algorithms are also used in the fields of complex systems, 3D graphics and network science to name a few. In Spat Revolution you can sonically explore a network of loudspeakers using this panning type and some virtual sound sources.

**How does it work?**

An interesting parameter of KNN is that the user gets manual control over one of the main coefficients in the underlying algorithm. The parameter is called _Nearest Neighbour Spreading_. It sets a maximum limit to the number of speakers that the algorithm can use as neighbours - the parameter becomes available as a continuously variable percentage _for each virtual source_ in a Spat room.

![](../include/SpatRevolution_UserGuide_-064.jpg)

What makes this particularly interesting is that different sources can activate less or more of the sound system dynamically and in a very smooth way. For example, one virtual sound source might seem to pop in and out of individual speakers because its _Nearest Neighbours Spread_ parameter is set a low percentage. For example, on a 10-speakers arrangement :1-10% will use 1 speaker, 11% to 20% 2 and so on. Another sound source could seem diffuse over the entire sound system, because its spread variable is set to 100%.

> ★ Try automating the Nearest Neighbours Spread in a relationship with
another source property of the same sound source such as room presence.

## Speaker-Placement Correction Amplitude (SPCAP)

SPCAP is a 3D panning algorithm which takes its inspiration from VBAP. SPCAP selects not just 2 or 3, but any number of speakers to render a virtual source and weights signal gains according to how much each selected speaker is actually contributing to the overall power output of the speaker configuration. Using this method SPCAP guarantees conservation of loudspeaker power output across any speaker arrangement. Its strengths lie in the down-mixing and up-mixing of virtual scenes from very different channel-based speaker arrangements, and of being able to render wider sound sources by using more speakers in a smart way.

**How does it work?**

The result will still be sweet-spot dependent although it will be a wider listening area. SPCAP inherits some of the dependencies of VBAP to get successful spatial imaging.

1. Speakers must be placed _around_ the listening position.
2. 2D speakers should be on the same horizontal plane as the ears

> ★ SPCAP panning can do a good job of translating surround audio
mixes from one speaker configuration to another.

## Ambisonic Equivalent Panning (AEP)

In common with the channel based panning types we have covered so far, Ambisonics is a technology that also distributes virtual sound sources in space. Yet it achieves this in a fundamentally different way. Ambisonics relies on a two-steps process.

1. **Encoding**
    Audio sources along with their positional information are wrapped up together using signal mathematics to create encoded Ambisonic audio. Ambisonic scenes are always carried on at least 3 channels of audio. They are not intended to be _listened to directly_ they are intended to be _decoded_.
2. **Decoding**
    Ambisonic audio signals are unwrapped and the positional information contained within them is decoded _specifically_ for one type of speaker configuration. What we get is an immersive sound field that should accurately render the original spatial composition in 2D or 3D on the specified speaker configuration.

Keeping these two steps separate has a number of advantages. Primarily, that of being able to record the encoded Ambisonic audio signals independently of any fixed speaker arrangement. On the other hand, it is possible to "fuse" the two stages of the process together resulting in what appears to be the output of a generalised channel based type of panning. That is the AEP panning type in a nutshell.

**How does it work?**

AEP has certain computational and ambisonic mixing advantages and exhibits very different behavior from the VBAP/VBIP pairwise approaches. It is up to you to decide whether to work with purely Ambisonic rooms (more about that in the later section) or to use AEP as a channel based panning law. Both approaches are valid and could be useful. As we have mentioned a few times already, the choice of panning type depends on what sounds best in the context of your material, your compositional goals and the acoustics of the system you are working with.

## Angular and PanR

These are legacy 2D pan pot laws from the original IRCAM Spat library. They only become available when using 2D channel based streams and are primarily included for backwards compatibility.

**How does it work?**

Angular and PanR are pairwise amplitude panning essentially the same as VBAP 2D described on the next page. There is a subtle difference however, in the way the panning law changes when moving the source from one speaker to another.

## XY AB

These two Panning Types will only become available when a _Virtual Room_ is set to be virtualising a stereo speaker arrangement (see section 6.52) - they are pan laws that are derived from widely used dual microphone techniques for rendering stereo imaging from an omnidirectional scene.

**AB Panning** simulates the recording of the sound scene by a pair of spaced cardioid microphones, pointing laterally at azimuths +/- 55 deg. (elevation 0), with a distance of 17 cm between the two capsules. Also known as **ORTF**.

**XY Panning** simulates the recording of the sound scene by a pair of microphones in an XY coincident configuration.

> ★ The aim is to get the same stereo flavour as these dual microphone
> tracking techniques. Try them on close miked sources or any mono
> source, to get a realistic stereo image.

![](../include/SpatRevolution_UserGuide_-066.jpg)
