# Build 24.07.0.50398 {.unnumbered}

## Improvements

- JBL Venue Synthesis - Import speaker array from VSYN files

## Bugs

- DSP - Channel not processed when LFE in Source and Room
- No HOA on Multichannel-Return-PlugIn
- OSC preferences - UI issues on OSC slot
- Record - File issue when size is higher than 4.31gb
- UI - Tooltips are not shown anymore after Rebuilding the GUI
- Vu-meter - On the setup page, if the input and output of a block are the same config, the output meter displays the input one


## Known Issues

### Important

- App - A process still running after quitting SPAT Revolution when ASIO4ALL is used as an audio driver on Windows
- Display issues when OS display scaling is under the default resolution
- On reverb preset density change, sound is cut
- SPAT Plugins - Crash on reloading mixer with Pyramix versions earlier than 14 & Ovation versions earlier than 10
- SPAT Plugins - Tail reverb is not reported to the plugins in LAP when IO devices are "None" in SPAT Revolution
- SPAT plugins - The second OSC output status is not retained in AAX / AAX VENUE after a reboot or an AAX host rack reset

### Most Important


- App - Bad GUI initialization on Windows with intel graphics chipsets
- App - Core Audio headphones and loudspeakers cannot be used without an aggregate
- PI - AAX - Renaming the send track in protools cuts the audio if verb switches are not the default one.
- S6L integration - SPAT Send track name is not retained properly and sent every time the UI opens (erasing your SPAT Source name).
- SPAT Send - Renaming an instance cut the audio in Protools/Windows10. Have to re-enable the LAP to fix