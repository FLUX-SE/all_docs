![Preference Page]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/PageUltimate.png)

# Application preference

This page allows you to change global preferences of the application. Some panels could differ between the Essential and the Ultimate version, a note on the section title indicates it.

## Global

![Global Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/Global.png)

### Allow sending error data

Allow sending error data to FLUX:: support. All the data are sent anonymously.

_Off by default_

### Reopen last session on startup

The last opened session will be automatically reopened at the start of SPAT Revolution.

_On by default_

### Use Metric System

Toggle between the imperial system and the metric system.

_On by default_

### Temperature

Change the temperature used in the delay line calculation.

_Default is 20 °C_


### Edit Frame Rate - Ultimate only

Define how many times per second the UI is refreshed.

_Default is 30 Hz_

### Engine Frame Rate - Ultimate only

Define how many times per second the engine is refreshed.

_Default is 60 Hz_

### Meter Default Refresh Rate - Ultimate only

Define how many times per second the meters are refreshed

_Default is 30 Hz_

### Language

Allow to change the language of SPAT Revolution. English, German, Japanese, French, Spanish are available. If you wish to help us to translate SPAT in another language, don’t hesitate to contact us.

_Default is English_

### Reset to default

Reset back all the global parameters to default.

### Import/Export Preferences - Ultimate only

Allow exporting or import preferences.

## Hardware IO

![Hardware IO Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/HardwareIO.png)

The hardware IO panel allows choosing the audio interface that can be accessed by SPAT Revolution.

### Input/Output Devices

This menu allows selecting the audio interface. SPAT Revolution audio engine supports all devices compatible with ASIO (Windows) or CoreAudio (macOS).

>! **Note that you should select “None” when using the Local Audio Path connections.**

SPAT Revolution audio engine also supports different input and output interfaces, on both macOS and Windows, for maximum flexibility.

>! In case of different input and output devices, the sample rate and the block size need to be the same.

### Sampling Rate

Select the sampling rate used by the audio engine.

### Block Size

The block size defines the global latency added by SPAT Revolution. The lower it is set, the lower the latency is, but the greater the CPU consumption is.

### Show input/output settings

This button opens the driver audio panel of the selected interface, if it exists.

## User Interface

![User Interface Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/UserInterface.png)

This panel contains some general user preferences.

### Anti-Alias

When enabled, this option smooth out lines in the graphic engine.
If you are using an Intel-based computer without a dedicated GPU, we highly recommend deactivating this option to improve performances.

_On by default_

### Setup Wire

When on, the wires between blocks in the setup page are splined. When off, they are straight.

_On by default_

### Tooltips

Tooltips contain help and complementary informations. When on, they are displayed when the mouse is over a parameter or a control.

### Theme

Allows switching between the dark theme and the light theme of SPAT Revolution.

_Set on “dark” by default_

### Shortcuts window

Display the list of all the shortcut of SPAT Revolution.

## OSC Main

![OSC Main Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCMain.png)

This panel contains basic OSC options.

### OSC Enable

Enable or disable the OSC communication between SPAT Revolution and other devices.

### Enable commands log

Allows displaying the OSC messages in the application’s console.

### Dump on socket change

Allow to dump all properties when a socket change, i.e. when the IP address or the port number has been edited, or the socket is enabled. This ensures a constant synchronisation between any remote control and SPAT Revolution.

### Output rate - Ultimate only

Define OSC output rates in milliseconds.

### Export Parameters

This button exports the OSC parameters to a text file.

## OSC Connections

![OSC Connections Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnections.png)

This panel allows creating OSC connection between SPAT Revolution and other devices, like tablets, phones, computers and many others. More information is available on the OSC section.

## HRTF

![HRTF Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/HRTF.png)

The HRTF panel allows setting up some generic options for HRTF handling.

### Default HRTF

Choose the default HRTF used in binaural room or binaural monitoring blocks

### Manage HRTFs - Ultimate only

The button open a window that allows downloading or removed HRTF. You can also import your own HRTF from this menu.

## Room

![Room Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/Room.png)

This panel allows changing some room properties. This is where you find most of the room options in the Essential version.

### Room gain

Change the gain of all the rooms of SPAT Revolution.

### Compute LFE

Off by default, this option allows including the LFE position in the compute of the speaker alignment process.

## Air absorption - Essential only

Define the default behavior of air absorption for all the sources. See the source parameter section for more information about this property.

## Drop log - Essential only

Define the default behavior of drop log for all the sources. See the source parameter section for more information about this property.

## Drop factor - Essential only

Define the default behavior of drop factor for all the sources. See the source parameter section for more information about this property.

## Coordinate mode - Essential only

Define the coordinate mode of drop factor for all the sources. See the source parameter section for more information about this property.


## Signal Generator

![Signal Generator Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/SignalGenerator.png)

Here, you will find the options related to the test signals generated by the application itself.

### Gain

Configure the signal generator gain.

### Signal Type

Configure the type of signal generator.

## Engine

![Engine Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/Engine.png)


This panel allows to modify the behavior of the SPAT Revolution engine.

### Automation

#### Automation Rate

Define the automation rate in milliseconds.

### Audio Processing
#### Max Number Of Cores

Define the number of CPU cores used by the engine.

#### Parallel Profile

Define how the CPU resources are spread among the cores available. In _Max Distribution_ mode, the CPU resources are evenly spread among the available cores.
In _Favor First Core_, the engine will fill the CPU cores one by one. The _Balanced Distribution_ mode is a compromise between both.

### BlackTrax RTTrPM - Ultimate only

![BlackTrax Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/Blacktrax.png)

See the integration chapter about [BlackTrax](ThirdParty_BlackTrax.md)
