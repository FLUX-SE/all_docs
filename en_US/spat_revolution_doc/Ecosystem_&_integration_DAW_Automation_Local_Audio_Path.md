# SPAT PI : Local audio path

If you are deploying a setup for a single computer, you can use a software method to move multiple channels of audio from the DAW running on the same machine as the SPAT Revolution spatialization environment.
This is not normally a trivial task, and many previous solutions have been prone to drop-outs and other problems.

In answer to this challenge, FLUX:: has developed an audio pipe technology. Called "Local Audio Path" (LAP) it is available in the two (2) of the three (3) plug-ins available in AU, VST and AAX format.

The SPAT plug-ins offer a straightforward way to integrate the SPAT Revolution spatialization environment with other digital audio workstation environments - _running on the same machine._

![](include/SpatRevolution_UserGuide_-132.jpg)

**SPAT Send**

- Send multichannel audio from a DAW track to a SPAT Send input modules

- Enable DAW automation of all Source-related parameters

- Index selects which Virtual Source to Automate

**SPAT Return**

- Return multichannel audio from a SPAT Return output module to a DAW track

- Enable DAW automation for Return parameters

- Index selects which Master to automate


**SPAT Room**

- Enable DAW automation of all Room-related parameters

- Index selects which Virtual Room to Automate

## Setting up a local audio path connection

In order for the audio software integration to function correctly, the user needs to
take into account certain principles of configurations.

!> **Sample Rate and buffer size must match in both SPAT and the Plug-in Host**

You can configure these settings in the SPAT Revolution Preferences, and matching settings also need to be configured in the host DAW Preferences.

> If Sample Rate and buffer size don't match in SPAT Revolution, double-clicking over the "Sync section" at left bottom will automatically adjust them.  

![](include/SpatRevolution_UserGuide_-134.jpg)

Additionally, there is an IO configuration setting inside each plug-in, accessible from the small 'cogs' icon.
Set the IO Channel Count for each of the plug-ins this way.
Each plug-in instance can carry up to 64 channels to and from SPAT.
Once you have selected the channel count, _Enable_ the software routing using the _Local audio path_ switch.

![](include/SpatRevolution_UserGuide_-136.jpg)

If SPAT is running, then a SEND or RETURN IO module will automatically appear in the _Environment Setup_ labeled with the _Track Name_ of the SPAT plug-in, and set to the channel count you have configured in the plug-in. If all is well configuration wise, and a successful local audio stream has been established, the Send and Return modules will have a small green indicator.

> _On some machines, you need to use the TAB key to register a new Track Name or IP address change in a Spat Plug in._

## Plug-ins parameters

**Index** - Relates the Plug-in automation to a [Virtual Source](6_Spat_Environment_6_4_Inputs_6_4_Inputs)
- INDEX is assigned automatically and can only be changed manually to an index number that is not yet in use by another SPAT Plug In.

**Position mode** - In Send only, choose the recorded and read coordinate mode.  

**Local audio path** - Enable the inter-application software stream.

**Thru** - In Send only, choose if you do not want to mute the send audio through the plug-in.

**OSC Second Output** - Set up a second parallel OSC destination.

**Report Latency** - Activate latency compensation reporting for the DAW.

**Override** - In Return only, override the DAW input path.

## DAW routing priority

In order to make sure that no sync error can happen betwen Spat Revolution and the DAW of your choice, it is obligatory to make sure that **each track containing a Spat Send plug-in have to be routed to every and each track containing a Spat Return plug-in.**

This routing forced digital audio workstations to process *Spat Send* plug-ins **before** *Spat Return* ones. Without this prioritization, you can end up in a situation where the DAW call for samples from Spat that have never been sent. This led to sync errors and most likely to audio drop. This is an absolute golden rule when working with Spat Revolution and a DAW on the same computer.

!> **Be always sure that each track containing a Spat Send plug-in is routed to every and each track containing a Spat Return plug-in.**

For more DAW specific informations, please consult our [third-party integration](Third_Party_Integration.md) section.

## Dealing with DAW CPU optimizations

Some DAWs, like REAPER, use some technic to reduce the load of VST plug-ins on the CPU. One common trick is to process an audio track ahead of time and then delay the buffer to play it back at the intended moment. It is called anticipative processing. This is often very efficient and can drastically reduce the CPU load (up to 30-50% !)

Other DAW, like Ableton live, put plug-in that does not receive or send any audio in an off-line state." Although it is not necessary displayed to the user, this can create some major issue when working with Spat Revolution PI.

Be sure to consult our [third-party integration](Third_Party_Integration.md) section for more DAW specific informations.