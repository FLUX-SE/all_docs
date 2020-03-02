# 9.12 Options

![](../include/SpatRevolution_UserGuide_-183.jpg)

Finally, there are some options available for each source.

**Doppler**

The Doppler effect is a well-known wave propagation phenomenon where the
height of a sound perceived from a listener standpoint rises when the source is accelerating, and falls when decelerating. This is the fire siren pitch going up then
down when passing you. It will only be heard if you rapidly move the sources locations quite fast, but thanks to the virtual nature of the Spat, you can bypass Physics’
laws and manually inhibit it using this switch, should it be unsuitable for the particular application you are dealing with.

**Air Absorption**

Simulates the frequency-dependent absorption of air, where high frequencies rolloff quicker than low-frequencies with respect to distance. You have most probably
noticed this phenomenon when you are far away from a concert venue and only
able to hear the bass, and gradually start to hear the whole mix as you get closer.


**Drop Factor and Drop Log**

Owing to a fundamental law of acoustics and geometry - namely energy conservation - sound pressure drops in level as one moves away from the source. Enable
_Drop Log_ for an acoustically accurate setting, which corresponds to a drop value
attenuation every time the distance from the source is doubled (logarithmic behaviour). The default _Drop Factor_ of 6db is also the acoustically accurate setting.

**Radius**

Specifies the radius of a sphere or disc in meters, centered around the listener position, where the drop attenuation is not taken into account, and the sound level is
kept constant with regards to distance. This is not only useful to prevent any dramatic sound level peak when placing a source too close to the listener, it also reflects real-world behaviour quite accurately, where sources do have a certain physical size, unlike point sources that are commonly used to model far-field acoustics.
This “no-drop” zone is displayed as a transparent sphere of matching radius in the
Room graphics.

**PanRev**

By default, only early reflections are panned, and the cluster reflections, which form
the diffuse part of the early reverberation, are panned dead center. _PanRev_ allows
you to modify cluster panning, thus imparting some directionality or perceived direction to the diffuse part of the sound.

**Early Width**

Controls the width of the sound projection lobe of the early reflections from a
source in the virtual acoustic space, in degrees. The minimum setting, 1°, gives a
very directional source, whereas 180° makes it omni-directional.

