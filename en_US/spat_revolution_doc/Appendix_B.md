# Troubleshooting

## Sync issues with LAP

When using Local Audio Path (LAP), sync issues can be identified when sync indicators in Spat Revolution (bottom left corner) turns to red. This can in some cases result in clicks, noises, and or loss of sound.

![Sync Error](include/Sync_Error_1.png)

***All 'green' indicators mean the sync is correct.***

![Synk OK](include/Sync.png)

Thanks to the DAW templates provided this should not happen unless the required routing is not in place (session modified, routing unpatched). To work properly, the Spat SEND plugins instances must be processed by the DAW before the Spat return plugin instances.

To force the DAW to process this way, each track with SEND plugin inserted must be routed (directly or indirectly) to the 'return' tracks, using DAW internal routing (ex: dummy busses in ProTools, direct routing in Reaper). 

> CPU performance overloading could generate some sync errors.

> You can reset the sync error by double-clicking on the sync error counter.

If you see red indicators on the bottom left corner section of Spat, this could be related to having a mismatch in Frame size  (buffer) or sample rate between the DAW and the Spat Revolution. 

Frame size (sometimes called Buffer Size or Block Size) should be matched in the host DAW and Spat Revolution. A red message would identify a different frame rate the host DAW. Simply double-clicking on **smp/f** message in error will automatically change you spat block size setup to match the incoming audio.

If the audio processing is too demanding for your computer at the current block size and sample rate, you may also experience dropouts and sync problems due to CPU overload. 

If you are experiencing lost sync when using Local Audio:

* Increase the block size in the Spat preferences.
* Save your project and Quit Spat Revolution.
* Change the block size in your host DAW to match the new setting.
* Reopen Spat Revolution.


Also, please be sure to read carefully the detailed advice of the various DAW in the **[Third party integration](Third_Party_Integration.md)** section of this guide and refer to the various provided templates.


## Spat SEND and RETURN DAW

When dealing with Spat SEND and RETURN, you do not need to have an hardware device configured in the preference. In this case, Spat Revolution will automatically adapt it's sample rate and synchronize to the incoming software audio I/O. 

Sync issues encountered in Spat Revolution when using the Local Audio Path workflow can often be fixed when following some guidelines for routing order inside the DAW. Thanks to the various DAW templates, this is done for the users.

To work properly, the SEND plug-ins instances must be processed by the DAW **before** the RETURN plug-in instances. To force the DAW to process this way, each track with SEND plug-in inserted must be routed (directly or indirectly) to the tracks hosting a RETURN plugin, using DAW internal routing.

Following are 4 examples of recommended practice with DAW routing, which should cover the main use cases. If your problems persist even after implementing these suggestions, don't hesitate to drop us a line at FLUX:: support.

> **PLEASE NOTE:** _In the current version 20.12, the mixing of HARDWARE inputs and LOCAL AUDIO PATH may report a sync loss, as Spat Revolution cannot guarantee correct sync in this scenario. Proceed with caution if this is unavoidable. This is not officially supported._


**Spat RETURN plug-in on master track**

In simple projects, when having a single return plugin on a master track, you should not encounter any sync issue as long as each SEND track is routed to the master.

![](include/SpatRevolution_UserGuide_-346.png)


**Single RETURN on an AUX track**

Issues may happen when return is inserted on an AUX track. Make sure that each SEND track is routed to the AUX track (RETURN track). Here is an example using AUX send (see example below).

![](include/SpatRevolution_UserGuide_-347.png)

> ★ You might achieve the same by routing the track outputs to the bus.


**Several RETURN on AUX tracks**

When several RETURN tracks are needed (for example several rooms to render from Spat Revolution, and/or several output stream formats), you will have to route each SEND track to each RETURN track, using the same technique.

As it can quickly become complicated as the project grows, in the following example, the use of a 'dummy' track, avoids using several AUX sends on the 'SEND 'tracks. It makes routing clearer and easier to implement on larger projects. The 'dummy' AUX track is routed to all the RETURN tracks (using AUX sends or patching the output to a multichannel/multi-format 'dummy' bus). 

Then, simply route all your SEND tracks to this 'dummy' track by simply patching it's output to the multichannel/multi-format 'dummy' bus or via the use of aux send.

![](include/SpatRevolution_UserGuide_-349.png)


**Using specific tracks as your Spat source/object**

One of the good practice to deal with the source/object you are sending for external rendering is to use tracks as dedicated objects. (similar to many object-based mixing workflows proposed by DAW). This way you can leave the session audio tracks and their channel insertion as they are and simply send your audio track to the Spat SEND object track. This allows you to send a single audio track or multiple ones (stem) to the Spat SEND object track.

