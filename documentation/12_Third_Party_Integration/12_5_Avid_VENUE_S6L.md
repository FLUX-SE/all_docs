# 12.5 Avid VENUE S6L

Please contact Flux support to get a copy of the support files for integrating SPAT
with this high end live mixing console. This guide outlines the basis of setup.

Currently, SPAT Send is the only available Plug-in from Flux available for the Spat
Revolution integration to **Avid VENUE S6L** platform. There is an available file template from Flux included in the Avid VENUE show file with 64 channels (1 – 64) containing the Spat Send Plug-in and doing the integration via either the console AVB
audio entity (In 128 Channel AVB Mode, officially qualified for MAC Pro) or MADI
integration the with MADI-192 option card. The template show file contains the following criteria;

- Channel 1-64 are by default being fed from Stage 1-64 like normal

(Thus sending Top Pre to AVB 1-64)

- Post Fader pick up of channels 1- 64 are sent to AVB audio 65-128

(Simultaneously to MADI 1-64 for and audio routing option)

- 2 Snapshots. One for an **all source reset** and one for an **all source circle**
    **spread**
       (Both with a global time value of 2 seconds)
- Spat Send Plug-In Index set to 1-64

(OSC parameters remaining to be set see below)

- OSC integration done over the AVB Network port (Port C) or via ECx port

A Spat Revolution .JSON file is as well provided containing a 64 audio hardware
inputs sources feeding a 3rd order ambisonic room and a transcode to be adjusted to a desired channel base speaker setup and as the following criteria;

- Default template built using AVB E6 Engine128 as a Spat audio hardware
    device
       - Input 1-64 are fed from hardware audio 65-128


(matching the above Avid S6L AVB patch, see input matrix)

- A transcode module available to bring this to specific channel base speaker
    setup

The OSC part is the key aspect to this integration as when properly configured, the
console will be sending OSC commands to Spat (OSC Out) and receiving OSC
commands from the S6L console (OSC In). Thus for a bidirectional configuration.
This is what the Spat Send plugin dœs on the console. Optionally is the ability to
set a second OSC output from the console to send to a backup Spat Revolution
computer engine
The plug-in offers the ability to control the SPAT object/source parameters and
automate them within the VENUE show file and the VENUE Snapshot system. Ultimately having a completely integrated control of the objects in the 3D space.
Added to the Spat Revolution Source parameters are global and per parameter
time values the user is able to use to set a linear morphing between two parameter
states over a period of time to create smooth transitions. Thus creating movements
in time with the VENUE Snapshots. Important to note that all parameters (with time
value) become available on 4 page tables in the encoder section for the plugin.


#### �


Spat plugin on S6L CKM module – Page 1 of 4

#### �


**Spat Revolution computer connected to the AVB Port**

Now let’s configure the OSC part of this integration. Although provide files are a
start template to explore, the OSC settings (plugin and Spat Revolution) are specific to your console and to the Spat Revolution preference

#### �


Spat Send Plugin in the Plug-Ins rack of VENUE

**Spat Send Plugin setup**

#### �

The PI interface dœsn’t have much and it straight forward.

- Index refers to the object number in SPAT application. Automatically generated every time there is a new instance. (Can be changed by snapshots too)


- In IP. Pull down will allow you to choose the ethernet interface you will be listening to OSC commands in the S6L coming from SPAT (you will need this
    address for SPAT preference setup later). This can be the AVB port
    169.254.x.x or your ECx port of the console
- In Port#: It needs to be the corresponding Port# on your Out Port in the
    SPAT application preference and can be left to the default port (more on this
    later)
- Out IP. 169.254.x.x or whatever address your SPAT application MAC is at.
- Out Port#: It needs to be the corresponding Port# on your In Port in the
    SPAT application preference and can be left to the default port (more on this
    later)
- Second Output checkbox is to send the same commands to a backup SPAT
    rig! Yes redundancy!

Note that any changes you do properties wise to the Spat Send interface get done
across the board (across all PI instances)

**Setting the preferences of the Spat Revolution Application**

Before to open a template Spat .JSON project file or to start creating your project,
let’s set up your preferences in Spat Revolution preferences page :

- Hit preference in the right corner. Look for the OSC connection section. You
    will see 6 OSC slots... Set one to In and one to Out. We will use 2 slots for
    this. Out will be to go to S6L Spat Send PI. In will be to listen to S6L in SPAT


**Spat OSC Connections preferences**

#### �

- Set the In IP address by pulling then the menu and choosing the 169.254.x.x
    of your SPAT application computer (or whatever network interface you are
    using for this communication)
- Set the In port # to the desired port #. This is the port # that you need to put
    (or have) in the Out Port # of the S6L Spat Send PI. For Example you can use
    53700
- Set the Out IP address by putting the IP address of the S6L Console (you will
    have found this address in the In IP of the S6L Spat send PI above)
- Set the Out port # to the desired port #. This is the port # that you need (or
    have) in the In Port # of the S6L PI.
- On the 8 checkboxes (Ping-pong, Source, Room, etc) you will for now just
    engage Source on both the In and Out (Basically we are only moving source
    objects on this integration for the moment)

We recommend in the Spat OSC Main section to activate "Enable commands logs"
option as this can help to confirm OSC communication.


**Spat Hardware IO (Audio) preferences**

#### �

- In Devices, please select your core audio device. In this case we are using
    the AVB Core Audio E6 Engine entity in 128 channel mode but this could be
    as well your MADI interface of choice if doing this via AVB
- Sample rate should be set at 96000 Hz and buffer can be set to your desired
    buffer (mind lower buffer will required good computer resource and may
    not need to be really low unless dealing with IEM mixes for example)

Now in SPAT Revolution Setup page

- Open the Flux Spat Revolution provided template file or created your own
    project
- Right click on the top right SPAT logo and click show mini terminal (Shift +
    F7) ... You will see OSC message log window appear which can be practical
    for this first test

Testing configuration :
In SPAT Revolution Room page, you will see all your virtual sources in the sound
field

- You can now move objects from the Plug-in CKM encoder page table of the
    console and see them move (and confirm OSC messages with your OSC Log
    terminal)
- In Spat Revolution application, on the left side are all your sources. Double
    clicking on an object number will open the source properties. Changing the
    radiation properties for example should as well change the values in the PI
    encoder page (Again the terminal can confirm this). You are then equip to
    start building snapshots containing you plug-in parameters.

- If using the Flux Spat Revolution and S6L template files, you can try using
    snapshot 1 and 2 already created to show a all source reset and all source
    circle spread move made in 2 seconds.

