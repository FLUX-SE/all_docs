# Geek Settings

These settings are available by clicking on the "Yves Jaget" icon.

## Slope

The Slope sets the number of frequency-dependent components controlling the slope of the frequency response. One component, referred to as 1 (First-Order), gives a 6 dB/Octave slope, adding a second component, referred to as 2 (Second-Order), gives a 12 dB/Octave slope etc. The higher the Frequency Order is, the steeper the slope of the frequency response becomes.  

**Value Range:** 6 / 12 / 18 / 24 - dB Per Octave  
**Default Value:** 6 dB/o  

## Release

Adjusts the release time for the transient processing envelope.  

**Value Range:** 0.00 ms / 500.00 ms  
**Default Value:** 0.00 ms  

## Bandwidth

**Value Range:** Static BW/Dynamic BW/Flat Sum  
**Default Value:** Static BW

Static bandwidth provides a constant Q factor, no matter of the gain factor of the filter. It's computed by having a constant bandwidth at +- 3 dB from 0 dB.

Dynamic bandwidth provides a dynamic Q factor, dependent on the gain factor of the filter. It's computed by having a constant bandwidth at +- 3 dB from peak levels of the filter.

Flat Sum is a more traditional way of computing the Q factor. The bandwidth is constant for the gain factor divided by two.

## Zero Crossing Threshold

The Zero Crossing refers to the amount of time the signal crosses the point of an amplitude of zero. It gives an indication on transient detection, as they tend to produce bursts of zero crossing. 