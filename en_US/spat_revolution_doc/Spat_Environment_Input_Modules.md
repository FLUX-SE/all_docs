## Inputs Module

![](include/SpatRevolution_UserGuide_-080.jpg)

SPAT Revolution itself does not play audio files. The input blocs are here to access to audio streams and process them in the SPAT Revolution spatialization engine. Input blocs are represented at the top row of the signal graph.

There are two types of input blocs:
+ Hardware blocs, which look at signal coming from an actual audio interface,
+ Software blocs, which are tied to a SPAT Send plug-in instances in a DAW.

To create a hardware blocs, click one of the *+* button at the left of the row. To create a software bloc, instantiate a SPAT Send plug-in in a DAW and activate its local audio path. You will find more information on local audio path in the [8.5 Plug-ins: Local audio path](Ecosystem_&_integration_DAW_Automation_Local_Audio_Path.md) section.

## Name

Allows to edit the name of an input. It is possible to edit several names at once by selection several blocs and clicking on the "Input Name Wizard" button in the inspector.

![](include/SpatRevolution_InputNames.png)

## Inputs configuration

+ Input type : allow to select if the source of the signal is coming from the selected input or from the signal generator included in SPAT Revolution. The nature of the generated signal can be changed in the [Preference page](Application_Preferences.md).
+ Input stream : allow to select the stream type of the bloc.

> Input stream types are : channel-based, HOA, A-Format, B-Format, UHJ, MS, Binaural and Transaural.

For more options related to stream type, check the [Setup Page](Spat_Environment_Setup_Page.md) section.

## Routing

Give access to the routing matrix

!> This option is only available on hardware input.

### Levels

Basic true peak metering for each block's channels.