# 6.4 Inputs

It might be self-evident, but it's worth pointing out that Spat Revolution itself dœs
not play audio files. It handles the spatialisation and rendering of signal sources
routed through it in realtime like some kind of vast spatial sound mixing console.

![](../include/SpatRevolution_UserGuide_-080.jpg)

The top row of the signal graph represents the input sources that will provide the
source content for the current project. You add an input module using the (+) icon,
and you can remove ones you don't need with the 'Remove Selected' action. The
input streams can be of many different formats, the choice of assignable formats
will depend on the number of channels each input module represents.


> ★ One Input module can represent any number of audio channels

The second important distinction between inputs, is whether or not it is a **hardware** input receiving an audio stream from a hardware device or a virtual **send** receiving its audio stream from another program currently running on the same machine as SPAT. The latter is done via a Spat Revolution _SEND_ plug-in - but before
we go into Spat's powerful software signal routing integration, let's focus on the
different input formats as these will remain consistent whether the input stream is
coming from hardware or from a _SEND_ plug-in.

