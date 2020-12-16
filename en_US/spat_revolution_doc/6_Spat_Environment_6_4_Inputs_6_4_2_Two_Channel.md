# Two Channel

A two channel audio stream will appear in the _Virtual Room_ as two mono sources
linked together as a group. A two channel audio input will already open a few more
choices for disambiguating the configuration. Spat needs to know what format the
two channels are in, so it knows how to correctly handle the audio stream later in
the signal flow.

- **Channel Based**
    Treated as Normal stereo
- **Mid-Side (MS)**
    Treated as Mid Side encoded stereo
- **Binaural / Transaural**
    Treated as encoded 3D stereo

