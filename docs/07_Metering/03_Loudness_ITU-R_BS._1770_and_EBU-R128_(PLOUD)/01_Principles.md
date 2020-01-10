# Units
ITU-R BS.1170-2 notably defines LU (<link type="document" target="Loudness">Loudness</link> Unit)
and LUFS (<link type="document" target="Loudness">Loudness</link> Unit, referenced to Full <link
type="document" target="Scale">Scale</link>) units, which are used by EBU R128, and
Maximum True
<link type="document" target="Peak">Peak</link>
<link type="document" target="Level">Level</link>.

* LU is used for measurements <i>relative</i> to a reference level and measuring range.

* LUFS is used for <i>absolute</i> measurements.

The meter display is switchable between LUFS (absolute, default) and LU (relative). The target
loudness level to aim for is -23 LUFS = 0 LU.

# Loudness and EBU mode
EBU mode specifies three time scales corresponding to three different, complementary loudness
levels

* M: Momentary, 400ms integration time
* S: Short-term, 3s integration time
* I: Integrated from start of measurement or last reset, gated


> Loudness is a measure of global loudness, so individual channel metering is not relevant in
this context. No additional slowdown of the attack or release of the meter is employed, as
indicated by the norm.

The integrated loudness can be understood as the overload loudness of the audio over time,
excluding very soft passages through the use of absolute and relative gating.


# Loudness Range (LRA)

<link type="document" target="Loudness">Loudness</link>
range measures the average long-term variations of the loudness; it is expressed in LU.

# Scales
EBU R128 specifies two normalized scales:

* EBU +9, ranging from -18.0 LU to +9.0 LU (-41.0 LUFS to -14.0 LUFS)
* EBU +18, ranging from -36.0 LU to +18.0 LU (-59.0 LUFS to -5.0 LUFS) (Default)

