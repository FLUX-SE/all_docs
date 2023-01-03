# Module Settings

## Analyser

### Analyser Switch

The spectrum analyzer origins from the Flux:: Pure Analyzer and has been optimized for the EVO Channel. It
gives you an accurate direct view of what’s going on in the different frequency domains of your audio. When
switched on, the spectrum analysis is activated and displayed in the equalization view panel. The grey
waveform correspond to your input signal (post gain/drive), the same as the input meter. The black one is the
output signal (post output gain), the same as the output meter.

Value Range : Enabled/Disabled

Default Value : Enabled

### Analyser Slider

Controls the amount of frequency detail of the curve. Move the slider to the left to get a more smoothed curved,
and to the right to get more details.

Value Range : No Value

## Input

### Input Gain

The input gain control trims the level of the signal at the input of EVO Channel. The meter shows both RMS
signal (VU-Meter, blue) and peak signal (peak meter, green), from -24 to +18 dB range, referenced at -18dB.


Value Range : -24.0 dB / +18.0 dB


Colors : 
- Blue : RMS Value 
- Green : Peak Value


Default Value : 0.0 dB

### Drive

In EVO Channel a signal Drive is available direct at the input Gain for restoring and maintaining the vitality of
the sound.

The drive module has been specially designed to add a soft saturation and warmth to your audio tracks.


Value Range : 0% / 100%



Default Value : 0%

## Compressor

In addition to controlling the signal dynamics, the compressor is often used for shaping the attitude of a sound.
To use a compressor in a creative and artistic fashion it’s important that it’s easy to use and has the ability to
create an interesting sound.

The EVO Channel’s compressor module is based on the Pure Compressor’s dynamics engine, and the same
range of compression types are available in EVO Channel through the different modes available (each mode
corresponds to a fine tuning of Pure Compressor). As some modes use a LID compression (Level Independent
Detection) in parallel, a gain reduction may be processed even if the audio level is below the threshold.

![](include/ManualEvoChannel-010.jpg)

### Mode

The compressor module gives you up to 9 modes of compression.


Available modes :


- Start
- Kick/Snare
- Overhead
- Drum Bus
- Bass
- Acoustic
- Piano
- Vocal
- Mix


Default Value : Start


### Threshold

Threshold value of the compressor.


Value Range : -42.0dB / +18.0dB


Default Value : Depends on the Mode.

### Ratio

Compression ratio parameter.


Value Range : 1.0:1 / 10.0:


Default Value : Depends on the Mode.

### Attack

Attack value of the compressor.


Value Range : 0.1ms / 1000.0ms


Default Value : Depends on the Mode.

### Release

Release value of the compressor.


Value Range : 1ms / 10000ms


Default Value : Depends on the Mode.

### Auto Adapt.

When enabled, the compressor adapts its release time to the input signal depending on the audio signal, but
won’t exceed the release time value.


Value Range : Enabled / Disabled


Default Value : Enabled


### Gain Reduction Display

Displays the gain reduction performed by the compressor.


Value Range : 0dB / -24dB


### Compressor Output Gain

Gain stage at the output of the compressor module.


Value Range : 0.0dB / 24.0dB


Default Value : 0.0dB

### Wet

Wet parameter defines how much of the compressed signal is mixed with the original signal, for parallel
compression.


Value Range : 0% / 100%


Default Value : 100%

## Output

### Output Gain

The output gain control trims the level of the signal at the output of EVO Channel. The meter shows both RMS
signal (VU-Meter, blue) and peak signal (peak meter, green), from -24 to +18 dB range, referenced at -18dB.


Value Range : -24.0 dB / +18.0 dB


Colors :
- Blue : RMS Value
- Green : Peak Value


Default Value : 0.0 dB

