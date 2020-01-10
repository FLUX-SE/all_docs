# Metering statistics
The metering statistics view shows a synthetic view of the current and past meter values in numeric form.
It also serves to process multiple existing audio files in one pass, display and export the results to disk.

<image name="MeteringStats2"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\Documents\graphics\New Screenshots\added2\MeteringStats2.png"></image>

<link type="document" target="Metering">Metering</link>
statistics display

## Overview
The display shows the average and range for the various level meter values, since the start of
the application or the last time the meter was reset, in a spread-sheet type view.


### Peak, TruePeak and RMS
Mean as well as overall minimum and maximum values are
shown. For min. and max. values, the corresponding Timecode position is also indicated.


### Loudness
As EBU R128 <link type="document" target="Loudness">Loudness</link> already
incorporates statistical computations, only the current values are shown.

## File export
Exports a report containing a summary of the metering statistics data to a text file.

Clicking the <image name="Export"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Export.png"></image> button
brings up a standard file dialog where you can specify the desired file name for the dialog.

## Setup
<image name="MeteringStatSetup"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\Documents\graphics\Cropped\MeteringStats\MeteringStatSetup.png"></image>

### Absolute Timecode

Toggles between relative and absolute Timecode display. See <link type="document" target="TimeCode">
TimeCode </link> for more information.




