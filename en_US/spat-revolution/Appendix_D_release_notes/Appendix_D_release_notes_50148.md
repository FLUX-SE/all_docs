# Release Notes - Build 22.02.0.50148

## New features

- Sources - Add one gain per room - Parameter name: Room specific gain
- New parameter Room Reverb "Enable" to enable or disable all reverb components for all connected sources in the room
- New HybridVBAP - A new panning technique for 3D arrangements that mixes 2D ad 3D VBAP depending on the elevation of the source
- AU plugin integration for Apple Logic Pro up to 10.7 and Figure 53 QLab
- Support of separated hardware input and output devices
- Wave Field Synthesis spatial reproduction technique algorithm available as new panning type - supporting collinear system as well as potentially any 2D/3D arrangements. (WFS add-on license required, Ultimate only)
- New Output Matrix: Allows on Master and Master Transcoder modules several connections per output on channel-based stream type
- New efficiency zone: where it makes sense to position the sources. Two behaviors for sources: clamp on the zone or mute outside
- Speaker orientation on speaker editor, automatically set according to the arrangement shape. This orientation is only taken into account on WFS panning type.
- New sources solo clear button
- New elevation clamping - Source-object is projected on speaker extremum planes for 3D channel-based speaker arrangements
- New option "Source fit speaker elevation" in the protection section of Room output panel: render a 3D creation on 2D setups will be more coherent
- Official support for software input (Local Audio Path via plugin) and hardware output in the same session.
- SPAT Revolution Essential - Now supports up to 16 channel arrangements

## Improvements

### Spatial Processing

- Reverb parameter - Rename "Reverb Enabled" by "Reverb Tail"
- Hide "Source over Listener" on 2D arrangements
- Improved clamping on 2D and 3D speaker arrangements
- Add special case for azimuth which should interpolate to nearest angle instead of linear range [-180, 180]
- Maximum speaker distance is now the default width protection zone
- Hide Spread factor for WFS and binaural

### Speaker Management

- Support of 4 independent LFE with its own send
- Preferences page - Add option to enable/disable the compute action on LFE in Speaker arrangement editor/Room output list
- Elevation is now reset to zero when the setup is detected as 2D

### OSC
- Send OSC message when renaming a source and a room
- Add missing /room/1/xy message
- Improve OSC robustness - bad messages preventing and filtering
- Support of ADM-OSC query command (/get, /?)
- Add enable/disable and command log per socket
- Add option to dump properties on OSC socket changes (port, IP and enable)
- Show network port name in tooltips
- Reviewed snapshots workflow and add OSC messages for recall Sources/Rooms/Masters options (/snapshot/options/recall/source, /snapshot/options/recall/room, /snapshot/options/recall/master, /snapshot/options/recall)

### Setup
- Save on the project the "Input Type" field of input blocks
- Essential - Setup Wizard - Improve outputs behavior when changing the stream type
- SPAT Essential - Improving handling of panning type on Session compatibility dialog
- SPAT Revolution Essential - Automatically add binaural monitoring when opening sessions made with Spat Revolution Ultimate
- Allow multiple input connections to Input transcoders and sources to permit aggregation from multiple input
- New timecode options sources choice - Absolute as default
- GUI - Align binaural monitoring block with master block on the setup page
- Setup Wizard - Patch input on unused hardware input

### 3D View
- Speakers and Nebula follow listener position and orientation
- Room reverb graphic display - XY scales improved

### Workflow
- Overall AU PI integration robustness
- SPAT Revolution reopens on Home page at startup if no session is automatically recalled
- Room Reverb Preset - prevent from overriding a factory preset

### Core optimization
- Huge jitter reduction, especially with small buffer values (e.g. 256 amp @ 96 kHz)
- Up to 20% improvements on single or multi-core configuration

### Various

- Add "strict" keyword in source parameter filter to strictly define which parameter to display. e.g. "strict: gain distance"
- Add source parameter filter presets on source parameter panel
- Add Main Menu access from the Main UI Header. Therefore, we can access main menu even in full screen
- Hide system menu in fullscreen
- Improve loading time when starting SPAT revolution when there is no internet connection

## Bugs fixes

### Spatial Processing
- Add distance scaling support for source "Scale" and "Radius" (if different from default)
- Fix presence vector not drawn over the listener head in certain cases
- Create or edit an arrangement through the setup wizard now change the width of the protection zone and the distance scaling
- Source's pitch displayed could be wrong
- Multichannel sources rotate the source of 90° when distance set to 0
- Doppler effect is not working anymore

