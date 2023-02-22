# Frequency scaling
Scaling controls how the scaling applied to spectrum magnitudes. This is a global setting accessed through the [Main](02_User_Interface_04_Main_setup.md) setup panel.

Scaling controls whether frequency-dependent amplitude scaling should be applied. This affects how various standard reference signals register on the display. The default <i>power</i> scaling will result in a signal with spectrum components of <i>constant power</i> registering as a flat curve, whilst amplitude will have the same effect for components of
constant <i>amplitude</i> such as pure tones (sine signal).

The table below shows how the curve appearance depending on the type of input signal. 1/f corresponds to a rectilinear slope on the display with both X and Y axis being logarithmic.

| Input signal | Sine | White | Pink noise |
|-------------:|:----:|:-----:|:----------:|
| Power scaling | 1/f | 1/f | Flat |
| Amplitude scaling | Flat | Flat | 1/f |

> For monitoring a mix, it makes most sense to use <i>power</i> scaling, as this is the way our hearing responds. If you need to measure a room's acoustic response, an outboard unit or a plugin's frequency response, the system magnitude transfer function is best suited for this purpose and scaling has no effect.

> The <i>amplitude</i> scaling setting should therefore really be employed if you need to measure relative amplitude values, such as those of sine test tones at various frequencies. Also, note that plain DFT corresponds to scaling set to <i>amplitude</i>.

> The power of a time-signal is proportional to the square of its amplitude, or equivalently, its power in dB is double the amplitude. However, in the case of a spectrum, we are measuring the output of a filter-bank, which reacts very much differently depending on the type of input signal, so the simple previous formula doesn't apply anymore.

