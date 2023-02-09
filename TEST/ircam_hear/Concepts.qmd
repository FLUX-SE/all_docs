# Concepts

## Auditory scene perception

Our perception of sound mainly relies on our ability to identify and characterize a number of sound sources, depending on
the spatial parameters of these sources, such as apparent position and size.

The duplex localization theory developed by Lord Rayleigh in 1907, claims two factors are predominant to characterize 
perception, namely the differences in arrival time (ITD) and intensity (ILD) between sounds reaching our ears. 
Perceived sound variations between ears are mainly attributed to the head obstructing sound waves and therefore forcing 
them to travel around the head in order to reach the opposite-facing ear.

Subsequent studies have confirmed and refined this theory which has prevailed ever since its introduction more than a
century ago.

## Localisation

The ITD and ILD localization indexes are derived from measurements of the transfer function between the sound source's
origin, taken at a certain incidence, and the listener's eardrums. The transfer function summarize the transformations the
sound goes through before reaching the listener, including diffraction, diffusion and reflection on the listener's 
body and head.  
These measurements are commonly referred to as HRTF (Head-Related Transfer Function).

## Binaural technology

Binaural technology encompasses methods for recording, processing, synthesizing and reproducing sound that are 
specifically designed to preserve tridimensional localisation properties.  
In order to mimic the impression of a sound originating from a given incidence, it is sufficient to filter a mono signal, which
on its own lacks any kind of spatial information, with both left and right HRTF filters. This constitutes the foundation of
binaural synthesis.  
> Please note that the resulting signal is only meant to be listened to with headphones, and isn't designed for a conventional
stereo loudspeaker setup.

## Virtual head

This plugin relies on HRTF filter measurements made using a KEMAR (Knowles Electronics Manikin
For Acoustic Research) dummy head and torso simulation. This type of manikin was conceived 
during the 1970's for conducting acoustics experiments using a model with anthropometric dimensions
equivalent to that of an average human listener.

![](include/hear_01.jpg)
 
Courtesy of G.R.A.S. Sound & Vibration  
http://www.gras.dk/


## Virtual speakers

The audio input is routed internally to virtual speakers, through a routing matrix. These represent the
emulated loudpseaker setup configuration.
