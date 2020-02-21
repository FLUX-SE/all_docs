# 5.6.1 Vector Base Amplitude (VBAP)

Vector Base Amplitude Panning has become one of the more standardised methods for multichannel spatialisation. It can reproduce on a 2D or 3D configuration.
Its sound is characterised by clearly localisable virtual sound sources. Multiple
moving or stationary sounds can be positioned in any direction over the speaker
array using this method. In theory VBAP can be used on an unlimited number of
loudspeakers and can even be reliable on relatively asymmetric setups.

**How does it work?**

Three important dependencies to consider when using VBAP;

1. Speakers must be placed _around_ the listening position.
2. Speakers ideally should be equidistant from the listening position*
3. 2D Speakers should be on the same horizontal plane as the ears
4. VBAP works best when the listening room is not very reverberant

Traditional VBAP works by manipulating the gain of the signals being routed to the
two (in 2D) or three (in 3D) closest speakers to a virtual sound source. VBAP relies
heavily on an accurate speaker arrangement model to do this. It triangulates gain
vectors mathematically in order to render a virtual object in the physical space and
achieves its characteristic 'sharp' focus by using only a few speakers closest to the
virtual source location. Additionally it is possible to uniformly extend the traditional
VBAP pair-wise (or triplet-wise) speaker picking and activate more of the sound
system, effectively diffusing the relationship between individual speakers and
sounds using _spread_.

> ★ Widen a VBAP point source by increasing the Spread source parameter.

*See section 4.5 the speaker Alignment feature can give the impression that the actual
speakers are equidistant even when they are not

