# SPAT PI : Automation

A computer running _SPAT Revolution_ becomes a spatial sound rendering engine, hosting the entire SPAT software environment we are currently describing.
Audio signals that flow in and out of SPAT may be connected to a hardware multichannel audio device connected to the SPAT host machine.

Interestingly, a multichannel audio stream flowing in and out of SPAT may not be coming from hardware at all, but instead connected through _virtual IO_ from another software application.

In the SPAT environment, this is made possible by a special set of plug-ins that enable audio to flow through 'virtual cables' between a multichannel DAW and _SPAT Revolution_ - _both running on the same machine_.
This can become an ideal offline creation workflow for preparing content for an eventual complex hardware setup.


## DAW Automation - Manual setup

When you are not using the local audio path workflow, and instead working directly with a connected hardware interface, then you must set up automation manually.

The first step is to go to the _SPAT Preferences_ and _Enable OSC_.

![OSC Main](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCMain.png)

You then need to set up an OSC connection in order to connect with SPAT plug-ins via OSC. In one of the _SPAT Revolution_ OSC connections, you can simply choose an input preset for a SPAT plug-in and do the same for the output preset configuration.

![OSC Connection SPAT Plug-ins](https://raw.githubusercontent.com/FLUX-SE/doc_images/main/SpatR/ThirdParty/OSCConnectionsPlugins.png)

The port and host should match that of the SPAT plug-ins. By default, the plug-in ports are set according to the _SPAT Revolution_ preset, requiring you simply to choose / set the IP address.

If you are running SPAT and the DAW software on the same machine, then the IP address is always the so-called _LocalHost_ (127.0.0.1).

Remember that the index number of each SPAT plug-in links it to a virtual source with the same remote number - or in the case of a SPAT Room plug-in - it is used to identify which Room you wish to control.

!> Some systems require you to press <code>Tab</code> key and not <code>Return</code> after editing a field in the Plug-in.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/ThirdParty/ReaperSend.png)

> All send plug-in instances in one DAW will have the same IP and port number in the DAW, but different and unique Index numbers. 
