# Tablet Remote (Lemur)

## Templates

Spat Revolution 20.12 brings 3 new Lemur templates that have been created to bring some iOS and Android remotes into your workflows. They can be used as-is, but can be modified in the editor software (Lemur editor).

[**Spat_Remote - 2020 SR Beta - Spat Revolution**](https://public.3.basecamp.com/p/aWJ2wnHxpGGQZJ6CL8VE4yB9) is a great one as it combines the actual source control page and controls for the newly introduced snapshots.

 [**Spat_Snapshot - 2020 SR Beta - Spat Revolution**](https://public.3.basecamp.com/p/L8xYp9jzJ1DRh76fcBcuH4fG)  is a dedicated Snapshot control page.
 
[**Spat_Multitouch - 2020 SR Beta - Spat Revolution**](https://public.3.basecamp.com/p/XftQefeGH9AsqLmum1N12boA) is a Multitouch remote for up to 8 sources!


You will need LEMUR iOS or Android software to be able to use these templates. Templates are providing for standard iPad and an iPad Pro version. Other resolutions will need customization using the Lemur editor. For more information on Lemur editor, please read the [Lemur User Guide](https://liine.net/assets/files/lemur/Lemur-User-Guide.pdf).
 
[**Download Lemur for iOS:**](https://apps.apple.com/us/app/lemur/id481290621?ls=1)

[**Download Lemur for Android:**](https://play.google.com/store/apps/details?id=net.liine.lemurapp) 

> **Advice:** For most reliable remote control from tablet devices, it is recommended to hardwire your table device to your system. Some adapters offer ethernet connectivity and in some cases, power as well. This way your device can remain 100% charged all the time and will have a solid ethernet connection to make sure you can rely on this remote for the critical times (But yes it does work more than fine in Wi-Fi too!). Multiple tablet devices can mean building yourself a control station!

## Loading the templates

Although some will take the road of using Lemur editor to open these and push them to their devices, it can be as simple as opening them directly from your tablet. As an example, in iOS, once you are trying to open the file (from the above download link or from an email attachment), simply click on the top right button to get send options. Reach the **copy to Lemur**. _You do have to have Lemur installed first._

![image(0)](include/tabletRemote_image(0).png)

![image(1)](include/tabletRemote_image(1).png)

The patch will now open in Lemur software. You can save it in your device, clicking on the wheel on the top right.

## Setting up OSC targets

The simple step to use it with Spat Revolution is to configure (one time) your OSC Targets, in this case, Spat Revolution. To configure the OSC address and port in Lemur, click on the wheel on the right top, then on “More Settings”.

![image(2)](include/tabletRemote_image(2).png)

In OSC Targets, you can see the IP Address of your actual remote device. (Lemur IP: **x.x.x.x**). The port is locked by default at <code>8000</code>. 

OSC 0 - OSC 7 are actual targets. You can add up to 8 OSC targets. An example of this could be to target 2 Spat Revolution for main and back up hardware.

As of Spat Revolution 20.12, input | Lemur and output | Lemur presets are available in the OSC Connection section. Port are by default <code>8000</code> for input and output.

From the above example, the Lemur IP is <code>192.168.2.5</code> Port <code>8000</code>. And we have set the OSC target OSC 0 to the Spat computer IP Adress <code>192.168.43.10</code> with port number <code>53700</code>. 


## Setting OSC connections in Spat

The first step is to go to the _Spat Preferences_ and _Enable OSC_.
You then need to set up an OSC port and host route, in order to connect with Spat plug-ins via OSC. 
The port and host should match that of the Lemur app.


![image(3)](include/tabletRemote_image(3).png)

- Input from your IP <code>192.168.43.10</code> (or whatever you Spat computer IP is) with port # <code>53700</code>.

- Output to <code>192.168.2.5</code> (The Lemur iPad IP) with port # <code>8000</code>. Default and needed checkbox setup are: 

    - **AED Packing:** Will only send AED packages. No worry the Lemur patch converts to XYZ.
    - **Auto-Bundle:** Will send OSC bundles when required.
    - **Ind as Arg.:** Sending index as arguments as it is required for Lemur/template.
    - **TouchRelease:** Sending the Touch and Release messages.


## Spat Snapshot

![image(4)](include/tabletRemote_image(4).png)

1. Create: Click to create a new snapshot. It will be placed at the end of the snapshot list.

2. Recall/update: Click to change the action by clicking to change from Recall to Update  mode. In Recall mode, your press of the snapshot pad will recall it. In update mode, your press of the snapshot pad will update it.

3. Snapshot number: Display the last snapshot created, recalled or updated.

4. Transition time: Change the recall time between two snapshots. You can adjust the minimum and maximum volume editing the variable ‘faderTime’.

5. Snapshot pad: Click to recall or update a snapshot. You can edit the snapshot name editing the variable ‘nameSnapshot’, following the format  {‘Snapshot1’, Snapshot2’}

6. Recall options:
    - Include Sources  Selection: recall the current sources’ selection when the snapshot has  been created. 
    - Only Selected Sources: recall only parameters for sources currently selected.

7. Refresh will send a message to Spat to get the active number of Snapshots. Could be useful on loading a session in Spat, or if some OSC messages are lost in a full network.

## Spat Remote

![image(5)](include/tabletRemote_image(5).png)

This patch allows 8 different Remotes to control Spat Revolution’s sources. You have access to the principal parameters, for each source. To choose the source you want to control, touch on the button next to ‘Sources’. A panel will appear with a certain number of sources and a -1 button. This last  control (-1) is the actual selection (or multi-selection) on Spat Revolution.

![image(6)](include/tabletRemote_image(6).png)


1. Source selection and Snapshot Pad: click on the pad to open the corresponding window.

2. Reset button: keeping the reset button pressed, click on ‘all’ if you want to reset all source’s parameters to initial values or click on the parameter you want to reset.

3. Copy / Past: Press and hold the copy button until clicking on the parameter you want to copy. Change of remote, and hold the button paste and then press on the parameter.

4. Frequency: click on ‘f’ to change the middle frequency of the filter.

5. KnobMenu: Click on the name to choose between different parameters for the
    corresponding knob.
    
6. Zoom: click to change the scale of the XY-Pad.

7. XY-Pad Mode: there are 4 different modes, detailed below.

![image(7)](include/tabletRemote_image(7).png)
  

## Spat Multitouch

![image(9)](include/tabletRemote_image(9).png)

This patch allows you to control the position of 8 sources at the same time, with different fingers.

1. Pad Mode: the modes are the same as the 8Remote patch.

2. Source: click to select the sources to move. You can choose up to 8 sources, including the actual selection on Spat, represented by a ‘-1’ in the  source.

3. Active sources: click to hide or show a source.

Like the 8Remote patch, you can edit some variables to customize the patch.
To edit the number of sources you want to show, adapt the variable ‘numberSources’ on the Lemur editor. To edit the sources’ names, adapt the variable  ‘listSources’ in the Lemur editor, respecting the following format:  {‘nameSource1’, ‘nameSource2’, ‘nameSource3’} etc.

---