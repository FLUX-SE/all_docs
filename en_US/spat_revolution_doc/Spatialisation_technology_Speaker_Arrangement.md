# Speaker Arrangements and Calibration

## Rendering To Speakers

* Virtual scene is transposed to a speaker system.
* Speaker arrangements to model the diffusion system.
* Panning or Synthesis method.
* Arrangements used for source, room and transcode.

> *Pay attention to arrangements and channel routing, they are the key !.*
	
In order for the virtual scene (our room) to translate correctly as an immersive sound experience on a speaker system, Spat Revolution needs to have a model of a multi-channel speaker arrangement which will be used to apply the panning or synthesis method to map the information to the destination speakers and render the sound field correctly.

To this end, you will find a large library of standard and specialized speaker arrangements already built into Spat Revolution which can be used in various places throughout the Environment Setup.

Speaker arrangements can be used to fit the format of a virtual room to match the actual speaker system being used to diffuse the mix in a real room. Channel-based speaker configurations are used to define a multi-channel source arrangement, a room speaker source arrangement, and can also be used in the transcoding phase of soundfields

The golden rule when working with multichannel based audio is to ensure to have the appropriate format, speaker arrangement, and channel routing throughout, otherwise the virtual space will not map correctly into a physical space.

## Custom Arrangements

![width=700, atl=Spat Revolution Speaker Config](include/SpatRevolution_SpeakerConfig_1.png)

> *★The speaker configuration window showing a pre-defined 13.1 Auro 3D speaker arrangement.*

The **Speaker Config** editor offers the ability to prepare the model of the sound diffusion system you are actually using. 

![width=700, atl=Spat Revolution Speaker Config Edit](include/SpatRevolution_UserGuide_-035.jpg)
 
When you find yourself working on a custom multi-channel speaker arrangement, the **Speaker Config** editor is where a model of the sound diffusion system can be defined and stored into the list of speaker arragements. 

Open the **Speaker Config** editor by clicking on the EDIT button of a Channel-Based room, by the _Speaker Arrangement_ pull down menu. Pre-configured arrangements cannot be deleted but can be **duplicated**  (a copy will be generated for editing) or a **New** config can be created.

## Speaker Config Window

![width=500, atl=Spat Revolution Speaker Config](include/SpatRevolution_SpeakerConfig_3.png)

> *Editing a speaker configuration showing a copy of a 13.1 Auro 3D speaker arrangement.*

![width=1000, atl=Spat Revolution Speaker Config](include/SpatRevolution_UserGuide_-037.jpg)

> *Computing and using the Normalize function.*

Note: Managing the **Speaker Config**uration includes the ability to **delete**, **rename**,  **import** configuration(s) from a file, or **export** configuration(s) to a file. Note that Spat Revolution’s pre-defined speaker arrangements can’t be deleted or renamed, but duplicating them (making a copy) will allow you to edit the arrangement thus starting from an existing configuration. 

Once editing a speaker configuration, you can either **+ Add, - Del, Move Up or Move Down** speakers in the list. Note that the total number of channels in your arrangement is denoted above the list. Your speaker system contains a Low Frequency LFE channel where you want the ability to send audio to it like on an aux system? Simply adding a channel (or channels), called LFE, will do the magic for you here directly. This particular channel won’t be fed from the virtual room panning, but by the LFE Send on each of the sources that will be available on rooms containing an LFE. 

!> Importantly, **_LABEL_** speakers to unique names as the naming convention is used for summing audio streams

## Speaker Position

![width=700, atl=Spat Revolution Speaker Position](include/SpatRevolution_UserGuide_-039.jpg)

> *Positioning Speakers with XYZ or AES coordinates.*

Position information of the loudspeaker can be entered as X, Y, Z in meters or with Azimuth degree, Elevation degree, and Distance in meters. These position have an origin of (0,0,0), the Listener Position, the center of reference. Delay and Gain can be used to manually align the speaker location to a virtual "aligned" speaker, essentially creating a virtual speaker.

Spat Revolution can accept real world absolute measurements which you have entered manually, and this speaker arrangement can be used in all Channel Based contexts, such as an input array of microphone, simulating the exact physical speakers in a virtual room, virtualising the speaker sources in binaural or transcoding onto channel based system from an Ambisonic stream

## Speaker transformation

To modify a speaker arrangement with a predefined action, you can use the "transform" menu. To access it, click on the "Transform" button. A pop-up window will appear.

![width=800, atl=Spat Revolution Transform Speaker](include/SpatRevolution_TransformSpeakers.png)

**Normalize Distance**: All the speaker will be placed at the same distance from the listener.

**Set Elevation**: All the speaker will be placed at the same height from the listener.

**Offset Distance**: This transform apply an offset to the distance parameter of all speaker. It preserve relative position of speakers.

**Offset Position XYZ**: Same as above but with XYZ parameter.

**Scale Distance**: This transform allow to scale all the speakers inside a certain range of distance. It preserve relative position of speakers.

**Scale XYZ**: Same as above but with XYZ parameter.

**Rotation Azimuth**: With this transform, we can apply a rotation to our speaker array.

**Mirror**: As its name imply, this transform create a mirror of the speaker arrangement regarding of a certain axis.

**Linear uniform distribution along the selected axis**: This transform put all the speaker on the same axis, with an even space between them.

**Circle**: This transform place all the speaker on the same circle, with an even space between them.

**Sinus**: This transform create a sinus shape with the speakers.


> The **Normalize** can be used to rapidly scale down the speaker arrangement to have the furthest away speaker distance set for example to 2 Meters only. All predefined arrangments have this normalization. This 2 Meters is as well the default source distance which brings constiency from room to room., This helps as well reduce the virtual room environment size to facilitate working with the parameters range when working with very large speaker setups. Working with arrangements normalized this way facilitates dealing with automation 

