# LFE Mixing from Ambisonic or Binaural Rooms

![](include/SpatRevolution_UserGuide_-358.jpg)

Currently in Spat Revolution version 1.1, it is necessary to create a mono mix for a
LFE channel using a workaround method. To get a mono LFE mix that will be
summed into the n.1 channel in a surround configuration, create a secondary mix
room. It should not have reverb, and is a special channel based configuration
called 1.1 - a mono speaker plus LFE room.


![](include/SpatRevolution_UserGuide_-360.jpg)

As we are not going to have an actual satellite speaker in this room, we need to set
the unwanted virtual mono speaker gain to -144.5 (silent) inside the 1.1 LFE room.
Sum the room output in a master module with a transcoded _n.1_ Channel Based
streams from the HOA room. The LFE channel from the LFE room will be summed as
the .1 LFE Channel of a surround format at the output module. The overall LFE
output level can be controlled using the Room Gain of the Mono room and each
individual source can send to it with a separate level ( which could be automated
from the DAW of course).



How to Sum the .1 LFE
![](include/SpatRevolution_UserGuide_-362.jpg)


Use the parameter filter to create mixer of LFE sends for each source
![](include/SpatRevolution_UserGuide_-364.jpg)


Here is another 'rough and ready' suggestion that will yield a separate output route
for the bass content.

![](include/SpatRevolution_UserGuide_-366.jpg)

Reduce the output of the HOA room down to MONO using a master transcoder
module and send that to the sub speaker. The sub-bass signal will have its own
gain control in the Master module. Transcode to any Channel Based format and automatically get a mono mix down of the HOA Room activity for all setups.