Doing this can segments your external rendering routing and is highly recommended to prevent audio track delay compensation systems in DAW to come and jeopardize the audio synchronisation between the DAW and Spat. This as well ensures that your audio track automation on levels for example is respected as some DAWs don't have post-fader insertion (a pre-fader insert with Spat SEND PI will send audio to Spat Revolution prior to your fader automation).
 
![](include/SpatRevolution_UserGuide_-351.png)

The above best practice ensures as well that you keep both the dry signal and the Spat RETURN signals independent (when the mix requires to switch easily from one to the other), add one object AUX track per audio track to be sent to Spat, and insert the SEND plug-in on these object AUX tracks.

This way, you keep the dry signal on the audio track's output.

## Clearing Shared Memory

Some users have experienced an issue where Spat SEND and RETURN plug-ins are
not cleared from the shared memory when used with certain third-party DAW hosts (or seen after DAW crashes). Although this should not happen and have been intensively improved in the latest releases of Spat Revolution, a **Clean Shared Memory** option can fix some connection issues (ghost modules, duplicated modules, modules not connecting when opening session). This sometimes can be seen where Spat SEND and RETURN modules appear in the Spat setup page when there is no DAW host software running in the background. It can cause problems, when a host with plugins is launched and more SEND and RETURN plug-ins appear to be doubled.

Although rebooting the computer would fix this issue, the workaround if this is happening with your particular 3rd party software, is to invoke a special debug action called _Clean Shared Memory_. It is available by the *Help* menu _Help/Clean Shared Memory_

If this command is executed, Spat and the plug-in host will then need to be restarted.


## Performance issues

There are also some performance preferences that may help in the case that your host machine CPU is overloading and causing audio glitches.

* Lower UI frame rates.
* Turn the 'Nebula Alpha' to 0 in your Rooms.
* Lowering Reverb Density to 8x8 for all Rooms.
* Lower the automation rate via the engine preference
* Adjust the Multi-Core Parallel Computation Algorithm via the engine preference.

To lower UI graphic frame rates, go to the Spat preferences. 
Changing the Edit Frame Rate will reduce pressure on the graphics updates and important when a host machine dœs not have dedicated GPU and CPU resources.

The latest release of Spat Revolution includes a new Multi-Core Parallel Computation Algorithm. In the preference of Spat Revolution, in the Engine section at the bottom, you can choose various computer hardware presets that match your setup. This is a simple step to tuning the computation algorithm.

If you are still experiencing performance and sync issues, you may want to ensure that your hardware configuration meets the **[Spat Revolution requirements and recommendations](Appendix_A.md)**

Consider as well to kill as many processes not required as possible (Wi-Fi/internet, background services and activity).


## Display Performance (CPU) measurements

Included in release version 20.12 is the ability to display performance (CPU) measurements. This can be done in the **Help** menu **Display Performance** option. This can be accesses as well with shortcut <code>Shift + Option + Command + P</code>.

![Display Performance](include/display_performance.png)


## Engine Parallel Processing profile

Spat Revolution v20.12 introduced a new Multi-Core Parallel Computation Algorithm that is key to optimizing your hardware. This is for both the automation and the audio processing. The **Display Performance** option stated above will be our best ally to monitor the results. This can be accessed with shortcut <code>Shift + Option + Command + P.</code>

The Engine Preference section includes 3 Profiles for parallel processing 
![New updated Engine Preference Section](include/engine_profile_1.png)

**Automation Rate** provides the ability to set the refresh rate (frequency) of the automation. By default, we use 10.0 ms (100.00 fps). This can be decreased to lower the frequency if you see that automation is becoming a burden for your system with such a fast refresh.

![Automation Rate Optimization](include/engine_profile_4.png)

**Max Number of Core** is your ability to make more or fewer cores available to the Spat Revolution algorithm. By default, it will be at your number of native core. Not hyper-threading. This can be increased or reduced. Watch not to take all cores for a multitasking computers.

![Max Number Of Cores - Engine Preference](include/engine_profile_3.png)

Lastly are the 3 presets for you to choose from. 

Parallel Profile:

* **Max distribution** is for spreading the load as much as possible to all cores mainly with Desktop systems and dedicated real-time spat computers.
  
* **Favor First Core**  is a typical preset for Laptop computers where we find that loading cores as much as possible allows us to get out of the way of some of the laptop optimization (power and cooling) that are playing with available processing speed.

* **Balanced Distribution** is a preset somehow in the middle. It intends to be a balance between both above options.

![Parallel Processing Algo Profile](include/engine_profile_2.png)

---


---
