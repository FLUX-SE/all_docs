# Release notes
## SPAT Revolution Application

### Build 21.4.0.50030

**Improvements**

* Add special cases for azimuth which should interpolate to the nearest angle instead of linear range [-180, 180].
* Add new Dolby speaker arrangements
* Improve session compatibility
* Update German and Spanish translations

**Bug Fixes**

* Crash possible when opening a session other than from the home page
* Empty Session compatibility when opening a session with master/monitor/output with Sloane 15/27/43
* Fix possible crash with panning validation on Speaker Config Editor
* Fix possible error on Speaker Config Editor
* Fix possible error with Setup wizard validation


### Build 21.4.0.50020


**Features**
- New software licenses support for SPAT Revolution Essential (1 activation) and SPAT Revolution Ultimate Bundle (2 activations)
- Ability now to disable the behavior of source/object moving over listener head when entering the spherical protection (radius) zone instead
- New per room spherical protection zone (width parameter)
- Spherical protection zone following the listener position
- New distance scaling per room parameter for source-object  automation, OSC and snapshots
- Session compatibility  dialog (partial session read) for SPAT Essential and SPAT Ultimate compatibility
- Home Page with session history and resources shortcuts
- Read/write Audio Pipe (LAP) Automation using scaling
- Read/write OSC position messages using scaling
- Store/recall snapshot using scaling
- New stereo panning law options (7)
	* Perceptually motivated amplitude panning (PMAP) for Accurate Phantom Image Localization (constant-power amplitude-panning).
	* Constant Power and Constant Amplitude
	* Square root or Sinus/Cosinus


**Improvements**

*User Interface*
- Addition of Real source-objet position infos option on 3D view
- Addition of Presence Infos option on 3D View
- 3D view - Source-object  is projected on speaker plane for 2D channel-based speaker arrangements
- Sources, Room and Reverb parameters - Hide/show for panels
- Updated Reverb panel unifying related parameters
- Snapshot Rename Popup - Select automatically the edit on window popup


*Core behaviors*
- Radius protection zone is now automatically set with the channel-based arrangement based on speaker distance average.
- Dialog box when changing speaker arrangement to offer auto scaling room parameters  for source-object
- New update Setup Wizard with mode for Essential license based sessions
- Radius per source is now a trim factor expressed in meters for session compatibility  and to integrate with new protection zone


**Bug Fixes**

- OSC -1 index doesn't work with Polar / AED. (Requires additional validation)
- Record AED OSC messages and snapshot interpolation via Local Audio Path automation is not working
- Aggregate input on process block does not work + add aggregate input on sources
- Listener head pivot  (roll) point should be at the Center
- Fix source pitch not updated when a listener position change
- Listener Yaw not correctly working if the listener is not at the center (origin)
- Multi-sources should keep alignment when elevation is done in polar
- RTTrPM - Tracking scaling not work
- Source presence factor + Listener 6DOF don't work on all rooms and sources for sources connected to multiple rooms.
- [UI] - HRTF name displayed on the setup block only on the first selection.
- OSC automation of azimuth has an offset of -90
- Refresh issue on Windows
- Reset to default on source parameters may not propagate the setting correctly to the sub source in case of multi-channel sources
- Strange “distance” behavior with multi-channel sources
- Setup Wizard - Crash on deleting a line then press tab
- Sometimes sources do not sound at the right place after reloading a session
- SPAT Revolution does not exit correctly in some cases
- Possible crash on exit
- If a session is closed while the user is in a room, SPAT Revolution main window can turn black
- [FrameRate] GUI problem with low frame rate



### Build 20.12.0.49943

**Optimization**
* Add IO overload Detection + auto mute + reset button
* SPAT Send (software) input sync error detection optimization
* Audio processing optimizations


##3 Build 20.12.0.49890

**Major Additions**

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
	* You can now play ADM Master  (Audio definition model) files containing audio and object metadata  with the[ ADMix player]((https://forum.ircam.fr/projects/detail/admix/)) playback and receive metadata as OSC data in SPAT
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


**OSC - Many OSC optimizations in the core**

* The OSC Matrix (OSC Slots) has been updated and contains various changes.
* Now supporting third party OSC devices without Auto-bundle feature (Digico Consoles now can have bidirectional control)
* Make OSC dictionary available with snapshot
* ADM-OSC
* ADMPlayer compatibility (currently no scale)
* Meyer Sound - Spacemap Go - OSC Grammar support (input only)

**Major optimizations**

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

**Other Improvements**

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


**Bug Fixes:**

* Creating Snapshot freezes on Mac OS X.
* Rename snapshot dialog not correctly initialized ; especially on retina display
* Panning Tips - Display of Coincident speakers was broken.
* Potential error when recalling snapshots.
* Recurring crash in setup while making connections with drag and drop
* Strange issues with input OSC transforms
* Transcoders - Wrong Normalization for AmbiX.
* Yaw/Pitch/Roll - Number of digits in sliders
* Crash on connecting HOA order 7 input to source multiple time.


### Build 20.12.0.49930

**Bug Fixes:**

* Solved freezing issues on Windows computers.
* Drop-down menu stuck
* Error when deleting user config in Speaker Arrangement Editor
* Change language sets all rooms background to black (if they were white before)
* When a list is selected in a Dialog, typing escape closes the window instead of the list



### Build 20.12.0.49890

**Bug Fixes:**


* Crash when "Max Number of cores" is one
* Crash when build setup without any sources and with Audio Device enabled


### Build 20.12.0.49880

**Bug Fixes:**

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
* Fix synchronization error detection

UI:

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

Various:

* Fix dialogs do not always close or validate with Escape and Return keys
* Fix presets import
* Fix some crashes with Terminal actions
* Fix default position with 5.1 sources
* Fix opening session with non-ASCII characters


--

## SPAT Plug-in suite

### Build 21.4.0.50020

**Feature**
- Position Mode  parameter: Polar, Cartesian or None automation recording and reading mode.

**Bug Fixes:**
* Record AED OSC messages and snapshot interpolation via Local Audio Path automation is not working.

### Build 20.12.0.49880

**Bug Fixes:**

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
