# Release Notes

## FLUX:: Analyser 20.12

## Major Additions


* Stability improvements (hardening) with all latest operating systems (OS).
* Catalina, Big Sur and Apple notarization official support.
* New built in error reporting tools for FLUX:: Analyser.
* New V20.12 release (new versioning system), now including 1 year of support and upgrade with perpetual license purchase.
* New Apple and Windows menu and shortcuts.
* Many internal improvements and optimizations - CPU and GPU.


## Major optimizations

* FLUX:: Analyser and Analyser High Precision (64 bit)
* HiDPI / Retina
* Loudness metering conformance for many broadcast/streaming 
	* AES Streaming, Apple, Amazon, Deezer, Netflix, Spotify, TIDAL, YouTube and more.
* Revised loudness meter display (clearer, more info and overload warnings)
* Now with 2 perceptual colormaps to spectrogram for improved readability.
* Musical note peak display (label mode)
* Improved spectrum display interpolation
* Improved pure spectrum mode side-lobe analysis
* External IR loading in snapshots 
	* visualizing them as impulse responses and magnitude spectra
* I/O layout preference for various channel based arrangements and order.
* OSC support


## Other Improvements

* Application is now notarized to comply with macOS Catalina, Big Sur requirements.
* Spectrum Frequency scale start at 0Hz
* Limit generator output level to prevent sound card clipping.
* Smoother generator volume changes
* New main menu on macOS (Edit and View Menu)



## Bug fixes

### FLUX:: Analyser 20.12

#### Build 49931

**Fixes;**

* Studio Session Analyzer is not working

#### Build 49880

**Fixes;**

Core:

* Metering Stats (Offline processing) unstable or returning wrong values.
* Metering Stats (Offline processing) file batch loading issue.
* Ensure saved IO setup is still present on reload.
* Fix transfer function magnitude smoothing.
* Limit data tooltips to actual range and fix refresh lag.
* Fix a number crashes that could occur in various scenarios.
* Suppressed some memory leaks.
* Fixed a crash that could occur when switching from pure spectrum / FFT mode.
* Fixed snapshot reload issues.
* Improved network connection stability.
* Added workarounds for various OpenGL driver bugs that were causing display issues on certain setups. 
* All sample rates initialized to 48k by default



UI:

* Display issues and improvements on macOS
* Added workarounds for various OpenGL driver bugs that were causing display issues on certain setups.  
* TruePeak preset name not reflected in UI
* Meter peak value text is clamped to range


Various: 

* Fix data races




### Sample Grabber Plug-ins 20.12

#### Build 49880

**Fixes;**

* SampleGrabber base name truncated after close/reopen host.
* SampleGrabber AAX - Win&Mac - Changing the plug-ins layout has no effect on the analyser.
* SampleGrabber - Win&Mac - AAX/AU/VST - GUI issue with Layout list.


## Known Issues

* Wrong channel order with SampleGrabber and Nuendo
* Issues in some scenarios with Avid VENUE S6L - Sample Grabber AAX VENUE - Doesn't appear to work (works in AAX Native)



-----
