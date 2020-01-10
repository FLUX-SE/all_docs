
# Dolby Dialogue Intelligence

## Introduction
While EBU R128 aims to measure global perceived loudness,
irrespectively of the audio material, Dolby Dialogue Intelligence is a patented technology designed
to specifically measure the perceived loudness of dialogue elements in the audio. It is therefore
targeted towards broadcast applications.


## General principle
Dialogue Intelligence replaces EBU R128's level-based gate
with a speech-content ratio based gate. The algorithm computes several low-level features for the
incoming signal in speech channels. These are then combined into an overall speech percentage
figure. When speech content is detected, Integrated <link type="document" target="Loudness">
Loudness </link> is computed from the speech channels which have a speech content ratio above a certain
threshold (see <link type="document" target="DolbyDI">Dolby Dialog Intelligence</link>).

When other material is detected, <i>i.e.</i> not speech, standard EBU R128 Integrated <link
type="document" target="Loudness">Loudness </link> computation is employed.


## Display
The current speech content is displayed as text below the current gate
status.

Additionally, color coding indicates the speech content ratio.

* Speech : speech content present

* <color value="00FF00"><b>Green</b></color>: high speech content

* <color value="00A2FF"><b>Orange</b></color>: medium speech content

* <color value="4F4FF0"><b>Red</b></color>: low speech content

* <color value="FF8000"><b><link type="document" target="Other">Other</link></b></color>: other material present


## Delay and compensation
The sophistication of the algorithms employed in Dialogue
Intelligence incur an overall latency of 2048ms (approx. 2s).

When Dialogue Intelligence is enabled, the display of other <link type="document" target="Loudness">
Loudness </link> values is compensated to make sure meter readings are consistent. <link type="document"
target="Other"> Other</link> real-time meter (<link type="document" target="RMS">RMS</link>, TruePeak) displays are not
compensated, as we feel in this case maintaining the best reactivity to the incoming signal is more
important.

All meter statistics are time-aligned.

## Surround

<link type="document" target="Channels">Channels</link>
taken into account by the algorithm are determined based on the current channel configuration.

For mono/stereo signals, all channels are taken into account. For surround configurations, only
Left/Right and Center channels are taken into account, if present.

>Dialogue Intelligence computation only affects I (Integrated) <link
type="document" target="Loudness">Loudness </link> values.
Toggling Dialogue Intelligence on and off forces a reset of the meter values.

# Copyright & patent information
**Created under license from Dolby Laboratories Licensing Corporation. Use of this Software
does not convey a license nor imply a right under any patent, or any other industrial or
intellectual property right of Dolby Laboratories.**

Dolby and the double-D symbol are registered trademarks of Dolby Laboratories. Dialogue
Intelligence is a trademark of Dolby Laboratories.

PATENT LIST - DIALOGUE INTELLIGENCE

PATENTS

<table>
<tr>
<td>Country</td>
<td>Patent Number</td>
</tr>
<tr>
<td>AUSTRALIA</td>
<td>2003263845</td>
</tr>
<tr>
<td>CHINA</td>
<td>ZL03819918.1</td>
</tr>
<tr>
<td>FRANCE</td>
<td>1 532 621</td>
</tr>
<tr>
<td>GERMANY</td>
<td>1 532 621</td>
</tr>
<tr>
<td>HONG KONG</td>
<td>1073917</td>
</tr>
<tr>
<td>ISRAEL</td>
<td>165938</td>
</tr>
<tr>
<td>JAPAN</td>
<td>4585855</td>
</tr>
<tr>
<td>MEXICO</td>
<td>252,228</td>
</tr>
<tr>
<td>MALAYSIA</td>
<td>MY-133623-A</td>
</tr>
<tr>
<td>SINGAPORE</td>
<td>109865</td>
</tr>
<tr>
<td>TAIWAN</td>
<td>I306238</td>
</tr>
<tr>
<td>UNITED KINGDOM</td>
<td>1 532 621</td>
</tr>
<tr>
<td>UNITED STATES</td>
<td>7,454,331</td>
</tr>
</table>



PATENT APPLICATIONS

<table>
<tr>
<td>Country</td>
<td>Application Number</td>
</tr>
<tr>
<td>CANADA</td>
<td>2,491,570</td>
</tr>
<tr>
<td>INDIA</td>
<td>1936/KOLNP/2004</td>
</tr>
<tr>
<td>SOUTH KOREA</td>
<td>2005-7003479</td>
</tr>
<tr>
<td>UNITED STATES</td>
<td>12/948,730</td>
</tr>
</table>
