# Transfer function phase

<link type="document" target="Phase">Phase</link>
information is sometimes overlooked, and indeed it is less straightforward to understand and interpret
than magnitude. Altering the phase of a signal can range from subtle to dramatic, and phase distortion
can lead to temporal smearing of the audio, loss of spatial information, and other nuisances.

The transfer function phase curve displays the phase difference between output and input of the system
at different frequencies, in degrees, ranging from -180 to 180.

> Pure Analyzer employs several smoothing algorithms custom designed for phase curve
> smoothing, as explained in the section about <link type="document" target="Phase">Phase</link> setup.
>
> Due to the definition of phase itself and the means of computing it, the curve is generally more
> sensitive to extraneous noise, distortion and time-varying conditions. Even more so than with the
> magnitude curve, a precisely compensated delay is critical to accurate phase computation.
>
> In very reverberant environments, the phase curve will be very chaotic. This is inevitable and a direct
> consequence of the complex nature of the system, and not a limitation of the instrument. We advise to
> use Pure spectrum analysis mode which mitigates phase computation inaccuracies compared to plain FFT.
>
> 
> ![](include/TransferFunction.png)
>
> Typical transfer function display in a live room

