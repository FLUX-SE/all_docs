# Wave Field Synthesis

## Introduction

Wave Field Synthesis, also known as WFS, is a technic for spatial audio reproduction. Unlike most of the traditional spatialization technics, this one does not depend on phantom sound source to recreate an acoustic space.

The goal of WFS is to recreate the wave front of a primary (or virtual) source by using multiple loudspeakers. Thus, this strategy imply a sampling of the original wave front. This is a direct application of the Huygens' principle, which state that every point on a wavefront is itself the source of spherical wavelets, and the secondary wavelets emanating from different points mutually interfere. The sum of these spherical wavelets forms the wavefront.

## Spat Revolution implementation of WFS

Traditionnaly, the WFS is only used on linear array of loudspeaker. So, technically speaking, most of the WFS processor are not immersive. But thanks to the research work of the IRCAM, Spat Revolution is capable a handling WFS on any type of speaker placement, either in 2D or in 3D.

## Further reading