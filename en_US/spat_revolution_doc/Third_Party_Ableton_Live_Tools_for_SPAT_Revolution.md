# **Ableton Live Tools for SPAT Revolution**

![Guide Cover](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/ableton_live_tools_picture_v1.png)

*Writen by ARSENE*

<p>&nbsp;</p>

This guide is also available as YouTube Videos: *playlist link*

<p>&nbsp;</p>

## Intro

<p>&nbsp;</p>

This is a complete guide and workflow with a set of custom-built Ableton Live Devices to increase significantly the compatibility between the DAW and SPAT Revolution.

We will focus on everything from downloading and installing the tools, setting them up, optimizing your computer, a complete description of the provided tools, and then the actual workflow and how to create an entire project in the most efficient way possible!

<p>&nbsp;</p>

### **Why using Ableton Live with SPAT Revolution?**

<p>&nbsp;</p>

Maybe Live is your main DAW and so the most obvious choice, this is the case for me and is also why I created this workflow in the first place, but I would also like to add, that Live is a great choice for anyone getting into creating, sound designing, etc… in an Immersive Audio Context. The capabilities of Ableton Live in terms of Automations are monstrous and so make this DAW an incredible tool for making great Immersive Audio content that will include lots of spatial movements and effects.

<p>&nbsp;</p>

### **Why using SPAT Revolution at all?**

<p>&nbsp;</p>

Immersive Audio is gaining more and more traction recently, Apple Spatial Audio, Dolby Atmos, Binaural, if you have been working in the music industry at any level this past few years you probably have heard of those.

So SPAT Revolution will help you to create and to expand ideas into a whole new world or should I say, into new spaces! 

And now after reading this guide, it will be as easy as making good old fader automation, as this is not just a do this and it will do that guide, but more of a do this and here why it does that, type of guide!

<p>&nbsp;</p>

This guide works as a base and not an “end all be all”, any ideas on how to improve this workflow, the devices provided, the templates, and any other type of feedback is very welcomed!

<p>&nbsp;</p>

⚠️ DISCLAIMER: This workflow has been specifically thought of for maximum compatibility between Ableton Live and SPAT Revolution under macOS. Some of the parts of this guide *(mainly the devices provided)* can still be applied to Windows or/and other DAWs.

<p>&nbsp;</p>

## Demo

<p>&nbsp;</p>

*video*

<p>&nbsp;</p>

<p>&nbsp;</p>

## Installation

<p>&nbsp;</p>

<p>&nbsp;</p>

### Tools

<p>&nbsp;</p>

If you have the 22.02.0.50xxx version of the SPAT Revolution ( or newer ) you already have the tools installed!

The Devices are installed here: *“/Library/Application Support/Flux/Ableton Live Devices/SPAT”*

Go to the folder location by opening the finder and use the the shortcut: *cmd+shift+G*

And copy-paste this address to get to the folder where the tools are: *( without the quotes )*

*“/Library/Application Support/Flux/Ableton Live Devices/SPAT”*

![Go to Folder](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/go_to_folder.gif)

<p>&nbsp;</p>

⚠️ Please do not change the location of this folder ⚠️

<p>&nbsp;</p>

To go faster later, you can add this folder to your Finder’s sidebar:

![Sidebar Finder](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/sidebar_finder.gif)

<p>&nbsp;</p>

### Virtual Audio Driver

<p>&nbsp;</p>

In order for this workflow to work, we will also need to get some Virtual Audio Drivers, to route audio from Live to SPAT Revolution.

*( If you are already familiar with SPAT Revolution, yes we are not going to use the traditional Local Audio Path option inside the SPAT plugins )*

For our Virtual Audio Driver, **BlackHole** from **Existential Audio audio** is my preferred choice as it is simple to install, has many options in terms of channel count, is free, and is open-source!

You can also have all the different versions *(2ch/16ch/64ch)* installed at the same time and have a different use for them simultaneously. 
We will see later in the guide that there are many ways this can be very helpful and how to take advantage of that, So my advice is to install them all.

