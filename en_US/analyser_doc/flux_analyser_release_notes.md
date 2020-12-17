# Release Notes 20.12

### FLUX:: Analyser 20.12.0 Build 49880

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
* Improved pure spectrum mode sidelobe analysis
* External IR loading in snapshots 
	* visualizing them as impulse responses and magnitude spectra
* I/O layout preference for various channel based arrangements and order.
* OSC support


## Other Improvements

* Application is now notarized to comply with macos Catalina, Big Sur requirements


## Bug fixes

### FLUX:: Analyser 20.12.0.49880


**Fixes;**

Core:

* Meterering Stats (Offline processing) unstable or returning wrong values.
* Meterering Stats (Offline processing) file batch loading issue.
* Ensure saved IO setup is still present on reload.
* Fix transfer function magnitude smoothing.
* Limit data tooltips to actual range and fix refresh lag.
* Fix a number crashes that could occur in various scenarios.
* Suppressed some memory leaks.
* Fixed a crash that could occur when switching from pure spectrum / FFT mode.
* Fixed snapshot reload issues.
* Improved network connection stability.
* Added workarounds for various OpenGL driver bugs that were causing display issues on certain setups. 


UI:

* Display issues and improvements on Mac OS
* Added workarounds for various OpenGL driver bugs that were causing display issues on certain setups.  

Various: 

* N/A




### Sample Grabber Plug-ins fixes

**Fixes;**

## Known Issues

* Wrong channel order with SampleGrabber and Nuendo
* Issues in some scenarios with Avid VENUE S6L


-----
