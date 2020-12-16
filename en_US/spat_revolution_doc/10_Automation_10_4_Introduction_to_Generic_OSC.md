# 10.4 Introduction to Generic OSC

![](include/SpatRevolution_UserGuide_-197.png)

If you are developing your own control systems to integrate with Spat, you might
find it useful to know that it is possible to export a detailed description of all OSC
patterns, syntax and usage to a text file for reference. You will find that option in the
Spat preferences.

> ★ Enable commands log to confirm you are receiving data (Shift + F7
will open the log window)

In general, Spat OSC patterns have the form of

/source/[index]/x

where [index] represents the Index of the Virtual Source or Room you wish to
control with the message.


The three positional formats can be packed into one message if that option is set in
the OSC Connections Matrix;

/source/[index]/xyz
_Cartesian co-ordinates in meters_
/source/[index]/aed
_Polar co-ordinates (azimuth, distance and elevation)_


!> Take care to automate EITHER Cartesian OR Polar not both

Sometimes, it is more convenient to have the [index] parameter as an argument
of the OSC message. This option is available in the OSC Connections Matrix,
namely Index as Arg. If this option is switched in, then the messages will be of
the pattern;

/source/xyz ifff

where i is an integer denoting the index of the target. f according to convention is
a float denoting the values of the message.

For more details about the Spat OSC dictionary and its usage syntax please refer to
Appendix D