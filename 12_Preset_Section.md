# Preset Section
![](include/trax_15.png)

## (90) Save Preset
Saves a snapshot of the current settings for future use.

Short description and assorted comments can be provided, which comes in especially handy when sharing presets with
other users, when the preset is part of a large preset bank, or to identify the author and source.

Entering a descriptive keyword is a good practice to be able to quickly sort your presets, according to character, the type of
space they simulate (e.g. hall, room, etc.), and the intended usage (e.g voice, percussion, guitar, etc.)

A preset can be locked to prevent any further editing.

To re-save your preset under a new name, open the preset manager by clicking the corresponding (A/B) preset slot, then
select New, enter a name for your preset, and finally press Save.

## (91) Recall Preset
Recall the settings from the currently selected preset, overwriting any current settings of the plug-in.

## (92) Copy A-B
Copy current settings to the other parameter slot (A to B or vice versa).

To try out a variation of the current settings without erasing the reference, press this button, switch to the other preset slot,
and adjust your parameters of choice, then switch or morph between them.

When copying a preset to a slot, the morphing slider will automatically fly to the corresponding slot.

## (93) Preset Name
Displays the current preset name, if any. Clicking the associated button (up and down arrows) brings up the preset manager.

## (94) A - B Morphing
Gradually morphes parameters from A to B slots or vice versa.

The parameter set associated with the current morphing slider position can be saved as a preset. In addition, when the
morphing slider is in an intermediary position, any edit made to a parameter switches the slider back to slot A or B, 
whichever is closest to the current position.


## (95) Automation
Enabling the Automation control switch makes the morphing slider exposed and available for automation read.

When engaged, keep in mind only the morphing slider value is used for automation, and other parameter values are 
ignored. This behavior is intended and necessary to prevent any parameter conflicts that would otherwise occur.

As a consequence of this, you need to make sure the Automation switch is engaged when mapping the morphing slider
mapped to a control surface hardware knob or slider. On the opposite, when not engaged, the plug-in will listen for any
parameter automation, except the morphing slider.
