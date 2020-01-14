# 12.1 Cockos Reaper DAW

Reaper is a reliable and highly customisable digital audio workstation. It is available
to evaluate freely from https://www.reaper.fm/. Many composers and designers
working in spatial audio use Reaper because it is very good at handling multichannel interleaved audio (up to 64 channel WAV) and has a straightforward approach to routing. It also features a great automation system which is important for
precise composition in Spat and has native OSC support for navigation, transport
and more.

Reaper seems to integrate well with the Spat Plug-ins and the Local Audio Path
workflow described in section 10.1. If you are using the Local Audio Path, it is also
important to taking a look at Appendix B of this guide.


**Setting Up Sync in Reaper**

As described in section 7.4, when you are using the Local Audio path, the buffer
size and sample rate must be matched in both Spat Revolution and Reaper. In Spat
you set this in the preferences and in Reaper in the Audio Device preferences. If
they don't match at first, you _may_ need write the correct settings to the preferences
by quitting and restarting both applications to get the correct green sync status between the apps.

#### �


**Setting Up Tracks in Reaper**

It is a good idea to work with Track Folder structures in your Arrange.

#### �

In the screenshot above, the B-Format Master has been set to be a Folder Parent
with 4 Track Channels. Reaper channel routing is set on a track by track basis, using
the _TrackIO Route_ button of each Track. All the Child tracks that route to the Parent
can be assigned to one of the four receiving channels on the Parent track. In this
example, the W is assigned to Track 1 by setting the track Pan to the left and routing to Parent Channels 1-2. Similarly the X to Track 2 ( setting the track Pan to the
right ). The Y Track is assigned to Parent Channels 3-4 and hard panned left and so
on.

Alternatively, an interleaved four channel audio file (B-Format audio in this example) can be placed on one Child Track, which has been specified to have 4 channels.


#### �

Now different interleaved files in the same format can overlap and be composed
on the same Track, and they will be summed to the Folder track, and therefore to
same Virtual Source in Spat. All automation for that source should happen in the
Envelope Lanes of the Parent Folder track.


**Setting Up Spat SEND in Reaper**

#### �

Put the Spat SEND on the Parent Track. This means that as the composition grows,
you may have multiple Child tracks sending different audio material to the same
virtual source in Spat, through one SEND plug-in on the Parent Folder Track.

This is the least complicated way to build up a large project because then the automation for the spatialisation is managed in one place even though source material may be different at different stages of the composition. Maybe it is not always
necessary to have a different virtual Send for every single audio file. The source automation can change in the envelope lanes of the Parent Folder, making it so that
one Spat SEND is shared by child tracks with the same format. This will make more
sense in practice.

Check the number of channels streamed between plug-in and Spat. Press on the
little COG wheel icon at the top corner of the SEND plug-in to open the plug-in
setup menu. The Spat _IO Config_ should have inherited the Channel count of the
Track, which you have specified in the _TrackIO_ of the Reaper Track.


If all is well, then you will see the Send appear as an input at the top of the signal
graph in your Spat project. If you do not see it, then try clicking on _Get send/return_
to force Spat to look for virtual IO.

#### �

In the screenshot above, the Orange ' _BFormat_ ' Send input is the one being routed
by the SEND plug on the Parent Track we have set up. At first it will appear in Spat
as a Channel Based input by default - in this case it appeared as a 4.0 QUAD. The
B-Format Input Stream Type was assigned manually (see section 6.4).

There are a couple of things to watch out for which cause inconsistent behaviour;


!> Full Plug-in State Save is set in Plug-in Compatibility Preferences

#### �



!> "Prevent Anticipative FX" should be enabled on tracks where SEND / RETURN are inserted

#### �


**Spat Source Automation in Reaper**

#### �

Now it is simply a case of adding some Envelope lanes for parameters you wish to
automate from the DAW timeline. Here the B-Format source is being introduced
from a distance automating _Aperture, Warmth and Distance_.


#### �

In the Spat HOA Room, we see the B-Format source (transcoded into an _Auro3D
virtual speaker configuration_ in this example) fly gradually into the scene with the
whole sound field transforming slowly as it comes over.


**Setting Up Controllers in Reaper**

In Reaper it is easy to map any MIDI controllers (including 14-bit) to a Plug-In parameter. This is a great way to control source properties like _Azimuth_ or _Yaw_ using
external MIDI controllers, so you could control some of the sources live by hand
during a performance.

#### �

In the Automation parameter list for Spat SEND just click on the LEARN... button to
manually assign an external controller that you have set up in the Reaper Controller
preferences.
Also from this page by clicking on the MOD... button of an automatable parameter it is possible to animate sources with independent LFOs that run all the time in
the background, quick and dirty way to spatialise live inputs sources with autopan
type effects for example.


#### �


**Setting up Spat Return in Reaper**

Now we want to render that scene from the Room to disk as an interleaved 3rd Order HOA, for example. From the formula in section 6.45, we can calculate that
3HOA3D needs 16 channels.

#### �

First of all set up a Track in Reaper that can handle 16 channels at once. Then add a
Spat RETURN plug-in on that track. It should automatically inherit the channel
count, if not do it manually using the IO config of the plug-in, available from the
little cog wheel in the top corner of Spat RETURN.


#### �

Enable the Local Audio Path and you should see a Return output module appear in
the Spat signal graph. Connect it to the 3HOA3D stream output from the Room (or
Rooms in a mixer/transcoder) and it should inherit the format.

#### �


Now it is necessary to make Reaper record the software OUTPUT of the audio track

- the audio coming into the Track is a virtual audio path through the Spat RETURN
plug-in so it will _not_ appear at the _Inputs_ list of the Track. Right click on the record
arm button on the track, and the Track record contextual menu will appear.

#### �


Arm the track to record, press play and render the scene to a 3HOA3D interleaved
16 channel WAV file (avoid using FLAC for higher than 8 channels)

#### �

The same process can be followed to render any Channel Based or other stream
type from Spat to disk for further composition, mastering or final delivery.

