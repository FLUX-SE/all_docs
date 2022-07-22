# Setup Page

This is where you will generally start a project by designing the signal-flow graph that you will be working with. The _Setup page_ is also where you manage the loading and saving of projects to disk.


## Setup Modules

The _Environment Setup_ editor is a modular environment. The signal flow starts from the inputs at the top of the graph and concludes with the outputs at the bottom. You add modules to rows using the small <code>+</code> icon to the left of the window. Modules are:

* [Inputs](Spat_Environment_Input_Modules.md)
* [Input Transcoders](Spat_Environment_Input_Transcoder_Modules.md)
* [Sources](Spat_Environment_Source_Room_Modules.md)
* [Rooms](Spat_Environment_Source_Room_Modules.md)
* [Sums](Spat_Environment_Master_Section_Modules.md)
* [Master Transcoders](Spat_Environment_Master_Section_Modules.md)
* [Masters](Spat_Environment_Master_Section_Modules.md)
* [Binaural Monitors](Spat_Environment_Master_Section_Modules.md)
* [Outputs](Spat_Environment_Output_Modules.md)

## Stream types and associated options

Modules blocs are caracterized by their stream type. In spatial audio, audio streams can be of different natures, as seen in the [Spatialisation Technology]() section.

Stream types and their options are :
+ **Channel-based** : most common used bloc where one channel correspond to one speaker or one microphone.
  + Speaker arrangment : allow to select the channel configuration of the bloc.
+ **HOA** : generic ambisonic bloc.
  + **Order** : select the ambisonic order from 1 to 7.
  + **Dimension** : select between a 2D or 3D sound scene.
+ **A-Format** : pre-encoding ambisonic stream (raw ambisonic microphone output).
+ **B-Format** : **deprecated, prefer a 3D HOA first order bloc.**
+ **UHJ** : special 3D first order ambisonic stream meant for archiving and stereo compatibility.
+ **MS** : Mid-side.
+ **Binaural** : headphone oriented render using HRTF.
+ **Transaural** : binaural decoding on speaker.

## The graph editor

The modular graph editor handles basic mouse editing.

### Module selection

Modules can be select by clicking on them. To select several ones, hold <code>Ctrl/Cmd</code> while clicking on additional modules. It is also possible to use a marquee selection by left clicking, holding the button, and dragging the mouse over the modules you want to select.

### Drag & Drop

The drag and drop feature allows an easy and ergonomic way to connect and reorganize modules in the setup page.

**Connect modules**

![drag&drop1](include/drag&drop1.gif)

<!-- TODO: update the image -->

To create a connection between two modules, simply drag one on the other. SPAT will  automatically connect the two modules. If it is necessary, SPAT will also create supplementary modules if needed. For example, if we drag and drop an input on a room, SPAT will automatically create a "source" block  between them.

![drag&drop2](include/drag&drop2.gif)

<!-- TODO: update the image -->

This feature also works on a selection of multiple modules of the same type. For example, if we wished to connect 5 inputs to 1 output, we can select our inputs a drag them  on the output. All the input modules will be patched to a room block through sources, and the room is a patch to the output through a master block, with the default stereo room that can be changed later.

![drag&drop3](include/drag&drop3.gif)

<!-- TODO: update the image -->

**Reorganize modules**

The drag and drop feature also allows reorganizing the modules of the same type. This means that you can now change the order of already created modules. This gives to the setup page a more ergonomic and flexible feel.

!> Important to note that this will be changing the index number of the source. So be careful with automation already created. This is specific to OSC like using the plugins with OSC where the index is important. Not the case with software sources/inputs which use a different ID system.


## The setup wizard

In our effort to make _SPAT Revolution_ easier to use, we created a small utility to help you set up new SPAT sessions. This is used mainly when dealing with hardware I/O.

To open it, you can either:

- Click on the <code>Setup Wizard</code> button in the top menu of the Setup page;
- Go to the main menu, into setup, then "Setup Wizard";
- Or, use <code>ALT + W</code> (the shortcut is not working in Windows).

