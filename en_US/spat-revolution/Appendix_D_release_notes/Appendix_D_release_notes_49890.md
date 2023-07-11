# Release notes - Build 20.12.0.49890

## SPAT Revolution new features

* New MultiCore parallel processing algorithm.
	* A new preference option to select various engine processing profile.
* Stability improvements (hardening)  with all latest operating systems (OS).
* SPAT Plug-ins (Local Audio LAP - AudioPipe) hardening and  improvement against host applications and OS.
* Catalina, Big Sur and Apple notarization official support.
* New built in error reporting tools for SPAT Revolution.
	* In SPAT preferences, you can enable or disable sending anonymously of software data error to FLUX::. This  application monitoring tools helps track developer errors for better  diagnostic, fixes and performance optimization.
* New V20.12 release (new versioning system), now including 1 year of support and upgrade with perpetual license purchase.
* Added 23 reverb presets imported from IRCAM Verb and the SPAT v3 plug-in.
* New Drag and Move + Drag and Connect module feature.
	* Drag any modules to move before or after any module of same type.
	* Drag a drop module into module to connect output to input.
* Support for the IRCAM ADMix/SPAT and Meyer SpaceMap Go OSC Grammar on input.
	* You can now play ADM Master  (Audio definition model) files containing audio and object metadata  with the [ADMix player](https://forum.ircam.fr/projects/detail/admix) playback and receive metadata as OSC data in SPAT
* New Apple and Windows menu and shortcuts
	* SPAT Revolution now includes the standard Apple and Windows menu bar for new and added software action.
	*  New shortcut options
* New input naming pages for bulk renaming
* Multi-Selecting input blocks and pressing Alt + N
* Setup wizards;
	* Available by pressing Alt + N or in the Setup menu.
* New Import and Export SPAT preferences.
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


## OSC - Many OSC optimizations in the core

* The OSC Matrix (OSC Slots) has been updated and contains various changes.
* Now supporting third party OSC devices without Auto-bundle feature (Digico Consoles now can have bidirectional control)
* Make OSC dictionary available with snapshot
* ADM-OSC
* ADMPlayer compatibility (currently no scale)
* Meyer Sound - Spacemap Go - OSC Grammar support (input only)

## Major optimizations

* Open GL fix for Mac Mini (Anti-Alias)
* SPAT Plug-ins (LAP - AudioPipe) hardening and improvement against host App.
* Now supporting third party OSC devices without Auto-bundle feature
* ADM-OSC Format support.
* Retina display enhanced support
* New HOA Decoding Methods
* New Binaural Options - Nearfield, Spherical Head, Snowman Model - (Not using HRTF for some???)
* Per speaker channel mute option in room
* Shift drag to move 3D scene
* Install templates with PI format for SPAT.

## Other improvements

* BackGround - Set Background Offset Step to centimeters  
* Display Performances (CPU) measurements help option
* Opening a new session doesn't prompt a "save current session" dialog  
* Use calling thread (Audio) as thread 0 on parallel processing to avoid using other threads on small configuration.
* Color Indicator update for Mute - Solo
* Draw source and speaker text in 3D View
* Update to last Python version and some other SDKs
* Display units in the speaker/channel editor  
* "Output list" for HOA Room should not display x/y/z/Azimuth/etc
* Import speaker arrangement - Check the height of the arrangement and lower all the arrangement.
* Check for update based on current installed version number
* Display "new version" / "update information" at startup
* Add number of channel property to Send/Return plug-in to allow ReaVolution to change to the plug-in format
* Automatically define speaker arrangement on Transcoder when possible
* Add Duplicate room without same sources or with duplicated sources
* Handle "dead" PyControl in UI
* Ircam's exceptions handling in Transcoder
* Dump all properties through OSC output after loading a session
* Pl: remove Independent duration + rename as "interpolation time"
* Pl: update page table
* Rebuild GUI without reloading session


## Bug Fixes

* Creating Snapshot freezes on Mac OS X.
* Rename snapshot dialog not correctly initialized ; especially on retina display
* Panning Tips - Display of Coincident speakers was broken.
* Potential error when recalling snapshots.
* Recurring crash in setup while making connections with drag and drop
* Strange issues with input OSC transforms
* Transcoders - Wrong Normalization for AmbiX.
* Yaw/Pitch/Roll - Number of digits in sliders
* Crash on connecting HOA order 7 input to source multiple time.
* Crash when "Max Number of cores" is one
* Crash when build setup without any sources and with Audio Device enabled