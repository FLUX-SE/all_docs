# General Settings

Unit: dB  
Value Range: -48 / +48  
Step: 0.01  
Default Value: 0 dB

Sets the gain applied to the dynamic processing input.


## Output Gain (2)
Unit: dB  
Value Range: -48 / +48  
Step: 0.01  
Default Value: 0 dB

Sets the global gain applied to the dynamic processing output.


## Invert Phase (3)
Default Value: Off

When this button is engaged, the phase of the processed signal is inverted.

This 180° phase shift is also applied on the Solo of the detector Equalizer.

## Dry Mix (4)
Default Value: -144 dB

This slider controls the amount of the original signal that can be added to the processed audio. This feature is 
dedicated to mastering works requiring both heavy processing and subtle control. The mix is done before the output gain.

## Clipper Knee (5)
Unit: dB  
Value Range: 0 / +3  
Step: 0.01  
Default Value: 1 dB

Sets the smoothness of the transmission curve.


## Enable Clipper (6)
The Clipper is the very last stage of the processing chain.


## Clipper Celling (7)
The Clipper is the very last stage of the processing chain.


## Bypass (50)
It’s a global bypass.


## Channel Processing Selector (8)
When operating on a multi-channel bus, all channels are processed by default, but it can be useful to remove some
channels from the processing for some reasons. This selector allows to keep the unchecked channels untouched.

This feature may be used if different settings are required. Several instances of a plug-in can be used in series, each
one processing a particular channel with its own settings.


## Channel Side Chain Routing (9)
Side chain is only available for mono and stereo.

When operating on a multi-channel bus, all channels are feeding the side chain by default, but it can be useful to
prevent some channels feeding the side chain for some reasons. The external side chain button is the one that appear with the channel count + 1 label (for mono, label is “2”, for stereo label is “3”).

Here are the different behaviors for external side chain depending of the host applications:

- Audio Unit : The side chain button is displayed when the side chain is connected by the host.
- AAX : The side chain button is only active if a side chain buss is selected from the plug-in handler.
- VST : No side chain feature is available.


## MS Width Control (10)
Unit: dB  
Value Range: -6 / +6  
Step: 0.01  
Default Value: 0

Sets the stereo width of the processed signal. A -6 dB value deceases the stereo width. A +6 dB value increases the
wideness of the stereo mix but can produce phase issue.


## MS Mode On/Off (11)
Default Value: Off

Enables one MS encoding matrix at the input and one MS decoding matrix at the output of the dynamic processing
in order to control the stereo width of the mix. When engaged, the side chain is fed by a MS encoded signal that is
reflected in the display section. M channel corresponds to the normal left channel. And the S channel corresponds
to the normal right channel This feature is only available when two channels (no more, no less) are processed.


## Link (12)
Default: Enabled

By default the maximum value issued from all channels feeding the side chain is retained as source for processing.
This manner, the space information is kept for the processed multi-channel signals.

When disabled, every channel uses its own value for individual processing.

This configuration may be used in conjunction with the MS width section which encode the signal in MS before
processing, and decode at the output. This manner, the M signal can be processed while keeping the S channel
untouched.


## Smooth (13)
Default: Enabled

When engaged, the side chain is set to preserve bass frequencies from excessive processing.

