# Overview
All TruePeak and R128 Short term values that cross the thresholds are recorded and displayed as a list. 
Each row in the list shows a record of the offending peak value in dB alongside with the time-code at which the event occurred. 
You can navigate the list and locate the time positions of the incident, then playback again the corresponding source material in order to identify and correct the problem.

# Setup
![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/MeteringStatistics/IncidentSetup.png)

> Incidents setup options.

## Max. incident count

To avoid overloading the display, and eventually, the computer's memory, there is a limit placed on the number of registered incidents, which is 2000 by default. 
If you go above this, it might be a good idea to back off the master fader a bit anyway to let that music breathe !

However, you can override this behavior by setting this value to -1, which will remove the limit altogether.

## TruePeak Incident Enable + threshold

Defines the threshold above which an incident will be registered. 
Default is 0dBTP, which corresponding to full digital scale. 
A conservative value would be -0.1dBTP, to be on the safe side.

Keep in mind TruePeak is designed to measure inter-sample peaks, and that 0dBTP is actually a few tenths of decibels softer than digital peak.

## EBU R128 Short term / Dialog Incident Enable + thresholds

Defines the threshold under/above which an incident will be registered.




