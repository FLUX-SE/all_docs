# 7. SPAT Plugins

A computer running Spat Revolution becomes a spatial sound rendering engine,
hosting the entire Spat software environment we are currently describing. Audio
signals that flow in and out of Spat may be connected to a hardware multichannel
audio device connected to the Spat host machine.

Interestingly, a multichannel audio stream flowing in and out of Spat may not be
coming from hardware at all, but instead connected through _virtual IO_ from another software application.

In the Spat environment this is made possible by a special set of plug-ins that enable audio to flow through 'virtual cables' between a multichannel DAW and Spat
Revolution - _both running on the same machine_. This can become an ideal offline
creation workflow for preparing content for an eventual complex hardware setup.

To understand the Local Audio Path flow better, let's breakdown three setup scenarios.

