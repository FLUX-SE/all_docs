# Dynamic Section Settings

## Peak Detection Amount (22)
Percentage of the instant peak value used to feed the detector section, making the dynamic processing more sensitive 
to audio transients.  0 % means 100 % RMS signal feeding the detector section; 100 % means only peak signal 
is feeding the detector section, and 50 % is fifty-fifty of each.

Unit: %  
Value Range: 0 / 100  
Step: 1  
Default Value: 0 %

## Dynamic Ratio (23)
The Dynamic Ratio setting relaxes the ratio applied to the processor section when the detected signal dynamic 
rises, and literally opens the sound, increases the dynamic impression and maintains some crest by adjusting 
the ratio of every dynamic processing section in realtime, both their current ratio settings and the signal content 
(mainly dynamic range).

Unit: %  
Value Range: 0 / 100  
Step: 1  
Default Value: 0 % 

> To start understanding this setting and easily hear it, take a full mixed drum kit or a complete mix with punchy 
drums, set the compression threshold and ratio to values that makes it close to a pumping or an aggressive compression. Then increase the output gain to compensate the gain lost and toggle between 0 and 100% of Dynamic 
Ratio. At 100 % you should hear more air in the sound, more transient and less of the compression impression, 
especially the attack.

## Dynamic Ratio Inverter (24)
When engaged, the behaviour of the Dynamic Ratio is inverted.  
The ratio value is increased depending of the detected signal dynamics.

## L.I.D. (Level Independent Detector) (25)
Controls the amount of auto-threshold determined by the signal dynamics and the manual threshold value, providing 
processing of the audio signal independently of the sound level and instead in regards to the signal dynamic 
range.

Unit: %  
Value Range: 0 / 100  
Step: 1  
Default Value: 0 % 

> Use a full song mix. Set the ratio to 3-4 for the compression to start working and the threshold of the compressor 
to the max value, the compressor will stop working because the sound level will never reach the threshold. Now 
increase the L.I.D. and you will hear the compression working again. Next decrease or increase the input gain, the 
compression will continue to work equally completely independent of the sound level, only depending on Ratio, 
Knee and sound content.
>
> When you have too much dynamic in the sound, going from -3, -6 dB Vu (or less) to +12 dB, and you want to compress the low levels, you will get a pumping effect when the sound reaches the high levels. The only thing to do 
with a standard compressor is to increase the threshold to retain the airiness in the sound. But when this is done 
the compressor will not work any more on the low levels and you will hear differences (in term density, live space, 
grain etc.) especially when the compressor starts working.
>
> With Solera, adjust the threshold and ratio on the high levels to what you find okay, then increase the L.I.D. 
(from 20 to 50 %) and listen to the low levels and especially the transition between low and high levels. You can 
also increase the ratio for a stronger effect, and you will notice that the compression will still be present and still affect 
the high/loud levels (unless you set 100% L.I.D.) and make the compression very smooth with no more pumping. 
In addition to the Dynamic Ratio function you will be able to set a constant and very natural envelope that allows to 
increase low levels, low frequency and to keep the important transients.

## L.I.D.. Threshold (26)
Sets the gain range of the L.I.D. parameter.

-  Up: Increasing of the L.I.D. action.
-  Down: Decreasing of the L.I.D. action.

Two green lines on the Dynamic Activity display reflect the current L.I.D. threshold value. For Compressor and 
DCompressor sections, the L.I.D. action is effective only when the orange Dynamic Activity (18) exceeds the area 
between the two green lines. For Expander and DExpander sections, the L.I.D. action is effective only when the orange 
Dynamic Activity (18) stays inside the area between the two green lines.

## L.I.D. Maximum (27)
When engaged, the threshold for the processing is determined by the maximum values from RMS/peak detection 
OR from the signal dynamic detection. The L.I.D. Threshold is still active, but the L.I.D. mix button is disabled. This 
feature allows the whole process to be more reactive to the signal content, very efficient when used on drum tracks.

## Threshold (28)
Sets the threshold of the specific dynamic processing section.
This dB scale refers to an RMS value. 

The threshold effective value is modified by the L.I.D, L.I.D. Threshold and L.I.D. Maximum settings.

Unit: dB  
Value Ranges:  
-32 to +16 (Compressor/DCompressor)  
-80 to +16 (Expander/DExpander)  
Default Value: 0

## Ratio (29)
Sets the ratio of the specific dynamic processing section. 
The ratio effective value is modified by the Dynamic Ratio amount.

Unit: dB  
Value Range: 1 to 10  
Step: 0.01  
Default Value: 1

## Infinite (30)
Sets the ratio to its maximum possible value depending of the dynamic section.  
The DCcompressor section is limited to 12 when this button is engaged

## Range (31)
Sets the maximum allowed gain variation for a specific dynamic processing section.

Unit: dB  
Value Range: 0 to 48/140/24/16 (Compressor/Expander/DCompressor/DExpander)  
Default Value: 24/96/12/12

## Knee (32)
Sets the smoothness of the transmission curve for the specific dynamic processing section. The curve is smoothed 
around the threshold value of the dB amount set with the knee value.

Unit: dB  
Value Range: 0 / +24  
Default Value: 0

## Dynamic Section On/Off (33)
Activates the specific section.

## Compressor Section Selector (35)
Selects the Compressor section.

## DCompressor Section Selector (36)
Selects the DCompressor section.

## Expander Section Selector (37)
Selects the Expander section.

## DExpander Section Selector (38)
Selects the DExpander section.

## Dynamic Section Activity (34)
The gain is displayed in a 12 dB scale from left to right for gain increase and from right to left for gain decrease for 
the corresponding dynamic section.
