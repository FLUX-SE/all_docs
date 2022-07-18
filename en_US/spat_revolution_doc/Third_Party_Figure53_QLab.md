# Figure53 QLab

Rock solid and fully featured show control program, based under a 'cue' based paradigm, QLab is great for manually sequencing multiple media and show type events, running video, sound, lights and virtually any type of control scripts through its easy-to-use interface. 
Some of the more advanced control features in QLab make the most of its native OSC network integration - which is why it becomes a great integration partner to _SPAT Revolution_.

## QLab Templates

New updated templates for QLab are available and provide cue examples that can be used with _SPAT Revolution_.  All the templates are available in EURO and US Version, using comma or period for denoting the decimal.

**Qlab _SPAT Revolution_ integration.qlab4**

With the release of the snapshot feature, this template shows how you can manage _SPAT Revolution_ and QLab integration on the same machine, using _SPAT Revolution_ Send plug-ins. Both QLab and _SPAT Revolution_ session are included, with 16 Mono and 8 Stereo SPAT Send on cue outputs.
This template iss _SPAT Revolution_ Essential compliante, for binaural and Channel-based setups.

**[Qlab _SPAT Revolution_ integration EURO.qlab4](https://public.3.basecamp.com/p/vhf67dYdBTHhwbtVJV4y227i)**
**[Qlab _SPAT Revolution_ integration US.qlab4](https://public.3.basecamp.com/p/oi3GoHpToVmEqijVV7F4QhJq)**

---

**Qlab _SPAT Revolution_ snapshot carts.qlab4**

This template shows how you can manage _SPAT Revolution_ snapshots within QLab and have some carts for quick actions. It demonstrates how interpolation time value can be used in the snapshot recall messages (last float, ex: 2.5).

**[Qlab _SPAT Revolution_ snapshot carts EURO.qlab4](https://public.3.basecamp.com/p/gC6XhzQjmEqpgFDRx7AXjuDL)**
**[Qlab _SPAT Revolution_ snapshot carts US.qlab4](https://public.3.basecamp.com/p/F4qR1QAXYVY5iA2Jt67si5ow)**


![Spat Snapshot message with interpolletation time](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabSnapshotsInterpollation.png)

---

**Qlab _SPAT Revolution_ Examples**



This template is our updated template and includes many cue examples using various messages types in Spat. 
Beyond direct cue send actions, it brings 1D and 2D fade (Parameter ramp, 2D trajectories and more). 
As of QLab4 there is a time interpolated 2D fade system for creating spatial XY gestures or similar multi parameter control ideas. 
X/Interpolation time value can always be used directly in your messages as well as shown in some template examples. 
With the latest release of _SPAT Revolution_, the ability to send messages to the currently selected source (s) with index -1 is shown in this template as well.

**[Qlab _SPAT Revolution_ examples EURO.qlab4](https://public.3.basecamp.com/p/nB4YRiTASZ9DrT8nLH11XzqY)**
**[Qlab _SPAT Revolution_ examples US.qlab4](https://public.3.basecamp.com/p/N9foEbx4DhktH5K53yAhugdM)**

![Spat Message with interpolletation time](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabMessageXTime.png)

![2D trajectory messages](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLab2DCueSelectedSource.png)

---



## QLab messages via network cues

In a realtime situation, where performers or sounds are being spatialized live by _SPAT Revolution_, and cues need to be sent in the right running order with the rest of the show, Network OSC type cues can be sent from QLab to _SPAT Revolution_ to control all aspects of the Spat rendering software. 
To do this interaction, it is necessary to setup the OSC communication. It is relatively straightforward. 
_In the _SPAT Revolution_ preferences make sure the OSC Enable is engaged._

![Setting the OSC Connection](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCMain.png)

> ★ Enable commands log to view the commands and confirm you are receiving data (Shift + F7 will open the log window). It is not recommended leaving it active all the time as it takes some system resources. 

**Setting the OSC Connection**
![Setting the OSC Connection](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnectionCustomLocalHost.png)

Go to the OSC connection section of _SPAT Revolution_ and:

* Change the pull down menu from *None* to the *Input | Custom* preset (meaning you are setting an OSC Input of Spat).

* Select the network interface you want to be receiving the commands from. Doing a local integration of QLab will require you to choose the localhost / loopback address 127.0.0.1.

* Unless you are already using the Port #8000 proposed, you do not need to change it. This is the corresponding QLab Network Patch Output Port to use.


**QLab Workspace Settings / Network**

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabNetworkSettings.png)

On the QLab side, use the Network Patch settings to configure OSC destinations. 
One of them can be SPAT.

You can now send OSC network cues from QLab to Spat, and control **most if not all parameters** of this virtual environment using [Appendix C - OSC and ADM-OSC Table](Appendix_C_OSC_Table.md). 
Once you get the hang of it, this is really very straightforward. 

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/QLabTemplate.png)

...
