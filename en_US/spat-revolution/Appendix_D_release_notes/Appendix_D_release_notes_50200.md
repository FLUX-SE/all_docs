# Release Notes - Build 22.02.0.50200

## New Features

- New Snapshot page to ease snapshot overview and edition
- New parameters to enable or disable source's automation, OSC remote, or snapshots
- New Items page to ease items overview and edition
- Add delay setting on Input items, also manageable via a new “Input wizard delay”
- Add "SR Essential compatibility" mode and session check to SR Ultimate
- Speaker editor - Add "fix automatic orientation"  and "Set chosen orientation" actions
- Speaker editor - New delay computation management dialog
- Setup page - Add manual activation/deactivation of items
- OSC - Add name to OSC slot
- OSC - Add an option to display the invalid messages for easier debugging
- SPAT Send - Add an “input delay” parameter in the plugin, used for the delay compensation mechanism in SR
- New Italian and Korean translation 


## Improvements
- App - New shortcut to create a snapshot: Ctrl+Alt+Space
- Speaker editor - Automatic scale added to the 3D view depending on max speaker distance
- 3D View - The background now follow the color theme
- 3D view - Remove the "source to listener" line when “presence info” display option is off
- DSP - CPU consumption optimization and parallel computing improvements: more robust and efficient
- DSP - Send to Analyzer feature improved: Audio processing performance with less jitter 
- DSP - macOS audio workgroup implementation, allowing better threading optimization
- Preferences - Add pre or post speaker’s "Mute/Solo" option for Speaker test signal
- Preferences - Update engine preferred number of cores for Apple M1 processors
- Room - Add solo for speaker
- Room - Generator on room output channels is now after room gain and mute
- SPAT Plug-ins - Allow the same index on different plug-ins
- SPAT Send - Update Distance default value according to Barycentre in SPAT Revolution
- SR Essential - Allow drag & drop and manual connection
- SR Essential - Allow to add blocks manually
- SR Essential - Enable / disable blocks depending on compatibility instead of deleting them
- Setup page - Fix refresh issue
- Speaker editor  - Complete overhaul with multiselection, new UI for a safer and faster dialog
- Speaker editor - Add a warning when a factory preset is selected
- Speaker editor - Allow duplicating the speaker before computing delay and gains
- Speaker editor - Improved performances on panning type compatibility check
- Speaker editor - Propose to homogenize speakers' position after spherical alignment
- Speaker editor - Take speakers' orientation into account in delays computation
- UI - Update dialog buttons order


