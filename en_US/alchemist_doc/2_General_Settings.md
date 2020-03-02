# General Settings

## Input Gain (1)

Unit: dB  
Value Range: -48 / +48  
Step: 0.  
Default Value: 0 dB

Sets the gain applied to the dynamic processing input.


## Dry Mix (2)
Default Value: -144 dB

This slider controls the amount of the original signal that can be added to the processed audio.  
This feature is dedicated to mastering works requiring both heavy processing and subtle control.  
The mix is done before the output gain.


## Output Gain (3)

Unit: dB  
Value Range: -48 / +48  
Step: 0.  
Default Value: 0 dB

Sets the global gain applied to the dynamic processing output before the soft clipper.


## Invert Phase (4)
Default Value: Off

When this button is engaged, the phase of the processed signal is inverted.


## Enable Clipper (5)

The Clipper is the very last stage of the processing chain.


## Clipper Knee (6)

Unit: dB  
Value Range: 0 / +3   
Step: 0.  
Default Value: 1 dB

Sets the smoothness of the transmission curve.


## Clipper Ceiling (7)

## Bypass (8)

It’s a global bypass.


## Channel Processing Selector (9)

When operating on a multi-channel (surround) bus, all channels are processed by default, but it can be useful to
remove some channels from the processing for some reasons. This selector allows to keep the unchecked channels
untouched. This feature may be used if different settings are required. Several instancies of a plug-in can be used
in series, each one processing a particular channel with its own settings.


## Channel Side Chain Routing (10)

When operating on a multi-channel bus, all channels are feeding the side chain by default, but it can be useful to
prevent some channels feeding the side chain for some reasons.


## Band Selector (11)

The frequency band selection is done here.  
It can also be done from the main display area.


## Number of Band Control (12)

The Minus and Plus buttons allow to specify the number of frequency bands of the Alchemist from 1 to 5.


## Reset Solo (13)

This button disables all engaged band solo.
