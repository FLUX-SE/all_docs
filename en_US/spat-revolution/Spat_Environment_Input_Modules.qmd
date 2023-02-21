## Inputs Module

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/InputModuleRow.png)

_SPAT Revolution_ itself does not play audio files. The input blocs are here to access to audio streams and process them in the _SPAT Revolution_ spatialization engine. Input blocs are represented at the top row of the signal graph.

There are two types of input blocs:
+ Hardware blocs, which look at signal coming from an actual audio interface,
+ Software blocs, which are tied to a SPAT Send plug-in instances in a DAW.

To create a hardware blocs, click one of the *+* button at the left of the row. To create a software bloc, instantiate a SPAT Send plug-in in a DAW and activate its local audio path. You will find more information on local audio path in the [8.5 Plug-ins: Local audio path](Ecosystem_&_integration_DAW_Automation_Local_Audio_Path.md) section.

## Name

Allows to edit the name of an input. It is possible to edit several names at once by selection several blocs and clicking on the "Input Name Wizard" button in the inspector.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Setup/InputNameWizard.png)

## Inputs configuration

+ Input type : allow to select if the source of the signal is coming from the selected input or from the signal generator included in _SPAT Revolution_. The nature of the generated signal can be changed in the [Preference page](Application_Preferences.md).
+ Input stream : allow to select the stream type of the bloc.

> Input stream types are : channel-based, HOA, A-Format, B-Format, UHJ, MS, Binaural and Transaural.

For more options related to stream type, check the [Setup Page](Spat_Environment_Setup_Page.md) section.

## Routing

Give access to the routing matrix

!> This option is only available on hardware input.

## Levels

Basic true peak metering for each block's channels.

## Delay

Each input comes with a delay which can be useful:
- in live situation, to compensate delay between microphones.
- in studio situation, to compensate the plugins delay when using Local Audio Path.

The delay can be set in samples, milliseconds, or distance unit (meters if metric system, feet otherwise). This can be chosen on the **Global** panel of the **Preferences** page.