# Band Settings

## Band Solo (32)

Solo the selected band(s)

## Selected Band Reminder (33)

## Band Bypass (34)

Bypass the selected band.

## Link (35)

Default: Enabled

By default the maximum value issued from all channels feeding the side chain is retained as source for processing.
This manner, the space information is kept for the processed multi-channel signals.

When disabled, every channel uses its own value for individual processing. This configuration may be used in conjunction with the MS width section which encode the signal in MS before processing, and decode at the output. This
manner, the M signal can be processed while keeping the S channel untouched.


## Input Gain (36)

Unit: dB  
Value Range: -12 / +12  
Step: 0.01  
Default Value: 0 dB

Sets the gain applied to the dynamic processing input of the selected band.


## Output Gain (37)

Unit: dB  
Value Range: -12 / +12  
Step: 0.01  
Default Value: 0 dB

Sets the global gain applied to the dynamic processing output of the selected band.


## Bitter Sweet On/Off (38)

When engaged, the Bitter Sweet processing is active.

## Transient Amount (39)

Unit: %  
Value Range: -100 to +100  
Default Value: 0

On the Sweet side (left), transients are reduced. It usually decreases percussive instruments in the mix.

On the Bitter side (right), transients are magnified. It usually increases the percussive instruments in the mix.


## Post Band Processing (40)

When engaged, the Bitter Sweet processing is done after the dynamic processing. Otherwise, it’s done before the
other processing sections which are working in parallel.


## Auto Gain Compensation (41)

When engaged, the output gain is compensated depending of the transient amount to produce an almost unity gain.


## Bitter Sweet Sustain Release (42)

This control sets the release time for the transient envelop.


## Operation Mode Selector (43)

Main processes using regular stereo signal scheme and it is the only available mode for multi-channels operations.
Center engages internal MS encoder and processes only the Mid channel. After processing the sound is decoded
back to stereo. Since the M channel usually features more enregy than the S channel, this mode allows to easily
control the impact of the sound.

Stereo engages internal MS encoder and processes only the Side channel. After processing the sound is decoded back
to stereo. Since the S channel contains the spatial information, this mode allows to easily control the stereo imaging.


## Bitter Sweet Period (44)

Unit: ms  
Value Range: 3 to 450 ms  
Default Value: 42 ms

This control sets the range of the time window used to detect transients that will be processed.


## MS Width Control (45)

Unit: dB  
Value Range: -6 / +6  
Step: 0.01  
Default Value: 0

Sets the stereo width of the processed signal. A -6 dB value deceases the stereo width. A +6 dB value increases the
wideness of the stereo mix but can produce phase issue.


## MS Mode On/Off (46)
Default Value: Off

Enables one MS encoding matrix at the input and one MS decoding matrix at the output of the dynamic processing
in order to control the stereo width of the mix. When engaged, the side chain is fed by a MS encoded signal that is
reflected in the display section. The M channel corresponds to the normal left channel. And the S channel corresponds
to the normal right channel This feature is only available when two channels (no more, no less) are processed.
