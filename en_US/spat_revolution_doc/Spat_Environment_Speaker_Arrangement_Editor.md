# Speaker Arrangement Window

> *★The speaker arrangement editor window showing a predefined 13.1 Auro 3D speaker arrangement.*

The **speaker arrangement editor** offers the ability to prepare the model of the sound diffusion system you are actually using.

![width=700, atl=Spat Revolution Speaker Config Edit](include/SpatRevolution_UserGuide_-035.jpg)

When you find yourself working on a custom multi-channel speaker arrangement, the **Speaker Config** editor is where a model of the sound diffusion system can be defined and stored into the list of speaker arrangements.

Open the **speaker arrangement editor** by clicking on the *Edit* button of a Channel-Based room, by the _Speaker Arrangement_ pull down menu. Pre-configured arrangements cannot be deleted but can be **duplicated** (a copy will be generated for editing). A **new** config can also be created.

## Creating & editing a speaker arrangement

![width=500, atl=Spat Revolution Speaker Config](include/SpatRevolution_SpeakerConfig_3.png)

### Speaker Arrangement section

**Arrangement drop-down menu :** this menu allows access to a list of all your existing speaker arrangement.

**Duplicate :** create a copy of the current speaker arrangement.

!> You cannot overwrite a factory arrangement. Duplicate it before trying to edit it.

**New :** create a new empty speaker arrangement.

**Delete :** delete the current speaker arrangement.

**Rename :** rename the current speaker arrangement.

**Import from :** allow importing a speaker configuration from a third-party software. See the next section for more detail.

**Export :** open a window to export a selection of speaker arrangement.

### Alignment section

![width=800, atl=Spat Revolution Speaker Config](include/SpatRevolution_UserGuide_-041.jpg)

**Reset :** revert the *compute* process.

**Compute :** compute an ideal position to align all the speakers on the same circle to improve the sweetspot rendering. The furthest away speaker is used as the alignment reference.

Regarding the LFE, by default it is not included in the compute process. If you wish to change this, you will find a "compute LFE" option in the room panel of the preferences page.

> It is preferable to do this alignment in SPAT Revolution instead of external processing as SPAT will use the computed speaker locations (the virtual speakers) for actually spatializing afterward.


### Speakers section

It is possible to create many speakers or to edit them all at once using geometric transformation. In SPAT Revolution, these transformations are mathematical law used to distribute points (in our case, speakers) in the space. In other words, it can help to create circles, spheres or lines of speakers in second instead of minutes.

**Add :** add new speakers according to a specified transformation.

**Transform :** modify the current speaker arrangement according to a specified transformation.

<!--

TO DO: add transformation speaker picture

**Transformation :** define which distribution law to use.
 + Linear uniform distribution along the selected axis, to create a line parallel to a certain axis (X,Y or Z)
 + Circle, to create a circle around the listener head
 + Sinus,

-->

### Speaker section

**Add :** create a new speaker in the arrangement.

**Del. :** remove the selected speaker in the arrangement.

**Move up :** move the selected speaker one row above.

**Move down :** move the selected speaker one row below.

### The speakers list section

**Nb. :** identify the channel of the speaker.

!> With a Spat Revolution Essential license, blocks cannot use an arrangement containing more than sixteen speakers. 

**Name :** identify the name of the speaker.

> To create an LFE channel, simply name one speaker of the arrangement "LFE".

!> SPAT Revolution use speaker naming to sum speaker arrangement.

**X (m) :** define the position of the speaker on the X-axis, in meter.

**Y (m) :** define the position of the speaker on the Y-axis, in meter.

**Z (m) :** define the position of the speaker on the Z-axis, in meter.

**Azimuth (°) :** define the angle of incidence of the source to the center of the 3D space, in the horizontal plan.

**Elevation (°) :** define the angle between the source, the center of the 3D space and horizontal plan.

**Distance (m) :** define the distance between the source and the center of the 3D space, in meter.

**Orientation :** automatically define the yaw and the pitch of the speaker regarding of certain cases.

  + Listener : the speaker points to the listener head
  + Front : the speaker points to the bottom of the 3D view
  + Back : the speaker points to the top of the 3D view
  + Side Left : the speaker points to the left side of the 3D view
  + Side Right : the speaker points to the right side of the 3D view
  + Custom : the user can define the orientation with the *yaw* and *pitch* parameters.

**Yaw :** rotate the speaker around the Z-axis.

**Pitch (°) :** rotate the speaker in elevation.

!> **Orientation**, **yaw** and **pitch** are only useful in WFS use case.

**Delay (ms) :** add a fix amount of latency to a speaker.

**Gain (dB) :** change the sound level of the speaker.

!> In many cases, it is wiser to let the **delay** and **gain** parameters untouched, and let the "compute" function do the job.

