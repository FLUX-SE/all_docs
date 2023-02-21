# TO BE SORTED

<!-- ## Channel Based Setup Examples

If the output configuration is set to **Channel Based**, the user must decide on the appropriate _[Panning Algorithm](5_Spatialisation_Technology_5_5_Panning_Algorithms.md)_ to work with. The loudspeaker array selected in the _Speaker Arrangement_ pull down menu will be 'virtualized' in the Room and all the speakers will appear graphically.

> Speaker Arrangement also defines the amount of output channels.

The spatial composition of Virtual Sources is governed in the Virtual Room by the characteristics of the currently selected **Panning Type** and speaker positions. In other words, the _panning type_ is simulated inside the Room on the **Speaker Arrangement** model. **[Artificial reverberation](8_Artificial_Reverberation_8_Artificial_Reverberation.md)** is also modeled in relation to the speaker arrangement in a Channel Based Room.

Additionally, the powerful _Nebula Spatial Spectrogram_ is highly dependent on the virtual speaker’s arrangement, panning type and simulated acoustics of a Channel Based Room. Let's take a quick look at _Nebula_ before continuing with the Room types. -->


## Virtual Room Concepts

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Generic/SplashScreen.png)
### Simulated Speaker Diffusion

When a Virtual Room is Channel Based, the speaker configuration layout is modeled as fixed speakers which appear in the Room graphically according to their programmed positions (_see [Custom Speaker Configuration](Spatialisation_technology_Speaker_Arrangement.md)_) - you will not be able to move those speakers around with the mouse. These fixed speaker positions are vitalizing a sound system configuration which is often the same one that will be used for diffusion. These virtual speakers interact with the virtual acoustics of each room as designed by the _[artificial reverberation](8_Artificial_Reverberation_8_Artificial_Reverberation.md)_.

> Each room can have a DIFFERENT Virtual Acoustic design and different sources.

The idea is that by simulating speaker positions and acoustic interactions, the process of mixing for a particular speaker layout becomes more predictable. For example, by monitoring binaurally a scene from a channel based room, it is possible to get an impression as to how the mix might sound diffused by a particular speaker arrangement, including the space between speakers and gain characteristics belonging to selected panning types. As we have mentioned earlier in the section about [Ambisonics](Scene_based_streams.md), there are also options for mixing and monitoring a particular Channel Based Room simulation transcoded to a different setup than that being simulated, which may also be useful in certain contexts.

This is really all about mixing. Mixing in stereo is already a significant challenge, some have devoted their entire careers to it. Mixing for multiple speakers is even more complex.

It is advisable to think in parallel as far as room mixing goes. You could think of SPAT Rooms as different kinds of spatial busses with integrated acoustic emulation units. Use them in parallel, send some or all of the sources to multiple rooms at the same time and sum the outputs together into one output format. One room might have a huge reverb, and one might be a much smaller space. Channel Based Rooms will have different sounds, but they can all be summed into the same channel based format.

In practice, the best mixes are obtained by mixing on the same sound system in the studio or venue as you have represented in the Channel Based Rooms. But there is also the possibility of monitoring Channel Based mixing on headphones using the [binaural monitor](5_Spatialisation_Technology_5_1_Binaural_5_1_Binaural?id=binaural-monitoring-module.md) or a dedicated, parallel, binaural room. This is workable enough to allow you to keep on arranging a mix and spatial composition 'off location' without too many surprises when it comes to the final result.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/3DView3DConfig.png)

> Channel Based simulations render localizable virtual sources by controlling the virtual speaker array in a similar way that panning laws do on real world physical systems. They do not model the positions of virtual sound sources, but instead control the gains of the virtual speakers in the model to render perceived positions.

### Multichannel Virtual Sources

All inputs to a room must be in some kind of Channel Based format, even when the Room is an Ambisonic or Binaural Room. Even a mono source can be considered as a channel based signal of [one channel](6_Spat_Environment_6_4_Inputs_6_4_Inputs?id=mono-input.md). For any source that has more than one channel, it will be structured as a Channel Based configuration - and that configuration will be virtualized inside the Room as one single source in an interconnected cluster formation - this is designed to maintain interchannel spatial image relationships as much possible, keeping the multichannel source in a discrete self-contained system. The sound, size and positioning of that configuration can now be manipulated as a unified group.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/3DViewMultichannelSources.png)

### Speakerless Virtual Rooms - Binaural and Ambisonic

The better alternative to Channel Based simulations is to use a _Binaural_ or _High Order Ambisonic_ room to mix. In these room simulations, speakers and panning are not simulated. Instead all the inputs into the room become _Virtual Sources_, they become sound emitters in the virtual space. To get a grasp on how mind-bending this is, we need to go through it a little.

In a fully virtualized Ambisonic room, the _Nebula Spatial Spectrogram_ will no longer be available, as it is too complicated to compute the spatial spectra of moving sources. No visualizations of speakers will appear either, as they are not being modeled.

