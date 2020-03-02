# 6.7.3 Room Output Configuration

The _Virtual Room_ module requires all sources to be in some type of Channel Based
format at its inputs. Internally however, the Room may calculate spatial positioning
and panning using different methods according to the setting of the _Output Configuration_ pull down menu.

A Room will compute internal virtual panning, reverberation and output in five
possible formats:

- **Channel Based** _(see 6.7.4)_
    - Virtualised Sources
    - Virtualised Speakers
    - Virtualised Panning Behaviour
- **Binaural** _(see 6.7.7)_
    - Virtualised Sources
    - Virtualised HRTF
- **High Order Ambisonic** _(see 6.7.8)_
    - Virtualised Sources
    - Virtualised Ambisonic Encoding
- **B-Format** _(see 6.7.9)_
    - Virtualised Sources
    - Virtualised Ambisonic Encoding
- **Mid Side** _(see 6.7.10)_
    - Virtualised MS microphone arrangement

> ★ Different Virtual Room types can be used in parallel