## Bugs
- 3D View - Clamped sources may disappear after a while
- 3D View - Efficiency zone processing issues with  linear setups non-aligned to an axis
- 3D View - The source spheres may blink when no signal
- 3D View - Virtual source barycenter is not recomputed after applying a transformation
- 3D View - Virtual source barycenter is not updated when resetting position or all 
- 3D View - Wrong source real position displayed when the listener is moved and/or oriented
- 3D view - Efficiency zone display issues when moving the listener
- 3D view - Wrong clamping on frontal system when the source is over the depth efficiency zone and out of the "azimuth triangle"
- App - ALT modifier doesn't work on Windows - Shortcuts on Windows is so limited 
- App - Crash when exiting while the speaker editor is open
- Speaker editor - Colinear frontal systems are no more allowed in DBAP
- DSP - Cached reverb tail may be heard when un-muting a source
- DSP - When reloading a session with at least two rooms and SPAT sends, there are issues with the listener position computing.
- App - Double clicking on "Input stream" on the status bar resets to default the hardware buffer and sampling rate if no Send/Return
- Invalidation issue on entering a graphical element when tooltips are deactivated
- LAP - Reset a parameter in SPAT Revolution does not write the value 
- Meters - Large multi-channel meters are badly displayed
- On session opening, source's name are not sent on OSC dump
- Performance display histogram show a non existing peak on show.
- Plug-ins - Send and Return LAP does not work  if no Hardware IO selected
- REAPER/WIN10 - VST - Automation reset source position
- Reset All fonction doesn't work on barycentric parameter
- Return plugin - Report Tail corresponding to the reverb tail to the DAW
- Room - Display issue with source list scrollbar
- Room - Sliders may have random and undesired behaviour
- Room parameter - Grid type, display output is not stored with the session
- SPAT Plugins - Send/Return parameter default values are not correct when using "Local Audio Path" in AudioUnit
- SPAT Return - Flush buffer on play (reset) in AudioUnit
- SPAT Send - Logic Pro - Index issues on reload under Apple M1 processor
- Setup - Bugs changing a speaker arrangement which is used on several room on session load
- Setup - Connect a Send input to a source should not reset all parameters
- Setup - Enabling signal generator on an input set it to "Channel-based, Mono"
- Setup Page - No more horizontal scrollbar after using the "RebuildGUI" function
- Setup Page - Scrollbar doesn't show up when location are different to English
- Setup page - Remove items does not refresh the scrollbar
- Snapshots - Distance scaling should not be included in snapshot recall
- Speaker Arrangement modifications are not propagate to all block using the same arrangement
- Speaker arrangement - Error reported when "computing" delay & gain on a co-linear system in VBAP
- Speaker arrangement - Transformations can be wrong for some speakers
- Speaker arrangement - Wrong speakers' automatic orientation when the setup is a square shape with no speaker in the corners
- Speaker editor - "Reset" button reset speakers orientation
- Speaker editor - Excel (XLS) import  in speaker arrangement no longers work after file saved
- Speaker editor - Issue with scrollbar when adding speakers
- Speaker editor - Random crashes when using  transformation 
- Speaker editor - nor reset to zero nor propagate alignment values (delays, gains, and orientation) to other blocks with the same speaker arrangement
- The automatic orientation of lines of speakers is wrong if not aligned with a cartesian axis
- When a block is no more connected to an input but still to the output, it can generate noise
- Windows - Reverb  factory preset cannot be recalled
- Windows - UI refresh issues
- [AU Logic] Send/Return/Room plugin: Automation from extern controller with touch/release works only if plugin set on polar mode
- [AU Logic] Send/Return/Room plugin: Automation from external controller without touch/release doesn't work
- [AU Logic] Send/Return/Room plugin: Automation of switches and lists isn't written
- [AU Logic] Send/Return/Room plugin: Automation on multiselection doesn’t work
- [AU Logic] Send/Return/Room plugin: Renaming a track reset some parameters
- [AU] SPAT Send plugin properties no retained

# Known Issues
- AAX PI - Win10 -  Renaming an instance cut the send of the SPAT send. Re-enable the LAP to fix it.
- AU - Logic - Changing a send plugin from slot with GUI opened may crash
- Bad GUI initialization on Windows
- Broadcast OSC messages are not received on macOS. Have to use unicast
- Core Audio headphones and loudspeakers cannot be used without an aggregate
- HOA preset input: selecting B-Format or Custom with SID sorting may only connect the first channel of the input block
- LAP - Tail reverb is not reported to the plugins when IO devices are "None" in SPAT Revolution
- OSC - Rotation X,Y and Z and Scale buttons aren't refreshed on automation and OSC message reception
- OSC - Selecting a source when receiving AED message blocked his azimuth and elevation
- PI - AAX - Renaming the send track in protools changes the corresponding source verb enable, early, cluster and tail
- Position are not sent when dumping all properties through OSC on opening a session
- S6L integration, SPAT Send track name is not retained properly and sent every time the UI opens (erasing your SPAT Source name).
- The second OSC output status is not retained in AAX / AAX VENUE.  Make sure to enable it after a reboot or an AAX host rack reset.
- VST - Pyramix - Crash when quiting session with SPAT Send and LAP enable
- VST - Pyramix/Ovation - Crash on reloading mixer with Send/Return with Pyramix versions earlier than 14 / Ovation versions earlier than 10.
- When multiple sources are selected, moving some "filtered" parameter like distance in the property panel may generate bad position values
- Win10 - /source/1/dump message doesn't work
- Windows - A process still running after quitting SPAT Revolution when ASIO4ALL is used as audio driver
- macOS - Reported latency is not accurate when Device In/Out are the same

