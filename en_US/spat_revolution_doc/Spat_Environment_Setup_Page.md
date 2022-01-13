# Setup Page

This is where you will generally start a project by designing the signal-flow graph that you will be working with. _Setup_ is also where you manage the loading and saving of projects to disk.

!> Using the SPAT Revolution Essential license version all the setup modules are configured for you using the Setup Wizard. Adding, reorganizing, duplicating is not allowed. The only required and permitted part is to connect and disconnect Input or Output modules, being software or hardware I/O_

## Setup Modules

The _Environment Setup_ editor is a modular environment. The signal flow starts from the inputs at the top of the graph and concludes with the outputs at the bottom. You add modules to rows using the small <code>+</code> icon to the left of the window. Modules are:

* [Inputs](Spat_Environment_Input_Modules.md)
* [Input Transcoders](Spat_Environment_Input_Transcoder_Modules.md)
* [Sources](Spat_Environment_Source_Room_Modules.md)
* [Rooms](Spat_Environment_Source_Room_Modules.md)
* [Sums]((Spat_Environment_Master_Section_Modules.md))
* [Master Transcoders](Spat_Environment_Master_Section_Modules.md)
* [Masters](Spat_Environment_Master_Section_Modules.md)
* [Binaural Monitors](Spat_Environment_Master_Sectio_Modules.md)
* [Outputs](Spat_Environment_Output_Modules.md)

## Stream types and associated options

Modules blocs are caracterized by their stream type. In spatial audio, audio streams can be of different natures, as seen in the [Spatialisation Technology]() section.

> Blocs are limited to 64 channels I/O

Stream types and their options are :
+ **Channel-based** : most common used bloc where one channel correspond to one speaker or one microphone.
  + Speaker arrangment : allow to select the channel configuration of the bloc.
+ **HOA** : generic ambisonic bloc.
  + **Order** : select the ambisonic order from 1 to 7.
  + **Dimension** : select between a 2D or 3D sound scene.
+ **A-Format** : pre-encoding ambisonic stream (raw ambisonic microphone output).
+ **B-Format** : **deprecated, prefer a 3D HOA first order bloc.**.
+ **UHJ** : special 3D first order ambisonic stream meant for archiving and stereo compatibility.
+ **MS** : Mid-side.
+ **Binaural** : headphone oriented render using HRTF.
+ **Transaural** : binaural decoding on speaker.

## Action menu

### Remove selected

### Duplicated selected

### Connect selected

### Disconnect selected

### Disconnect selected inputs

### Disconnect selected Output

### Disconnect between selected 
<!-- TODO : Completed -->

## Connect/disconnect Modules

![](include/SpatRevolution_UserGuide_-074.jpg)

Connect or disconnect modules by using <code>command/control + click</code> to select some followed by any of the actions available in the options panel on the right of the window. Various keyboard shortcuts are also available for each action. As you connect modules and build up a signal graph, you will see some 'wires' appear which connect modules together. In SPAT Revolution these 'wires' represent connections in the signal graph diagram, you do not directly interact with them. It is not a 'patching' type of interface.

> Select multiple modules using drag/lasso selection or <code>Ctrl/Cmd + Click</code> before an action.

There is no UNDO/REDO paradigm in the signal graph editor at this point. Instead of it is advisable to use <code>Connect/Disconnect Selected</code> actions to restructure the signal graph. Try to avoid deleting modules until you are certain that is the correct action.

> Modules can be connected to multiple destinations.

It is possible to connect some modules, such as input or source, to multiple destinations, as a way of making doubles in a single or doubling a single source into different virtual rooms.

![](include/SpatRevolution_UserGuide_-076.jpg)

## Drag & Drop

The drag and drop feature allows an easy and ergonomic way to connect and reorganize blocks in the setup page.

### Connect modules

![drag&drop1](include/drag&drop1.gif)

<!-- TODO: update the image -->

To create a connection  between two blocks, simply drag one on the other. SPAT will  automatically connect the two blocks. If it is necessary, SPAT will also create supplementary blocks if needed. For example, if we drag and drop an input on a room, SPAT will automatically create a "source" block  between them.

![drag&drop2](include/drag&drop2.gif)

<!-- TODO: update the image -->

This feature also works on a selection of multiple blocks of the same type. For example, if we wished to connect 5 inputs to 1 output, we can select our inputs a drag them  on the output. All the input blocks will be patched to a room block through sources, and the room is a patch to the output through a master block. (With the default stereo room that can be changed later.)

