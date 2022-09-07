# Wave Field Synthesis

## Introduction

Wave Field Synthesis, also known as WFS, is a technique for spatial audio reproduction. Unlike most of the traditional spatialization techniques, this technique **does not** depend on a phantom sound source (ie: the stereophonic principles allowing the creation of an acoustical illusion) to recreate an acoustic space.

WFS aims to reproduce the true physical attributes of a given sound field (the waves front) over an extended area of the listening room. **This approach relies on delay and amplitude differences.**

The goal of WFS is to recreate the wavefront of a primary (or virtual) source synthesized by a large number of individually driven loudspeakers. Thus, this strategy implies a sampling of the original wavefront. This is a direct application of the Huygens' principle, which states that every point on a wavefront is itself the source of spherical wavelets, and the secondary wavelets emanating from different points mutually interfere. The sum of these spherical wavelets forms the wavefront.

Under certain strict conditions, WFS can create the impression of a source positioned in front of the speaker system. This zone in front of a speaker line is referred to as the Focus Zone. That being said, the criteria are quite drastic to get this effect. Ircam states at least 32 speakers should be used with 15 to 20 cm spacing.

### Availability - WFS Add-on license

> Referred to as a panning type in _SPAT Revolution_, the WFS spatial audio reproduction technique is available with **the WFS Add-on license option**, available with Ultimate and Essential version.


## SPAT Revolution implementation of WFS

![WFS]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/WFSNiceOutput.png)


Where traditionally WFS is used on a collinear array of very tightly spaced loudspeakers, SPAT Revolution allows for the use of the spatial audio reproduction technique on systems with greater spacing, in smaller loudspeaker quantity and potentially handling any type of 2D or 3D speaker arrangements.

![WFS]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/WFSNice4.png)

The panning method will become available to the room inspector as soon as a minimum of 5 loudspeakers are available.

!> Even if a large spacing between speakers is allowed, keep in mind that the greater the spacing you have, the less coherent the results will be.

![WFS Panning type]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/WFSPanning.png)

The chosen WFS implementation is a minimum latency approach. This simply means that the closest speaker to the source has no delay. In the focus zone, the same principle is used to keep the latency at its minimum.

### Focus Zone

When using the WFS panning technique on a collinear frontal line arrangement, the Efficiency zone section in the room output section provides an option to activate the focus zone, i.e. the zone in front of a line of speakers. It is deactivated by default as it is recommended that a certain density and spacing exist for the speaker arrangement.


!>  Enabling this option may trigger an Efficiency zone warning if the system does not respect the 0.4 meter spacing between speaker source elements recommendation.

![Focus zone Enable]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/FocusZoneEnable.png)

![Focus zone warning]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room//FocusZoneWarning.png)

After activating, it will extend the efficiency zone with a focus area starting at the listening reference thus allowing sources to freely move inside the listening area.

![Focus zone]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/FocusZone.png)

### Further readings

- [Good introduction to WFS](http://www.syntheticwave.de/Wavefieldsynthesis.htm)

- [IRCAM website on WFS](http://recherche.ircam.fr/equipes/salles/WFS_WEBSITE/Index_wfs_site.htm)

- [Sound Scene Creation and Manipulation using Wave Field Synthesis](http://recherche.ircam.fr/equipes/salles/WFS_WEBSITE/Documents/WFS_overview.pdf)

## WFS Settings

![WFS Settings]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/WFSSettings.png)

FLUX:: WFS implementation uses an interpolation strategy using a very precise calculation mode for delays values. This is to allow for a smooth transition with source movement rather than delay steps (inherent from digital audio).
**6 parameters** are available in the room inspector of the setup page, and can allow to fine-tune the WFS render

**Delay interp. time:**
The delay interpolation time is the time it will take to go from one delay value to another delay value. In WFS, interpolation time allows a smooth transition when a source is moved. Depending on your source content, and your scene movements, you may find this setting useful to modify.

**Gain ramp time:**
Similar to the concept of delay interpolation time, the gain ramp time is the time it will take to transition from one set of gain values to another.

**Delay scaling:**
This parameter allows scaling the computed delays for all sources. It allows shaping the wavefront. Setting the delay scaling at 0% will set all delays to 0 ms, only the amplitude differences will remain.

**Gain scaling:**
This parameter allows scaling of the computed gains for all sources. It is really useful on close WFS line, in order to spread the audio content all along the line or speaker setup, for front-fills for example. For example, you can decrease the percentage in order to activate more loudspeakers serving well audience sitting close to the loudspeaker line.

**use PreFilter:**
A spectral correction in WFS systems called Pre-equalization. This parameter enables/disables a low-shelf filter in order to compensate for the low frequencies boost created by the speaker antenna.

**Blend distance:**
A 2.0-meter distance behind the speaker line is defined by default providing a transition zone as sources get closed to speakers and can help prevent some artifacts.
