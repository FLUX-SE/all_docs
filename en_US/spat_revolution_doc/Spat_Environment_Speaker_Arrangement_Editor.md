# Speaker Arrangement Window

> *★The speaker arrangement editor window showing a predefined 13.1 Auro 3D speaker arrangement.*

The **speaker arrangement editor** offers the ability to prepare the model of the sound diffusion system you are actually using.

![width=700, atl=Spat Revolution Speaker Config Edit](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/RoomInspectorEdit.png)

When you find yourself working on a custom multi-channels speaker arrangement, the **Speaker Config** editor is where a model of the sound diffusion system can be defined and stored into the list of speaker arrangements.

Open the **speaker arrangement editor** by clicking on the <code>Edit</code> button of a Channel-Based room, by the _Speaker Arrangement_ pull down menu. Pre-configured arrangements cannot be deleted or modified but can be **duplicated** (a copy will be generated for editing). A **new** config can also be created.

## Creating & editing a speaker arrangement

![width=500, atl=Spat Revolution Speaker Config](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditor3.png)

### Speaker Arrangement section

**Arrangement drop-down menu:** this menu allows access to a list of all your existing speaker arrangement.

**Duplicate:** create a copy of the current speaker arrangement.

!> You cannot overwrite a factory arrangement. Duplicate it before trying to edit it.

**New:** create a new empty speaker arrangement.

**Delete:** delete the current speaker arrangement.

!> There is no confirmation before deleting an arrangement.

**Rename:** rename the current speaker arrangement.

**Import from:** allow importing a speaker configuration from a third-party software. See the [next section](Spat_Environment_Import_Speaker_Config.md) for more detail.

**Export:** open a window to export a selection of speaker arrangement.

### Alignment section

![width=800, atl=Spat Revolution Speaker Config](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditorCompute3.png)

**Reset:** revert the *compute* process.

**Compute:** compute an ideal position to align all the speakers on the same circle to improve the sweetspot rendering. The furthest away speaker is used as the alignment reference.

Regarding the LFE, by default it is not included in the compute process. If you wish to change this, you will find a "compute LFE" option in the room panel of the preferences page.

> It is preferable to do this alignment in SPAT Revolution instead of external processing as SPAT will use the computed speaker locations (the virtual speakers) for actually spatializing afterward.


### Speakers section

It is possible to create many speakers or to edit them all at once using geometric transformation. In SPAT Revolution, these transformations are mathematical law used to distribute points (in our case, speakers) in the space. In other words, it can help to create circles, spheres or lines of speakers in second instead of minutes.

**Add:** add new speakers according to a specified transformation.

**Transform:** modify the current speaker arrangement according to a specified transformation.


For more information about it, check out the [transformation section](Spat_Environment_Transformation.md)

<!--

TODO: add transformation speaker picture

-->

### Speaker section

**Add:** create a new speaker in the arrangement.

**Del.:** remove the selected speaker in the arrangement.

**Move up:** move the selected speaker one row above.

**Move down:** move the selected speaker one row below.

### The speakers list section

**Nb.:** identify the channel of the speaker.

!> With a Spat Revolution Essential license, blocks cannot use an arrangement containing more than sixteen speakers.

**Name:** identify the name of the speaker.

> To create an LFE channel, simply name one speaker of the arrangement "LFE". It is possible to create until 4 LFE, naming them "LFE 1", "LFE 2", "LFE 3" and "LFE 4". The corresponding sends button will appear on the source parameters panel.  

!> SPAT Revolution uses speaker naming to sum speaker arrangement.

**X (m):** define the position of the speaker on the X-axis, in meters.

**Y (m):** define the position of the speaker on the Y-axis, in meters.

**Z (m):** define the position of the speaker on the Z-axis, in meters.

**Azimuth (°):** define the angle of incidence of the source to the center of the 3D space, in the horizontal plan.

**Elevation (°):** define the angle between the source, the center of the 3D space and horizontal plan.

**Distance (m):** define the distance between the source and the center of the 3D space, in meters.

**Orientation:** define the orientation of the speaker. Default settings is "Automatic"

  + Automatic: default behavior, the yaw and the pitch angles are determined by the shape of the speaker arrangement. It should be the standard orientation of most cases, but can be inefficient on certain specific designs.
  + Listener: the speaker points to the listener head
  + Front: the speaker points to the bottom of the 3D view
  + Back: the speaker points to the top of the 3D view
  + Side Left: the speaker points to the left side of the 3D view
  + Side Right: the speaker points to the right side of the 3D view
  + Custom: the user can define the orientation with the *yaw* and *pitch* parameters.

**Yaw:** rotate the speaker around the Z-axis. 0° degree is pointing the listener.

**Pitch (°):** rotate the speaker in elevation.

!> **Orientation**, **yaw** and **pitch** are only useful in WFS use case.

**Delay (ms):** add a fix amount of latency to a speaker.

**Gain (dB):** change the sound level of the speaker.

!> In many cases, it is wiser to let the **delay** and **gain** parameters untouched, and let the "compute" function do the job.

### Panning Type Tips section

Here, we can find information about which pan law is available in regard of our speaker array. Some explanations are displayed to help understand why some pan laws aren't available.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditorPanningTips.png)

There are five colors associated with the possible panning types:
+ **Green**: this panning type is valid and functional with the selected speaker array.
+ **Orange**: this panning type is somewhat functional, but there certainly is a better solution available. Hovering the panning type with the mouse will display a message to help improve the arrangement.
+ **Red**: this panning type is not functional with the selected speaker array. Hovering the panning type with the mouse will display a message to explain why it does not work.
+ **Grey**: Two speakers are located at the same spot (i.e. the speakers are coincident). The speaker arrangement is incorrect.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SpeakerEditorInvalid.png)

> Error displayed with HOA panning type.

For more information about each pan law, check out the section [Panning algorithms](Spatialisation_Technology_Panning_Algorithms.md).