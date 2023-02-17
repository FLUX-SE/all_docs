# Understanding the mixing zones

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/3DView.png)


The whole mixing experience of _SPAT Revolution_ takes place in the 3D view. It is really simple to create a mix this way: simply grab a source and move it where you want it to be. But there are a few subtleties that are important to get right.

The first important thing to understand is that there are two main zones in the _SPAT Revolution_ 3D view:
+ One inside which you should put sound sources in: the efficiency zone.
+ One inside which you shouldn’t: the protection zone.

Depending on if you are working with a room using channel-based or not, or depending on the speaker arrangement used, these zones will have different shapes and usages that we will discuss below.

## The protection zone

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/ProtectionZone.png)

The protection zone is an area of the 3D space represented as a sphere around the listener head.
It is important to understand that as most of the pan law or spatialization techniques are incapable of creating the illusion that a sound source comes from in front of the speakers (some exceptions like WFS) **we should try to avoid putting source inside this zone**

When a source is placed inside the protection zone, **its distance will no more induce a presence factor change**, meaning that the distance won't have any effect in this zone.

When a source is inside the protection zone on a 3D capable stream type/speaker arrangement. the behaviour is set by the **Source over listener head** parameter, which is on by default. It is the legacy function where any source entering the zone follows the sphere of protection in elevation as it tries to enter. Thus, the source is processed at its elevated position. If disabled, the source will simply keep its elevation. In both cases, reaching the protection zone means the attenuation model based on the distance reaches its threshold. (same as for the Air absorption calculation)

![ProtectionZonePanel]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR//Room/OutputProtectionZonePanel.png)


## The presence of a source

A sound source in _SPAT Revolution_ has a presence factor. It defines its overall level and brightness inside the virtual acoustic space. This presence factor can be changed by many parameters:

- The distance between the source and the **protection zone**
- The presence parameter
- The drop factor
- The Air absorption

Putting a source closer or further away from the protection zone will have the consequences of modifying the presence. The closer the source is, the more presence it has. The farther it gets, the less presence has a source.

The presence parameter directly affects the presence factor of the source.

The drop factor defines the relation between the loss of presence and the distance between the source and the protection zone. It is set by default to follow the acoustic law of our world, where we lose 6 dB of presence each time we double the distance.

When **Presence infos** on the top bar of the 3D view is enabled, the overall presence of a source is displayed by a green vector, drawn between the source and the protection zone. The intensity of the green color is proportional to the presence factor. If the source is inside the protection zone, the vector will turn red and a small sphere of the same color will be drawn on the surface of the protection zone.


>! **While a source is in the protection zone, there is no variation in presence.**


## The efficiency zone

![]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR//Room/3DViewEfficiencyZone.png)

<!--TO BE COMPLETED-->
By definition, the efficiency zone is where the virtual sound sources should be localized.
According to the speaker arrangement and coverage capacity, an efficiency zone is calculated for all channel-based panning types. It gets displayed on the 3D view as a grey shadow, and can be considered as a safe source position zone.

One of the advantages of this mechanism is that it allows to change a speaker arrangements while providing a tool to manage the sources already positioned in the soundscape but that may be outside the zone.

Inside a channel-based room, the efficiency zone is defined by the speaker arrangement used in a room:
+ When using speaker setup that surrounds the listeners, the efficiency zone is a sphere (or circle in 2D), which spans from the border of the protection zone to the farthest distance you can put a source (100 m). A speaker array is considered as surround if the angle between the foremost left and right speakers is over 180°. For readability reasons, the efficiency zone is not drawn in this case, but will be if its depth is define to a value inferior to its maximum (100 meters).

+ When using a non-surrounding system (stereo, frontal line, etc.), the efficiency zone becomes a “piece of pie” and is displayed in the 3D view. Its width is defined by the angle between the foremost left and the foremost right speaker. The visualization of the efficiency zone should help to understand the limitation of these systems in terms of spatialization options. For instance, placing a source behind the listener head in stereo will never produce the effect of a source coming from behind.

The range of the efficiency zone is set by the “depth” parameter. It sets the maximum span. A use case for defining a maximum efficiency zone Depth in CLAMP mode is to limit the attenuation to the arc part of the zone.

Inside a non-channel-based room, the efficiency zone is a sphere, because there is no speaker to constrain the diffusion area. Still, it can be edited with the same “depth” parameters for multi-room and creative applications. More information below.

### Behaviour of sources outside the efficiency zone

When a source is out of the efficiency zone, _SPAT Revolution_ offers three behaviours:
1. The source is clamped to the efficiency zone (default for new session)
2. The source is muted
3. It does nothing (default for pre 22.02 release sessions)

This option can be set in the room’s output section. Check out the [Room section](Spat_Environment_Room.md) for more information.

> By default, the source is clamped to the border of the efficiency zone.

Clamping the source to the efficiency zone helps to keep coherent sound scene, while the "mute" mode helps to create ins and outs effect. The mute only occurs in the actual room.

> When in mute mode, a slight fade out is applied to avoid clicks. The length of the fade can be adjusting by making the source go faster or slower.

Note that the preferred behaviours are clamping or muting. **Clamping will prevent an aberrant render in sound and localization.**

The pictures below shown some key cases of clamping, on non-surround systems:

![]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR//Room/3DViewAzimClamping.png)

> On non-surrounding systems, trying to escape the efficiency zone will result in the source being clamped to its foremost left or right.

![]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR//Room/3DViewFrontClamping.png)

> If a source is placed in front of the speakers, the source will be clamped to the front line they formed while preserving the azimuth angle.

![]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR//Room/3DViewMirrorClamping.png)

> When a source is on the opposite side of a non-surround system, the projection of the virtual source will mirror the behavior of the actual source, thus, removing any jump or abrupt change in position of the source.

![]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR//Room/3DViewMuteSource.png)

> When a source is outside the efficiency zone and mute behaviour is selected, the source is represented differently.

### Elevation clamping

The elevation clamping helps to keep sources inside coherent space in regard to the room speaker arrangement. It only happens with channel-based configurations.

It can be activated by the **Source fit speakers elevation** parameter, in the room options. Elevation clamping works differently depending on if you are working with a 2D or 3D speaker array.

+ **2D Speaker Array**

When dealing with a 2D speaker array, there is no point at placing a source above or below the horizontal plan. If you choose to do so, or use a 2D room to translate a 3D mix, you will see phantom sources that are the projection of each source on the horizontal plan. The position of the phantom source is used by the DSP to render the actual source position in the virtual space, but, it will preserve its actual presence factor.

+ **3D Speaker Array**

Most 3D speaker arrays have at least two speaker layers. Such layers are defined by three non-align speakers sharing the same height (z). Elevation clamping will handle sources as they exceed the extreme layers. This clamping behaviour, like with 2D speaker array, is shown with phantom sources that indicate the position used inside the DSP stage of _SPAT Revolution_.

![]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR//Room/3DViewHeightClamping.png)

## Limit cases

+ Elevation clamping does not occur with distance-based pan law (KNN and WFS) when using 3D speaker array, except for the Z=0 plan. This prevents some jumps and aberrations in sound.
+ When using a 2D non-surrounding speaker array, efficiency and elevation clamping are tied together. If efficiency clamping is activated, _SPAT Revolution_ automatically switches on the elevation clamping. On the contrary, if elevation clamping is turned off, then, so is the efficiency clamping.
+ WFS is the only case where it can make sense to put virtual sources in front of the speakers, to take advantages of the focus zone. This zone and the associated behaviour is detailed in the  [WFS Section](Spatialisation_Technology_WFS.md) of this user guide.
