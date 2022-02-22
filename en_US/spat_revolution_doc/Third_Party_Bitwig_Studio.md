# Bitwig Studio

Bitwig Studio is a DAW designed in Berlin with a live hands on philosophy to it.
Along with its highly animated and intuitive graphic interface, it offers well-designed clip-based and timeline arrangement paradigms for composing. 
The Bitwig designers have included a complete suite of powerful and great sounding native effects and digital instruments, with many performance and modulation features for any type of users. 
Its parameter modulators and their well-designed routing system make it compelling to create music and sound design in BitWig.

![](include/SpatRevolution_UserGuide_-265.png)


**Setting Up Sync in BitWig**

When using the Local Audio path (LAP), the buffer size and sample rate must be matched in both SPAT Revolution and Bitwig Studio. 
In SPAT, you do this in the preferences, and in Bitwig, you do in the audio engine settings. 
If they don't match at first, you _may_ need to restart  both applications to get the correct green sync status between the apps.

![](include/SpatRevolution_UserGuide_-266.jpg)

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/SpatR/Preference/HardwareIO.png)

**Setting Up Tracks in BitWig**

One good way to work with Bitwig and SPAT together is to set Bitwig tracks to output their audio to _Effect Track_ types - they are like Aux busses in other software you do that routing from an audio track output assignment settings.

![](include/SpatRevolution_UserGuide_-270.jpg)

**Setting Up SPAT SEND in BitWig**

Put the SPAT SEND plug-ins on individual _Effect Tracks_, enable the local audio path with **THRU** set to off, so all audio streams are rendered to output in SPAT Revolution.

![](include/SpatRevolution_UserGuide_-272.jpg)

Like in all Local Path Audio workflows, you should see SPAT SEND inputs appearing in the SPAT Environment Setup, which relate directly to the plug-ins hosted in the other software environment, reflecting their TrackName and channel count.


**SPAT Source Automation in BitWig**

Now the fun starts - on the Bitwig Send tracks, which host the SPAT SEND plug-ins, you will see all the parameters of SPAT sources available as dials. 

Use the Bitwig <code>+</code> to open the Device Parameter Modulators and assign the many and varied modulation sources to control Azimuth, Distance or other Source Parameters.

![](include/SpatRevolution_UserGuide_-274.jpg)

**Setting Up Controllers in BitWig**

BitWig has comprehensive support for many popular MIDI controller surfaces.
These can be very easily mapped to SPAT SEND parameters for hands on control of virtual objects and rooms.


**Troubleshooting**

For troubleshooting, please review the **[Appendix B - Troubleshooting](Appendix_B.md)**

---
