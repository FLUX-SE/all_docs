# Steinberg Nuendo

A tutorial on **[How to set up SPAT Revolution with Nuendo](https://youtu.be/DIE2RiB_i8I)** is available here for a quick dive into this integration.  You can as well have a look at **SYNC: Steinberg Yamaha Network Channel on YouTube for [Nuendo 11 | Spat Revolution integration](https://www.youtube.com/watch?v=ZW6VveWqYuA)**


## Templates

The following session templates are available for use with Nuendo. They are start sessions and can be used as examples to see how to integrate SPAT Revolution using the SPAT plug-in suite SEND, RETURN and ROOM.


You can download the following session templates:

**Project Sessions and Templates downloads.**

* **[Steinberg Nuendo Tutorial Template*](https://public.3.basecamp.com/p/CsyXhCZjbdBXj8rrrDRSAV5w)** is the template used in the above video tutorial and includes sends and returns setup for rendering Binaural, Atmos 5.1.4, NHK 22.2 with binaural monitoring.


* **[Basic music NPR](https://public.3.basecamp.com/p/yRVeYRi4Co8mRm3FFU4Zhjt6)**  is a basic template using sends and returns to render Stereo, 5.1 and Atmos 5.1.4 output formats with binaural monitoring.


* **[Advanced multi-format NPR](https://public.3.basecamp.com/p/TMikxYY8Z9D1dnkaAgG9uFE8)**  is an advance template using sends and returns to render Atmos 7.1.2, NHK 22.2 and multiple binaural outputs.


* **[Ambisonic HOA mixing NPR](https://public.3.basecamp.com/p/FgvZBZWodG9qUVCGtuXSxCFk)** is a template for using 3rd order HOA and binaural monitoring output formats.


For troubleshooting, please review the **[Appendix B - Troubleshooting](Appendix_B.md)**


## Nuendo and External OSC rendering

Starting with Nuendo V11, it is now possible to deploy object-oriented sessions using open sound control (OSC). This brings the possibility to send/receive metadata from/to the Nuendo object panner. This functionality allows the support of SPAT Revolution as an external rendering engine using OSC and the [ADM-OSC](Ecosystem_&_integration_ADM_OSC.md) initiative. More information can as well be found on the GitHub repository with specifications and a testing tool can be found at: [immersive-audio-live/ADM-OSC](https://github.com/immersive-audio-live/ADM-OSC)
 
With this in place, you can playback and record object-based audio and metadata live production and immersive creations while using SPAT Revolution mixing and rendering capabilities.

As Nuendo can imports and exports ADM files, this allows for an ADM master, exported from another environment, to be imported into a Nuendo session and mapped to SPAT Revolution. This integration brings the ability to render for various stream types (Ambisonic, Binaural, Channel-based), from standard to custom speaker arrangements and using multiple spatialization options and techniques.

![Object-based in Nuendo V11](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADM.png ':size=800')

### System diagram - Nuendo and SPAT Revolution

* Single computer
* Dual computer (recommended)

### Creating a up to 64 objects Nuendo session

* First create and empty Nuendo project
* In studio menu/ audio connection:
  * Delete any outputs not required in the audio connection/studio menu
  * Add Bus: 1 x 7.1.4  Atmos Master and 1x 7.1.2 Bed
  (in some cases you won’t need the 7.1.2 as it would get created by the ADM import process if all goes well)
  * Make sure output 1 to 64 remains unpatched (leaving this part of the patch to objects)
  * Patch 7.1.2 bus to 65 to 74 and 75 to 84 for the Atmos master bus

![Audio Connection in Nuendo V11](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAudioConnections1.png)


<!--

## Object-based mixing with Nuendo and SPAT.

As mentioned in the troubleshooting guide, **using specific tracks as your SPAT source** is a best practice for dealing with these sources/objects you are sending for external rendering.
You can simply use tracks as you use audio objects, likewise to many object-based mixing workflows proposed by DAW.
This way, you can leave the session audio tracks and their channel insertion as they are, and simply send your audio tracks to the SPAT Revolution object tracks.
This allows you to send a single audio track or multiple ones (stem) to the SPAT Revolution object track.


-->

## Nuendo v11 - Setting SPAT Revolution as external renderer

The first steps consist of configuring SPAT Revolution as the External Renderer. You can access the setup window by choosing External Renderer setup in the **Studio Menu**.

In the Studio menu, External OSC Render setup:

Steps:

* Make sure OSC Data Transmission is activated
* Make sure the port number is set to 9000. (default SPAT Revolution ADM OSC preset input port)
* Set IP address to 127.0.0.1 (localhost) for single computer setup OR set the IP address of the second computer hosting SPAT Revolution
* Header: Insert the ADM-OSC header message, **/adm/obj/[index]/xyz**
* **Device Port Mapping: Map All - 1 to 1


![Nuendo OSC Renderer Setup](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoExternalOSCRendererSetup.png ':size=400')


## Importing ADM File

In order to start you project from an exported file of another environment, Go to the file menu and choose **Import ADM**

* Select all tracks in the ADM import menu

![Nuendo Import ADM](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMImport.png)

* When the import is done, make sure the Atmos_bed track is assigned to 7.1.2 output bus
* Select all Atmos_Obj and assign them to the 7.1.4 Atmos master bus created (Shift + Control + choose the 7.1.4 bus assignment to do them as a batch)
* Keeping all Atmos_Obj selected (only, not the bed), go to: Project menu / ADM Authoring for Dolby Atmos.  If objects already exist, delete them.

![Nuendo ADM Authoring for Dolby Atmos 1](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringEmpty.png)

* Choose External OSC renderer on the Renderer pulldown
* Make sure "Auto-Connect Objects buses" is marked.
* Click the Functions arrow pulldown and choose "create objects from the selected tracks".
* It should create all you need. All objects mapped to index 1 to .... new output buses created to match objects 1 to ....

![Nuendo ADM Authoring for Dolby Atmos 2](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringObjects.png)

## Nuendo Audio Connections configured for object


![Audio Connection in Nuendo V11 with Bus and Object outputs](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAudioConnections2.png)

---


<!--

Let's now explore the Nuendo bidirectional object panner mapping (integration) and the steps involved.

The functioning is based around the declared object approach in Nuendo and the track surround panner that gets integrated.
Object tracks are receiving inputs from the object output buses and as soon as this object track is patched to a multichannel output (2D or 3D speaker arrangements), the surround panner becomes available and can work in bed or object mode.
Here, we are interested in the object mode that will give us the position bidirectional integration.
Complete information on dealing with objects in Nuendo available in their documentation. [steinberg.help - Nuendo 11](https://www.steinberg.help/nuendo-manuals/nuendo/nuendo-11/
)

-->

![Nuendo Surround Panner in Object Mode](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoPanner.png ':size=500')


After the following setup details, whatever sources/objects position data you have in your Nuendo session will go to SPAT for an external rendering.
As this information is sent with normalized value, our new ADM presets and transformation option will allow scaling to the desired automation zone range.
Note that currently, although the preliminary spec of ADM-OSC calls for -1,1 normalized data, Nuendo does 0,1 which will be corrected in the next release planned in January. Thanks to our transform flexibility, this can be fixed rapidly.

Nuendo can as well receive normalized position data from SPAT Revolution ADM-OSC XYZ output (preset), mapping to the panner (position tracking) and write automation data with the corresponding object audio if desired.



The second step, in the **Project menu**, you can open the ADM Authoring for Dolby Atmos. This is the main windows ofr any Object configuration whatever the renderer.

![Setup up objects in the ADM Authoring for Dolby Atmos](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringEmpty.png ':size=800')

* Choose External OSC Renderer.
* Make sure Auto-Connect Object Busses is selected.
* If your object tracks are select, you can **Create ADM Objects from these selected tracks**. It will create the objects and assign the object ID! Yes, object ID's are the SPAT Revolution Index ID.
* You can go back to External OSC renderer setup from here if need be by pressing the gear icon.
* You are done!

![Setup up objects in the ADM Authoring for Dolby Atmos](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoADMAuthoringObjects.png ':size=800')

Setting up **OSC Object Position Tracking** (From SPAT to mapping to the Object panner)

The next part is for the Nuendo incoming data.
Go to the **Studio Menu** and choose OSC Object Position Tracking.

![Setup up objects in the ADM Authoring for Dolby Atmos](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/NuendoOSCObjectPositionTracking.png ':size=400')

* Make sure Object Position Tracking is activated.
* Make sure port # is set to 9001. This is the default ADM-OSC output port for SPAT Revolution preset.
* Stage Dimensions: This is the ability to scale incoming OSC into Nuendo. By default, it is currently at 0,1 (again like mentioned above this is not the default ADM-OSC and will be fixed in a future Nuendo release). You can simply change this by entering -1.0 M as a Min and 1.0 as a Max.
* Track Mapping allows you to map the incoming Index from SPAT to the actual object.

## SPAT OSC settings for Nuendo ADM

In the OSC preferences:

![SPAT OSC settings for Nuendo ADM-OSC](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnectionsADM.png ':size=600')

<!-- TODO: update the image -->

* One Input ADM preset where you select you network interface.
* You see above the default setup for ADM-OSC. For the moment (until Nuendo fixes to default ADM-OSC), you will Edit the transform from linear to support the fact that they spit out 0,1 normalized. This is where you will as well define the SPAT Revolution automation zone range (scaling to). For example, here I am using -3, 3.

![Modifying (edit) the transform of scaling](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCTransformPresetsADM.png ':size=300')

**You are done for the input!**


To setup the ADM XYZ Output:

![ADM XYZ Output](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnectionsADMOutputXYZ.png ':size=600')

* Choose the Output ADM-XYZ preset and set the IP address of the Nuendo computer.
* The transformation preset is ok by default. (as long as your OSC Object Position Tracking setup in Nuendo as stage dimensions -1.0, 1.0.
* You will enter your automation zone (range) that you are sending to Nuendo. This is the same as used for input range. For example -3, 3.


Et voila! You are set.
Ready to move sources/objects in SPAT Revolution or in the Nuendo panner with bidirectional integration.
