# Understanding the 3D View

![](include/3DView.png)

The whole mixing experience of Spat Revolution takes place in the 3D view. It is really simple to create a mix this way: simply grab a source and move where you want to. But there are a few subtleties that are important to get right.

## The efficiency zone

The efficiency zone is defined by the speaker arrangement used in a room. A simple way to understand it is to consider it has the zone where sources should be placed.
When using speaker setup that surrounds the listeners, this zone is quite transparent in usage, but become very useful when working with frontal systems, or system that does not fully surround the listeners, such as stereo or speaker lines.
These systems have a limited range where spatialization makes sense. For instance, placing a source behind the listener head in stereo will never produce the effect of a source coming from behind.
In these specific cases, the efficiency zone is ideal to make better decision for source positioning.

The efficiency zone is drawn as a grayed out area in the 3D view. Its coverage is defined by the angle formed by the foremost left and foremost right speakers.

![](include/efficiencyZone.png)
## The protection zone

![](include/3DView_ProtectionZone.png)

It is important to understand that we should not put a source inside this zone, as most of the pan law or spatialization strategy are incapable of creating the illusion that a sound source comes from in front of the speaker.

When a source is placed inside the protection zone, its distance will no more induce a drop of presence, meaning that the distance does not have any effect in this zone. By default the protection zone is set to be flushed to the speaker array of the room.

As its name implies, the protection zone exists to prevent weird behavior when sources are placed inside itself. Thus, in this case, you will notice that the presence vector turn red. This should warn you that what you see may not be related to what you hear.

Two behaviors can happen when a source is inside the protection zone. It can either be replaced at the top of the sphere or being looked at a constant azimuth. This behavior is set by the “source over listener head” parameters, which is on by default.

## The presence of a source

A sound source in SPAT Revolution has a presence factor. It defines its overall level and brightness inside the virtual acoustic space. This presence factor can be changed by many parameters:

- The distance between the source and the **protection zone**
- The presence parameter
- The drop factor

Putting a source closer or farther away from the protection zone will have the consequences of modifying the presence. The closer the source is, the more presence it has. The farther it gets, the less presence has a source.

The presence parameter directly affects the presence factor of the source.

The drop factor defines the relation between the distance of the source and the listening point and the loss of presence. It is set by default to follow the acoustic law of our world, where we lose 6 dB of presence each we double the distance.

The overall presence of a source is displayed by a green vector, drawn between the source and the protection zone. The intensity of the green color is proportional to the presence factor. 

## Clamping

In order to avoid strange localization behavior, SPAT Revolution includes a whole clamping strategy to reduce mistake and aberrant behavior.

### Clamping behavior

When a source is out of the efficiency zone, SPAT Revolution offer three behaviors:
+ Clamping the source to the border of the efficiency zone
+ Mute the source
+ Do nothing

This option can be set in the room's output section. Check the "Room" section for more information on this.

> By default, the source is clamped to the border of the efficiency.

### Azimutal clamping

As explain in the "Efficiency Zone" section above, some speakers arrays do not fully surround the listener. In these cases, SPAT Revolution draws an efficiency zone to show where it makes sense to place sources.

If a source is out of azimuthal limits of the efficiency zone, it will, by default, be clamped to the efficiency zone limits.


![](include/azimClamping.png)


When a source is on the opposite side of the non-surround system, the virtual source will mirror the behavior, reproducing the perfect movement from one side to another

![](include/mirrorClamping.png)

### In front of speaker clamping

If a source is placed in front of the speakers, the source will be clamped to the front line they formed.

![](include/frontClamping.png)

### Height clamping

+ **2D Speaker Arrays**

When dealing with a 2D speaker array, there is no point at placing a source above or below the horizontal plan. If you choose to do so, or use a 2D room to translate a 3D mix, you will see phantom sources that are the projection of each source on the horizontal plan. The position of the phantom source is the data used by the DSP to place the actual source in the virtual space. But it will preserve the presence of the main source.

+ **3D Speaker Arrays**

A 3D speaker array will have a top speaker plan and a bottom speaker plan. If a source is placed above the top plan, or below the bottom one, the source will be clamped to the closest plan. The clamping behavior, like with 2D speaker array, is shown with phantom sources that indicate the position used inside the DSP stage of Spat Revolution.

![](include/3DView_TopChannels.png)