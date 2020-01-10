# User interface and controls
<image name="LiveIO2"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\Documents\graphics\New Screenshots\added\LiveIO2.png"></image>

Live IO controls

## Name
<image name="liveIOname"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\Documents\graphics\New Screenshots\added\liveIOname.png"></image>

Allow to define a custom name for each channel. This is a global name; saved and restored with the
preset but not directly related to the Hardware I/O Interface. As this, it will be consistent even
if you switch the Hardware I/O Interface or switch to connect to a <link type="document"
target="SampleGrabber">SampleGrabber</link>.

## Ref
The <image name="Ref" filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Ref.png"></image> button
toggles wether the corresponding channel should be used as a reference signal.

Multiple channel can be used as reference, in which case a mono-sum of these channels is used as the
internal reference signal.

## Mic
The <image name="Mic" filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Mic.png"></image> button
toggles wether the corresponding channel should be used as a microphone input signal, which is used
to capture the response of the system.

Multiple channel can be used as microphone input, in which case a mono-sum of these channels is used
as the internal microphone signal.

## Phase invert
The <image name="IPhase"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\IPhase.png"></image> toggles
phase inversion of the selected channel on and off. This can be used to compensate another known
phase inversion somewhere else in the analog signal chain.

## On/Off
The <image name="On" filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\On.png"></image> button
toggles delay compensation on and off. When the correct delay has been determined, engage this
button to insert a delay line in the reference channel, to align reference and measured signals, and
get correct transfer function and impulse response.

## Delay value
The delay value is displayed simultaneously as:

* A number of samples (at the current sampling rate).
* A time delay, in milliseconds.
* A distance, in meters or feet.

You can manually adjust any of these values, using either keyboard input or fine increments with the
up and down arrows; the two other values will change accordingly.

Please note precision of the distance value depends on correctness of the temperature value inserted
in the main setup. In a concert hall with an audience present, there will probably important
temperature variations, so this value should only seen as a rough measure.

Lastly, remember the delay value in samples is the master value, from which others are derived.

## Find
Clicking the <image name="Find"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Find.png"></image> button
starts a new delay value computation. Previous values, whether computed using the delay finder or
entered by hand, will be erased. The algorithm accumulates a certain amount of incoming signal
before the actual computation is actually performed, to ensure the delay is always computed using
the most current audio.

## Progress
An informational text showing the progress of the computation is shown when the <image
name="Find"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Find.png"></image> delay find
button is clicked, as well any error potentially encountered.
