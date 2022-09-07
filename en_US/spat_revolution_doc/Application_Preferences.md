
# Application preference

![Preference Page]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/PageUltimate.png)

This page allows you to change global preferences of the application.

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

### Input delay - Unit of measure

Change the unit format for delay.

_Default is sample_


### Edit Frame Rate

Define how many times per second the UI is refreshed.

_Default is 30 Hz_

### Engine Frame Rate

Define how many times per second the engine is refreshed.

_Default is 60 Hz_

### Meter Default Refresh Rate

Define how many times per second the meters are refreshed

_Default is 30 Hz_

### Language

Allow to change the language of SPAT Revolution. English, Italian, German, Korean, French, and Spanish are available. If you wish to help us to translate SPAT in another language, don’t hesitate to contact us.

_Default is English_

### Reset to default

Reset back all the global parameters to default.

### Import/Export Preferences

Allow exporting or import preferences.

## Hardware IO

![Hardware IO Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/HardwareIO.png)

The hardware IO panel allows choosing the audio interface that can be accessed by SPAT Revolution.

### Input/Output Devices

This menu allows selecting the audio interface. SPAT Revolution audio engine supports all devices compatible with ASIO (Windows) or CoreAudio (macOS).

!> **Note that you should select “None” when using the Local Audio Path connections.**

SPAT Revolution audio engine also supports different input and output interfaces, on both macOS and Windows, for maximum flexibility.

!> In case of different input and output devices, the sample rate and the block size need to be the same.

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

### Show invalid OSC input messages

Allows displaying the unknown and invalid OSC messages in the application’s terminal.

### Dump on socket change

Allow to dump all properties when a socket change, i.e. when the IP address or the port number has been edited, or the socket is enabled. This ensures a constant synchronisation between any remote control and SPAT Revolution.

### Output rate

Define OSC output rates in milliseconds.

### Export Parameters

This button exports the OSC parameters to a text file.

## OSC Connections

![OSC Connections Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/OSCConnections.png)

This panel allows creating OSC connection between SPAT Revolution and other devices, like tablets, phones, computers and many others. More information is available on the [OSC section](Ecosystem_&_integration_OSC_Connections_Matrix.md).

## Snapshots

![Snasphot preferences](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/Snapshot.png)

### Recall sources name

Determines if the source names is recalled with snapshots.

### Number of saved versions

Determines the number of version saved when updating a snapshot. Careful: increasing this number increases deeply the size of the .json SPAT file.

### Ask for update before recalling

When checked, a dialog will ask you if you want to update the snapshot before each recalled.

## HRTF

![HRTF Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/HRTF.png)

The HRTF panel allows setting up some generic options for HRTF handling.

### Default HRTF

Choose the default HRTF used in binaural room or binaural monitoring blocks

### Manage HRTFs - Ultimate license only

The button open a window that allows downloading or removed HRTF. You can also import your own HRTF from this menu.

## Room

![Room Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/Room.png)

This panel allows changing some room properties.

### Room gain

Change the gain of all the rooms of SPAT Revolution.

### Compute LFE

Off by default, this option allows including the LFE position in the compute of the speaker alignment process.


### Speaker test post "mute/solo"

Change the behavior of the signal generator for speaker, pre or post speaker's mute and solo.

### WFS default truncation distance of Efficiency zone for linear antenna

Add a distance offset to efficiency zone when using WFS with linear antenna to avoid issue with focus zone.

## Signal Generator

![Signal Generator Section]( https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/SignalGenerator.png)

Here, you will find the options related to the test signals generated by the application itself.

### Gain

Configure the signal generator gain.

### Signal Type

Configure the type of signal generator.

### Speaker test post "Mute/Solo"

Allow the speaker test to be post speaker mute/solo, i.e. the speaker test will pass even if the speaker is muted. 

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

### BlackTrax RTTrPM - Ultimate license only

![BlackTrax Section](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/Blacktrax.png)

See the integration chapter about [BlackTrax](ThirdParty_BlackTrax.md)
