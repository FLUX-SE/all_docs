# Release Notes - Build 22.02.0.50151

## Improvements

- Performance - Optimize presence and clamping computation and rendering

## Bugs fixes
- Speaker editor - Import from EASE is broken
- Setup page - The diagram scrollbar is not initialized when loading a session from the Home Page
- Crash with multi-canal sources in multiple rooms when disconnecting inputs, causing crash on quitting SPAT or closing session
- Room Gain and "Mute sources outside Efficiency Zone" do not affect LFEs

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