**Get BlackHole Here:** [https://existential.audio/blackhole](https://existential.audio/blackhole)

*If you have some other Virtual Audio Drivers that do the same thing you don’t have to get BlackHole of course, or even if you plan to have a dual computer setup, more on that later.*

<p>&nbsp;</p>

### Useful addition:

<p>&nbsp;</p>

Software such as **Loopback** from **Rogue Amoeba** can be very useful to route audio between our multiple devices/apps but is absolutely not Essential to this workflow, as we can achieve the same result with Aggregate and Multi-Output devices that you can make yourself inside the **“AUDIO MIDI SETUP”** of macOS.

![Loopback](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/loopback.png)

**Loopback:** [https://rogueamoeba.com/loopback](https://rogueamoeba.com/loopback)

<p>&nbsp;</p>

❗️ Don’t forget to restart your mac after installing all that.❗️

<p>&nbsp;</p>

## Optimization

<p>&nbsp;</p>

Now that everything is installed let's optimize a few parameters in your mac before getting into the setup.

When working with SPAT Revolution, and this can extend to any other audio work, you do not want any interference or background apps refreshing that would consume even the tiniest bit of CPU, so disabling Bluetooth, Wifi, as well as AirDrop are a great way to start and very simple to do.

You can make it even more simply using the provided Shortcuts package I made to do just that. They are located in the same folder as the other device so: *“/Library/Application Support/Flux/Ableton Live Devices/SPAT/macOS Shortcuts”*

<p>&nbsp;</p>

What are Shortcuts?

Shortcuts is simply an app *(native in macOS)* that lets you combine multiple steps across multiple apps to create powerful task automations.
To add the Shortcuts I made, simply double click each of them and select the "Add Shortcut" button.

![Shortcut Button](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/shortcut_button.png)

You will have 3 shortcuts available:

- **SPAT MODE ON:** Will disable WIFI, Bluetooth, AirDrop, and start-up SPAT Revolution if it is not already running

- **SPAT MODE ON:** With WIFI: all the same as the previous one but will let the wifi on if you are planning to use OSC control devices via wifi

- **SPAT MODE OFF:** Will start back the WIFI, Bluetooth, and AirDrop

Those shortcuts are very simple to make using the Shortcuts app inside macOS if you want to modify them or make them yourself:

![Shortcut Compo](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/shortcut_compo.png)

Once added they should appear in your top bar for easy access:

![Top Bar Shortcut](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/top_bar_shortcut.png)

<p>&nbsp;</p>

Of course you do not have to do this at all, everything else should work properly anyway, this is simply to save you a bit of CPU.

<p>&nbsp;</p>

## Setup

<p>&nbsp;</p>

Before getting into the workflow we need to set up just a few things inside Live and SPAT Revolution.

So open Ableton Live and configure the following:

- Set BlackHole as your Output Device and enable all the channels of the driver

![Live Output Setup](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/output_setup.gif)

You can do this part when you need more channels I just prefer to do it all from the get go so it is done forever.

<p>&nbsp;</p>

- Add the SPAT folder containing the Tools using the “add folder” in the sidebar of Live:

![Add Folder in Live](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/add_folder_in_live.gif)

<p>&nbsp;</p>

- Place on a track all the devices and verify that they are all set on the following:

![OSC check](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/osc_check.gif)

<p>&nbsp;</p>

❗️ If you work with MIDI controller, I also highly recommend that you go into the Live Preferences, into the MIDI tab and change the Takeover Mode to Value Scaling so that parameters you play with don't get too jumpy❗️

![Value Scaling](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/value_scaling.png)

<p>&nbsp;</p>

- **SEND:**

![Send Check](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/send_check.png)

<p>&nbsp;</p>

- **RETURN:**

![Return Check](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/return_check.png)

<p>&nbsp;</p>

- **ROOM:**

![Room Check](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/room_check.png)

<p>&nbsp;</p>

### **SPAT:**

- Open SPAT Revolution and go to the Preference panel to set BlackHole as the input device and your preferred Output device: *(aka your physical output)*

![SPAT Input Output Setup](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/set_input_device.gif)

<p>&nbsp;</p>

- Activate the OSC and set up the connection:

![SPAT OSC Setup](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/enable_OSC.gif)

<p>&nbsp;</p>

### **What is OSC?**

<p>&nbsp;</p>

OSC or Open Sound Control is a network protocol that simply send text information to application that can receive and read them, we will be using them to send automation information from Live to SPAT Revolution using the SPAT plugins inside our devices. It has for great strenght to be incredibly fast!

Want to learn more about OSC? [wikipedia.org/wiki/Open_Sound_Control](wikipedia.org/wiki/Open_Sound_Control)

##Devices Description

None of those devices add any latency nor modification to the audio being passthrough them, so do not worry about adding them anywhere in your chain!

<p>&nbsp;</p>

## Devices

<p>&nbsp;</p>

### **SEND**

<p>&nbsp;</p>

This device lets you control some of the most useful parameters inside SPAT for the currently selected source.

You will need to set up the OSC connection Live and SPAT Revolution.
The default settings of the plugins should already be set to connect with the SPAT.

Please check the setup part of the guide to learn more about the OSC Connection.

![Send Device](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/send_description.png)

1. **DEFAULT:** Reset the parameters of the source to the default settings.
2. **Gain:** Configure the gain of the source.
3. **Azimuth:** Configure the angle between the source location and the center reference point.
4. **Elevation:** Configure the elevation angle of the source.
5. **Distance:** Configure the distance from the source to the center reference point.
6. **Room Presence:** Configure the prominence of the reverberation of the source.
7. **Presence:** Configure the prominence of the direct sound.
8. **Warmth:** Configure the presence of the low-frequency content part of the source.
9. **Brilliance:** Configure the presence of the high-frequency content part of the source.
10. **Enable:** Mute or un-mute the currently selected sources inside SPAT Revolution.
11. **Reverb:** Enable or disable the reverb inside SPAT Revolution for the currently selected source.
12. **Doppler:** Activate the Doppler effect for the currently selected source.
13. **SpatRevolution-Send-x64:** The original plugin on which the device is based, you can still access the individual parameters by un-folding the device or access the GUI by clicking the small key at the bottom.
14. **How to use:** This is a small notepad device with additional notes to prevent you from having to check back the guide if you forget something.
15. **Macro Controls:** Click this button to hide the encoder knobs of the device *(ref from n°2 to n°9)*
16. **Macro Variation:** Click this button to hide the macro variations *(ref to n°1)*
17. **Show/Hide Devices:** Click this button to hide everything after the encoder knobs. *(ref from n°10 to n°14)* 
18. **Info View:** This open/close Live’s built-in text info box, every parameter in the device has text info so this box might be useful if you need to know which does what.

<p>&nbsp;</p>

Additional Information❗️

- **Automations:**

Note that Live takes over the automation parameters inside the DAW so you can move the source inside SPAT and without the parameter moving inside Live, to fix this simply right-click the parameter in question and select: Remove Mapping to Send.

- **Moving the device in Live:**

Moving this device to another track instead of deleting and creating a new one will un-map the Enable, Reverb, and Doppler buttons, it is safer to delete the device first and then place a new one on the new track. It also could help you prevent any OSC Index related issues.

Duplicating the track will result in the same issue. So you should manually place the device on each new track you create, although you can still duplicate your track ( if needed ) and simply delete the device and place a new one on the track.

- **SEND - LAP:** (in the Alternate Versions folder)

The LAP version is exactly the same but is programmed to have the Local Audio Path activated right of the start if you prefer working with this instead of virtual audio drivers.

- **SEND - Advanced:** (in the Alternate Versions folder)

A more advanced version of the original device, with simply most of the available source settings inside SPAT Revolution.

- **SEND - LAP - Advanced:** (in the Alternate Versions folder)

A combo of the two versions described above, so Local Audio Path activated and more source control parameters.

<p>&nbsp;</p>

### **ROOM**

<p>&nbsp;</p>

This device allows you to quickly control the reverb, you will have a lot more parameters available if you go directly into the Reverb settings inside your Room.

You will need to set up the OSC connection Live and SPAT Revolution.
The default settings of the plugins should already be set to connect with the SPAT.

Please check the setup part of the guide to learn more about the OSC Connection.

![Room Device](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/room_description.png)

1. **DEFAULT:** Reset the parameters of the Room to the default settings.
2. **Gain:** Configure the gain of the room.
3. **Size:** Change the reverb size value.
4. **Liveness:** Configure the relative decay time of high-frequency content, relative to the reverberance.
5. **Cross HiFreq:** Configure the frequency above which decay time is determined by the Liveness setting.
6. **Reverb Gain:** Configure the reverb gain.
7. **Reverberance:** Change the reverberance value.
8. **Heavyness:** Configure the relative decay time of low-frequency content, relative to the reverberance.
9. **Cross LowFreq:** Configure the presence of the high-frequency content part of the source.
10. **Reverb:** Disable the reverb completely for the currently selected Room.
11. **Enable:** Mute or un-mute the currently selected room.
12. **Infinite:** Toggle the infinite more of the reverb, be careful with your gain when using this one.
13. **SpatRevolution-Room-x64:** The original plugin on which the device is based, you can still access the individual parameters by un-folding the device or access the GUI by clicking the small key at the bottom.
14. **How to use:** This is a small notepad device with additional notes to prevent you from having to check back the guide if you forget something.
15. **Macro Controls:** Click this button to hide the encoder knobs of the device *(ref from n°2 to n°9)*
16. **Macro Variation:** Click this button to hide the macro variations *(ref to n°1)*
17. **Show/Hide Devices:** Click this button to hide everything after the encoder knobs. *(ref from n°10 to n°14)*
18. **Info View:** This open/close Live’s built-in text info box, every parameter in the device has text info so this box might be useful if you need to know which does what.

<p>&nbsp;</p>

Additional Information❗️

- **Automations:**

Note that Live takes over the automation parameters inside the DAW so you can move the source inside SPAT and without the parameter moving inside Live to fix this simply right-click the parameter in question and select: Remove Mapping to Send.

- **Moving the device in Live:**

Moving this device to another track instead of deleting and creating a new one will un-map the Reverb, Enable, and Infinite buttons, it is safer to delete the device first and then place a new one on the new track. It also could help you prevent any OSC Index related issues.

Duplicating the track will result in the same issue. So if you have more than one Room, you should create a new track and place the ROOM device manually.

- **ROOM - Advanced:** (in the Alternate Versions folder)

A more advanced version of the original device, with simply most of the available reverb settings inside SPAT Revolution.

<p>&nbsp;</p>

### **RETURN**

<p>&nbsp;</p>

This device allows you to control the gain of the selected Master. You can find this block between the Room and the final output.

You will need to setup the OSC connection between Live and SPAT Revolution.
The default settings of the plugins should already be set to connect with the SPAT.

Please check the setup part of the guide to learn more about the OSC Connection.

![Return Device](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/return_description.png)

1. **Macro Variations:** Quick shortcuts to jump to specific values instead of using the encoder knob.
2. **Gain:** Set the gain of the currently selected Master.
3. **SpatRevolution-Return-x64:** The original plugin on which the device is based, you can still access the individual parameters by un-folding the device or access the GUI by clicking the small key at the bottom.
4. **How to use:** This is a small notepad device with additional notes to prevent you from having to check back the guide if you forget something.
5. **Macro Controls:** Click this button to hide the encoder knobs of the device *(ref to n°2)*
6. **Macro Variation:** Click this button to hide the macro variations *(ref to n°1)*
7. **Show/Hide Devices:** Click this button to hide everything after the encoder knobs. *(ref from n°3 and n°4)* 
8. **Info View:** This open/close Live’s built-in text info box, every parameter in the device has text info so this box might be useful if you need to know which does what.

<p>&nbsp;</p>

Additional Information❗️

- **Automation:**

Note that Live takes over the automation parameters inside the DAW so you can move the source inside SPAT and without the parameter moving inside Live to fix this simply right click the parameter in question and select: Remove Mapping to Send

- **Moving the device in Live:**

Unlike the Send and Room devices which have specific M4L devices that can’t be moved from one track to another without being unfortunately un-mapped, you can easily move this device around without any issues.

And again unlike the two previously mentioned devices with the return if you have more than one master in your SPAT Revolution session you can easily duplicate the track hosting the RETURN device and it will automatically set up everything correctly.

<p>&nbsp;</p>

Don’t forget to rename your tracks for an easier read of your session!

<p>&nbsp;</p>

![Room and Return Ordering](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/room_return_ordering.png)

<p>&nbsp;</p>

### **Automator**

<p>&nbsp;</p>

The Automator device allows you to make the selected source move around in SPAT Revolution in a more organic and continuous way compared to traditional automation.

![Automator Device](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/automartor_description.png)

1. **Macro Variations:** Quick shortcuts to reset to the default parameters of the device, you can create new macros to quickly change the automation of a source.
2. **Rate (Note):** The base rate of the automation (expressed in note values).
3. **Rate (Hz):** The base rate of the automation (expressed in hz).
4. **Jitter:** Introduces some jitter in the automation signal.
5. **Smooth:** Smooths value changes (and jitter, as well).
6. **Depth:** Depth of the LFO automation.
7. **Start Point:** Shift the start point of the automation.
8. **Shift:** This allows you to shift the placement of the automation relative to other LFOs in Live (requires to restart the session to get all the LFO sync together).
9. **Style:** Change the automation style (Sine, Saw, Square, etc…).
10. **Play/Stop:** Play or stop the automation.
11. **Rate Style:** Toggles between Beat Sync and Free running (hz).
12. **LFO:** The LFO is used to generate automation on the main SEND device, click the Map button, and then select the Azimuth parameter.
13. **Map:** Click this button to activate the Map Mode, you can then click the parameter in the SEND device that you wish to automate.
14. **Multimap:** This is the Multimap browser, it can allow you to map the same automation to multiple parameters, you can then tweak each one separately using the Min/Max percentage.
15. **How to use:** This is a small notepad device with additional notes to prevent you from having to check back the guide if you forget something.
16. **Automator Guide:** Same as the **“How to use”**, this one contains specific information about the different type of automation you can generate with the different LFO shapes.
17. **Macro Controls:** Click this button to hide the encoder knobs of the device *(ref from n°2 to n°9)*
18. **Macro Variation:** Click this button to hide the macro variations *(ref to n°1)*
19. **Show/Hide Devices:** Click this button to hide everything after the encoder knobs. *(ref from n°10 to n°16)* 
20. **Info View:** This open/close Live’s built-in text info box, every parameter in the device has text info so this box might be useful if you need to know which does what.

<p>&nbsp;</p>

Additional Information❗️

- **Moving the device in Live:**

Moving this device to another track instead of deleting and creating a new one will un-map the "Play/Stop", and "Rate Style" buttons, it is safer to delete the device first and then place a new one on the new track.

<p>&nbsp;</p>

## Workflow

<p>&nbsp;</p>

Watching the corresponding video is highly recommended for this part: *link*

<p>&nbsp;</p>

Now that we are completly setup, the fomula is very simple:

- Optional Step: Use the "SPAT MODE ON" Shortcut to turn off your external connections
- Open Live and select the "SPAT" folder in the Sidebar of Live
- Open the "SPAT Default.als" Template
- Open SPAT Revolution and load the Template "SPAT Default.json" from the same archive

*If you have lost the location of the archive its here: "/Library/Application Support/Flux/Ableton Live Devices/SPAT/Templates"*

<p>&nbsp;</p>

With both templates open, you will have a direct connection between Live's Output and your Physcial Output so that you can start making music without thinking about spatialization in the first place.

<p>&nbsp;</p>

![Basic Templates Setup](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/basic_templates_setup.png)

<p>&nbsp;</p>

*Just make sure your "Cue Out" and "Master Out" are both set to 1/2, that your Output device in Live is "BlackHole 64ch" and that your Input device in SPAT Revolution is "BlackHole 64ch" as well, the device controlling the output Level of Live directly is placed on the Master Track in Live*

*You can also note that the Live Template will setup a small group call "SPAT CTRL" which already contains a ROOM device and and RETURN device, each on individual tracks for better visibility.*

*The ROOM device control the room gain and reverb in the room and the RETURN controls the master volume.*

- You can change the space your working with by changing the Reverb using the device on the ROOM track inside Live but also in by clicking Reverb in the Room page of SPAT Revolution

⚠️ This will change the virtual space sonority but not what your actual output is, you can do change your speaker arrangement or stream type by going back to the setup page, select the Room block and you will have option, Stream Type, Speaker Arrangement *(you can make or re-create your own)*, and the Panning Type used.

- Now, once you want to convert a track to an object in SPAT simply start by attributing a channel to the track in Live. 

*Depending on which type of sound you are going to spatialize you have the choice between Stereo Tracks and Mono Tracks. I would for example attribute a Kick to a single channel as I want to keep it Mono, a pad to a stereo and so on.*

- Then go back to the SPAT Revolution Setup page and add an Input Block
- select the same channel(s) your just attributed in Live and connect it to your Room
- Now you can go in the Room page and see your object in the 3D view of SPAT Revolution
- From there you can double-click the Source and Start playing with the parameters that will appear before you. 

*You can also click the ball in the 3D view and move it arround in the Space*

- You can also add the "SEND" device from our "SPAT" folder in the sidebar of Live to Control the source directly from the DAW. 

*When adding a "SEND" device to your track UI of the original send plugin will open you can take the type to rename the track in the plugin before closing the GUI so that the name translate automatically into SPAT Revolution.*

- You can also start automating it using traditional automation or the "Automator" device in the same folder as the other devices.

<p>&nbsp;</p>

<iframe width="560" height="315" src="https://www.youtube.com/embed/xarMJBSSwU0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*direct link if not loading: https://youtu.be/xarMJBSSwU0*

<p>&nbsp;</p>

### Happy Immersive Creating!

<p>&nbsp;</p>

![spat screenshot](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/spat_screenshot_cover.png)

<p>&nbsp;</p>

## Printing an Immersive Mix

<p>&nbsp;</p>

This part is also available as a YouTube Video here: *link*

<p>&nbsp;</p>

Now comes the time to think about how to render what we made inside Live and SPAT Revolution.

There's a few strategies about this, which have multiples solutions, and a few factors to consider like the number of Room, Return, Channels, etc...

But the abosulte main thing we cannot avoid is that we need to render real-time everything we made.

<p>&nbsp;</p>

Let's have a use case to demonstrate how you can print our mix

<p>&nbsp;</p>

Here  I have a session which I m gonna render for the Binaural *(3d on headphones)* Version and at the same time generate a Bed for an ATMOS render later.

![Ready to Print](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/ready_to_render.png)

<p>&nbsp;</p>

We'll start by creating an "Aggregate Device" in the "AUDIO MIDI SETUP" panel of macOS:

![Aggregate](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/ThirdParty/Live_Tools/aggregate.gif)

❗️ Your Ableton Live and SPAT Revolution both need to be relaunched to detect the newly created Aggregate❗️

<p>&nbsp;</p>

Then I will use this device as Output in SPAT Revolution and Input in Live, set the corresponding channels of my BlackHole 2ch to the binaural output and the rest to the atmos output.

<p>&nbsp;</p>

Then the only thing left to do is to create the tracks in Live that will receive the audio coming out of SPAT Revolution, routing them accordingly and press record and letting the thing play!

<p>&nbsp;</p>

<iframe width="560" height="315" src="https://www.youtube.com/embed/FBz65vx_xJM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

*direct link if not loading: https://youtu.be/FBz65vx_xJM*

<p>&nbsp;</p>

## Thanks!

<p>&nbsp;</p>

The Immersive Audio World is full of new possibilities and I hope that this guide has help you understand lot's of what spatial audio has to offer and how to utilize it with Live!

Let me know if there's anything missing from this guide (and the devices provided), ideas on how to better it, or simply what are you thoughts!

<p>&nbsp;</p>

You can contact me directly here:
- Instagram: https://instagram.com/arsene_music
- email: arsene.music.pro@gmail.com
- FLUX:: https://www.flux.audio/contacts/arsene

<p>&nbsp;</p>

## Credit

<p>&nbsp;</p>

Ryan Farber for his M4L device: *(Simple One-Button Macro 2.0)*
- https://www.ryanfarber.com
- https://www.maxforlive.com/library/device/5353/simple-one-button-macro

<p>&nbsp;</p>

ELPHNT for his M4L device: *(NTPD2 Lite)*
- https://elphnt.io
- https://maxforlive.com/library/device/4997/ntpd-lite

<p>&nbsp;</p>

Devin Roth for creating BlackHole:
- https://existential.audio
- https://www.devinrothmusic.com

<p>&nbsp;</p>

To the Ableton Team for making my favorite DAW ever!

And of course the all FLUX:: Immersive Team for making such an awesome Immersive Audio Engine.

<p>&nbsp;</p>

## Troubleshooting / Q&A

