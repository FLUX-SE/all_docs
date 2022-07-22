# Ultimate and Essential licenses

_SPAT Revolution_ comes in different flavors: an **Essential** and an **Ultimate** licenses.
Both share the same audio engine and powerful 3D audio capabilities.

The **Essential** license aims at being a limited version of **Ultimate**: same workflow but limited capacities at reduced price.

## Ultimate and Essential : what's common?

The _SPAT Revolution_ software supports with the same installer (binary) both license options and has the common features listed below:

 - An easy-to-understand setup page, showing a clear representation of the signal path.
 - A powerful mixing environment, using a 3D view and perceptive factor parameters.
 - An oriented-object audio engine allowing the user to render either channel-based, Higher Order Ambisonic (HOA) or binaural audio streams.
 - Support for mono, stereo and multichannel inputs streams.
 - A flexible speaker array editor allowing going beyond the usual standards.
 - A snapshot system to easily recall scenes on the fly.
 - An audio pipe technologies allowing receiving and sending audio from all the major DAW to and from _SPAT Revolution_.
 - An exhaustive list of OSC commands to allow a deep remote control of _SPAT Revolution_.

<!-- TODO: update? -->

## Ultimate and Essential: Differences

The main limitations of the **Essential** license are:

 - The number of channels is limited to 32 for all Inputs (cumulated).
 - The number of channels is limited to 16 for all Outputs (cumulated).
 - HOA order is limited to 3rd order.
 - Only one room can be used at a time: no simultaneous rendering.

<!-- TODO: check if there is other main limitations we want to list here -->

 **Complete specification is available [here](https://www.flux.audio/project/spat-revolution/#specifications).**
<!-- TODO: update the complete spec -->

## Ultimate and Essential sessions compatibility

When creating or opening a session that contains elements non-compatible with the **Essential** license, those elements are simply deactivated (not processed).
Thus, an **Ultimate** session can be opened with an **Essential** license and vie-versa. See [Modules (de)activation](Spat_Environment_Modules_de_activation.md).

### Check Essential compatibility

In the top bar menu, click on **File>Check Essential Compatibility** to check if the current session is compatible with the SPAT Essential restrictions.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Essential_Check_compatibility.png)

If the session is not compatible, it can be opened with an **Essential** license, the restrictions due to license limitations will automatically deactivate the non-authorized objects. 

> If a session contain elements non-compatible with an **Essential** license, they can be manually deactivated for the session to fit the **Essential** license restrictions. If all the non-authorized elements are inactive, the check for compatibility check then answers that the session is compatible with **Essential** license.

See [Modules (de)activation](Spat_Environment_Modules_de_activation.md) for more information about automatic and manual (de)activation.

### Essential compatibility mode in Ultimate

The **Ultimate** license offers an _Essential Compatibility Mode_, for switching between **Essential** and **Ultimate** behaviors without any change in your license authorization.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Essential_Compatibility_mode.png)

