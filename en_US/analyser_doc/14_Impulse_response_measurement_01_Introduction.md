# Introduction
The impulse response of a system is the signal obtained at the output when feeding a click (also termed impulse, spike or Dirac) its input.
It is a fundamental tool to describe the time properties of a
linear system.

Combined with the transfer function, impulse response measurement is essential in characterizing the acoustics of a studio, concert hall or venue, from which synthetic figures such as reverberation time are derived.
Determining the impulse response of an amplifier and loudspeaker in tandem can also serve to assess their performance.

A pass-trough device, or equivalently, a completely dead space such as an anechoic chamber exhibit a unit impulse response, whose value at zero time is gain, and is zero at all other instants.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/ImpulseResponse/Main.png)

> Impulse response display example

## Analyze / freeze
The ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Play.png) button toggles the impulse response real-time update on and off.

## Delay Set
The ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Set2Delay.png) delay Set button set value of the peak time location to the delay value currently set for microphone channels in the [Live IO](11_Live_IO_01_Introduction.md) panel.

If Real Time curve is disable, the Max value of the selected snapshot is used.

## Delay add
The ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Add2Delay.png) delay add button adds value of the peak time location to the delay value currently set for microphone channels in the [Live IO](11_Live_IO_01_Introduction.md) panel.

If Real Time curve is disable, the Max value of the selected snapshot is used.

## Delay subtract
The ![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Generic/Subtract2Delay.png) delay subtract button subtracts the peak value to the microphone channels delay.

If Real Time curve is disable, the Max value of the selected snapshot is used.

> The impulse response is closely tied to the transfer function, in that they are both related to another by a Fourier transform.
>
> For practical aspects, FLUX:: Analyzer employs two distinct analysis engines to compute the impulse response and transfer function, as this allows to use separate settings for the two, which is often necessary in practice.
