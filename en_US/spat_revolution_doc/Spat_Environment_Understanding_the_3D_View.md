# Understanding the 3D View

![](include/3DView.png)

The whole mixing experience of Spat Revolution takes place in the 3D view. It is really simple to create a mix this way: simply grab a source and move it where you want it to be. But there are a few subtleties that are important to get right.

The first important thing to understand is that there is two main zone in the SPAT Revolution 3D view :
+ One inside you should put sound sources in (the efficiency zone).
+ One inside you shouldn't (the protection zone).

Depending on if you are working with a room using channel-based or not, these zones will have different shapes and usages that we will discuss below.

## The protection zone

![](include/3DView_ProtectionZone.png)

The protection zone is an area of the 3D space represented as a sphere around the listener head. On channel based room it is setup by default to fit the radius of the speaker arrangement. On non-channel based room (binaural or HOA), it is by default set to 2 meters.

It is important to understand that we should not put a source inside this zone, as most of the pan law or spatialization strategy are incapable of creating the illusion that a sound source comes from in front of the speaker.

When a source is placed inside the protection zone, its distance will no more induce a drop of presence, meaning that the distance does not have any effect in this zone. By default the protection zone is set to be flushed to the speaker array of the room.

As its name implies, the protection zone exists to prevent weird behavior when sources are placed inside itself. Thus, in this case, you will notice that the presence vector turn red. This should warn you that what you see may not be related to what you hear.

Two behaviors can happen when a source is inside the protection zone. It can either be replaced at the top of the sphere or being looked at a constant azimuth. This behavior is set by the “**source over listener head**” parameters, which is on by default.

## The presence of a source

A sound source in SPAT Revolution has a presence factor. It defines its overall level and brightness inside the virtual acoustic space. This presence factor can be changed by many parameters:

- The distance between the source and the **protection zone**
- The presence parameter
- The drop factor

Putting a source closer or further away from the protection zone will have the consequences of modifying the presence. The closer the source is, the more presence it has. The farther it gets, the less presence has a source.

The presence parameter directly affects the presence factor of the source.

The drop factor defines the relation between the distance of the source and the listening point and the loss of presence. It is set by default to follow the acoustic law of our world, where we lose 6 dB of presence each we double the distance.

When "Presence infos" on the top bar of the 3D view is enabled, the overall presence of a source is displayed by a green vector, drawn between the source and the protection zone. The intensity of the green color is proportional to the presence factor. 

## The efficiency zone

<!--TO BE COMPLETED-->
By definition, the efficiency zone is where the virtual sound sources should be localized.

Inside a channel-based room, the efficiency zone is defined by the speaker arrangement used in a room:
+ When using speaker setup that surrounds the listeners, the efficiency zone is a sphere (or circle in 2D), which span from the border of the protection zone to the farest distance you can put a source (100m). A speaker array is considered as surround if the angle between the foremost left and right speakers is over 180°. For readility reasons, the efficiency zone is not drawn in this case.

+ When using a non-surrounding system (stereo, frontal line, etc.), the efficiency zone become a "piece of pie" and is displayed in the 3D view. Its width is defined by the angle between the foremost left and the foremost right speaker. The visualization of the efficiency zone should help to understand the limitation of these systems in term of spatialization options. For instance, placing a source behind the listener head in stereo will never produce the effect of a source coming from behind.

The range of the efficiency zone is set by the depth and trunc parameter. The first one set the maximum and the second one the minimum of its span.

Inside a non-channel-based room, the efficiency zone is arbitrary defined, because there is no speaker to constrain the diffusion area. Still, it can be edited with the same "depth" and "trunc" parameters for multi-room and creative applications.

### Clamping behavior

When a source is out of the efficiency zone, SPAT Revolution offers three behaviors:
+ Clamping the source to the border of the efficiency zone
+ Mute the source
+ Do nothing

This option can be set in the room's output section. Check the "Room" section for more information on this.

> By default, the source is clamped to the border of the efficiency.

![](include/efficiencyZone.png)


## Clamping

In order to avoid strange localization behavior, SPAT Revolution includes a whole clamping strategy to reduce mistakes and aberrant behaviors.

![](include/azimClamping.png)

When a source is on the opposite side of a non-surround system, the projection of the virtual source will mirror the behavior the actual source, thus, removing any jump or abrut change in position of the source.

![](include/mirrorClamping.png)

### In front of speaker clamping

If a source is placed in front of the speakers, the source will be clamped to the front line they formed.

![](include/frontClamping.png)

### Height clamping

The height clamping can be activated by the *Source fit speakers elevation* parameter, in the room options. Height clamping works in a different way depending on if you are working with a 2D or 3D speaker array.

+ **2D Speakers Arrays**

When dealing with a 2D speaker array, there is no point at placing a source above or below the horizontal plan. If you choose to do so, or use a 2D room to translate a 3D mix, you will see phantom sources that are the projection of each source on the horizontal plan. The position of the phantom source is the data used by the DSP to place the actual source in the virtual space. But it will preserve the presence of the main source.

+ **3D Speakers Arrays**

A 3D speaker array will have a top speaker plan and a bottom speaker plan. If a source is placed above the top plan, or below the bottom one, the source will be clamped to the closest plan. The clamping behavior, like with 2D speaker array, is shown with phantom sources that indicate the position used inside the DSP stage of Spat Revolution.

![](include/3DView_TopChannels.png)