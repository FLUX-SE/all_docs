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

### Gain

### Levels