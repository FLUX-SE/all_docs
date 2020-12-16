# Multi-Channel Ambisonic Inputs

As we have mentioned a few times already, High Order Ambisonics is a technology
that encodes sound sources along with full sphere positional information, as complex interleaved audio files that need decoding before they can be listened to on
speakers. The lowest order of 3D Ambisonics requires 4 channels, conventionally
named as;

- **W** (mono sum)
- **X** ( X axis information)
- **Y** ( Y axis information)
- **Z** (Elevation information)

This is the conventional _B-Format_ also known as _First Order Ambisonics_. Some
Ambisonic microphones record into a very similar four-channel format called AFormat, which ideally needs transcoding into B-Format. You can use the Input
Transcoder Module to do that (see next section). There are a number of options
that some Ambisonic encoders set differently to others, and these are sometimes
concerned with the actual order of the WXYZ - for example a format called **Ambix**
has a different order of channels that carry the spherical components, compared to
**FuMa**. It is possible to configure channel sorting and normalisation options in the
Input and Input Transcoder modules, and at any point where Ambisonic streams
are decoded to a channel based stream. Please contact Flux:: support if you need
expert guidance in the area of Ambisonic decoding options, as the topic is very
large, and is beyond the scope of this guide.

High Order Ambisonics ( HOA ) needs more channels to contain the complex interleaved Ambisonic domain information. High Orders encode and decode into
sharper and more accurate spatial information as the Order gets higher - but the
number of channels needed to hold all the 'spherical harmonics' along with the
serious computation involved, becomes very complicated very quickly.
Fortunately....

> ★ Spat Revolution makes it easy to work with High Order Ambisonics

Just dial up the Higher Orders using the pulldown menu of an Ambisonic Input
module, Transcoder or Ambisonic Room. The output stream will then expand its
channels internally to accommodate the higher channel count needed.
3D full sphere HOA channel counts are defined by the function (n+1)^2 (where
n = Ambisonic Order)

- 1st Order 3D -> 4 Channels
- 2nd Order 3D -> 9 Channels
- 3rd Order 3D -> 16 Channels
- 4th Order 3D -> 25 Channels
- 5th Order 3D -> 36 Channels
- 6th Order 3D -> 49 Channels
- 7th Order 3D -> 64 Channels

_B-Format_ can also be encoded without elevation - this is called 2D horizontal and
is quite suitable for decoding to configurations that do not have speakers on elevated planes. The 2 dimensional Ambisonic data is encoded in multichannel files
with a channel count defined by the function 2n+1

- 1st Order 2D -> 4 Channels
- 2nd Order 2D -> 5 Channels
- 3rd Order 2D -> 7 Channels
- 4th Order 2D -> 9 Channels
- 5th Order 2D -> 11 Channels
- 6th Order 2D -> 13 Channels
- 7th Order 2D -> 15 Channels

