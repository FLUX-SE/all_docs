# 6.5.2 When to Transcode Inputs?

The main reason you will need to transcode inputs is when you are mixing and spatialising inputs in a Spat _Virtual Room_. This is because the _Virtual Room_ module requires incoming sources to be in a Channel Based format. Internally, the Room may
well be panning in Channel based, Ambisonic or binaural format, but it always
needs Channel Based streams as inputs. More about this in the _Virtual Room_ section. Format transcoding may not always need re-spatialising in a Room. There are
some contexts where you will not use a Virtual Room in the signal flow,

![](../include/SpatRevolution_UserGuide_-088.jpg)

Here is an example of decoding an Ambisonic signal using an Input
Transcoder module. This could also be done in the Master Transcoder section of the graph.

As mentioned in 'Introduction to Ambisonic' (section 4.7) a decoding stage is absolutely necessary to
render Ambisonic encoded audio to speakers. It can be done like this without the need of a room.
