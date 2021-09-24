# Wave Field Synthesis

## Introduction

Wave Field Synthesis, also known as WFS, is a technique for spatial audio reproduction. Unlike most of the traditional spatialization technique, this one does not depend on phantom sound source to recreate an acoustic space.

The goal of WFS is to recreate the wave front of a primary (or virtual) source by using multiple loudspeakers. Thus, this strategy implies a sampling of the original wave front. This is a direct application of the Huygens' principle, which states that every point on a wavefront is itself the source of spherical wavelets, and the secondary wavelets emanating from different points mutually interfere. The sum of these spherical wavelets forms the wavefront.

Under certain conditions, WFS can create the impression of a source positioned in front of the speaker system. That being said, the criteria are quite drastic to get this effect. The IRCAM state at least 32 speakers should be used.

## Spat Revolution implementation of WFS

Traditionally, the WFS is only used on a linear array of loudspeakers. So, technically speaking, most of the WFS processor are not immersive. But thanks to the research work of the IRCAM, Spat Revolution is capable a handling WFS on any type of speaker placement, either in 2D or in 3D.

Another strong point of our implementation is its low latency approach. This means that, when a source is outside the focus zone, the closest speaker to the source has zero delay. In the focus zone, the same principle applies to keep the latency at its minimum.

## Further reading

[Good introduction to WFS](http://www.syntheticwave.de/Wavefieldsynthesis.htm)
[IRCAM website on WFS](http://recherche.ircam.fr/equipes/salles/WFS_WEBSITE/Index_wfs_site.htm)