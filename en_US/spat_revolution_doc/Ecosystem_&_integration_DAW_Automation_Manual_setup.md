# SPAT PI : Automation

A computer running SPAT Revolution becomes a spatial sound rendering engine, hosting the entire SPAT software environment we are currently describing.
Audio signals that flow in and out of SPAT may be connected to a hardware multichannel audio device connected to the SPAT host machine.

Interestingly, a multichannel audio stream flowing in and out of SPAT may not be coming from hardware at all, but instead connected through _virtual IO_ from another software application.

In the SPAT environment, this is made possible by a special set of plug-ins that enable audio to flow through 'virtual cables' between a multichannel DAW and SPAT Revolution - _both running on the same machine_.
This can become an ideal offline creation workflow for preparing content for an eventual complex hardware setup.


## DAW Automation - Manual setup

When you are not using the local audio path workflow, and instead working directly with a connected hardware interface, then you must set up automation manually.

The first step is to go to the _SPAT Preferences_ and _Enable OSC_.

![](include/SpatRevolution_UserGuide_-191.png)

You then need to set up an OSC connections in order to connect with SPAT plug-ins via OSC. In one of the SPAT Revolution OSC connections, you can simply choose an input preset for the SPAT plug-in and do the same for the output preset configuration
.
The port and host should match that of the SPAT plug-ins. By default the plug-in is set the ports according to the SPAT Revolution preset. Requiring you simply to choose / set the IP address.

If you are running SPAT and the DAW software on the same machine, then the IP address is always the so-called _LocalHost_ (127.0.0.1).

Remember that the index number of each SPAT plug in links it to a virtual source with the same index - or in the case of a SPAT Room plug-in - it is used to identify which Room you wish to control.

!> Some systems require you to press TAB key and not ENTER after editing a field in the Plug-in.

![](include/SpatRevolution_UserGuide_-193.jpg)

> All send plug-in instances in one DAW will have the same IP and port number in the DAW, but different and unique Index numbers. 
