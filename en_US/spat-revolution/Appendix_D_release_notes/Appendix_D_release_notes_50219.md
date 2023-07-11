# Release Notes - Build 22.10.0.50219

## Improvement

- Speaker editor - Cartesian delay computation for up/down speakers

## Bugs fixes
- 3D view - Issue with scale of source when an automatic scaling is applied on the speaker editor
- Grid - Double-clicking on boolean shows "true/false" instead of changing the state
- LAP - Distance Scaling is re-apply on source selection
- Room page - Collapsing a panel on the source or room panel does not work after rebuilding the GUI.
- Setup page - Issues with translation and items inspector
- Snapshot - Drop audio when creating, duplicating, moving up and down or removing a snapshot
- Snapshot - Issues with Relative recall and scaling
- Snapshot - Issues with snapshot list and version list when rebuilding the GUI
- Snapshot bar - Hiding the snapshot bar does not hide the background bar
- Speaker editor - Delays are wrongly applied when speakers have elevation and are not oriented toward the listener
- UI - When rebuilding the GUI, some 3D View parameters are not reapplied (scaling, output and number of view)
 
## Known Issues
- App - A process still running after quitting SPAT Revolution when ASIO4ALL is used as audio driver on Windows
- App - Bad GUI initialization on Windows with intel graphics chipsets
- App - Core Audio headphones and loudspeakers cannot be used without an aggregate
- App - Reported latency is not accurate when Device In/Out are the same on macOS
- OSC - Broadcast OSC messages are not received on macOS. Have to use unicast
- OSC - Position are not sent when dumping all properties through OSC on opening a session
- OSC - Rotation X,Y and Z buttons aren't refreshed on automation and OSC message reception
- OSC - Selecting a source when receiving AED message blocked his azimuth and elevation
- PI - AAX - Renaming the send track in protools changes the corresponding source verb enable, early, cluster and tail
- Room - When multiple sources are selected, moving some "filtered" parameter like distance in the property panel may generate bad position values
- S6L integration -  SPAT Send track name is not retained properly and sent every time the UI opens (erasing your SPAT Source name).
- SPAT Plugins - Crash on reloading mixer with Pyramix versions earlier than 14 & Ovation versions earlier than 10
- SPAT Plugins - Tail reverb is not reported to the plugins in LAP when IO devices are "None" in SPAT Revolution
- SPAT Send -  Renaming an instance cut the audio in Protools/Windows10. Have to re-enable the LAP to fix
- SPAT Send - Crash Pyramix when closing session if LAP enabled
- SPAT plugins - The second OSC output status is not retained in AAX / AAX VENUE after a reboot or an AAX host rack reset
- Setup page - Connection issue with transcoders when input HOA preset is B-Format or Custom with SID sorting
