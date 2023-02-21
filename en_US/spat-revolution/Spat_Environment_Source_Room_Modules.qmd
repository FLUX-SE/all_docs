# Sources & Rooms Module

## Source module

Sources’ modules are very important and quite unique ones. This is where the object-oriented mixing of SPAT Revolution takes in.

Sources’ modules associated metadata to incoming audio streams. Because of their object-oriented nature, **they can only input and output channel-based streams**. In practice, this means you cannot patch, for example, an ambisonic stream to a room, even if the room in question is ambisonic itself. It first needs to be transcoded by using and input transcoder.

The so-called metadata is the source parameters, such as position and reverberation information. All these parameters are explained in the section [Source properties](Spat_Environment_Source.md).

One source can be connected to several rooms. This is one of the advantages of the object-based mixing: it allows to create different mixes in different formats with the same exact information.

### Name

Allows renaming a source. By default, it takes the name of the input patched into it.

### IO Configuration

Allows selecting the speaker arrangement used by the source. It can be selected from the list or user defined.

Multi-channel sources is one of the unique SPAT Revolution features.

> If you struggle to understand why we talk about speakers at this stage, simply consider them as "virtual" speaker that will be emitting in a "virtual" room.

!> A source can and should only be channel-based!

### Tracking

SPAT Revolution is able to receive data from RTTrPM open protocol tracking systems. This protocol is supported by BlackTrax™. BlackTrax™ is a vision-based system that connects to different third-party applications, such as robotic lights, media servers and SPAT Revolution. OSC is the other very good method to use for tracking, and various tracking systems support it natively.

!> _RTTrPM protocol is not available with the **Essential** license of SPAT Revolution_.

When you have correctly set up the BlackTrax protocol (see [BlackTrax Integration section](ThirdParty_BlackTrax.md)) then you can directly assign Tracking Number to virtual sources, and also to listener position (see [Listener position section](Spatialisation_Technology_Listener_Position.md)) for advanced virtual reality interactive audio projects.

### Gain

Change the input gain of the source.

### Levels

Basic true peak metering for each block's channels.

## Room module

If sources are where localization information is stored, rooms are where the "interpreting" happens. A room is defined by two main criteria: its output stream type and its reverberation. Simply, a room module look at all the information stored in sources and then act as a renderer for a given format.

It is a classic case of object-based mixing, where source modules associate metadata to channels, and room modules interpret them.

!> Only source modules can be connected to room modules.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SessionWithRoomSelected.png)

The first thing to notice is that we can add any number of rooms. In the screenshot above, two HOA 3D rooms are being used, each with differently designed acoustics. SPAT revolution offers flexibility, in order to encompass different workflow ideas or experimental approaches. For example, the same virtual sources may be assigned into multiple rooms, with multiple end destinations. Or as in the screenshot above, virtual sources might exist in different spaces that get summed together.

!> The **Essential** license limits the number of active (processed) rooms to one (1). The other are deactivated (not processed).

### Name

Allow renaming a room. 

!> Rooms cannot share the same name!

### IO Configuration

Allow selecting the rendering type and the associated options.

**Stream Type** :

+ Channel Based
+ HOA
+ Binaural
+ MS
+ B-Format (depreciated, please use HOA 1st order room connected to a master transcoder to transform it on B-Format standard)

### Tracking

See [Listener position section](Spatialisation_Technology_Listener_Position.md).

### Gain

Change the output level of the room.

### Levels

Basic true peak metering for each block's channels.