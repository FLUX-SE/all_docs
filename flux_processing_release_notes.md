# Release Notes

## FLUX:: Processing (including IRCAM Tools) 20.12

This major release includes updates for all **FLUX::Immersive** products with the exception of IRCAM Spat V3 legacy product. Please refer to Spat V3 - Spat Revolution crossgrade options.  

## Major optimizations

* HiDPI / Retina support + display enhancements and fixes
* Page Table unification for **Avid Control**, S1, S3, S4, S6 and S6L.
* OSC Control for plugins.
* **IRCAM Verb** support for Dolby Atmos, Multichannel support up to 16 channels 
* **IRCAM Hear** - Multichannel stability improvement, Now up to 10 channels. (Dolby Atmos 7.1.2)
* **IRCAM Tools** - Audio I/O Matrix and Multichannel enhancement 
* Most plugins support of 8 channel.
* 16 channel support for **Bittersweet Pro, Evo In and Evo Channel**


## Bug fixes

### FLUX:: Processing 20.12 

#### Build 49880

**Fixes;**

Core:

* BSPro - Latency report issue (AAX)
* IRCAM TRAX Tr - Latency report issue
* IRCAM Verb - Wrong initialization value for Reverb density
* IRCAM Verb -Dry signal still goes out in disabled channels when wet is 100%
* All Pure Dynamics PI + Alchemist - Wrong Thresholds initialization values
* AAX "monolithic" are broken like Hear, TRAX etc...
* Almost all AAX plugins don't reload parameters from 47856 version session.
* Pure Limiter - Diff feature bypassed the input gain.
* Pure Limiter - Inverted sidechain filters.
* Any plugin except Evo Channel - Research Presets resets when click on a preset.
* Evo channel - Wrong values when reloading touch section.



UI:

* Current preset name disappear on re-opening GUI or session




## Known Issues

* Wavelab "Sample rate not supported" when a plugin is inserted on a clip, track or output section.
* TRAX Tr  - Learn frequencies display wrong values (AAX only).
* Hear - Internal config labels change when modify LFE input config from routing matrix.




