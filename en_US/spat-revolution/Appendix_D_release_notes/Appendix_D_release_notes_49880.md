# Release notes - Build 20.12.0.49880

This build contains SPAT Revolution and SPAT plug-ins suite.

## SPAT Plug-ins suite

### Bug fixes

* Fix stability issues with LAP
* Room PI - Fix automation in VST
* Room PI - Fix No automation parameter available in room PI AAX
* Room PI - Fix the non-linear behavior of the listener Yaw Automation
* Send PI - Improve stability on Avid S6L
* Automation - Fix : reset values doesn't send automation point to LAP PI
* VST - Fix latency compensation issues
* AU - Fix automation
* Ableton Live - Fix automation parameter not listed
* Logic Pro X - Fix automation issues from SPAT
* Fix DXD Block-size mismatch
* AAX DSP Version no longer supported


## SPAT Revolution bug fixes

### Core

* Fix crashes with some ASIO Driver
* Fix listener pitch and roll inverted
* Fix source presence, orientation and distance when moving listener position in the room
* Fix crashes in the setup page
* Fix crashes in the speaker configuration
* Fix crashes tweaking room stream type
* Fix crashes choosing certain speaker arrangements
* Fix session loading time
* Fix issues with same room names
* Fix crashes with HOA transcoders
* Fix Yaw angle in transcoders
* Fix OSC Mute command issues
* Fix crashes deleting empty speaker arrangements
* Fix input transcoding A-Format to CB gain normalization issues
* Fix speaker arrangements duplication issues when importing from session
* Fix source reset all doesn't reset rotation XYZ
* Fix OSC stability and performances
* Fix synchronization error detection

### UI

* Fix retina/non-retina issues
* Fix label cropped with other languages than English
* Fix text of linear sliders display
* Fix name of the sources refresh
* Fix parameters on the right hidden on the setup page after scrolling down through a larger parameters list
* Fix renaming a room doesn’t reflect the new name in the tab
* Fix double-click on some slider doesn’t reset to default value
* Fix incorrect and missing hints
* Fix sources and color duplication
* Fix room background image proportions are not correct for non-square images
* Fix source aperture display glitches
* Fix scrolling bar blocked in the speaker arrangement editor when switching from large arrangement to light arrangement
* Fix selection on deleting a speaker on the speaker arrangement editor
* Fix UI issues with OpenGL mac mini.

### Various

* Fix dialogs do not always close or validate with Escape and Return keys
* Fix presets import
* Fix some crashes with Terminal actions
* Fix default position with 5.1 sources
* Fix opening session with non-ASCII characters


## Known Issues

* KU100 HRTF not included in the default HRTF list for Essential
* 3D View - Output meters can display only 50 channels
* Shortcuts with Alt doesn't work on Windows 10.
* Only the first LFE receives LFE send.
* [HOA] Crash on transcoding B-Format 2D to HOA3D
* [OSC] OSC message "/master/[index]/dump" do not work
* [OSC] No OSC control for reverb modal density
* [PI] LAP with AAX 96K can face synchronization issues.
* [PI] SPAT Send Solo parameter is not working in LAP or OSC
* [PI] Enable Reverb Automation not working
* [PI-VST] Closing Nuendo and Ableton Live session with SPAT PI can crash applications.
* [PI-VST] Loading a project or rebuild the mixer with SPAT Sends/Return can crash Merging Technologies Ovation / Pyramix