!>  Important, when using the **normalize function or any transform function** you should make a copy of the arrangement prior as their is no undo feature.


## Speaker Alignment

![width=800, atl=Spat Revolution Speaker Config](include/SpatRevolution_UserGuide_-041.jpg)

> *★Physical and Virtual speakers after using the compute function.*

Note: In addition, it can also use the measurements you have enterred into the speaker arrangement to compute (calculate and apply) the optimum delays and gains for equidistance of all speakers to the center of reference listener. This is an advanced speaker management technique made easily accessible by a single press of the **Compute** button. 

It is a speaker alignment method on a speaker's physical configuration that may not have speakers located in ideal locations. Basically Spat revolution will create virtual speakers after calculating and applying the alignmnt so all speakers become equidistant to the center of reference. This is a technique preconized when using panning methods that are sweet spot centric such as VBAP and VBIP. The methods will provide very smooth panning on arrangements that have all speakers equidistant to the optimum listening position. 

> It is preferable to do this alignment in SPAT Revolution instead of external processing as Spat will use the computed speaker locations (the virtual speakers) for actually spatializing afterward. 

> A detailed tutorial on advanced scripting of Custom Speaker Configurations using the Python language is available as in some cases, creating speaker setups in an editor is not the most efficient way, primarily when such information is available as a list and was exported by an acoustic and design simulation software like those used with loudspeaker companies. This can be quite practical for some larger more complex setups. See scripting section.

## Panning tips

In the Speaker Config window, we can found information about which pan law to use in regards of our speaker array. As their is many option avaible in Spat, this simplify the choice to made.

There is four colors associated with the possible panning types:
- Green : this panning type is valide and functionnal with the selected speaker array
- Orange : this panning type is somewhat functionnal, but there certainly is a better solution available. Hovering the panning type with the mouse will display a message to help improve the arrangement.
- Bright red : this panning type is not functionnal with the selected speaker array. Hovering the panning type with the mouse will display a message to explain why it does not work
- Dark red : this panning type is not functionnal.
- Grey : Two speaker are located at the same spot : the speaker arrangement is incorrect.

For more information about each pan law, check out the section [Panning algorithms](5_Spatialisation_Technology_5_5_Panning_Algorithms.md).

## Routing Matrix

As you can imagine routing and patching high density channel counts can get
complicated. When it comes to that, the SPAT routing matrix is there to
help. You will find it at many points throughout the **Environment Setup** graph.

![width=800, atl=Spat Revolution Matrix](include/SpatRevolution_UserGuide_-031.png)

> *Avoid cable swapping on the loudspeaker setup, use software routing instead.*

The routing matrix is available on hardware input and output for routing  as well as for remaping within some modules input and output. (Input transcode, Master, and Master Trancode)

The speaker configuration editor, clear channel labelling and the built-in routing matrix system all help to make the process of signal routing, checking and debugging more straight-forward on location, in the virtual mix and in the studio.

## Import Speaker Array

For systems that are regularly changing such as in live production, setting up the speaker configuration in the simulation software and then  repeating it in the immersive software is not the most fun part!

To ease this part of the setup, you can now import from software of Nexo  (NS-1), Adamson (Blueprint), d&b (ArrayCalc) and the standard EASE  software.

This import is integrated into the "Speaker Config" editor where you can find the Import from button.

![image](include/impSpkArr_image.png)
To begin is the FLUX IOConfig. This is the FLUX:: speaker arangement file format. This can be a great  tool to export and save your FLUX:: arangements or to import an  arangment into another session / computer system.

In Spat Revolution, it is important to understand that speaker arrangements **DO**  follow the session file. So if you are opening a .JSON with a arrangement new  to you system, Spat Revolution will create that arangement and it will  then be part of the user created arragements always available. 

You care to know where these arragments are stored? **Document/FLUX SE/Spat Revolution/Config** is where your master IOCONFIG file is located. (It includes all the  manually created or automatically created by session opening). To note  the repertory **Document/FLUX SE/Spat Revolution** which is now the folder that contains all of your Spat preferences. A  troubleshooting trick is to thrash this folder if data as become  corrupted. (Spat not opening for example) . So yes, exporting your  arangements or backing up Document/FLUX SE/Spat Revolution is never a  bad pratice!

How to import a speaker configuration from:

**Nexo NS-1 :**

In  NS-1, to export all the speaker : Go to the Speaker Positions Windows,  "Speakers/Speakers Position" or "Ctrl + P". Select all the Speakers, and click on "Export, File...". This will export a .txt file, readable by  Spat Revolution

**Adamson BluePrint:**

In  BluePrint, to export all the cabinets: Go to the Cabinet tab. In the  line "Cabinet Group", click on the 4th button, "Export All Cabinets".  This will export a .arys file readable by Spat Revolution

![image(1)](include/impSpkArr_image(1).png)


**d&b ArrayCal:**

In ArrayCal, export all the sources with "Files/Export/EASE/Coordinates  of all sources". This will export a .xld file readable by Spat Revolution

![image(2)](include/impSpkArr_image(2).png)

**EASE:** This is a standard EASE txt file. This still need final validation.

**Excel**

![image(2)](include/speaker_import_excel_example.png)

**[Speaker import from Excel template](https://public.3.basecamp.com/p/w1VQL9UbbndSXP5P3qpU6DnU)**

FLUX IOCONFIG file
**[Speaker arrangements for various dome and planetariums](https://public.3.basecamp.com/p/pPtg3qFrUsxyPPmQ3b3JLPqW)**


**[Custom Speaker Arrangement Script](https://public.3.basecamp.com/p/rQStK3igPkaXisYS4Gs5sJ2g)**
