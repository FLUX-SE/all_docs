# Build 24.05.0.50377 {.unnumbered}

## Improvements

- 3D View - Add independent scaling for sources and speakers
- 3D View - Add option to display only virtual or real speaker
- Core - Refresh audio device when displaying the audio device list
- Core - Refresh available network IP when displaying the ip address list
- If a crash occurs when loading a session during the opening of SPAT Revolution, propose to open it without loading the session
- If the preferences file is corrupted, open SPAT with default preferences
- OSC - Add OSC message to arm/unarm objects, to begin and stop the record
- VST3 - Support up to 64 channels for SPAT Send, Room and Return

## Bugs

- "Create New Session" and "New Empty Session" should create a new json file for the session
- 3D View - Background should be visible when loading a file
- Core - Crash with specific session at low block size
- Core - Issue when a HOA 3D is connected to a HOA 2D: the channels are not automatically connected
- Core - Jump when moving multi-selection with mono sources with scaling
- Core - Session crash when processing audio
- Core - Sound freezes after deactivating an input block
- Core - When a group is folded, the audio of the subsources is not refreshed when moving the listener's head yaw.
- Core - rttrPM does not work anymore
- Group - Adding a group to one of his grandchildren should not be allowed / lead to a crash
- Group - Fold status is not saved and reloaded with the session
- Group - Groups should be visible when some children are not muted
- Group - Impossible to add or delete several sources to/from a group via the source list
- OSC - Next and previous snapshot name should be sent on session opening, even if empty
- OSC - Port change is not taken into account if the difference is less than 10
- OSC - Position is not scaled according to the distance scaling is sent without position packing
- OSC - Receiving an OSC message which updates name of a room does not update the name on the top bar
- OSC - Snapshot options messages do not update the grid; need to move the mouse over it to update it.
- Save the license agreement as PDF does not work
- Send - OSC - Source position XYZ automation is not written
- Send - Pro tools - Crash when desinstantiating or moving send plugin
- Setup - Issue with speaker category and master transcoder
- Setup - Transcoder should not allow not existing transcode (example: from Channel-Based to Transaural)
- Setup page - "Disconnect between selected" action does not work if the target is selected before the source (output before master for example)
- Snapshot - Closing a session does not reinitialize global recall parameters
- Snapshot - Quickly recalling snapshots with room scope freeze SPAT Revolution with a particular session
- Speaker arrangement - When an unknown speaker arrangement is loaded with a session, the speaker arrangement is override if the block speaker arrangement is changed
- Speaker config - Ease import should take into account length unit
- UI - HOA decoder crossover is not centered
- UI - Refresh UI can freeze on MacBook Pro , on battery, using session with high number of sources (like 256)
- UI - Source panel is not updated when selecting sources from the 3D view and number of items does not change
- UI - When opening a session on the home page, the recent session is not updated
- UI - Wrong default window size initialization

## Known Issues

- App - Bad GUI initialization on Windows with intel graphics chipsets
- App - Core Audio headphones and loudspeakers cannot be used without an aggregate
- PI - AAX - Renaming the send track in protools cuts the audio if verb switches are not the default one.
- S6L integration -  SPAT Send track name is not retained properly and sent every time the UI opens (erasing your SPAT Source name).
- SPAT Send -  Renaming an instance cut the audio in Protools/Windows10. Have to re-enable the LAP to fix

- App - A process still running after quitting SPAT Revolution when ASIO4ALL is used as audio driver on Windows
- Display issues when OS display scaling is under the default resolution
- On reverb preset density change, sound is cut
- SPAT Plugins - Crash on reloading mixer with Pyramix versions earlier than 14 & Ovation versions earlier than 10
- SPAT Plugins - Tail reverb is not reported to the plugins in LAP when IO devices are "None" in SPAT Revolution
- SPAT plugins - The second OSC output status is not retained in AAX / AAX VENUE after a reboot or an AAX host rack reset