So far, we have established how the audio technology at the heart of SPAT is capable of simulating precisely the emissions of virtual speakers at fixed positions, and the way they interact with virtual acoustic space.

But the real big achievement of SPAT and High Order Ambisonic is the modeling of virtual sound sources that are changing orientation, size and position. SPAT can model these _and_ simulate the changing response of the acoustic space to these complex, dynamic and _imaginary_ sound diffusors.

This is where we touch on what 'virtualisation' of sound sources really means.

The technology of Virtual Sound Systems and Virtual Spaces invites us to stretch our imaginations beyond what is possible on a physical installation and into a place where sound emitters can continuously alter their structural dimensions, orientation and acoustic characteristics - the idea of speakers as fixed objects no longer applies in the virtual acoustic space. Instead, sound emitters grow wings and become complex musical elements to be organized and composed in time and space, contributing even more to the cultural experience of music.

### Upmixing and downmixing

One workflow that is often required is that of remixing a pre-rendered channel based mix of a particular format, to get that mix expressed into a different channel based format. For example, the need to down mix a 5.1 surround into stereo is quite common, but also the other way - perhaps a 5.1 surround mix needs to be up-mixed to a 7.1.   One way to do this is to use an Ambisonic Virtual Room as a way to simulate the source configuration as if it were being diffused in a space, in its correct speaker format and with simulated, full-sphere acoustics and then transcode the output to the desired format.  

Here is an example of that in the Room view. Notice how it is possible to rebalance and remix the original using the perceptual factors or positional parameters. A room simulation reverb is also playing a significant role in the cross-format mixing process, as the reverb simulation adds new spatial information to the mix, which might help get a more immersive result in the output format.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Room/UpmixingExplanation.png)
<!-- TODO: update the image -->

This is an example of a multiple format changing signal graph, which changes format in two ways, to provide an alternative result. Firstly, by transcoding the output of an HOA Room into various other Channel Based formats, but also a room that simulates how the target speaker configuration might render the source speaker configuration. Both methods will give different results and the choice is up to the designer.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/HOADecodingOptions.png)
<!-- TODO: update the image -->

Options are available when _transcoding_ (aka _decoding_ ) from a High Order Ambisonic room into a Channel Based stream. These decoding options will affect the sound in quite different ways - luckily it is possible to listen to the results of different Ambisonic decoding options in real time. More about this in the section about [Ambisonic transcoding](Ambisonic_transcoding.md).

### Virtual Stereo Diffusion and Microphones

When a Virtual Room is set to be Channel Based / Stereo, it will model a stereo speaker system in the virtual room acoustics _and_ virtualize stereo microphones in real-world stereophonic recording configurations. This is a hybrid approach, where you 'record' the sources positioned in the Room through virtual matched pair microphones at the listener position, as if you were miking up a concert for stereo broadcast or playback. The microphone modes were described in the section about [XY and AB panning](5_Spatialisation_Technology_5_5_Panning_Algorithms?id=xy-ab.md) and become available under the Panning Type menu of the Room when it is set to Channel Based Stereo.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/PanTypeXY.png)

You will notice how the SPAT Reverberation handles the stereo image naturally, because it is modeling the entire mix scene in the acoustic context of a Virtual Room, rather than the conventional 'voltage controlled' left-right pan pot that all audio mixers offer for stereo mixing.

This method of working in a stereo room invites a different approach to stereo panorama source mixing in the studio or on twin stack PA systems. It can also be a way to down mix from a surround format to stereo by simulating the speaker configuration and 'recording' it in stereo.

One final thing to note when working in an Ambisonic room, rather than a channel based room, is that the feeling of **Artificial Reverberation** that gets encoded into the High Order Ambisonic will have a much reduced strength than what is heard during a channel based room mix.

## Binaural Room

The Binaural Monitoring module is great for easy channel based system monitoring. But it is not the best binaural experience we can provide with SPAT Revolution. The best way to work with binaural encoding in SPAT Revolution is to use a _Virtual Room_ which is binauraly encoding each virtual source at its exact position in a virtual space, with _Artificial Reverberation_ but without modeling any virtual speakers. In fact, in a Binaural Room the only diffusion factor in the modeling is the _[HRTF](5_Spatialisation_Technology_5_1_Binaural_5_1_Binaural?id=hrtf.md)_.

Each source's direct sound plus the reverberation it creates is modeled and synthesised binaurally for _each individual source_. This advanced processing can result in an excellent binaural experience; more precise and natural sounding than using the Binaural Monitoring module to listen to a virtualized Channel Based rendering. It is the preferred method to use when rendering binaural content <!-- to disk. To do that, you simply need to connect the binaural stream from the room directly to a (stereo) SPAT Return path back to your DAW. You could record and listen to a Binaural Room by using two output modules, one to the recording route, and one to a headphone output. -->

> For the best Binaural Monitoring try setting up two rooms, one all Channel Based going to speakers and one Binaural for your 3D headphone mix.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SessionAtmosBinaural.png)
<!-- TODO: update the image -->

