# About True Peak

All digital audio wave signal is ultimately converted back to analog at some point, and while it is often desirable to
maximize the overall volume of a signal or a complete mix, care must be taken in order not to go above the digital
scale zero decibel ceiling, or nasty distortion and clipping will occur. This common and widely used rule is however
not entirely sufficient, as the digital and analog processing involved in a D/A converter does not guarantee that a
0dBfs peak signal will exactly translate to a 0dB peak in the analog domain.

Without getting into too much detail, this phenomenon can be attributed to the over-sampling and reconstruction
filters present in D/A converters, whose role are to rebuild a continuous time signal from a set of discrete digital
values sampled at regularly spaced time intervals. This interpolation process can therefore generate values, which
lie above 0dB, and is known as overshoot.

Relying solely on the peak value of samples can lead to the following problems:

- Inconsistent readings between successive playbacks of the same material.
- Unexpected overloads of the D/A output converter.
- Under-readings and beating of pure tones.

Using True Peak value aims to overcome these limitations by mimicking parts of the D/A conversion process, effectively 
up-sampling the measured signal, in order to use the true value of peaks that occur in the analog domain.
