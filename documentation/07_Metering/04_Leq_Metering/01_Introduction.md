# Introduction
Leq encompasses a set of sound level meter specifications, which are described in detail in the
BS EN 61672-1 European Standard.

Pure Analyzer implements the following Leq measurements: time-weighted sound level, time-average
sound level and sound exposure level.

Frequency weighting is employed for all measurements, A being the standard and default, although
other weightings can be specified if necessary.

The Leq module always measures the audio routed through the <link type="document" target="Mic">Mic</link> channel

## Time-weighted sound level
L<sub>A</sub> is the root-mean-square sound level obtained after exponential time weighting.

Exponential averaging has the effect of progressively 'forgetting' past sample values.

The norm specifies two time-weighting constants

* Fast : 125ms
* Slow: 1s

The corresponding letter symbol is L<sub>AF</sub> for a an A-frequency weighted and F
time-weighted sound level, for example.


## Time-average sound level
<link type="document" target="Time">Time</link>-average sound level is basically a 
<link type="document" target="RMS">RMS</link> meter with frequency-weighting applied.

## Sound exposure level
This measures the sound exposure equivalent to a 'dose' received for a second. It is useful
for determining the amount of sound pressure to which listeners have been exposed for a certain
duration.

>This value naturally increases with time. For a constant source level, this
value increases in a logarithmic fashion.



