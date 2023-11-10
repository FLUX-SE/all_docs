# Build 23.08.0.50341 {.unnumbered}

## New Features

- New record feature, allowing the audio record of the inputs, rooms, masters, transcoders and outputs audio, directly into SPAT.
- 3D View - New Nebula scaling option to auto-scale the nebula outside the speaker arrangement
- 3D View - New auto-hide option to hide sources without signal. The threshold can be chosen on the Preferences page
- 3D View - New zone alpha option to fade the protection and efficiency zones

## Improvements

- 3D view - Increase scale max value to 1000%
- OSC - Add broadcast IP address on macOS to allow to listen to broadcast messages
- OSC - Send source color
- Preferences - Improve preferences version handling, to limit the removal of the preferences when changing version.
- Preferences - Add a warning to propose deleting the preferences when coming from a more recent version
- Snapshot - New action which deletes all unused snapshot history, in order to have lighter files
- Speaker arrangement - Add category with Apple and MPEG-H speaker configurations
- UI - Hide tracking parameters when the tracking is disabled

## Bugs

- 3D View - Impossible to move a source muted: it is not considered as part of the selection
- 3D view - Issue with background file on the room page
- 3D View - Speaker orientation follows the (0,0) point when moving the listener
- 3D view - Speaker orientation follows the Center and not the listener when moving the listener
- 3D view - When sources are solo, groups and presence infos of other sources alpha are not managed
- Ambix decoding preset sometimes loads N3D instead of SN3D
- Audio-Technica BP3600 microphone arrangement routing is not correct
- Changing a source's speaker arrangement causes bad init of the sub-sources
- OSC - "/source/-1/dump" is caught as an invalid message
- OSC - /source/1/select/? does not work
- OSC - A snapshot count should be sent when deleting a snapshot
- OSC - Color and name are not sent when receiving "/source/[index]/dump"
- OSC - Crash when receiving "/source/-1/select"
- OSC - Issue with remote number and group
- OSC - Object name is sent before the object count
- OSC - On socket change, snapshot properties should be sent as other objects
- OSC - On source channel count change, OSC messages are sent for sub sources
- OSC - Selecting an OSC Output socket on the preferences should not dump all the parameters
- OSC - Snapshot next and previous should be sent on session opening
- OSC - Snapshots should send their properties on creation
- OSC - Some snapshot OSC message to ask for a property does not work
- OSC - Source select message does not send index as argument but -1
- OSC - Wildcard as index does not work for rooms
- Room view - Cmd/Ctrl+A select all sources even if there are some filters on the source list
- SPAT Send - Nuendo - Write automation is not possible, on both OSC and LAP on Windows, and on LAP only on macOS.
- Setup - No scrollbar when moving some blocks on the setup page
- Setup - Reorder room does not reorder the top bar
- Setup - input config badly set from speaker editor for Input and Source blocks (crash for sources)
- Setup page - Changing the speaker setup category of a master or a transcoder does update the speaker setup list
- Setup page - Issue with object naming and number
- Setup wizard - Speaker categories are not available
- Snapshot - A disabled snapshot can be recalled by the list on the snapshot toolbar
- Snapshot - It should be impossible to enter strings on snapshot timing
- Snapshot - Recall name of sources with snapshots does not work
- Snapshot - Reindex of snapshot does not work
- Snapshot - Remove some menu items
- Source list - Grouping sources open all groups
- Speaker editor - Duplicate and create a new speaker arrangement should trigger "custom" category field
- Speaker editor - Duplicating a speaker setup keeps the tag of the original setup
- Speaker editor - Group options should not be available when transforming speakers
- Speaker editor - It should be forbidden to delete a speaker setup used by other blocks
- Speaker editor - Sometimes, speakers are not unselected when clicking on another speaker, especially when the selected speakers are not visible on the list
- Speaker editor - Speaker orientation should not change when editing speaker cartesian coordinate
- Speaker editor - Speaker autoscaling is too big
- Speaker editor - When moving down or up speakers, side-bar should follow, especially when the target is not visible
- Speaker editor - When opening the speaker arrangement, audio gets briefly interrupted
- Speakers category can be wrong for custom speakers
- UI - "Reset all" of sources does not update the panel for non-position properties
- UI - Spreading and LFE are shown after collapsing and uncollapsing the panel

## Known Issues

- App - Bad GUI initialization on Windows with intel graphics chipsets
- App - Core Audio headphones and loudspeakers cannot be used without an aggregate
- Nuendo - Room plugin cannot write automation
- PI - AAX - Renaming the send track in protools cuts the audio if verb switches are not the default one.
- S6L integration -  SPAT Send track name is not retained properly and sent every time the UI opens (erasing your SPAT Source name).
- SPAT Send -  Renaming an instance cut the audio in Protools/Windows10. Have to re-enable the LAP to fix

- App - A process still running after quitting SPAT Revolution when ASIO4ALL is used as audio driver on Windows
- Display issues when OS display scaling are under the default resolution
- On reverb preset density change, sound is cut
- SPAT Plugins - Crash on reloading mixer with Pyramix versions earlier than 14 & Ovation versions earlier than 10
- SPAT Plugins - Tail reverb is not reported to the plugins in LAP when IO devices are "None" in SPAT Revolution
- SPAT plugins - The second OSC output status is not retained in AAX / AAX VENUE after a reboot or an AAX host rack reset