# Release Notes

## Build 21.12.0.50123 - Elixir

* Elixir - Several fixes on the UI
* Elixir - Automation is not read for toggle parameters.
* Elixir - Windows AAX - Refresh issue with two instances in ProTools


## Build 21.12.0.50114 - All plugins on macOS

**Bug fixes**

* Fix crashes with Ableton live macOS and VST plugins
* HEar AudioUnit - Ableton crashes when inserting a second instance
* HEar - Bypass is working in AAX
* Elixir - Crash when clicking on the settings button on Session version


## Build 21.11.0.50107 (HEar, IRCAM Verb)

NOTE: **CURRENTLY NOT COMPLIANT WITH ABLETON LIVE MACOS**

**Improvement**

* HEar - 5.1.4 & 5.0.4 now available

**Bug fixes**

* HEar - Fix meters refresh issue
* HEar - No verb on some presets
* HEar - Protools crashes when doing offline bounce on macOS

## FLUX:: Immersive - Plugins (including IRCAM Tools)  21.09
This release includes updates for all FLUX::Immersive plugin processing products with the exception of EVO Channel, Epure, IRCAM Trax, Studio Session.

NOTE: **CURRENTLY NOT COMPLIANT WITH ABLETON LIVE MACOS**

**Major optimizations**

* Apple computers Big Sur (new M1 chips) AU validation  
* Important updates to the Ircam Verb + Session
* Overall better handling of multichannel track setups such for Atmos.
(Ircam Hear, Verb and more)
* Automatic detection of track format / channel order for DAWs when possible.

### Build 21.9.0.50083

**Bug fixes**

* Apple computers Big Sur (new M1 chips) AU validation failing
* Empty GUI when close/reopen plugin - Windows 10 - UHD630 graphics
* AudioUnit in Reaper - do not process audio when offline bounce
* Default preset not loaded correctly on instantiation of Verb + Verb Session
* Evo.Channel on Retina - Input and Output Sliders badly scaled
* Incompatible AudioUnit issue in Apple Final Cut Pro
* Plugins: Recall Preset Flags (e.g. “All but setup”) recall always everything
* Preset Manager - UI issue with small plugins when a preset has been created
* Ircam Verb Session reload in VST with audio interruption
* VST Plugins Session not correctly reloaded if it integrate an IO configuration change
* Verb session - Dry/wet not applied in offline render
* Verb v3 Atmos crash on AAX
* Verb: AU validation failed on Apple M1
* Verb: LFE not disabled by default on ProTools
* Verb: Recall Preset may be not correct with double click inside the preset manager
* Verb: disabled channel is not re-injected according to dry/wet parameter (100 % wet means muted)
* Verb: init issue with Nuendo
* AAX - Some plugins - Crash on Mac / No GUI on Windows
* Overall reliability / stability fixes.
* Plugin size not correct
* Potential plugins crash when opening UI


## FLUX:: Immersive - Plugins (including IRCAM Tools)  20.12

This major release includes updates for all **FLUX::Immersive** products with the exception of IRCAM Spat V3 legacy product. Please refer to Spat V3 - Spat Revolution crossgrade options.  

**Major optimizations**

* HiDPI / Retina support + display enhancements and fixes
* Page Table unification for **Avid Control**, S1, S3, S4, S6 and S6L.
* OSC Control for plugins.
* **IRCAM Verb** support for Dolby Atmos, Multichannel support up to 16 channels
* **IRCAM Hear** - Multichannel stability improvement, Now up to 10 channels. (Dolby Atmos 7.1.2)
* **IRCAM Tools** - Audio I/O Matrix and Multichannel enhancement
* Most plugins support of 8 channel.
* 16 channel support for **Bittersweet Pro, Evo In and Evo Channel**


### Build 20.12.0.49880

**Bug fixes**

Core:

* BSPro - Latency report issue (AAX)
* IRCAM TRAX Tr - Latency report issue
* IRCAM Verb - Wrong initialization value for Reverb density
* IRCAM Verb -Dry signal still goes out in disabled channels when wet is 100%
* All Pure Dynamics PI + Alchemist - Wrong Thresholds initialization values
* AAX "monolithic" are broken like Hear, TRAX etc...
* Almost all AAX plugins don't reload parameters from 47856 version session.
* Pure Limiter - Diff feature bypassed the input gain.
* Pure Limiter - Inverted sidechain filters.
* Any plugin except Evo Channel - Research Presets resets when click on a preset.
* Evo channel - Wrong values when reloading touch section.


UI:

* Current preset name disappear on re-opening GUI or session

## Known Issues

* Wavelab "Sample rate not supported" when a plugin is inserted on a clip, track or output section.
* TRAX Tr  - Learn frequencies display wrong values (AAX only).
* Hear - Internal config labels change when modify LFE input config from routing matrix.
* When using OSC on a plugin in Pro Tools, a chrash will occur if you change/move FX insert slots
