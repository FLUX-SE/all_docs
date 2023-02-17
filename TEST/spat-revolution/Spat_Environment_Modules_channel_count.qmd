# Modules Channel Count

Into _SPAT Revolution_, modules are treated exactly the same whether there are mono or multichannel, ambisonics, binaural or channel-based.

## Mono Input

A one channel audio stream is always treated as a mono signal. It will appear in a _Virtual Room_ as one positionable virtual source with its own directivity and parameters. In many ways, mono signals are the most straightforward format to work with in a spatial composition. This is because a one channel signal discretely contains all its acoustic and spectral properties without inter-channel dependencies, such as those found in a wide stereo image, for example. In practice, such point sources are easier to localise and balance spatially with others.

> Mono sources are simple to work with when balancing a spatial mix.

## Two Channel

A two-channel audio stream will appear in the _Virtual Room_ as two mono sources linked together as a group. A two-channel audio input will already open a few more choices for disambiguating the configuration. SPAT needs to know what format the two channels are in, so it knows how to correctly handle the audio stream later in the signal flow.

- **Channel Based**
    Treated as Normal stereo
- **Mid-Side (MS)**
    Treated as Mid Side encoded stereo
- **Binaural / Transaural**
    Treated as encoded 3D stereo

## Four Channel Input

The next significant channel count that needs disambiguation from the user is a four-channel stream.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/InputInspectorQuad.png)



A four-channel stream could contain the format of a four-speaker Channel Based formats (QUAD, 4.0, LCRS) but could also contain different formats of interleaved four-channel Ambisonic audio (A-Format, B-Format). You can read more about A-Format and B-Format in the [Ambisonics](Scene_based_streams.md) section of this user guide. The important thing to remember here is that confusing Ambisonic audio and Channel Based audio is a significant mistake, even though you might hear
something 'wide sounding.'


!> Do not confuse multi-channel-based audio formats with multichannel Ambisonic audio formats. They may have the same channel counts but are completely different!

## Multi-Channel Based Input

Any input module configured to represent a stream of multichannel audio can be configured as a Speaker Arrangement format which would require that number of channels, as a minimum. For example, _DTU 7.1_ needs 8 channels, and _DTU 5.1_ needs 6. _Auro3D 13.1_ needs 14 channels. Unfortunately, things can get complicated in practice, as there are a few variations of standardised speaker layouts which have the same number of channels and seem very similar - but need disambiguation. This is important to get right, and will depend a lot on the context of your project and on changing standards in the audio industry. For example, at least four different 7.1 routing standards are to be found 'in the wild' and it’s important to know which one you are actually dealing with. Often, for example, the so-called low-frequency effects channel in cinema surround formats, is not always on the same channel.

!> **Essential** license of _SPAT Revolution_ limits total number of channels to 32 input channels and to 18 output channels.

> Try to stick to industry standard channel naming conventions throughout a cinematic surround sound project.



L | C | R
---|---|---
sL | | sR
surround Left | | surround Right
  | LFE |
  | Low Frequency Effects |
sbL | | sbR
surround back Left | | surround back Right


> * Some common Speaker Channel naming abbreviations.
