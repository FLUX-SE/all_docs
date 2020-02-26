# Principle of operation
Nebula / Spatial Spectrogram provides a unique representation of the audio material in terms of
spectral content and localization in the stereo and/or surround space. Its combines the functionality of
a spectrum analyzer and a vector scope in a novel real-time display. As such it provides to be an
invaluable tool to get a complete and detailed overview of your mix, which you can finely tune in many
aspects to suit your particular needs and preferences. A lot of work has gone into optimizing the
real-time rendering of the display, not solely for aesthetic reasons, but because we wanted the display
to react instantly to all the details in the incoming audio. The idea is literally for you to be able to
see what you hear and feel, and not some gross simplification wrapped into shiny eye-candy, however
pleasing to the eye.

The overall principles behind Nebula / Spatial Spectrogram are quite straightforward:

* At any given time, and for every frequency, the engine computes the position of a frequency in
space (2D in stereo , ND for N channel-surround). This position is taken as the center of
gravity of the various channels, weighted by the relative amplitude of the signal in their
corresponding channel.

* A projection onto a LR-spectrum plane is computed, giving a spectrum-space frame constrained to
the stereo field.

* Incoming spectrum-space frames are added back to the previous frames.
* Past frames are progressively "forgotten", using blur and dimming, in order to make place for
new information, and increase legibility.



![](../include/Nebula_ST.png) | ![](../include/Nebula_51.png)
---------------------------------|-------------------------------------
Nebula / Spatial Spectrogram display with stereo input | Nebula / Spatial Spectrogram display with surround input

![](../include/Spatial_Spectrogram_Setup.png)

Nebula / Spatial Spectrogram setup options


