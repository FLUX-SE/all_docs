# Time Related Settings

## Delay (47)
By introducing a delay into the signal path reflecting the attack time, a zero attack time can be produced for the 
dynamic processing.

Shifting the delay value from the attack time makes it possible to control the transients. A delay value inferior to the 
attack time value, leaves the peaks untouched by the processing.

For obvious reasons the delay introduces latency in the processing and the different delay values on every band are 
automatically compensated.

> Note that Solera cannot be used to produce delay-based special effects.

!> Warning: Morphing between presets with different delay values produces sound artefacts.

Unit: ms  
Value Range: 0 to 50.0 ms  
Default Value: 0 ms

## Auto Delay (46)
Links the Delay (47) to the Attack (49).

> Note that the latency introduced by this equals to the attack time divided by two.

Default Value: Off 

## Mode (48)
In order to adapt the dynamic processing for the actual signal a detector examines the incoming signal in advance. 
Based on how the detection is performed different results can be achieved in the dynamic processing.

### Solera v3 provides eight different detection modes:

- **Solera** - The Attack setting also controls the integration time for RMS detection. With Auto Delay (46) engaged the 
produced attack time is zero. 

- **Solera Feed Backward** - The Attack setting also controls the integration time for RMS detection, which is done on 
the output of the processor. This mode disables the Delay (47) feature. Note that the Solera Feed Backward prevents 
usage of the external side chain as the processed signal is feeding the side chain. 

- **Classic Fast** - The integration time for RMS detection is 10 ms with no direct relation to the Attack setting. Though 
with Auto Delay (46) engaged the produced attack time is zero.

- **Classic Medium** - The integration time for RMS detection is 40 ms with no direct relation to the Attack setting. 
Though with Auto Delay (46) engaged the produced attack time is zero.

- **Classic Slow** - The integration time for RMS detection is 80 ms with no direct relation to the Attack setting. Though 
with Auto Delay (46) engaged the produced attack time is zero.

- **Classic Feed Backward Fast** - The integration time is 10 ms for RMS detection, which is done on the output of the 
processor. This mode disables the Delay (46) feature. Note that the Feed Backward mode prevents usage of the 
external side chain as the processed signal is feeding the side chain.

- **Classic Feed Backward Medium** - The integration time is 40 ms for RMS detection, which is done on the output of 
the processor. This mode disables the Delay (46) feature. Note that the Feed Backward mode prevents usage of 
the external side chain as the processed signal is feeding the side chain.

- **Classic Feed Backward Slow** - The integration time is 80 ms for RMS detection, which is done on the output of the 
processor. This mode disables the Delay (47)  feature. Note that the Feed Backward mode prevents usage of the 
external side chain as the processed signal is feeding the side chain.

The Feed Backward modes have been inspired by vintage hardware architectures. They create a sort of auto regulation 
of the processing which produces a naturally beefy sound.

Default Value: Solera

## Attack (49)
Sets the attack time of the processing envelope. It also controls the way the RMS value is computed from the incoming 
signal.  Warning: The Attack setting also controls the integration time for the RMS detection.

Unit: ms  
Value Range: 0 ms to 100 ms  
Default Value: 0.0 ms

## Hold (50)
This parameter is the only one in the time related settings that is independent per dynamic processor.
The compressor and the expander may have different hold time. Used in the Expander section, this setting allows 
very precise gating of drum tracks. It can also be used for creative purpose on the other dynamic sections.

Unit: ms  
Value Range: 0 ms / 500 ms.  
Default Value: 0 ms

## Release Mode (51)
Three release modes are available for the envelop of the dynamic processing. 

-  Manual - Corresponds to the value you have set.
-  Auto - Enables the algorithm to generate a signal dependent value to avoid typical pumping effects.
-  Advanced - Gives access to two different values for release and to the control of the velocity of the variations 
between the maximum and the minimum release values.

Default Value: Auto

## Release (52)
Sets the manual release value and the maximum release value when in Advanced Mode.

Unit: ms  
Value Range: 0.67 ms / 10000.00 ms  
Default Value: 500.00 ms

## Release Minimum (53)
Sets the minimum release value when in Advanced Mode.

Unit: ms  
Value Range: 0.67ms / 5000.00  
Step: 0.01  
Default Value: 1.30 ms

## Dynamic Factor (54)
Amplify or dim the extracted real time dynamic information.

Unit: x  
Value Range: 0 / 3.0  
Step: variable  
Default Value: 1

## Dynamic Velocity (55)
Sets the speed of variation on the dynamic information.

Unit: %  
Value Range: 10 / 1000  
Step: 1  
Default Value: 50 %
