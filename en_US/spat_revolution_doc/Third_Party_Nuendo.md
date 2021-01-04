# Steinberg Nuendo

## Templates

New recent templates are available for use with Nuendo. They are start sessions and can be used as examples to see how to integrate Spat Revolution using the Spat plugin suite SEND, RETURN and ROOM.

A tutorial on **[How to set up Spat Revolution with Nuendo](https://youtu.be/DIE2RiB_i8I)** is available here for a quick dive into this integration. You can as well have a look at Steinberg Yamaha Network Channel on YouTube for **[Spat Integration with Nuendo 10](https://youtu.be/qHCQsidXSbA?list=PL_Dcg2GwhLHnXUC8_X0rrvKmGR3D-BEgT)**

You can download the following session templates:

**Project Sessions and Templates downloads.**

* **[Steinberg Nuendo Tutorial Template*](https://public.3.basecamp.com/p/CsyXhCZjbdBXj8rrrDRSAV5w)* is the template used in the above video tutorial and includes sends and returns setup for rendering Binaural, Atmos 5.1.4, NHK 22.2 with binaural monitoring.


* **[Basic music NPR](https://public.3.basecamp.com/p/yRVeYRi4Co8mRm3FFU4Zhjt6)**  is a basic template using sends and returns to render Stereo, 5.1 and Atmos 5.1.4 output formats with binaural monitoring.


* **[Advanced multi-format NPR](https://public.3.basecamp.com/p/TMikxYY8Z9D1dnkaAgG9uFE8)**  is an advance template using sends and returns to render Atmos 7.1.2, NHK 22.2 and multiple binaural outputs.


* **[Ambisonic HOA mixing NPR](https://public.3.basecamp.com/p/FgvZBZWodG9qUVCGtuXSxCFk)** is a template for using 3rd order HOA and binaural monitoring output formats.


For troubleshooting, please review the **[Appendix B - Troubleshooting](Appendix_B.md)**


## Object-based mixing with Nuendo and Spat.

As mentioned in the troubleshooting guide, **using specific tracks as your Spat source** is a best practice for dealing with these sources/objects you are sending for external rendering. You can simply use tracks as you use audio objects, likewise to many object-based mixing workflows proposed by DAW. This way, you can leave the session audio tracks and their channel insertion as they are, and simply send your audio tracks to the Spat Revolution object tracks. This allows you to send a single audio track or multiple ones (stem) to the Spat Revolution object track.

Routing audio 

---

To be completed.

Our tutorial shows Spat on audio tracks not with objects

---



## Nuendo v11 - setting Spat as external renderer 

Nuendo V11 brings mixing object-based productions using open sound control (OSC). This allows the support of Spat Revolution as an external rendering engine using OSC and the [ADM-OSC](Ecosystem_ADM_OSC.md) initiative.

This means that you can playback and record object-based audio and metadata for live production and immersive creations while using the Spat Revolution ADM-OSC environment. As Nuendo imports and exports ADM, this allows for an ADM master, exported from another environment, to be imported into a Nuendo session and the mapping to external renderer can offer new spatialization options and techniques. 

![Object-based in Nuendo V11](include/nuendo_adm_1.png ':size=800')


Let's now explore the Nuendo bidirectional object panner mapping (integration) and the steps involved.

The functioning is based around the declared object approach in Nuendo and the track surround panner that gets integrated. Object tracks are receiving inputs from the object output buses and as soon as this object track is patched to a multichannel output (2D or 3D speaker arrangements), the surround panner becomes available and can work in bed or object mode. Here, we are interested in the object mode that will give us the position bidirectional integration. Complete information on dealing with objects in Nuendo available in their documentation. [steinberg.help - Nuendo 11](https://www.steinberg.help/nuendo-manuals/nuendo/nuendo-11/
)

![Nuendo Surround Panner in Object Mode](include/nuendo_adm_2.png ':size=500')


After the following setup details, whatever sources/objects position data you have in your Nuendo session will go to Spat for an external rendering. As this information is sent with normalized value, our new ADM presets and transformation option will allow scaling to the desired automation zone range. Note that currently, although the preliminary spec of ADM-OSC calls for -1,1 normalized data, Nuendo does 0,1 which will be corrected in the next release planned in January. Thanks to our transform flexibility, this can be fixed rapidly.

Nuendo can as well receive normalized position data from Spat Revolution ADM-OSC XYZ output (preset), mapping to the panner (position tracking) and write automation data with the corresponding object audio if desired.

The first steps consist of configuring the External Renderer. You can access it by choosing External Renderer setup in the **Studio Menu**.

![Nuendo Surround Panner in Object Mode](include/nuendo_adm_3.png ':size=400')

Steps:

* Activate the OSC Data transmission
* Make sure the port number is set to 9000. This is the default port of the Spat Revolution preset for ADM input.
* IP Address. Insert your Spat Revolution computer network interface address.
* Header: Insert the ADM-OSC header message, **/adm/obj/[index]/xyz**
* The device port mapping is an important part too. Please refer to the Nuendo user guide on the object-based setups and how object output buses are connected to device output. You can here map all or selected objects only. This is needed for the next step.

The second step, in the **Project menu**, you can open the ADM Authoring for Dolby Atmos. This is the main windows ofr any Object configuration whatever the renderer. 

![Setup up objects in the ADM Authoring for Dolby Atmos](include/nuendo_adm_4.png ':size=800')

* Choose External OSC Renderer.
* Make sure Auto-Connect Object Busses is selected.
* If your object tracks are select, you can **Create ADM Objects from these selected tracks**. It will create the objects and assign the object ID! Yes, object ID's are the Spat Revolution Index ID.
* You can go back to External OSC renderer setup from here if need be by pressing the gear icon.
* You are done!

![Setup up objects in the ADM Authoring for Dolby Atmos](include/nuendo_adm_5.png ':size=800')

Setting up **OSC Object Position Tracking** (From Spat to mapping to the Object panner)

The next part is for the Nuendo incoming data. Go to the **Studio Menu** and choose OSC Object Position Tracking.

![Setup up objects in the ADM Authoring for Dolby Atmos](include/nuendo_adm_6.png ':size=400')

* Make sure Object Position Tracking is activated.
* Make sure port # is set to 9001. This is the default ADM-OSC output port for Spat Revolution preset.
* Stage Dimensions: This is the ability to scale incoming OSC into Nuendo. By default, it is currently at 0,1 (again like mentioned above this is not the default ADM-OSC and will be fixed in a future Nuendo release). You can simply change this by entering -1.0 M as a Min and 1.0 as a Max.
* Track Mapping allows you to map the incoming Index from Spat to the actual object.

## Spat OSC settings for Nuendo ADM

In the OSC preferences:

![Spat OSC settings for Nuendo ADM-OSC](include/nuendo_adm_7.png ':size=600')

* One Input ADM preset where you select you network interface.
* You see above the default setup for ADM-OSC. For the moment (until Nuendo fixes to default ADM-OSC), you will Edit the transform from linear to support the fact that they spit out 0,1 normalized. This is where you will as well define the Spat Revolution automation zone range (scaling to). For example, here I am using -3, 3.

![Modifying (edit) the transform of scaling](include/nuendo_adm_8.png ':size=300')

**You are done for the input!**


To setup the ADM XYZ Output:

![ADM XYZ Output](include/nuendo_adm_9.png ':size=600')

* Choose the Output ADM-XYZ preset and set the IP address of the Nuendo computer.
* The transformation preset is ok by default. (as long as your OSC Object Position Tracking setup in Nuendo as stage dimensions -1.0, 1.0. 
* You will enter your automation zone (range) that you are sending to Nuendo. This is the same as used for input range. For example -3, 3.


Et voila! You are set. Ready to move sources/objects in Spat Revolution or in the Nuendo panner with bidirectional integration.

---
