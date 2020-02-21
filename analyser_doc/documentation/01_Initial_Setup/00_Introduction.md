# Introduction
In a conventional digital system, audio material is captured, stored, transmitted and reproduced as a
sequence of values, which correspond to the amplitude variations of an electric signal at discrete
points in time. Our ability to extract meaningful information from this raw data through either hearing
or visualization of the signal curve is however somewhat limited to emotional interpretation, which as
one may expect, is extremely subjective.

Extensive studies have shown that first converting this data to a so-called frequency representation is
extremely useful for a broad range of audio applications, as it is quite similar in principle to the
human auditory system. A proper detailed explanation of the reasons behind this is well outside of the
scope of this manual, so we will only hint at a few important characteristics of human hearing, namely
its


* ability to recognize and isolate sounds base on their relative intensity or loudness
* ability to identify a pitch and timbre (color, texture) for sounds that fall in this category
* ability to distinguish sounds based on their actual or perceived location


A number of methods have been invented in order to translate these characteristics to measurable
quantities that can be expressed in standardized units. These provide invaluable tools for assessing the
quality of an audio recording, assisting the engineer in detecting potential mix problems, conforming to
industry standards and requirements, calibrating loudspeaker systems, tuning room acoustics, etc.

A fundamental tool for transforming a time-based digital audio signal into a frequency-based
representation, a.k.a frequency spectrum, is the discrete Fourier transform (DFT) and its derivatives,
such as the Short-Term Fourier Transform (STFT) and Fast Fourier Transform (FFT). Basically, the DFT
maps a signal to a set of amplitudes taken at equally-spaced frequency intervals. In essence, one can
see the DFT as a bank of many band-pass filters, with as many meters at the output of these filters.

Whilst constraining the frequencies to be taken at fixed, regular intervals, is convenient both in terms
of processing resources and simplicity of the computation, amongst other reasons, this linear frequency
binning does not represent human hearing, which is essentially logarithmic (constant Q), very
accurately. The analysis engine in Pure Analyzer therefore offers both options, which are discussed in
more detail in <link type="document" target="Spectrum analyzer">Spectrum analyzer</link>.