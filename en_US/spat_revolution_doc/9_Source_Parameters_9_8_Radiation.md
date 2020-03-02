# 9.8 Radiation

![](include/SpatRevolution_UserGuide_-176.jpg)

This section controls the simulation of acoustic radiation in relation to the location
and emitter orientation of the virtual source. Use these parameters to simulate how
a source will interact inside the reverberant environment.

**Relative Direction**

This switch is a very simple way for a user to achieve a more consistent result as regards the natural conservation of a source's presence. The algorithm will continuously maintain the on-axis focus for each virtual source - or for every emitter in a
grouped source - so that it is consistently oriented towards the listener position.
When not engaged, a source remains in the same constant direction which is what
might be preferred if something is passing through in a spatial design.

**Distance**

Distance from the source to the center reference point (listener position), in meters.

**Azimuth**

Angle between the source location and the listener position front reference axis, in
degrees.

**Elevation**

Elevation angle, in degrees.


**Yaw**

Angle of the source direct orientation relative to the listener-source axis, in degrees.

**Pitch**

Source direct orientation pitch angle, in degrees. Think of _pitch_ in the nautical
sense of the word, how a boat _pitches_ up and down in stormy seas.

> ★ **Pitch and Yaw can be used to make a source more diffuse
by turning its direct sound away from the listener**

**Aperture**

The aperture parameter relates to the “sound cone” projected by the virtual source
in the acoustic space, and is measured in degrees. It determines wether the source
will be very directive (small aperture), or omnidirectional (large aperture) inside the
reverberant environment.

> ★ **Aperture can make a source 'activate' more of the acoustic
space**

