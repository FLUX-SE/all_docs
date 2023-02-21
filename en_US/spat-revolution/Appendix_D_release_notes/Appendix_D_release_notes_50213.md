# Release Notes - Build 22.02.0.50206

## Improvements
- German localisation update
- OSC - Add "SPAT Remote server" OSC preset
- OSC - Send Select OSC message on source selection and unselection
- Spanish localisation update
- Speaker editor - Add "up" and "down" orientation preset for speaker

## Bugs
- Core - Changing settings WFS may stop the audio engine
- Empty OSC messages since 50208
- OSC - /room/1/name/? crash SPAT Revolution
- OSC - /source/1/dump message doesn't work on Windows10
- OSC - Global/project/... OSC command query & send are not working properly
- OSC - Some OSC In/Out Transformation do not working properly
- OSC - Some source config OSC messages are not working
- OSC - Unicode char or Korean char not supported in Table (Items/Speakers/Snapshot)
- Speaker editor - Delay/Gain compute can be wrong with triple lines of speakers
- Windows - Some UI refresh issues with the bottom of the window
 
## Known Issues

- Important - When sources are SPAT Send and a room has a scaling, selecting the source applying the scaling. Avoid using scaling with LAP (use loopback solution or audio bridge on macOS). 
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
