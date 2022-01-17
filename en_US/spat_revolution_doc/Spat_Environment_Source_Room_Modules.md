# Sources & Rooms Module

## Source module

Sources modules are very important and quite unique ones. This is where the object-oriented mixing of SPAT Revolution takes in.

Sources modules associated meta-data to incoming audio stream. Because of their object-oriented nature, **they can only input and output channel-based stream**. In practice, this means you cannot patch, for exemple, an ambisonic stream to a room, even is the room in question is ambisonic itselft. It first need to be transcoded by using and input transcoder.

The so-callen meta-data are the source parameters, such as position and reverberation informations. All this parameters are explaine in section []().

One source can be connected to several rooms. This is one of the advantages of the object-based mixing, it allows to create different mixes in different format with the same exact informations.

### Name

### IO Configuration

### Tracking

### Gain

### Levels

## Room module

If the sources are where localization information are stored, rooms is where the "interpreting" happens. A Room is defined by two main criteria : its output stream type and its reverberation. Simply, a room module look at all the informations stored in sources and then act as a renderer for a given format.

It is a classic case of object-based mixing, where source modules associate meta-data to channels, and room modules interpret them.

!> Only source modules can be connected to room modules.

### Name

### IO Configuration

### Tracking

SPAT Revolution is able to receive data from RTTrPM open protocol tracking systems. This protocol is supported by BlackTrax™. BlackTrax™ is a vision-based system that connects to different third-party applications, such as robotic lights, media servers and SPAT Revolution. OSC is the other very good method to use for tracking, and various tracking systems support it natively.

!> _RTTrPM protocol is only available with the Ultimate license of SPAT Revolution_.

When you have correctly set up the BlackTrax protocol (see [BlackTrax Integration section](ThirdParty_BlackTrax.md)) then you can directly assign Tracking Index to virtual sources, and also to listener position (see [Listener position section](5_Spatialisation_Technology_5_4_Listener_Position.md)) for advanced virtual reality interactive audio projects.

### Gain

### Levels