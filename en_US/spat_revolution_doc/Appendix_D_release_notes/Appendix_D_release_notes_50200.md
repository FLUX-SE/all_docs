# Release Notes - Build 22.02.0.50151

## New Features

- New parameters to enable or disable source's automation, OSC remote, or snapshots
- New Items page to ease items overview and edition
- Speaker editor - Add "fix automatic orientation"  and "Set chosen orientation" actions
- Speaker editor - New delay computation management dialog
- Setup page - Add manual activation/deactivation of items
- Add "SR Essential compatibility" mode and session check to SR Ultimate
- OSC - Add name to OSC slot
- OSC - Add an option to display the invalid messages for easier debugging
  New Snapshot page to ease snapshot overview and edition
- SPAT Send - Add an “input delay” parameter in the plugin, used for the delay compensation mechanism in SR
- Add delay setting on Input items, also manageable via a new “Input wizard delay”

## Improvements
- New shortcut to create a snapshot: Ctrl+Alt+Space
- Speaker editor - Allow duplicating the speaker before computing delay and gains
- Speaker editor - Add a warning when a factory preset is selected
- Update dialog buttons order
- 3D View - The background now follows the color theme
- Speaker editor - Automatic scale added to the 3D view depending on max speaker distance
- DSP - Parallel computing improvements: more robust and efficient
- DSP - Send to Analyzer feature improved: Audio processing performance with less jitter
- Speaker editor - Improved performances on panning type compatibility check
- Preferences - Add pre or post speaker’s "Mute/Solo" option for Speaker test signal
- Room - Add solo for speaker
- Speaker editor  - Complete overhaul with multiselection, new UI for a safer and faster dialog
- Speaker editor - Now proposes to homogenize speakers' position after spherical alignment
- Room - Generator on room output channels is now after room gain and mute
- SPAT Plug-ins - Now allow the same index on different plug-ins
- Speaker editor - Take speakers' orientation into account in delays computation
- SR Essential - Enable/disable items depending on compatibility instead of deleting them
- SR Essential - Allows drag & drop and manual connection
- SR Essential - Allows adding items manually
- DSP - macOS audio workgroup implementation, allowing better threading optimization
- SPAT Send - Update distance default value according to barycentre in SPAT Revolution
- Preferences - Update engine preferred number of cores for Apple M1 processors
- 3D view - Remove the "source to listener" line when “presence info” display option is off

## Bugs
- Meters - Large multi-channel meters are badly displayed
- Speaker editor - Applying a speaker setup on a duplicated setup arrangement overrides the original speaker setup
- 3D View - Virtual source barycenter is not updated when resetting position or all
- 3D View - Virtual source barycenter is not recomputed after applying a transformation
- Room - Source transformation can only be done one time
- App - Crash when exiting while the speaker editor is open
- DSP - Avoid clicks when muting and soloing an item
- DSP - Cached reverb tail may be heard when un-muting a source
- 3D View - The source spheres may blink when no signal
- Room - Reverb factory preset can't be recalled on Windows
- Room - Sliders may have random and undesired behaviour
- OSC - /room/1/speaker/(k)/ messages  doesn't accept wildcard (*) or range
- OSC - Reactivating an OSC socket resets its IP and port address
- Speaker Editor - Issue with scrollbar when adding speakers
- Speaker Editor - Random crashes when using the transform
- UI - Display issue with list controls and dialogs
- Room - Display issue with source list scrollbar
- 3D View - Clamped sources may disappear after a while
- 3D View - Efficiency zone display issues when moving the listener
- 3D View - Efficiency zone processing issues when linear setups are non-aligned to an axis
- Snapshots - Distance scaling should not be included in snapshot recall
- Setup page - Remove items does not refresh the scroll bar
- Setup page - No more horizontal scrollbar after using the "RebuildGUI" function

