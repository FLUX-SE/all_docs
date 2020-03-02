# 9.5 Perceptual Factors

![](include/SpatRevolution_UserGuide_-170.jpg)

This parameter group holds settings affecting the way the sources direct and reverberated acoustic properties are perceived by the listener.

As touched on previously, these are not simply names stuck onto a single internal
parameter dictated by the inner workings of the algorithm. Instead, a true perceptually-oriented approach was used in the design, where a test panel of listeners
was presented with a test-set of sounds, constructed from several different variations of the reverb engine inner parameters. The listeners were then asked to rate
each set onto a few different scales with perceptually and æsthetically meaningful
names. Using principal components analysis (PCA) and optimisation techniques,
we then built an algorithm which reverses the process and automatically maps a
given set of perceptual factor values to the many internal reverb engine parameters.

As a general guideline, we encourage you to learn the meaning of these parameters by carefully listening to the audible characteristics when adjusting them. We
do provide a short explanation of each of them below, but training your ears is really the best way to be able to use these in context.

**Presence**

Source presence refers to the prominence of the direct sound with respect to the
reverberated sound. It is not just equivalent to a dry/wet ratio, and is influenced by


other settings such as distance, radius and drop-factor.

**Warmth**

Presence of the low frequency content part of the source.

**Brillance**

Presence of the high frequency content part of the source.

**Room Presence**

Prominence of the reverberation with respect to the source, or in other words, how
much the room sound dominates the overall sound.

**Running Reverberance**

This parameter controls the amount of perceived reverb when feeding a continuous music message, where the overall sound is a tight blend of the dry and wet
signals and the reverb part cannot be mentally separated. It is linked to the early
reflections decay time of the Spat Revolution Reverb engine. Note: this setting is
not the same as the ‘reverberence’ in the _Reverb Properties_.

**Envelopment**

Envelopment corresponds to the the perceived notion of how much the listener
feels that they are surrounded or immersed by the ambient sound. In a multichannel configuration, one could describe this as the feeling of being wrapped inside
the imaginary “sound sphere” that the listener pictures in her mind. It can also be
described as the energy of the early room effect with respect to direct sound.

