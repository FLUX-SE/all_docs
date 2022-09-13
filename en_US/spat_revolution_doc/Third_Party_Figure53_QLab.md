# Figure53 QLab

Rock solid and fully featured show control program, based under a 'cue' based paradigm, QLab is great for manually sequencing multiple media and show type events, running video, sound, lights and virtually any type of control scripts through its easy-to-use interface.
Some of the more advanced control features in QLab make the most of its native OSC network integration - which is why it becomes a great integration partner to _SPAT Revolution_.

## QLab 5

Starting with QLab5, the network type cue (OSC messages) has been substantially revamped and now includes support to directly control SPAT Revolution. Over 100 predefined messages for SPAT Revolution are now possible, including project, source, room, master and snapshot control messages.

![QLab5](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLab5.png)

Earlier provided template (QLab 4) of actual examples of remote control message for SPAT Revolution are no longer needed to assist with programming. <!--Some QLab 5 templates are now available strictly to provide example on how to use the SPAT Send plugin on cue outputs to route audio directly into SPAT Revolution application (when on single computer, such as in creation)-->

## QLab 5 Integration template

New QLab 5 template will be provided shortly


## QLab 4 Integration template (V4 validated)

This template shows how you can manage _SPAT Revolution_ and QLab integration on the same machine, using _SPAT Revolution_ Send plug-ins. Both QLab and _SPAT Revolution_ session are included, with 16 Mono and 8 Stereo SPAT Send on cue outputs.
This template is _SPAT Revolution_ Essential compliant, for binaural and Channel-based setups.

QLab templates are available in EURO and US Version, using comma or period for denoting the decimal. (such as the decimal used in interpollation time)


**[QLab 4_SPAT Revolution_ integration EURO.qlab4](https://public.3.basecamp.com/p/vhf67dYdBTHhwbtVJV4y227i)**
**[QLab 4_SPAT Revolution_ integration US.qlab4](https://public.3.basecamp.com/p/oi3GoHpToVmEqijVV7F4QhJq)**


## Generic QLab Templates (V4, compliant with V5)


**QLab _SPAT Revolution_ snapshot carts.qlab4**

This template shows how you can manage _SPAT Revolution_ snapshots within QLab and have some carts for quick actions. It demonstrates how interpolation time value can be used in the snapshot recall messages.

**[Qlab _SPAT Revolution_ snapshot carts EURO.qlab4](https://public.3.basecamp.com/p/gC6XhzQjmEqpgFDRx7AXjuDL)**
**[Qlab _SPAT Revolution_ snapshot carts US.qlab4](https://public.3.basecamp.com/p/F4qR1QAXYVY5iA2Jt67si5ow)**


![SPAT Snapshot message with interpolletation time](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabSnapshotsInterpollation.png)

---

**QLab _SPAT Revolution_ OSC Message examples**


This template is our updated template and includes many cue examples using various messages types in SPAT Revolution.

Beyond direct cue send actions, it brings 1D and 2D fade (Parameter ramp, 2D trajectories and more).
As of QLab4 there is a time interpolated 2D fade system for creating spatial XY gestures or similar multi parameter control ideas.
X/Interpolation time value can always be used directly in your messages as well as shown in some template examples.
With the latest release of _SPAT Revolution_, the ability to send messages to the currently selected source (s) with index -1 is shown in this template as well.

**[Qlab _SPAT Revolution_ examples EURO.qlab4](https://public.3.basecamp.com/p/nB4YRiTASZ9DrT8nLH11XzqY)**
**[Qlab _SPAT Revolution_ examples US.qlab4](https://public.3.basecamp.com/p/N9foEbx4DhktH5K53yAhugdM)**

![SPAT Message with interpolletation time](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabMessageXTime.png)

![2D Fade - trajectory messages](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLab2DCueSelectedSource.png)

---


## Configuring QLab -> SPAT for messages via network cues

In a realtime situation, where performers or sounds are being spatialized live by _SPAT Revolution_, and cues need to be sent in the right running order with the rest of the show, Network OSC type cues can be sent from QLab to _SPAT Revolution_ to control all aspects of the SPAT rendering software.
To do this interaction, it is necessary to setup the OSC communication. It is relatively straightforward.
_In the _SPAT Revolution_ preferences make sure the OSC Enable is engaged._

![Setting the OSC Connection](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCMain.png)

> ★ Enable commands log to view the commands and confirm you are receiving data (Shift + F7 will open the log window). It is not recommended leaving it active all the time as it takes some system resources.

**Setting the OSC Connection**
![Setting the OSC Connection](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnectionCustomLocalHost.png)

Go to the OSC connection section of _SPAT Revolution_ and:

* Change the pull down menu from *None* to the *Input | Custom* preset (meaning you are setting an OSC Input of Spat).

* Select the network interface you want to be receiving the commands from. Doing a local integration of QLab will require you to choose the localhost / loopback address 127.0.0.1.

* Unless you are already using the Port #8000 proposed, you do not need to change it. This is the corresponding QLab Network Patch Output Port used in templates.


**QLab Workspace Settings / Network**

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabNetworkSettings.png)

On the QLab side, use the Network Patch settings to configure OSC destinations.
One of them can be SPAT.

You can now send OSC network cues from QLab to SPAT, and control **most if not all parameters** of this virtual environment using [Appendix C - OSC and ADM-OSC Table](Appendix_C_OSC_Table.md).
Once you get the hang of it, this is really very straightforward.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabTemplate.png)

...
