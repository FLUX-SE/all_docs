# Processing Section

## Lookahead (8)
Introduces a true zero attack and a "real" sync of the algorithm over the dynamic detection. Default setting is off, and
in this state, the attack depends on the Speed parameter value.  
Turning on the Lookahead will introduce some delay in the processing (not in the detection though).

## Mode (9)
This is one of the most significant controls on Syrah, and is defining how the algorithm automatically tries to adapt
the processing to the audio material.

### Mode settings
By selecting one of the two provided dynamic modes, there’s a range of parameters that becomes dynamic, these
parameters will vary in sync according to the audio analysis, and the algorithm will attempt to process aiming at a
result that feels closer to the original material, more natural (unless you are over-processing to achieve a more 
effectfull processing).

- **Dynamic Soft (Default)**  
    In Soft mode, the release becomes automatic (according to the "Velocity" setting) so does the compression, 
    de-expansion, the clipper knee and the "Relax" value.  
    This setting is suitable when a more natural kind of sound is desired, such as track compression, bus mix
    and final mix.
- **Dynamic Deep**  
    Dynamic Deep is similar to Dynamic Soft, but with a deeper, stronger compression providing a higher range
    of effect.  
    This mode invites to a much more "creative" use of Syrah, and is very suitable for track compression.
- **Static**  
    As opposed to the dynamic modes, the Static Mode provides a more manual processing with less dynamic
    influences and manual release (according to the Velocity).  
    This mode is more a traditional kind of dynamic processing, well suited for both track compression and final
    mix.

## Speed (10)
Controls the processing integration time and the attack time when Lookahead is not enabled.

Unit: Percent (%)  
Range: 0.00 to 100.  
Min. Steps: 0.  
Default Value: 10.

## Velocity (11)
Defines the release time as well as the global algorithm velocity (how fast the processing will react to the dynamic
changes in the material).

Unit: Percent (%)  
Range: 0.00 to 100.  
Min. Steps: 0.  
Default Value: 50.  

## x3 (12)
Multiplies the release range by three, allowing for very slow release times.

## Log (13)
By using logarithmic calculations (instead of linear) when defining the release time, a faster reaction time, resulting
in a deeper compression impression, is achieved.

## Link Ch. (14)
Links the detection over all the processed channels.  
Not available when M/S Mode is enabled as the Mid and Side is then processed individually.

## Boost (15)
Increases the entire processing intensity; more compression, more de-expansion, more dynamic influence (when using 
the dynamic "Mode" settings), straightforwardly described – More of everything!

## Inverse (16)
Inverts the final gain envelope proposing particularly effect-full processing such as hashing the sound, auto-gating or
ambience/reverb reduction.  
The inverse parameter is allowing for some really creative tweaking, entirely changing the ongoing processing, and
transforming Syrah in a "Dr. Jekyll and Mr. Hyde" kind of way. If no "Amount" is defined, it’s perfectly normal if there’s
no sound at all coming from the Output!

## M/S Mode (17)
The Mid/Side mode is only available when processing stereo material.  
When enabling the M/S Mode, the material is M/S encoded for individual processing, and then decoded back to stereo 
again just before the Dry Mix stage.  
This is a well known technique often used in mastering allowing to increase or decrease the stereo image, keep or fall
down center impact like kick, snare and similar.  
An interesting feature with this mode, is that since Syrah analyzes the audio material to adapt the processing, the
result will generally match the standard stereo material better, allowing for a bigger range of possible sound 
modification: dynamically increasing the space (room) impression, boost the main center components and similar tasks.  
Link Channel function will not be available in this mode and "Relax Bass" function will only be applied on the M (Mid)
component of the material.

## MS Width (18)
Only available when in "M/S Mode"  
Since the M/S processing can dramatically change the stereo image (as in possibly making it too wide..), MS Width
provides control over the actual stereo width.  
This setting can be effective when there’s a need for enhancing the stereo image width, increasing the room impression and similar tasks.

## Thickness (19)
Fattens up the processed material by enhancing the low level frequencies when possible. The processing action will
then go from de-expansion to compression (instead of compression only).  
This parameter works completely sound level independent.

## Relax (20)
Defines a certain amount of auto ratio according to the audio material, "relaxing" the compression when working with
high dynamics and generates a kind of smooth and dynamic attack. Relax also affects the release by modifying how
the dynamic detection will react in time.

## Relax Bass (21)
Controls the amount of low-shelve frequencies inserted into the side chain. The more you increase the value, the less
the compression will react to low frequency content allowing for more low frequencies to pass through the processing.  
In M/S Mode this will only be applied to the M (Mid) component of the material.

## Amount (22)
Controls the amount (compression, de-expansion) and the solidity of the processing.