![drag&drop3](include/drag&drop3.gif)

<!-- TODO: update the image -->

### Reorganize modules

The drag and drop feature also allows reorganizing the blocks of the same type. This means that you can now change the order of already created blocks. This gives to the setup page a more ergonomic and flexible feel.

!> Important to note that this will be changing the index number of the source. So be careful with automation already created. This is specific to OSC like using the plugins with OSC where the index is important. Not the case with software sources/inputs which use a different ID system.

<!-- ![drag&drop5](include/drag&drop5.gif)-->
<!-- TODO: update the image -->

<!--We can also reorganize  sources inside rooms. Again, a simple drag and drop allows this smooth  reorganization. This modification is mirrored on the Setup page.-->

<!-- ![drag&drop4](include/drag&drop4.gif)-->
<!-- TODO: update the image -->

## The setup wizard

In our effort to make SPAT Revolution easier to use, we created a small utility to help you set up new SPAT sessions. This is used mainly when dealing with hardware I/O.

To open it, you can either:

- Click on the <code>Setup Wizard</code> button in the top menu of the Setup page
- Go to the main menu, into setup, then "Setup Wizard"
- Or, use <code>ALT + W</code> (The shortcut may not work in Windows)

![openWizard](include/openWizard.gif)

The top part of the setup wizard allows to create a new room (with associated options) or to select an existing room to patch new sources into. If a new room is created, we can choose its stream type and many options linked to it. We can also choose to associate a binaural monitoring block to it (virtualizing the room output). Lastly, for each new room created, a master block and an output block is also created.

The main part of the wizard allows creating up to 8 different types of sources. It works like a table where each line can be used for a specific input stream type. To add or remove a line, simply click on the <code>+</code> or <code>-</code> sign on the left side of a line. You can also use the shortcut <code>Ctrl/Cmd + Go Down</code> or <code>Ctrl/Cmd + Go Up</code>.

![setupWizard](include/setupWizard.gif)

Other shortcuts have been implemented in this wizard:
- <code>Go up</code> and <code>Go down</code> to increase / decrease the number of sources
- <code>Go Left</code> or <code>Go Right</code> to change the Stream Type.
- <code>Ctrl/Cmd + Go Left</code> or <code>Ctrl/Cmd + Go Right</code> to change the format (if Channel Based), or the Dimension (if HOA).
- <code>Ctrl/Cmd + Shift + Go Left</code> or <code>Ctrl/Cmd + Shift + Go Right</code> to change the Order (if HOA).

When we are done creating out different sources, we have two ways to validate the operation. We can either click on <code>Ok</code>, all the sources, rooms and outputs will be created, with a straight routing, or, we can choose to click on <code>Ok +  matrix</code>. This last option will open the input and output matrix of our whole SPAT Revolution session to allow us to quickly customize or validate our patch. Also, if you need to easily create a line in SPAT matrix, simply hold <code>Ctrl</code> and click on the starting point of your line.

![setupWizard2](include/setupWizard2.gif)


## Routing Matrix

As you can imagine routing and patching high density channel counts can get complicated.
When it comes to that, the SPAT routing matrix is there to help.
You will find it at many points throughout the **Environment Setup** graph.

![width=800, atl=Spat Revolution Matrix](include/SpatRevolution_UserGuide_-031.png)

> *Avoid cable swapping on the loudspeaker setup, use software routing instead.*

The routing matrix is available on hardware input and output for routing  as well as for remapping within some modules input and output.
(Input transcoder, Master, and Master transcoder)

The speaker configuration editor, a clear channel labeling and the built-in routing matrix system all help to make the process of signal routing, checking and debugging more straightforward on location, in the virtual mix and in the studio.

> The shortcut <code>Ctrl + click</code> will route one per one all the following channels.

## Room duplication

![](include/SpatRevolution_duplicate_selected_room.png)

SPAT allows to quickly duplicate a room with a few options to help the user
to optimize the routing process. To access this menu, simply click on the <code>Duplicate Selected</code> button, when only a room selected.

The new pop-up windows allow to:
* Rename the duplicated room
* Choose if the sources routed to the original room are routed the new one, or duplicated, or nothing is patched.
* Choose if the outputs of the original rooms are duplicated, mirrored or nothing is done to the duplicated room.

![](include/SpatRevolution_duplicateRoom.gif)

<!-- TODO: update the image -->
