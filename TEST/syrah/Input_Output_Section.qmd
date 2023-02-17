# Input Output Section


## Input Gain (1)
Controls the gain applied to the dynamic processing input. This setting may affect the dynamics signal detection.

Unit: Decibel (dB)  
Range: -48.00 to +48.  
Min. Steps: 0.  
Default Value: 0.  

## Output Gain (2)
Controls the gain at the output stage of the dynamic processing, right before the Clipper (and the Clipper is the last,
final step, in the entire processing chain).

Unit: Decibel (dB)  
Range: -48.00 to +48.  
Min. Steps: 0.  
Default Value: 0.  



## Link (3)
Connects Output Gain to Input Gain, when adjusting Input Gain the Output Gain automatically reflects the change.

## Gain Comp. (4)
The gain compensation attempts to adjust the output level to match the input level, and compensate for gain alterations 
produced by the dynamic processing (compression, de-expansion).  
Due to the extreme range of possible gain structure modifications in the algorithm, according to the complexity of
the audio material, a precise result is nearly impossible to accomplish, and so forth the gain compensation should
not be expected to achieve perfection.

## Dry Mix (5)
A true dry/wet mix control with gain compensation allowing for parallel compression or simply for fine adjustment
of the entire processing.

Unit: Percent (%)  
Range: 0.00 to 100.  
Min. Steps: 0.  
Default Value: 0.  

## Clipper (6)
The Brick wall clipper is applied at the very last stage of the processing chain. The clipper knee is dependent on
other parameter settings and is automatically adjusted in the algorithm. When setting "Mode" to one of the "Dynamic" 
settings the knee will also alter according to the audio material.

## Bypass (7)
Bypasses the plug-in processing by routing the input direct to the output. The actual processing is still performed
in the background allowing for a true and smooth transition between the processed and the actual incoming signal.

