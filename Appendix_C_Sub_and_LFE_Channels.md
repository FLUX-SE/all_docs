# Sub and LFE Channels

In some standard surround formats for cinema - often denoted as _n.1 surround_ the _.1_ refers to a dedicated channel for extra sub bass effects in cinema. The LFE
channel is normally sent directly to the sub-woofer speakers in a real room.

SPAT dœs not model sub-woofers or spatialise their acoustic information in the Virtual Rooms. But it dœs handle the channel in a special way.
When working in a purely Channel Based signal graph, with Channel Based
rooms outputting to an _n.1 surround_ speaker arrangement, each source will have
an individual _LFE Send_ which controls how much of its signal is sent to the LFE
channel at the output.

![](include/SpatRevolution_UserGuide_-180.jpg)

This parameter is available inside the Room editor, but also available directly from
a Source module in the _Environment Setup_ graph.

