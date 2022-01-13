# Master Section

The **Sum** row of modules is used to mix the output of two or more rooms of the same output configuration and in some contexts, to sum inputs directly without the use of room.

![](include/SpatRevolution_UserGuide_-124.jpg)

The **Sum** module can handle different input configurations.
It will Sum channels based on their channel names, so a correct naming convention is important.
Summing a 5.1 and 7.1 rooms together will output a 7.1 where their common L, C, R, Left and Right Surround rear channels will have content summed from both rooms the but Left and Right Back surround will be only from the 7.1 room.


> Summing can also be done directly in **Master** and **Output** Modules, but summing into a **Sum** module will save resources if the same sum is performed in different blocks.

The **Master Transcoder** row of modules offers an opportunity to consolidate the various formats you might have been mixing into one (or more) formats for final output routing by the **Output** modules.
The same options and routing are available as in the _Input Transcoder_ modules.

The **Master** bloc give you a last gain stagging control, as well as down mixing capabilities. When opening its matrix, it is possible to patch several input to one output, or, on input to several output.

Finally, the two bottom rows in the _Environment Setup_ graph are the output modules for the entire project.
The [**Binaural Monitoring**](5_Spatialisation_Technology_5_1_Binaural_5_1_Binaural?id=binaural-monitoring-module.md) row provides a way to decode
the whole scene to headphones only in binaural 3D.

!> _Master section is automatically configured by the setup wizard with the Essential license of SPAT Revolution._
