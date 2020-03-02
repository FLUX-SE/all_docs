# 6.5.1 Transcoding Matrix

![](../include/SpatRevolution_UserGuide_-086.jpg)

In the case where an incoming Channel Based stream needs transcoding into an
outgoing Channel Based stream which has less channels, the IO Matrix is used to
re-map the output format by dropping some of the input channels. Similarly, if the
transcode results in a format with more channels than the input format, the IO Matrix is used to remap inputs to outputs. This is not strictly _Transcoding_ or _decoding_
but is a useful tool to have in certain format changing scenarios. To properly up mix
or down mix, it is advisable to use a room to take the virtual source of one format,
and output with the desired end format.

