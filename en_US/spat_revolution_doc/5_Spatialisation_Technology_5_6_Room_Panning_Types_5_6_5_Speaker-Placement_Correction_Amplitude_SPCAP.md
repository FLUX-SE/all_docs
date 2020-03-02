# 5.6.5 Speaker-Placement Correction Amplitude (SPCAP)

SPCAP is a 3D panning algorithm which takes its inspiration from VBAP. SPCAP selects not just 2 or 3, but any number of speakers to render a virtual source and
weights signal gains according to how much each selected speaker is actually contributing to the overall power output of the speaker configuration. Using this
method SPCAP guarantees conservation of loudspeaker power output across any
speaker arrangement. Its strengths lie in the down-mixing and up-mixing of virtual
scenes from very different channel based speaker arrangements, and of being able
to render wider sound sources by using more speakers in a smart way.

**How does it work?**

The result will still be sweet-spot dependent although it will be a wider listening
area. SPCAP inherits some of the dependencies of VBAP to get successful spatial
imaging.

1. Speakers must be placed _around_ the listening position.
2. 2D speakers should be on the same horizontal plane as the ears

> ★ SPCAP panning can do a good job of translating surround audio
mixes from one speaker configuration to another.
