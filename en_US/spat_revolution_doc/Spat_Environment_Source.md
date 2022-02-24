# Source

<!-- The next row transforms the inputs into virtual objects according to their configuration. This is what needs to happen so that a virtual source appears in a virtual room. If you try to connect an input directly into a room, SPAT will always put a source module in between.

The Source modules are where you set a descriptive name of each virtual object. It's a good idea to do that, as things can get busy inside the rooms. You can also adjust the overall gain of a Source here no matter how many channels it might have. The Source modules are also important for parameter automation using the _SPAT Send_ plug-in, and also in the case of external OSC control.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/IndexExplain.jpg)

External software needs to know how to identify virtual objects, and that will be done using an index number rather than a name. This index number refers to one of these source modules, numbered from left to right which in turn, becomes a virtual sound emitting object in the _Virtual Room_. When working in a Channel Based Room outputting to a _n.1 surround_ speaker arrangement, each source will additionally acquire an individual _LFE Send_. This dial will be available in the Source Parameters inside the Virtual Room editor, and also mirrored here as a fader directly in the Source modules. _LFE Send_ controls how much of this source's signal is mixed into the LFE channel at the output.

> When using a BlackTrax positional tracking system a Tracking index can be assigned to a virtual source directly from the Source module.


## Source Parameters
 -->


Every source in a room has its own set of variable parameters which define its simulated positional information, psycho acoustic properties, virtual acoustic properties and other options.

To edit the variables of a source in the _Source Parameter_ editor, you must first be inside a room. Select the source you want to edit from the list on the left side panel of the Room editor by left-clicking on its index number. Alternatively, grab its 'emitter' object in the 3D room visualization (or just one of them, if the source is a multichannel group). When you select a source, the _Source Parameter_ editor will pop up as a set of categorized groups with which you can alter the properties of the Virtual Source in the Room.

The source's parameters are ordered inside panels. Each panel can be minimized or expanded.

Additionally, a _right click_ on a Source Index number will bring up some further options, especially useful is the **Color** option, which allows you to set an identification color to a Source or Group.

> If a source is a multi-channel one, there will be only one index and one set of parameters for the whole cluster.

!> Note that the source index is also used for OSC automation!

The source's parameters are detailed on the next section, [Source Parameters](Spat_Environment_Source_Parameters.md).


## Basic interactions

### Reset to defaults

A double-click on any Source Parameter dial will reset it to a SPAT default setting. The default setting of a parameter is indicated around a dial as a larger tick than the other tick marks. Additionally, a range is graphically indicated between the default setting and the current setting of a variable parameter.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/SourcesInspector.png)
<!-- TODO: update the image -->

> ★ _Use the defaults as points of reference in your spatial sound design._

### Preset Memories

Each parameter has the possibility to store useful preset settings of your own choosing. Right click on a parameter dial, and a contextual menu will pop up. From there you can store the current setting to a Memory Slot, or Recall a setting from a previously saved memory slot.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Generic/ParameterPreset.png)
<!-- TODO: update the image -->

# Barycentric Groups

When a Source in a Room has more than one channel in its format, it will be represented as a single source with ONE unique index.
It will be visualized as a group in its assigned channel based speaker arrangement.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/3DViewNoSpeakers.png)

In the above screenshot, the red source consists of 5 channels arranged as a DTU 5.0 surround sound configuration.
A multichannel cluster can be conveniently positioned and manipulated _as a single group_ which maintains its correct internal spatial positioning relationships but moves in relation to the absolute listener position in the Room (the Dummy Head).
The dot at the center of each cluster, where each virtual “channel emitter” is attached, is called the “BaryCentric” focus — In other words, a _relative_ listener position that the virtual source configuration remains focused on.


These complex spatial positioning algorithms are computed and controlled in real time using SPAT Revolution’s advanced _Barycentric_ and relative direction source parameters.
A group that may contain many elements can be transformed, scaled, moved and manipulated in complex ways, through only one set of controls.
See dedicated section for a breakdown of the [**Source Parameters**](Spat_Environment_Source_Parameters.md).

### Multiple Source Selection

You can shift click on the Index number of separate sources to create an ad hoc edit group. When you have group Sources in this way, you can perform a number of group edit actions. When you Right Click on an ad hoc group selection, a menu will pop up where you can:

- distribute the sources in the group with the [Transform panel](Spat_Environment_Transformation.md)
- generate different colors for the sources
- reset the positions of the group

When you have selected an ad hoc group using the shift click technique, you can then open the _[Source Parameter](Spat_Environment_Source_Parameters.md)_ panel by clicking on the property panel header 'fold arrow' as  shown in the screenshot below.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/ActionsMultiselection.png)
<!-- TODO: update the image -->

Any source parameter variable you adjust manually will assign that same setting on all selected sources in the group. A barycenter will then become practical to work from a center of mass perspective. For example, transformations like scaling, distance, rotation and directivity of the group is managed by SPAT controlling each member of the group a barycentric relationship.

### Smart Property Filter

This feature allows you to display one or several parameters for all the sources that are in the same room. It is a useful feature for fast editing. Type "azimuth elevation distance" in the filter box for example, and you will see faders appear for only these properties, grouped for each of the sources as demonstrated in the following screenshot.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/SourcesPanelSearch.png)
<!-- TODO: update the image -->

The key word <code>strict:</code> allows searching strictly one or several parameter. For example, </code>strict: gain presence</code> will display only the sources gain and presence, will <code>gain presence</code> will display the gain, the room specific gain, the presence, the room presence, and all gains of the axis and omni filters.

Some pre-determined presets are available on a menu accessible on the left of this edit to give you some ideas.
