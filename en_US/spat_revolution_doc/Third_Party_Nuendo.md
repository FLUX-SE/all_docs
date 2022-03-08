# Steinberg Nuendo

A tutorial on **[How to set up SPAT Revolution with Nuendo](https://youtu.be/DIE2RiB_i8I)** is available here for a quick dive into this integration.  You can as well have a look at **SYNC: Steinberg Yamaha Network Channel on YouTube for [Nuendo 11 | Spat Revolution integration](https://www.youtube.com/watch?v=ZW6VveWqYuA)**.


## Templates

The following session templates are available for use with Nuendo. They are start sessions and can be used as examples to see how to integrate SPAT Revolution using the SPAT plug-in suite SEND, RETURN and ROOM.


You can download the following session templates:

* **[Steinberg Nuendo Tutorial Template](https://public.3.basecamp.com/p/CsyXhCZjbdBXj8rrrDRSAV5w)** is the template used in the above video tutorial and includes sends and returns setup for rendering Binaural, Atmos 5.1.4, NHK 22.2 with binaural monitoring.


* **[Basic music NPR](https://public.3.basecamp.com/p/yRVeYRi4Co8mRm3FFU4Zhjt6)**  is a basic template using sends and returns to render Stereo, 5.1 and Atmos 5.1.4 output formats with binaural monitoring.


* **[Advanced multi-format NPR](https://public.3.basecamp.com/p/TMikxYY8Z9D1dnkaAgG9uFE8)**  is an advance template using sends and returns to render Atmos 7.1.2, NHK 22.2 and multiple binaural outputs.


* **[Ambisonic HOA mixing NPR](https://public.3.basecamp.com/p/FgvZBZWodG9qUVCGtuXSxCFk)** is a template for using 3rd order HOA and binaural monitoring output formats.


For troubleshooting, please review the **[Appendix B - Troubleshooting](Appendix_B.md)**.


## Nuendo and External OSC rendering

Starting with Nuendo V11, it is now possible to deploy object-oriented sessions using open sound control (OSC). This brings the possibility to send/receive metadata from/to the Nuendo object panner. This functionality allows the support of SPAT Revolution as an external rendering engine using OSC thanks to the [ADM-OSC](Ecosystem_&_integration_ADM_OSC.md) initiative. More information and specifications on the **ADM-OSC** initiative can be found on the dedicated GitHub repository, [immersive-audio-live/ADM-OSC](https://github.com/immersive-audio-live/ADM-OSC).

Once configured, you can playback or record object-oriented sessions (audio and metadata) for live production and immersive creations workflows while using SPAT Revolution mixing and rendering capabilities.

As Nuendo can import and export ADM files, this allows for an ADM master, exported from another environment, to be imported into a Nuendo session and mapped to SPAT Revolution. This integration brings the ability to render the object-based mix for various stream types (Ambisonic, Binaural, Channel-based), from standard to custom speaker arrangements and using multiple spatialization options and techniques.

The functioning is based around the declared ADM object approach in Nuendo. At the base, as soon as a track is being assigned to a multichannel output bus, the surround panner becomes available and can work in bed or object mode. Here, we are interested in the object mode that will give us the possibility to stream or listen to the object position.

Complete information on dealing with objects in Nuendo available in their documentation, [steinberg.help - Nuendo 11](https://www.steinberg.help/nuendo-manuals/nuendo/nuendo-11/).


![Object-based in Nuendo V11](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADM.png ':size=800')

## Using ADM-OSC in Nuendo / Use cases

Although controlling SPAT Revolution source objects from Nuendo audio tracks is possible with the SPAT send plugin and the automation of it, the actual integration of the Nuendo Panner with SPAT Revolution brings the ability to remain in the mixer environment. With this, users can stay within the typical mixer panner automation and use the same common remote control tools (Eucon, controller mapping, etc.). It can be used with current sessions by simply adding the connection to SPAT Revolution as an external rendering tool, leading to a perceptual factors of objects and an acoustic simulation helping build soundscapes. Various use cases are possible:

* Import an ADM file from another environment, render with SPAT Revolution in channel-based (various panning and speaker arrangement formats) or scene-based (binaural, ambisonic up to 7th order).
* Deliver alternate formats from the same session you've rendered your Dolby Atmos deliverables.
* Re-render old sessions using the existing panner position but with SPAT Revolution as rendering engine.
* Record all SPAT Revolution object position metadata (from live or studio) to the Nuendo Panner (while still being able to use the SPAT Send for other parameters).

### System schematics - Nuendo and SPAT Revolution

![System schematics - Nuendo and SPAT Revolution - Software In / Hardware Out](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMSoftInHardOut.png)

![System schematics - Nuendo and SPAT Revolution - Software I/O with SPAT Plugins](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMSoftIO.png)

![System schematics - Nuendo and SPAT Revolution - Core Audio / Audio Bridge](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMOSCAudioBridge.png)

![System schematics - Nuendo and SPAT Revolution - Dual Computers](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMOSCDualComputers.png)

### Creating an up to 64 objects session in Nuendo

* First create an empty Nuendo project
* In the menu <code>Studio / audio connection</code>:
  * Delete any outputs not required in the audio connection/studio menu.
  * Add Bus: 1 x 7.1.4 Atmos Master and 1 x 7.1.2 Bed (in some cases you won’t need the 7.1.2 as it would get created by the ADM import process if all goes well).
  * Make sure output 1 to 64 remains unpatched, leaving this part of the patch to objects.
  * Patch 7.1.2 bus to 65 to 74 and 75 to 84 for the Atmos master bus.

> **Even if you aren't going to be using the Dolby capabilities of Nuendo and are planning only to render with SPAT Revolution, you need the 7.1.4 Atmos Master bus as this is being used to declared tracks as objects and assign objects IDs**


![Audio Connection in Nuendo V11](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAudioConnections1.png)


<!--

## Object-based mixing with Nuendo and SPAT.

As mentioned in the troubleshooting guide, **using specific tracks as your SPAT source** is a best practice for dealing with these sources/objects you are sending for external rendering.
You can simply use tracks as you use audio objects, likewise to many object-based mixing workflows proposed by DAW.
This way, you can leave the session audio tracks and their channel insertion as they are, and simply send your audio tracks to the SPAT Revolution object tracks.
This allows you to send a single audio track or multiple ones (stem) to the SPAT Revolution object track.


-->

## Nuendo v11 - Setting SPAT Revolution as external renderer

The first steps consist of configuring SPAT Revolution as the External Renderer. You can access the setup window by choosing External OSC Renderer setup in the <code>Studio</code> Menu.

In the <code>Studio / External OSC Render setup</code> menu:

* Make sure the <code>OSC Data Transmission</code> is activated.
* Make sure the port number is set to <code>9000</code>, as it is the default SPAT Revolution ADM OSC preset input port.
* Set IP address to <code>127.0.0.1</code> (localhost) for single computer setup, or set the IP address of the second computer hosting SPAT Revolution (the rendering computer).
* Header: Insert the ADM-OSC header message, <code>/adm/obj/[index]/xyz</code>
* Device Port Mapping: Map All - 1 to 1

![Nuendo OSC Renderer Setup](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoExternalOSCRendererSetup.png ':size=400')

## Importing ADM File

In order to start you project from an existing ADM master file of another environment, go to the <code>File</code> menu and choose <code>Import ADM</code>

* Select all tracks in the ADM import menu

![Nuendo Import ADM](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMImport.png)

* When the import is done, make sure the Atmos_bed track is assigned to 7.1.2 output bus.
* Select all Atmos_Obj and assign them to the 7.1.4 Atmos master bus created (Shift + Control + choose the 7.1.4 bus assignment to do them as a batch).
* Keeping all Atmos_Obj tracks selected (only, not the bed), go to the menu <code>Project / ADM Authoring for Dolby Atmos</code>. If objects already exist, start by deleting them.

![Nuendo ADM Authoring for Dolby Atmos 1](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringEmpty.png)

* Choose <code>External OSC renderer</code> on the Renderer pulldown.
* Make sure <code>Auto-Connect Objects Busses</code> is marked.
* Click on the Functions arrow pulldown and choose <code>Create Objects from the Selected Tracks</code>.
* It should create all what you need. All objects mapped to index 1 to N.
* New output buses are getting created to match objects 1 to N.

![Nuendo ADM Authoring for Dolby Atmos 2](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringObjects.png)

## Nuendo audio connections configured for object

![Audio Connection in Nuendo V11 with Bus and Object outputs](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAudioConnections2.png)

---

![Nuendo Surround Panner in Object Mode](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoPanner.png ':size=500')

## Nuendo object position to SPAT Revolution source objects.

After the following setup details, object position data you have in your Nuendo session will be streaming to SPAT Revolution for an external rendering.

As this metadata is sent with normalized value according to the ADM-OSC specification, SPAT Revolution ADM-OSC input preset and transformation will allow scaling to the desired automation zone range.

Nuendo can as well receive normalized position data from SPAT Revolution ADM-OSC XYZ output (preset), map them to the panner (position tracking) and write automation data with the corresponding audio object if desired.

## Setting up Nuendo OSC Object Position Tracking

This next part covers incoming data to Nuendo. This would be to actually record the object information (from a live performance for example) to the Nuendo panner so ultimately use it as automation.

> At the time of writing it is not recommend to configure the objects bi-directionally as some workflow challenges exist with object index ID when dealing with a mix of mono, stereo or multichannel objects.


Go to the <code>Studio</code> menu and choose <code>OSC Object Position Tracking</code>.

![Nuendo OSC Object Position Tracking](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoOSCObjectPositionTracking.png ':size=400')

* Make sure <code>Object Position Tracking</code> is activated.
* Make sure port # is set to <code>9001</code>. This is the default ADM-OSC output port for SPAT Revolution preset.
* Stage Dimensions: This is the ability to scale incoming OSC into Nuendo. By default, it is currently at 0,1. This is not the default ADM-OSC specifcation. You can simply change this by entering -1.0 m as a minimum and 1.0 m as a maximum.
* Track Mapping allows you to map the incoming Index from SPAT Revolution to the actual Nuendo object.


## SPAT Revolution ADM-OSC settings for Nuendo

### ADM-OSC Input setup

In the SPAT Revolution OSC Connection preferences:

![SPAT OSC settings for Nuendo ADM-OSC](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnectionsADM.png ':size=600')

<!-- TODO: update the image -->

* Choose <code>Input ADM-OSC</code> preset and select you network interface. If Nuendo and SPAT Revolution are on the same computer, choose Localhost <code>127.0.0.1</code>, otherwise choose the network interface where OSC messages are incoming.

* You can edit the transform double-clicking on it. This is where you will define the SPAT Revolution automation zone range (scaling to). For example, here we are using -3, 3.

> The "scaling to" is you defining what will be the maximum position value when the Nuendo panner is in its extreme corners.

![Modifying (edit) the transform of scaling](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCTransformPresetsADM.png ':size=300')

**You are done for the input!**

### ADM-OSC XYZ Output to Nuendo

This configuration is for sending SPAT source objects data to Nuendo.

![ADM XYZ Output](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnectionsADMOutputXYZ.png ':size=600')

* Choose the <code>Output ADM-XYZ</code> preset and set the IP address of the Nuendo computer.(if local, use localhost <code>127.0.0.1</code>)
* The transformation preset is configured by default, as long as your OSC Object Position Tracking setup in Nuendo as stage dimensions -1.0, 1.0.
* You can edit your automation zone (range) that you are sending to Nuendo. This is the same as used for input range. For example -3, 3.

> The "scaling from" is you defining the SPAT Revolution position stage zone where object are sending to Nuendo in a normalized manner.

Et voila! You are set.

Ready to move info an object-oriented worklow!

<!--

---

The second step, in the **Project menu**, you can open the ADM Authoring for Dolby Atmos. This is the main windows ofr any Object configuration whatever the renderer.

![Setup up objects in the ADM Authoring for Dolby Atmos](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringEmpty.png ':size=800')

* Choose External OSC Renderer.
* Make sure Auto-Connect Object Busses is selected.
* If your object tracks are select, you can **Create ADM Objects from these selected tracks**. It will create the objects and assign the object ID! Yes, object ID's are the SPAT Revolution Index ID.
* You can go back to External OSC renderer setup from here if need be by pressing the gear icon.
* You are done!

![Setup up objects in the ADM Authoring for Dolby Atmos](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringObjects.png ':size=800')

-->
