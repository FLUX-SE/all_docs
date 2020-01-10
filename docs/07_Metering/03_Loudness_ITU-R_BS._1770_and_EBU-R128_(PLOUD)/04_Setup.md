# Setup
<image name="PLoudMeterSetup"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\Documents\graphics\Cropped\Metering\PLoudMeterSetup.png"></image>

EBU R128 <link type="document" target="Loudness">Loudness</link> metering setup

## Presets

<image name="Presets Loudness"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\Documents\graphics\New Screenshots\added3\Presets Loudness.png"></image>

### Custom
Use user-defined custom range according to min./max. values
below.
### Default
Sets the meter to the recommended scale (EBU +18
LUFS).
### EBU +9 LU
Sets the meter to use EBU +9 scale in LU units.
### EBU
+9 LUFS
Sets the meter to use EBU +9 scale in LUFS units.
### EBU +18
LU
Sets the meter to use EBU +18 scale in LU units.
### EBU +18 LUFS
Sets
the meter to use EBU +18 scale in LUFS units.
### -23 LUFS Long program
CST
specification

Sets the meter to use EBU +18 scale in LUFS units with reference @ -23 LUFS and color split @
-/+ 7LU from the reference.
### -23 LUFS Short program
CST specification

Sets the meter to use EBU +18 scale in LUFS units with reference @ -23 LUFS and Max defined 3LU
up to the reference.

## Dolby Dialogue Intelligence

### Dolby Dialogue Intelligence™
Toggle usage of Dolby Dialogue Intelligence
speech gate.
### Speech threshold
Defines the speech content threshold in %.
Speech channels with a speech content ratio below this value do not participate in the <link
type="document" target="Loudness">Loudness</link> computation.

## Range
### Min.
Minimum <link type="document" target="Loudness">Loudness</link> to
display on the bar-graphs. User adjustable.

### Max.
Maximum <link type="document" target="Loudness">Loudness </link> to display on the bar-graphs. User adjustable.

## Scale / split

### Scale
Meter labels are defined here as a comma separated list of dB
values to be shown on the side of the meters. This also defines where to the corresponding
horizontal markings. Default is -72;-40;-18;-9;-6;-3;-1;0;1;3.
### Colors
This
lets you customize the values at which color transitions occur. You can enter as many values as
you wish, as a comma separated list, but make sure the values are in increasing order. Default
is -9;0.

The last value always defines the clip level, which will be indicated in red.

## Other

<link type="document" target="Controls">Controls</link>
wether meters are drawn with texture or in a plain solid color. Default is on.