### Panning Type Tips section

Here, we can find information about which pan law to use in regard of our speaker array. As there are many options available in SPAT, this simplifies the choice to make.

![](include/Panning_Tips.png)
<!-- TODO: update the image with the latest panType-->

There are five colors associated with the possible panning types:
+ **Green** : this panning type is valid and functional with the selected speaker array
+ **Orange** : this panning type is somewhat functional, but there certainly is a better solution available. Hovering the panning type with the mouse will display a message to help improve the arrangement.
+ **Red** : this panning type is not functional with the selected speaker array. Hovering the panning type with the mouse will display a message to explain why it does not work.
+ **Grey** : Two speakers are located at the same spot (i.e. the speakers are coincident). The speaker arrangement is incorrect.

![](include/Panning_Tips_Error.png)

> Error displayed with HOA panning type.

For more information about each pan law, check out the section [Panning algorithms](5_Spatialisation_Technology_5_5_Panning_Algorithms.md).


<!-- > *Editing a speaker arrangement showing a copy of a 13.1 Auro 3D speaker arrangement.* -->

<!-- ![width=1000, atl=Spat Revolution Speaker Config](include/SpatRevolution_UserGuide_-037.jpg) -->

<!-- > *Computing and using the Normalize function.* -->

<!-- !> With a Spat Revolution Essential license, blocks cannot use an arrangement containing more than sixteen speakers.  -->

<!-- Managing the **speaker arrangement** includes the ability to <code>delete</code>, <code>rename</code>,  <code>import</code> configuration(s) from a file, or <code>export</code> configuration(s) to a file. Note that SPAT Revolution’s predefined speaker arrangements can’t be deleted or renamed, but duplicating them (making a copy) will allow you to edit the arrangement thus starting from an existing configuration. -->

<!-- Once editing a speaker arrangement, you can either <code>+ Add</code>, <code>- Del</code>, <code>Move Up</code> or <code>Move Down</code> speakers in the list. Note that the total number of channels in your arrangement is denoted above the list. Your speaker system contains a Low Frequency LFE channel where you want the ability to send audio to it like on an aux system? Simply adding a channel (or channels), called LFE, will do the magic for you here directly. This particular channel won’t be fed from the virtual room panning, but by the LFE Send on each of the sources that will be available on rooms containing an LFE. -->

<!-- ## Speaker Position -->

<!-- ![width=700, atl=Spat Revolution Speaker Position](include/SpatRevolution_UserGuide_-039.jpg) -->

<!-- > *Speakers can be positioned with XYZ or AED coordinates.* -->

<!-- Position information of the loudspeaker can be entered as X, Y, Z in meters or with azimuth degrees, elevation degrees, and Distance in meters. These positions have an origin of (0,0,0), the Listener Positions, the center of reference. Delay and Gain can be used to manually align the speaker location to a virtual "aligned" speaker, essentially creating a virtual speaker. -->

<!-- SPAT Revolution can accept real world absolute measurements which you have entered manually, and this speaker arrangement can be used in all channel-based contexts, such as an input array of microphones, simulating the exact physical speakers in a virtual room, virtualizing the speaker sources in binaural or transcoding into channel-based system from an Ambisonic stream.-->

<!-- The **Normalize** can be used to rapidly scale down the speaker arrangement to have the furthest away speaker distance set for example to 2 meters only. All predefined arrangements have this normalization. These 2 meters also the default source distance which brings consistency from room to room, This helps as well reduce the virtual room environment size to facilitate working with the parameters range when working with very large speaker setups. Working with arrangements normalized this way facilitates dealing with automation. -->

<!-- !>  Important, when using the **normalize function or any transform function,** you should make a copy of the arrangement prior validation, as there is no undo feature. -->

<!-- ## Speaker Alignment -->


<!-- > *★Physical and virtual speakers after using the compute function.* -->

<!-- The measurements you have entered into the speaker arrangement are also useful to compute (aka. calculate and apply) the optimum delays and gains for equidistance of all speakers to the center of reference listeners. This is an advanced speaker management technique made easily accessible by a single press of the **Compute** button.

It is a speaker alignment method on a speaker's physical configuration that may not have speakers located in ideal locations. Basically SPAT revolution will create virtual speakers after calculating and applying the alignment so all speakers become equidistant to the center of reference. This is a technique preconized when using panning methods that are sweet spot centric such as DualBand VBP, VBAP or VBIP. The methods will provide very smooth panning on arrangements that have all speakers equidistant to the optimum listening position.

> It is preferable to do this alignment in SPAT Revolution instead of external processing as SPAT will use the computed speaker locations (the virtual speakers) for actually spatializing afterward.

Regarding the LFE, by default it is not included in the compute process. If you wish to change this, you will find a "compute LFE" option in the room panel of the preferences page. -->