![openWizard](include/openWizard.gif)

The top part of the setup wizard allows to create a new room (with associated options) or to select an existing room to patch new sources into. If a new room is created, we can choose its stream type and many options linked to it. We can also choose to associate a binaural monitoring block to it (virtualizing the room output). Lastly, for each new room created, a master block and an output block is also created.

The main part of the wizard allows creating up to 8 different types of sources. It works like a table where each line can be used for a specific input stream type. To add or remove a line, simply click on the <code>+</code> or <code>-</code> sign on the left side of a line. You can also use the shortcut <code>Ctrl/Cmd + Go Down</code> or <code>Ctrl/Cmd + Go Up</code>.

![setupWizard](include/setupWizard.gif)

Other shortcuts have been implemented in this wizard:
- <code>Go up</code> and <code>Go down</code> to increase / decrease the number of sources
- <code>Go Left</code> or <code>Go Right</code> to change the Stream Type.
- <code>Ctrl/Cmd + Go Left</code> or <code>Ctrl/Cmd + Go Right</code> to change the format (if Channel Based), or the Dimension (if HOA).
- <code>Ctrl/Cmd + Shift + Go Left</code> or <code>Ctrl/Cmd + Shift + Go Right</code> to change the Order (if HOA).

When we are done creating out different sources, we have two ways to validate the operation. We can either click on <code>Ok</code>, all the sources, rooms and outputs will be created, with a straight routing, or, we can choose to click on <code>Ok +  matrix</code>. This last option will open the input and output matrix of our whole _SPAT Revolution_ session to allow us to quickly customize or validate our patch. Also, if you need to easily create a line in SPAT matrix, simply hold <code>Ctrl</code> and click on the starting point of your line.

![setupWizard2](include/setupWizard2.gif)

## Action menu

This menu handles basic operation of modules, like connecting, disconnecting and renaming. Some of these actions are contextual, and depend on the block, or the number of modules selected.

!> Note that there is no undo in _SPAT Revolution_. Think twice before operating and save regularly.

### Remove selected

Remove the selected modules.

### Duplicated selected

Duplicate the selected modules.

**Room duplication**

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/RoomDuplicate.png)

_SPAT Revolution_ allows to quickly duplicate a room with a few options to help the user
to optimize the routing process. To access this menu, simply click on the <code>Duplicate Selected</code> button, when only a room selected.

The new pop-up windows allows to:
* Rename the duplicated room
* Choose if the sources routed to the original room are routed the new one, or duplicated, or nothing is patched.
* Choose if the outputs of the original rooms are duplicated, mirrored or nothing is done to the duplicated room.

![](include/SpatRevolution_duplicateRoom.gif)


### Connect selected

Connect selected modules. Modules can be connected to multiple destinations.

> _SPAT Revolution_ will always try to guess what you try to achieve. For exemple, you can connect an input block directly to an output block and SPAT will create necessary modules in-between.

### Disconnect selected

Disconnect **both** inputs and outputs of the selected modules.

### Disconnect selected inputs

Disconnect connected inputs of selected modules.

### Disconnect selected Output

Disconnect connected outputs of selected modules.
### Disconnect between selected 

Disconnect the connections between selected modules.

## Routing Matrix

As you can imagine routing and patching high density channel counts can get complicated.
When it comes to that, the SPAT routing matrix is there to help.
You will find it at many points throughout the **Environment Setup** graph.

![width=800, atl=_SPAT Revolution_ Matrix](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/OutputMatrix.png)

> *Avoid cable swapping on the loudspeaker setup, use software routing instead.*

The routing matrix is available on hardware input and output for routing as well as for remapping within some modules input and output: Input transcoder, Master, and Master transcoder.

The speaker configuration editor, a clear channel labeling and the built-in routing matrix system all help to make the process of signal routing, checking and debugging more straightforward on location, in the virtual mix and in the studio.

> The shortcut <code>Ctrl + click</code> will route one per one all the following channels.

Master transcoder and master matrix support summing, thus, one input can be connect to several outputs, or the opposite.
