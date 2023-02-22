# Controls and display

## Display

The meter display has the following arrangement

* left bar: Momentary Loudness value

* right bar: Short-term Loudness

* text overlay: Integrated Loudness and
Loudness Range (LU) values, Gated indicator lights red when gate is active

The Loudness Range value is displayed once measurement has been running for at least 60 seconds,
according to the EBU [Tech 3342](https://tech.ebu.ch/publications/tech3342) specification,
otherwise a 'LRA Unstable' warning is shown.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Metering/LRAUnstable.png)

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Metering/LRAStable.png)

## Pause

Clicking the ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Pause.png) button pauses measurement; clicking again resumes it. 
This allows you to make adjustments without affecting Integrated Loudness, instead of having to start all over again.

## Reset

Clicking the ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Refresh.png) button resets the meter to its initial state.

> Don't forget to reset the Loudness meter if you're starting playback of a new track, as Integrated Loudness, by design, measures the overall Loudness since the last reset.
> Otherwise you'd be measuring the overall Loudness of the combined tracks, which is probably not what you want.
