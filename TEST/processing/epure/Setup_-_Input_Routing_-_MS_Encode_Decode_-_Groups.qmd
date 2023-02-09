# Setup - Input Routing - MS Encode Decode - Groups

![](include/Epure_02.png)

## Setup (17)
Input Routing, MS Encoder/Decoder, Internal Channels and Groups setup.

Any of Epure’s input channels can be routed to up to 8 internal EQ-channels using a sophisticated routing system
offering individual processing of up to 8 different equalization curves. The built in routing system provides up to 4
M/S encoders and 4 M/S decoders (each of them in pairs of 2 channels).

Epure Studio Session supports Mono/Stereo input only which can be routed to up to 2 different equalization
curves and provides up to 2 M/S encoders/decoders.

The built in MS encoders/decoders use odd EQ-channels for Mid and even EQ-channels for Side.
Stereo or M/S encoded material as well as multichannel surround material can be processed individually, or combined 
in configurable explicit groups, within one single instance of Epure.

With the Link I/O Routing engaged, every input is automatically routed to the corresponding output, when the input
routing settings are consistent. Please note that the Routing Matrix allows for routing of one input channel to
several EQ-channels, as well as for routing of several EQ-channels to one output. 
> Please note that this is an inconsistent routing action that may in turn cause the Link I/O Routing to behave 
> inconsistently.

With each Group representing one explicit EQ curve, the Group Matrix can be used to gather a number of internal
EQ channels in a specific group for the combined processing of several input channels (Front/Surround, etc.). 
> Note that when audio channels are grouped, the settings of the first audio channel (Channel 5 in group 2 in the above 
example) are applied to all channels in the group (Channels 5 & 6 in the example).

> Please note that morphing between two parameter settings using the Morphing Slider (12) affects the settings of
the Setup section as well.

![](include/Epure_02.png)

## Groups (18)
Select EQ-channel Group.  
Any action on the EQ parameter settings is applied to the currently selected Group of internal EQ-channels.

Only Group 1, gathering every available channel by default, is created when the first instance of the Epure Plug-in
is inserted.

By right clicking on the graphical display the settings of any of the groups can be instantly copied to the currently
selected group. The behaviour of the vertical scale can also be selected as followed: Auto, 6 dB, 12 dB and 24 dB.

## Lowest Frequency to display (19)
Select the lowest displayed frequency.
When 20 Hz is engaged, Epure displays the frequency range from 20Hz to 1/2 sampling rate.

## Solo (20)
Monitors the content of the selected group.
The monitoring is done after the master gain section and the MS decoder.

## Automation (21)
When the Automation button is disabled all of the plug-in parameter values are recorded when writing automation.

When reading automation, if it’s disabled, all the plug-in parameters are controlled by the host automation except
for the Morphing Slider (12), which is then ignored. When it’s engaged all parameters are recorded when writing
automation, including the Morphing Slider, though when reading automation ONLY the morphing slider value is
read and applied.

The Automation button must be engaged if the Morphing Slider is to be mapped on a control surface.

Default Value: Off

## Settings (22)
Pressing the cogwheels opens a settings window providing information about the plug-in version/build, a direct access 
button to the user manual, as well as setup for latency report and OSC (Open Sound Control). OSC is available
in Epure only, and is not supported in Epure Studio Session.

