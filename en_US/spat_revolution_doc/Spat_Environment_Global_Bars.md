# Global Bars

## Navigation bar

![](include/SpatRevolution_UserGuide_-070.jpg)

The Navigation bar appears at the top of all views. As well as links to different editor views and to the preference, it also offers you the possibility to mute and unmute rooms.

The status and help bars appear at the bottom of all views. It gives information about the status of audio connections, sample rate, block size and through latency. Some inline help also appears here when the mouse moves over elements of the SPAT graphical user interface. The _Provide feedback_ button sends a message directly to FLUX:: Immersive support which automatically includes your system information for our support team.

## Status bar

![](include/SpatRevolution_UserGuide_-072.jpg)

<!-- TODO: update the image -->

The status bar help you easily monitor many critical informations about your hardware and your incoming or outcoming audio stream.

### Input stream

Allows monitoring the good reception of audio through LAP.
+ When "No connection" is displayed, this means that no SPAT Send plug-in with LAP enabled is seen by SPAT Revolution.
+ When a connection is validated, it should provide a timecode, corresponding to the DAW transport position.
+ If the sample rate or block size is unmatched between SPAT Revolution and the DAW used, the "all in sync" mention will turn red and count the sync errors.

### Hardware device

This section helps you monitor your audio hardware and how it interacts with SPAT Revolution.

+ You can see the name of your input & output device.
+ The block size and sample rate of SPAT Revolution.
+ The whole latency of the system. This depends on the block size and on the selected audio interfaces. Using different audio interfaces can result in a higher latency.

### Timecode source

Here, you can choose which timecode SPAT Revolution should look at.

+ By default, it is set to "Absolute". It refers to the clock of your computer, no matter of the connection with an audio interface or with LAP streams.
+ "LAP Send" looks at the clock provided by SPAT Sends plug-ins.
+ "LAP Return" looks at the clock provided by SPAT Returns plug-ins.
+ "Audio hardware" looks at the clock provided by the selected audio interfaces.

### Timecode

Let you monitor the timecode seen by SPAT Revolution. For proper operation of snapshots and automations, it should be always running.
### Clock source

Choose what clock SPAT should follow.
+ Internal.
+ Hardware.
+ Auto : use hardware if one is connected.
<!--NEED INFO-->

### Support

Allows to send feedback to the FLUX:: Immersive support team.

<!-- TODO: update the image -->

> With Send/Return plug-ins, if sampling rate and block size between DAW and Spat Revolution are different, the status bar will be red. Double-click on this bar to automatically change them into Spat Revolution.