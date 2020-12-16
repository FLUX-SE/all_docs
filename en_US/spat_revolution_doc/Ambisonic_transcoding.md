# Ambisonic Transcoding

## Default transcoding
When patching an HOA or B-Format input to a sources, or a HOA room to a channel-based output, a transcoder will be automatically inserted. This transcoder will, by default, be set to the Sloane speaker arrangement corresponding to the HOA order, and, will select an energy-preserving decoder.
## Transcoding presets
### Dealing with A-format

![](include/SpatRevolution_AFormatPreset.png)

A-format is a 4-channel audio stream. It is the RAW output of a first-order ambisonic microphone, so it has not been encoded to ambisonic yet. Because each manufacturer has their own strategy to create such microphone, we have almost as many transcoder as a-format microphone builder. Spat Revolution comes with a comprehensive list of A-Format transcoder, including Sennheiser Ambeo, Soundfield, DPA, Oktava etc.

You can simply choose the needed decoder in the input transcoder.

### Dealing with Ambix

![](include/SpatRevolution_HOApreset.png)

B-Format can comes in many flavour. Ambix is becoming the most used and spread out B-format in the production world. Inside transcoder blocs, there is some ambisonic preset that allow to quickly transcode the output of an ambisonic room, for exemple, into an Ambix B-format stream.



## Transcoding method

### Projection

Projection decoding is also sometimes called 'sampling ambisonic decoding' (SAD).
It is the simplest form of ambisonic decoding.
It samples the virtual panning function at the loudspeaker directions.
SAD is optimal for loudspeakers arranged as t-design layouts, with $t \geqslant (2N+1)$ ($N$ being the Ambisonic order).
Typically, the SAD should only be used for 2D loudspeaker layouts, i.e. arranged regularly in a circle. Avoids this decoder for 3D setups.

*What is a t-design layout?*

To keep it really simple, t-design is a mathematical way of constructing sphere perimeters or circle surface with an array of point that is homogenous. In 2D the point simply put on a circle and are evenly spaced. In 3D, things get much more complicated many t-design point layout exist.
In Spat Revolution, we choosed to use the method used by the mathematician Sloane for our speaker layouts.
<!-- </div> -->

### Regularized pseudo-inverse

The pseudo-inverse decoder, or 'mode-matching decoder' (MMAD), is suitable for both 2D and 3D.
It is based on a pseudo-inverse of the re-encoding matrix.
MMAD is well-behaved for regular loudspeaker arrangements.
It can also give good results with slightly irregular setups.
However it can become unstable with strongly irregular setups, i.e.
it can completely blow up the speaker feeds.
So, be careful.

<!--With the '/info' message, you obtain the conditionning number of MMAD.
This number gives you an estimate of how well-balanced the system is.
A conditionning number close to 0 dB is excellent.
Values less than 10 dB are usually quite acceptable.
With values higher than 20 dB, the decoding can become problematic (or dangerous).-->

The regularized pseudo-inverse decoder or 'regularized-mode-matching decoder' (RMMAD) is somehow similar to MMAD, however it uses a regularization factor for stabilization of the pseudo-inverse.
This regularization factor (alpha) varies from 0% to 100%.
A value of 0% provides results similar to MMAD.
A value of 100% generates even energy distribution, i.e. results similar to EPAD.
Intermediate values of alpha allow to 'blend' MMAD and EPAD.

### Energy preserving

EPAD (Energy preserving ambisonic decoding) and AllRAD (All-round Ambisonic decoding) are other HOA decoding methods suitable for 2D and 3D HOA, and they can cope with any kind of loudspeaker arrangement.
These decoding methods always work, as soon as there are enough loudspeakers; they are always feasible and by nature numerically stable.
EPAD uses a regularized matrix inversion such that the decoded energy is preserved even with non-uniformly arranged arrays (and even for directions with only sparse loudspeaker coverage).
EPAD is the default method in spat5 (and the one we usually recommend).

### AllRAD

'All-round Ambisonic decoding' (AllRAD) is designed in two steps. First, an optimal virtual loudspeaker layout using t-design arrangement is considered (for which the SAD is optimal); Secondly, the signals of these virtual loudspeakers are mapped to the real loudspeakers via VBAP.

### Improved AllRAD

'Improved All-Round Ambisonic Decoding' (AllRAD+) combines AllRAD and SAD.
Constant energy that is achieved for the idealized virtual loudspeaker setup in AllRAD is corrupted by the VBAP stage as, per loudspeaker pair, all virtual sources are superimposed linearly instead of energetically.
The prevailing linear superposition increases the energy wherever the loudspeaker spacing is large.
Roughly, at such directions AllRAD doubles the energy, whereas it is halved at directions with dense loudspeaker spacing.
Conversely, SAD might lose all energy where the loudspeaker spacing is large and roughly doubles it where the loudspeaker spacing is dense.
AllRAD+ tries to solve this issue by combining (i.e. mixing) SAD and AllRAD.
The loudness variation of AllRAD+ is competitive with EPAD and its angular mapping resembles AllRAD.

<!--
## Transcoding types

To improve the ambisonic render, there is some strategy than can be apply at the decoding stage. The idea is to optimize the phase or the energy to improve the sound localisation. 
### Basic

This is the standard way to decode ambisonic and no optimization is applied.
### InPhase

### MaxRe

to be completed
### BasicMaxRe

The low end of the audio content is not optimized, but a MaxRe method is applied to the high end. The crossover frequency is by default set to 700Hz and can be adjusted.

### InPhaseMaxRe

As phase optimization is more efficient in the low frequencies, and energy optimzation is prominent in the high frequencies, this method take this phenomena to its avantage by splitting the signal in two frequency band. The crossover frequency is by default set to 700Hz and can be adjusted.
-->