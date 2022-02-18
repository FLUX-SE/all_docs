# Using Hardware I/O

## Single Hardware Workflow

When you have a high channel count hardware IO connected to your SPAT Revolution workstation, it is possible to receive signals from the hardware unit physical inputs into SPAT at the top of the setup environment and route to the units physical outputs at the bottom of the setup graph - these are labeled as 'Hardware' IO in SPAT.

![](include/SpatRevolution_UserGuide_-128.jpg)

Hardware input connections could include:

- Mic
- Line
- MADI
- DANTE
- AVB
- ADAT

!> _Make sure you have the Hardware Device selected in the SPAT preferences!_


Hardware input formats could be mono, stereo or a format with any number of channels. Channels could be set up as single virtual sources, or as group multichannel sources using only one input/source module.

![](include/SpatRevolution_UserGuide_-130.jpg)

## Distributed Hardware Workflow

Routing via hardware IO means that in principle the audio can arrive at SPAT’s hardware inputs via MADI or other high channel interconnect from another machine handling the audio playback (and/or recording). 
This is a powerful and reliable combination as it shares audio computational resources.

Furthermore, a single machine setup can be converted to a fully automated distributed using OSC to target the single or dual SPAT engine for a real time controllable and interactive distributed hardware setup.

!> _Enable bidirectional OSC communication in SPAT preferences to send automation over the network to another machine._ Contact Flux Support if you need to expert support on this kind of advanced distributed setup.