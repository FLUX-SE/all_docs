# Release Notes

### Spat Revolution 20.12

#### Build 49890

## Major Additions



* New MultiCore parallel processing algorithm. 
	* A new preference option to select various engine processing profile.
* Stability improvements (hardening)  with all latest operating systems (OS).
* Spat Plug-ins (Local Audio LAP - AudioPipe) hardening and  improvement against host applications and OS.
* Catalina, Big Sur and Apple notarization official support.
* New built in error reporting tools for Spat Revolution.
	* In Spat preferences, you can enable or disable sending anonymously of software data error to FLUX::. This  application monitoring tools helps track developer errors for better  diagnostic, fixes and performance optimization.
* New V20.12 release (new versioning system), now including 1 year of support and upgrade with perpetual license purchase.
* Added 23 reverb presets imported from IRCAM Verb and the Spat v3 plugin.
* New Drag and Move + Drag and Connect module feature.
	* Drag any modules to move before or after any module of same type.
	* Drag a drop module into module to connect output to input.
* Support for the IRCAM ADMix/SPAT and Meyer SpaceMap Go OSC Grammar on input.
	* You can now play ADM Master  (Audio definition model) files containing audio and object metadata  with the[ ADMix player]((https://forum.ircam.fr/projects/detail/admix/)) playback and receive metadata as OSC data in Spat 
* New Apple and Windows menu and shortcuts 
	* Spat Revolution now includes the standard Apple and Windows menu bar for new and added software action. 
	*  New shortcut options
* New input naming pages for bulk renaming 
* Multi-Selecting input blocks and pressing Alt + N
* Setup wizards;
	* Available by pressing Alt + N or in the Setup menu.
* New Import and Export Spat preferences.
	* System to System, to back up your preferences.
* Basic snapshot system implementation;
	* snapshots can now be generated, recalled (with interpolation - crossfade option) , deleted or renamed. 
	* Gives the ability to create static images instead of using full automation.
	* Basic menu is provided to manage snapshots and available to OSC messages (Lemur and Qlab template available).
* Import speaker arrangements;
	* Import speaker arrangements from simulation software of Adamson, CODA Audio, Nexo, d&b audiotechnik, Ease or simply Excel.
* Speaker arrangement panning tips and validation guidelines.
* New Panning type (LBAP, DualBandVBP)
* New Binaural Options - Nearfield, Spherical Head, Snowman Model 
* New A-Format transcoding (Sennheiser Ambeo, Oktava MK4012, Rode Nt SF1)
* New HOA transcoding method (Regularized Pseudo-Inverse, Improved AllRAD, CSAD)


**OSC - Many OSC optimizations in the core** 

* The OSC Matrix (OSC Slots) has been updated and contains various changes.
* Now supporting third party OSC devices without Auto-bundle feature (Digico Consoles now can have bidirectional control)
* Make OSC dictionary available with snapshot
* ADM-OSC
* ADMPlayer compatibility (currently no scale)
* Meyer Sound - Spacemap Go - OSC Grammar support (input only)

## Major optimizations

* Open GL fix for Mac Mini (Anti-Alias)
* Spat Plug-ins (LAP - AudioPipe) hardening and improvement against host App.
* Now supporting third party OSC devices without Auto-bundle feature
* ADM-OSC Format support.
* Retina display enhanced support
* New HOA Decoding Methods
* New Binaural Options - Nearfield, Spherical Head, Snowman Model - (Not using HRTF for some???) 
* Per speaker channel mute option in room
* Shift drag to move 3D scene
* Install templates with PI format for Spat.

## Other Improvements

* BackGround - Set Background Offset Step to centimetres  
* Display Performances (CPU) measurements help option
* Opening a new session doesn't prompt a "save current session" dialog  
* Use calling thread (Audio) as thread 0 on parallel processing to avoid using other thread on small configuration.
* Color Indicator update for Mute - Solo
* Draw source and speaker text in 3D View
* Update to last Python version and some other sdks
* Display units in the speaker/channel editor  
* "Output list" for HOA Room should not display x/y/z/Azimuth/etc
* Import speaker arrangement - Check the height of the arrangement and lower the all arrangement.
* Check for update based on current installed version number
* Display "new version" / "update information" at startup
* Add number of channel property to Send/Return plugin to allow ReaVolution to change to plugin format
* Automatically define speaker arrangement on Transcoder when possible
* Add Duplicate room without same sources or with duplicated sources
* Handle "dead" PyControl in UI
* Ircam's exceptions handling in Transcoder
* Dump all properties through OSC output after loading a session
* Pl: remove Independent duration + rename as "interpolation time"
* Pl: update page table
* Rebuild GUI without reloading session

#### Build 49943

* Add IO overload Detection + auto mute + reset button
* Spat Send (software) input sync error detection optimization
* Audio processing optimizations




## Bug fixes

### Spat Revolution Fixes 20.12


#### Build 49943

**Fixes;**

* Creating Snapshot freeze on Mac OS X.
* Rename snapshot dialog not correctly initialized ; especially on retina display
* Panning Tips - Display of Coincident speakers was broken.
* Potential error when recalling snapshot.
* Recurring crash in setup while doing connections with drag and drop
* Strange issues with input OSC transforms
* Transcoders - Wrong Normalization for AmbiX.
* Yaw/Pitch/Roll - Number of digits in sliders 
* Crash on connecting HOA order 7 input to source multiple time.


#### Build 49930

**Fixes;**

* Solved freezing issue on Windows computers.
* Drop-down menu stuck
* Error when deleting user config in Speaker Arrangement Editor
* Change langage sets all rooms background to black (if they were white before)
* When list selected in a Dialog, type escape closes window instead of list



#### Build 49890

**Fixes;**


* Crash when "Max Number of cores" is 1
* Crash when build setup without any sources and with Audio Device enabled


#### Build 49880

**Fixes;**

Core:

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
* Fix synchronisation error detection 

UI:

* Fix retina/non retina issues
* Fix label cropped with other languages than English
* Fix text of linear sliders display
* Fix name of the sources refresh
* Fix parameters on the right hidden on the setup page after scrolling down through a larger parameters-list
* Fix renaming a room doesn’t reflect the new name in the tab
* Fix double-click on some slider doesn’t reset to default value
* Fix incorrect and missing hints
* Fix sources and colours duplication
* Fix room background image proportion are not correct for non square images
* Fix source aperture display glitches
* Fix scrolling bar blocked in the speaker arrangement editor when switching from large arrangement to light arrangement
* Fix selection on deleting a speaker on the speaker arrangement editor
* Fix UI issues with OpenGL mac mini.

Various: 

* Fix dialog do not always close or validate with Escape and Return keys
* Fix presets import
* Fix some crashes with Terminal actions
* Fix default position with 5.1 sources
* Fix opening session with non-ASCII characters


--
### Spat Plug-ins fixes
#### Build 49880

**Fixes;**

* Fix stability issue with LAP
* Room PI - Fix automation in VST
* Room PI - Fix No automation parameter available in room PI AAX 
* Room PI - Fix the non-linear behaviour of the listener Yaw Automation
* Send PI - Improve stability on Avid S6L
* Automation - Fix : reset values doesn't send automation point to LAP PI
* VST - Fix latency compensation issue
* AU - Fix automation
* Ableton Live - Fix automation parameter not listed
* Logic Pro X - Fix automation issues from Spat
* Fix DXD Block-size mismatch
* AAX DSP Version no longer supported


## Known Issues

* LAP with AAX 96K synchronization issue.
* OSC -1 index doesn't work with Polar /aed.
* Record OSC message and snapshot interpolation via Local Audio Path automation is not working.
* Shortcuts with Alt doesn't work on Windows 10.
* Only the first LFE receives LFE send.
* No direct sound with Spherical Head binaural and Snowman binaural
* Crash on transcoding B-Format 2D to HOA3D
* Closing Nuendo and Ableton Live session with Spat PI crashed application. (VST Plug-ins)
