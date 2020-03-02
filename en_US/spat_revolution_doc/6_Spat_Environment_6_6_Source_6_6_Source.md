# 6.6 Source

The next row transforms the inputs into virtual objects according to their configuration. This is what needs to happen so that a virtual Source appears in a virtual room.
If you try to connect an input directly into a Room, Spat will always put a Source
module in-between.

The Source modules are where you set a descriptive Name of each virtual object.
It's a good idea to do that, as things can get busy inside the Rooms. You can also
adjust the overall gain of a Source here no matter how many channels it might
have. The Source modules are also important for parameter automation using the
_Spat Send_ plug-in, and also in the case of external OSC control.

![](../include/SpatRevolution_UserGuide_-090.jpg)

External software needs to know how to identify virtual objects, and that will done
using an Index number rather than a name. This Index number refers to one of
these Source modules, numbered from left to right which in turn, becomes a Virtual
sound emitting object in the _Virtual Room_.
When working in a Channel Based Room outputting to an _n.1 surround_ speaker
arrangement, each source will additionally acquire an individual _LFE Send_. This
dial will be available in the Source Parameters inside the Virtual Room editor, and
also mirrored here as a fader directly in the Source modules. _LFE Send_ controls
how much of this source's signal is mixed into the LFE channel at the output.

> ★ When using a BlackTrax positional tracking system a Tracking index can be
assigned to a virtual source directly from the Source module

