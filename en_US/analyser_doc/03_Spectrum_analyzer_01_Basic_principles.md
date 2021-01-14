# Basic principles
The global principle and purpose of a spectrum analyzer is to transform an incoming signal, which is basically a series of amplitudes taken at successive points in time, into a series of values versus frequency. Transforming an audio signal onto a frequency scale is indeed of great interest in a wide range of tasks, and notably allows to display a global, perceptually meaningful and precise picture of the audio contents.

The display represents the so-called magnitude spectrum of the incoming signal, which is a two-dimensional curve of the magnitudes of the signal taken at frequencies ranging from 0 (DC) to half that of the current sampling rate (or Nyquist frequency in signal processing jargon). This is probably the most commonplace and most easily understood spectrum analyzer visualization, and the place where you should start most of the time when you want to inspect the frequency content of your audio material.

![](include/AnOtherSpectrum.png)

> Magnitude spectrum of a stereo signal with summing disabled, max and smoothed curves enabled

![](include/Spectrum_Sum.png)

> Magnitude spectrum of a 5.1 surround signal sum with max and smoothed curves enabled

![](include/Spectrum_51.png)

> Magnitude spectrum of a 5.1 surround signal with summing disabled

![](include/SpectrumSlide.png)

> Magnitude spectrum with <link type="document" target="Slide">Slide</link> option enabled (Real time waterfall)

![](include/Setup.png)

> Magnitude spectrum setup dialog