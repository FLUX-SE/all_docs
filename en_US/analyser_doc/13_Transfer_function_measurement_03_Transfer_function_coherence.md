# Transfer function coherence
Coherence is a normalized - that is comprised between zero and one - measure of the confidence of the transfer function at a specific frequency.  
In other words it describes how trustworthy the transfer function is at the corresponding frequency.

[Coherence](13_Transfer_function_measurement_05_Setup_03_Coherence.md) at a particular frequency indicates whether the system can accurately be described as linear gain and phase shift or not.

## Interpretation and uses
Low coherence most often indicate a bad measurement, so you should look for possible causes and correct them before starting again.

Typical culprits include a noisy device, presence of distortion, channel crosstalk, acoustical noise such as cooling fans, people talking, handling noise, bad isolation from the outside, etc. 
Low coherence also manifests when delay is improperly compensated for.

While maximizing coherence is desirable, in most cases, it will most likely be impossible to attain a flat curve approaching unity at all frequencies, except in an anechoic chamber or very 'dead' sounding room with minimal reflections.

Reverberation, as well as mismatched transducers, tends to give lower coherence, as the signal arriving at the microphone position is really the sum of several time-delayed version of the source.

Sometimes it will be impossible to get good overall coherence, and the magnitude and phase curves will therefore be less precise, stable and smooth. 
This does not mean you cannot attempt extract any information from those. As always, use your judgment and knowledge of the specific system to decide which assumptions seem reasonable.

## Display
By default, the transparency of the main magnitude curve is also modulated with the coherence values, which increases readability by effectively dimming untrustworthy curve portions. 
In addition to controls and settings identical to those of the spectrum magnitude curve, you can toggle the <i>coherence curve</i> on and off with the 'Enable' switch under '[Coherence](13_Transfer_function_measurement_05_Setup_03_Coherence.md)' in the settings.


