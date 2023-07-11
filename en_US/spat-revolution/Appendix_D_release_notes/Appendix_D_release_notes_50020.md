# Release notes - Build 21.4.0.50020

This build contains SPAT Revolution and SPAT plug-ins suite.


## SPAT Plug-ins suite

### New feature
- Position Mode  parameter: Polar, Cartesian or None automation recording and reading mode.

### Bug Fixes
- Record AED OSC messages and snapshot interpolation via Local Audio Path automation is not working.


## SPAT Revolution new features

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


## Improvements

### User Interface
- Addition of Real source-objet position infos option on 3D view
- Addition of Presence Infos option on 3D View
- 3D view - Source-object  is projected on speaker plane for 2D channel-based speaker arrangements
- Sources, Room and Reverb parameters - Hide/show for panels
- Updated Reverb panel unifying related parameters
- Snapshot Rename Popup - Select automatically the edit on window popup


### Core behaviors
- Radius protection zone is now automatically set with the channel-based arrangement based on speaker distance average.
- Dialog box when changing speaker arrangement to offer auto scaling room parameters  for source-object
- New update Setup Wizard with mode for Essential license based sessions
- Radius per source is now a trim factor expressed in meters for session compatibility  and to integrate with new protection zone


## Bug fixes

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