# Time
## Integration

Defines the meter integration time constant, in milliseconds. 
This corresponds to the length of the time window over which an RMS level value is computed.
Decrease this to respond to signal level variations more quickly, at the expense of meter precision and stability. 
Default is 160ms.

## Release

Release time of the meter, in decibels per second. 
This controls the falloff rate of the meter.
Decrease this to respond to signal level variations more quickly, at the expense of readability.
Default is 16 dB/s.

## Peak release

Release time of the peak indicator, in decibels per second. 
This controls the falloff rate of the peak hold indicators. 
Increase this to retain peaks for a longer time. 
Default is 1dB/second.

## Peak hold

Sets the number of display frames to wait until the peaks actually start to fall-back to zero.
Default is 60 frames.




