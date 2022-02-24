# Presenting the 3D view

## Room 3D View

The 3D view purpose is to let you interact with the sound sources in the simplest way possible:
+ one click to select.
+ drag to move them.

Also, the camera angle can be manipulated:
+ The mousewheel control the zoom factor.
+ *cmd/ctrl+drag* will rotate the scene.
+ *shift+drag* will move the scene.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/3DViewDualView.png)

> A split screen Top-Front view is also available in the top bar menu. See the corresponding section below.

Selecting a source also displays its name over its 3D representation. At the top of the room, there is an option to display the name of all the sources or of all the speakers.

## Room top menu

### Display output drop-down

Located on top of the 3D view, the “display output” drop-down allows choosing which point of the signal path to display.

For example, working in an HOA room create 3D view that does not show any speaker. This is because of the very nature of how ambisonic work. But it also means that you cannot use Nebula in that kind of room. This is where this “display output” feature becomes handy. Instead of showing the actual HOA scene, it is possible to choose to look at the sound scene at the transcoding stage to see what happens with Nebula on the speaker array.
<!--TO BE COMPLETED-->

## Nebula Spatial Spectrogram

_Nebula_ is a technology adapted from our flagship **FLUX:: Analyzer System**, a suite of highly regarded professional mastering and mixing visualization tools.

!> _Nebula Technology is only available with the Ultimate license of SPAT Revolution_.


![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Layout/FilmMixingC.png)

> Screenshot from a Flux Pure Analyzer session.

**Nebula** in Spat Revolution provides a unique representation of the sound field in terms of spectral content and localization rendered directly inside the 3D speaker simulation and virtual room display. It combines the functionality of a spectrum analyzer and a vector scope in a novel real-time display. It is a useful tool to get a real time overview of your SPATial mix in terms of spectral-spatial diffusion, and can give quite accurate representations of 'where' and 'how' sound will manifest over a real world sound system. A lot of work has gone into optimizing the real-time rendering of the display, not solely for aesthetic reasons, but because we wanted the display to react instantly to all the details in the incoming multichannel audio. The idea is literally for you to be able to see what the listener will hear and feel.

**How does it work?**

The overall principles behind _Nebula_ are quite straightforward. At any given time, and for every frequency, the engine computes the position of a frequency in space (2D in stereo and 3D for multi-channel surround). This position is taken as the center of gravity of the various channels, weighted by the relative amplitude of the signal in their corresponding channel. A color-intensity mapped projection is computed for the multi-speaker plane, giving a spectrum-space frame constrained to the surround sound field radius or sphere. Past analysis frames are progressively “forgotten”, using blur and dimming, in order to make place for new information, which gives the graphic display increased legibility and its characteristic 'nebulous' quality.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/3DViewNebula.png)

## Room output parameters

### Output list

<!-- TODO: add the image -->

This panel list all the speakers used in the room (when set to channel based). It allows quick access to the speaker arrangement editor and to the compute function.
Each output has a "test" button that sends the signal from the signal generator directly the routed speaker. The signal generator type and level are set in the _Preferences_ page.

!> Be careful, the generator is post mute and post gain

### Listener

This panel gives access to the listening point. We can change its position, using the _X_, _Y_, _Z_ parameters, and its rotations using _Yaw_, _Pitch_, _Roll_.

### Protection Zone

<!-- TODO: add the image -->

This panel controls the behavior and size of the protection zone. By default, it is set to a diameter of four meters. Please check out the section named "Understanding the 3D view" if you want more information about the protection zone.
Note that the protection zone is attached to the listener position.

+ Source fit speakers elevation
+ Source over listener head
+ Width


### Efficiency Zone

<!-- TODO: add the image -->

This panel contains options related to the efficiency zone.

+ Clamping behavior option (consult the "Understanding the 3D view" section for more information)
+ Depth - change the depth of the efficiency zone
+ Trunc (available only for non-surrounding 2D speakers' setup) - change the starting distance of the efficiency zone

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/OutputEfficiencyZonePanel.png)

### Scaling

<!-- TODO: add the image -->

#### Distance

This parameter scale all the distance automation (OSC, plugins data and snapshots) by a manual factor. This factor is adapted automatically when editing the arrangement of the room.

#### Tracking

This parameter changes the scale of RTTrPM protocol data.

### Background Image

<!-- TODO: add the image -->

This panel allows you to import a background image in SPAT Revolution and to position it in the 3D view.