# Fading
Controls display persistence, <i>i.e.</i> the "fade to black" amount for a frame. 
Lowering this value retains past particles longer, whereas increasing this make them disappear faster.

# Size factor
Controls the size of individual particles with respect to screen size.

# Blur kernel size
![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Nebula/BlurKernelSize.png)

Controls the radius of the blur effect applied to past particles.
Particles are "smeared" more and more as they become older, depending on this setting. 
Naturally, a bigger value increases the smearing, at the expense of processing power.

> Choosing the value for this setting is really matter of taste, although please keep in mind values that above 5 will require a sufficiently powerful graphics card in order to maintain a responsive display.

# Particle scaling
Toggles automatic adjustment of particle size with screen size. 
When enabled, the overall aspect of the display will remain similar even if the view size changes.

# Color mode
Provides the following particle-coloring modes:
* Power: the color varies according to the power of the signal in the frequency region
* Dynamics: same as previous except this mode works on signal dynamics
* Power / dynamics: a mix of the above
* Frequency: the color varies according to frequency only, using a rainbow-palette


