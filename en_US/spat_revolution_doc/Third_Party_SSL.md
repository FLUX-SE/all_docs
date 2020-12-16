# Solid State Logic SSL Live Consoles


As of version 4.11, SSL is now supporting Open Sound Control (OSC). SSL Live console are now capable of remotely controlling other devices over its connectivity network ports. This is a bidirectional integration for Spat Revolution. 

## Template 

A simple template is availale for downlaod and provide a start point to configure this integration 

**[Solid State Logic SSL Live v4.11 - Spat Revolution 20.12 template](https://public.3.basecamp.com/p/CSWr2SGggU6bbdZfTysp6LXj)**

## Setting up SSL Live console

* Go to **MENU/Setup Option /EXTERNAL CONTROL** to configure remote control.

* Rename the Generic OSC to SPAT OSC and enter the Spat Computer IP address.

* Set In port # to 9301 and Host RX Port # to 9300. They will match the SSL Live OSC Input and Output connection presets in Spat Revolution.

* Make sure to Enable OSC and note the Control IP Address. This address will be needed when configuring Spat OSC


**SSL OSC Settings**

![SSL Live Spat OSC Swiches](include/ssl_live_4.png)



## External control fader and switches


**SSL Generic OSC - External Control**

![SSL Live Spat OSC Swiches](include/ssl_live_3.png)

With Solid State Logic live consoles, up to eight *Fader* (i.e. continuously variable) and eight *Switch* parameters per third-party device channel may be defined for control by the console. These control parameters (OSC messages)  going out to Spat Revolution source/objects are accessible from each console audio path as well as dedicated OSC paths with no console audio processing associated with them. The provided template has all these configuration done for you but you can decide to customize with different or less parameters.

**SSL OSC Device Configuration and Address for Switch**
![SSL Live Spat OSC Swiches](include/ssl_live_1.png)

 
**SSL OSC Device Configuration and Addressfor Fader**

![SSL Live Spat OSC Faders](include/ssl_live_2.png) 

## Setting up Spat Revolution

* Start the Spat Revolution software and open the preference page.
* Enable OSC.

![Enable OSC](include/Digico_2.png) 


* In the OSC Connections section, use the pre-configured SSL Live OSC presets. In the pulldown, choose **input |SSL Live** and select the local IP address you are using to communicate with the desk. Then set a second OSC Connection for the output from Spat Revolution to the desk.  In the pulldown, choose **output | SSL Live**. You will  enter the desk IP address as found in the OSC settings. Port # 9300 (Input) and 9301 (Output) are pre-configured 

![OSC Connections DiGiCo Presets](include/Digico_3.png)
 


----
