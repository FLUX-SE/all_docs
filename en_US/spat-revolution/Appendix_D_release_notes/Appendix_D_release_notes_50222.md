# Release Notes - Build 22.10.0.50222

# Bugs fixes
- SPAT Send - Fix: Selection is recorded and played back
- macOS - Fix SPAT crashes in some circumstances (native AVB on macOS, ...) depending of the OS version.
- 
# Known Issues
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