### OSC
- Preferences/OSC connections - Fix refresh issue on OSC sockets when IP and port already used
- Reverb density is not recalled by snapshots
- OSC - Fix possible issue with /global OSC command
- Fix OSC messages consistency in regard to packed or unpacked queries
- Preferences/OSC connections - Add missing distance transformation for ADM-OSC presets
- Preferences/OSC connections - Fix possible error on OSC Transform windows
- "/source/[index]/name/get", "/room/[index]/name/get" and "/master/[index]/name/get" don't work anymore

### 3D View
- Fix some drawing issues on clamping, presence factor and radius
- Speaker Alpha setting is now applied to all rooms

### Binaural
- Binaural - No direct sound with SphericalHeadModel and SnowManModel
- Add Warning on session opening with an HRTF not available in the computer
- Hide "head scale" for non-binaural panning types
- Fix potential crashes with binaural rooms

### Setup
- Fix custom speaker config duplication when importing from a session
- HOA Transcoder - Fix issues with some configurations
- HOA Transcoder - Transcoder do not correctly connect to input channels
- HOA Transcoder - Bad initialization of Yaw and Normalization
- Setup Wizard - Ultimate - Binaural Monitoring not created
- Deleting a room may corrupt different sources parameters
- Binaural monitor block connected on the same master block than an output block controls the master block gain

### Speaker Editor
- Setup config lists differ on the speaker editor when opening it through the setup page or the room output panel
- Speaker Transform - Coordinates don't always refresh after transformation
- Selecting or editing an arrangement through the speaker editor output panel does not propagate configuration to connected blocks
- SPAT Revolution Essential - Opening speaker editor through output panel does not show the channels limitation
- Navigation keys add some unwanted chars on speaker names

### Workflow
- Better handling of automation and multiple inputs connected to one source
- Removed warning: "Current preset has been modified" when loading a preset

### Various
- Snapshot may not reload all properties depending on the language
- Changing language sets all rooms background to black
- Fix import legacy preferences
- Home page - Last saved session is not displayed
- Fix some crashes on exit on macOS
- "Check essential compatibility" menu action is not working
- Crash on Windows with ASIO driver when switching of driver
- Spat freezes when trying to save a file that is not accessible

### UI
- Reorder of Rooms doesn't update the Room order in the top bar
- Long room name doesn't display, refresh and resize properly on top bar
- Setup page - Fix alignment issue when changing the Preferences/Global language
- Refresh issues on input wizard, transform panel, on setup page and source list when a scroll bar is present
- Source properties panel - Filter frequencies display issue & improved gain text
- When back to the room, the source parameter panel still shows up while no source selected
- UI Issue with retractable panels

### Plugins
- Ableton Live - Automation is broken
- Non-interpolable values like "Position mode" can't be automated in Audio Unit
- AU parameter automation curve display is not correct
- Crash with Nuendo and SPAT plugins on macOS

## Known Issues

### Most important
- WARNING: Generator on room output channel is after gain and mute. Use with precaution, change the level in the generator section of the preference page or on the MASTER module.
- ALT modifier doesn't work on Windows
- Position are not sent when dumping all properties through OSC on opening a session
- macOS - Reported latency is not accurate when Device In/Out is the same
- Issue with source slider which doesn't work all time
- Core Audio headphones and loudspeakers cannot be used without an aggregate
- when multiple sources are selected moving some "filtered" parameter like distance in the property panel may generate bad position values
- S6L integration, SPAT Send track name is not retained properly and sent every time the UI opens (erasing your SPAT Source name).
- REAPER/WIN10 - VST - Automation reset source position
- REAPER/WIN10 - VST - ReaVolution script can't create mono send
- PI - AAX - Renaming a send track in ProTools changes the corresponding source verb enable, early, cluster and tail
- Double-clicking on "Input stream" on the status bar resets to default the hardware buffer and sampling rate if no Send/Return
- Connect a Send input to a source reset all parameters

### Important
- Win10 - /source/1/dump messages doesn't work
- OSC - Rotation X,Y and Z buttons aren't refreshed on automation and OSC message reception
- The second OSC output status is not retained in AAX / AAX VENUE. Make sure you enable it after a reboot or an AAX host rack reset.
- Broadcast OSC messages are not received on macOS. Workaround: use unicast