## High Order Ambisonic Room

One of the most straightforward methods to start working with HOA spatialization in a signal flow is to connect input sources directly into an HOA Room. To convert a Room to be HOA, select High Order Ambisonics as the _Output Configuration Stream Type_.

!> _**Essential** licenses limits HOA order to the 3rd._

All inputs to a room must be in channel-based format, even when it is an Ambisonic or Binaural Room. <!--That is the workflow at the time of writing (SPAT Revolution v1.1).--> This makes most intuitive sense, when using Ambisonic format inputs as pre-encoded "3D sound field" type inputs into a room. You cannot just add them into an HOA room, even though they may be HOA format. Why is that?

This is because Ambisonic audio always needs to be _decoded_ into a channel based format to hear the spatialized audio on speakers (as we have mentioned a few times already). And so in a virtual room, an Ambisonic source needs to be decoded to a _virtual_ speaker configuration. The choice of what virtual speaker configuration you decode the Ambisonic audio to will influence the way the source's direct signals will sound and its sound will be altered by the way it interacts with the Virtual Room Acoustics. If it is a 1st or 2nd Order B-Format source, then a Cube configuration for 3D or an Octaphonic for 2D is usually a good choice. The important thing to keep in mind is that a higher order of Ambisonic encoding will sound more accurate on a higher density channel-based configuration - and if the source Ambisonic encoding is 3D, then you really should choose a 3D type of channel configuration.

!> _Ambisonic encoded audio is not intended to be listened to without decoding_

The other important thing to keep in mind is that decoding Ambisonics to a virtual channel-based configuration allows for some very special transformations and redesigning possibilities of the original Ambisonic source. When a B-Format source becomes an arbitrary configuration of virtual emitters in the virtual room, the ambisonic sound field becomes a group that you can manipulate and transform using all the source parameters - especially, the [barycentric source parameters](6_Spat_Environment_6_6_Source_6_6_Source?id=barycentric.md) which are really useful for rotating and transforming the original sound field in
many ways.

> Ambisonic encoding is a convenient way to share and archive spatial sound mixes

The output from an Ambisonic room must always be _decoded_ into a channel-based stream in order to hear the resulting spatial image. But even though it is not speaker compatible, it is still an audio data stream - so therefore it is quite possible to record a HOA stream to disk without decoding. This is a powerful way to work, as the HOA format encodes full sphere spatial information which can then be decoded/transcoded at a later stage.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/SessionHOA.png)
<!-- TODO: update the image, and update in order to give the indication of ACN and N3D for SPAT Room.-->

In an HOA Room, the order can be changed at the output configuration of the room very easily, by selecting a different value pull down menu. When you have correctly set up a speaker compatible decoding method for the HOA stream coming out of a Virtual Room, you should clearly hear the difference in focus and the way that the Artificial Reverberation behaves as the Order goes up. <!-- Do not be complacent about the simplicity of the HOA interface. There is plenty going on under the hood but Spat makes it feel simple to explore how different Ambisonic Orders sound. Similarly, other encoding options are available to apply and listen to directly. -->

<!-- An HOA Room simulates many different Ambisonic decoding options in real time. --> When you decode (or Transcode) an HOA Room output into a Channel Based, you will be able to hear how different Ambisonic encoding and decoding options (such as Method and Type) will sound. The topic of Ambisonic decoding options such as Type and Method is a particularly large one but in the end, it comes down to how the sound field will come across and this involves listening. Similar to how sommeliers get to know the nuances of wine by opening lots of bottles, the best way to get to know Ambisonic options and understand for yourself how they affect the sound is by decoding and listening on different setups. And perhaps also digging into some of the literature you will find online.

One thing we can already guide you in is how each order affects spatial precision. This knowledge may be beneficial to understand when you are rendering and mixing Ambisonics sound fields. The precision with which a source can be localised in Ambisonics is directly linked to the Ambisonics Order. Sources encoded as first order can be quite diffuse in their localisability when decoded. Higher Orders, such as 3 or 7 can render precisely localizable point sources in 3D. The cost is in computation and increasing audio channel count.

Some types of source material such as ambiance or field recordings can benefit from the more immersive feeling of lower Orders, but point sources may need encoding in higher Order to get a more localizable result.

<!-- ## B-Format Room

This is a First Order Ambisonic (FOA) room which is correctly suited for mixing B-Format Ambisonic signals. B-Format is 4-channels interleaved Ambisonic format, which is already widely used as a 3D audio format in the audio industry, as it can be decoded quickly and efficiently in real time. If you are producing content that is intended for real time decoding in B-Format, you can work in a B-Format Room.

<!-- The output configuration is preset for B-Format Room, although it is possible to change to 2D or 3D. -->



## Mid-Side Room

Similarly, if you are working with two-channel signals already encoded as MS format stereo, you can mix in an MS room. The outputs of MS rooms need to be decoded or transcoded into a suitable stereo format for reproduction on a stereo system.

