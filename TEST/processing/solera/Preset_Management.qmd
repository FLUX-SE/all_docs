# Preset Management

## Preset Manager Access (56)
Opens a new window accessing the built-in preset manager.

## Loaded Preset Preset Display (57)
Displays the current selected preset name.  
Clicking the arrow opens a new window accessing the built-in preset manager.

## Save (58)
Save replaces the selected preset by a new one under the same name featuring the current settings. If you want to 
keep an existing preset without your new modifications, just select an empty place into the preset list, enter a new 
name for this modified preset featuring the current settings and press Save.

## Recall (59)
Once a preset is selected from the preset list it must be explicitly loaded into section A or the section B by using the 
recall button. A preset is effective only after it has been recalled.

## Copy A / Copy B (60)
The current parameters of a section are copied to the other one. The section A or B is re-initialized with the current 
values and the morphing slider is parked at 100% of the corresponding section.

## Morphing Slider (61)
Morphs the parameter values of both parameter sections.

This horizontal slider has no unity or specific value display, it provides morphing of the current values from both of 
the parameter sections (A & B).

A double-click on one side of the slider area toggles between the two parameter sections. The actual result of the 
morphed parameter settings can be saved as a new preset.

## Automation Control of the Morphing Slider (62)
When this button is disabled all of the plug-in parameter values are recorded when writing automation. 

When reading automation, if this button is disabled, all the plug-in parameters are controlled by the host automation 
except for the morphing slider (61), which is then ignored.

When this button is engaged all parameters are recorded when writing automation, including the morphing slider(61), 
though when reading automation ONLY the morphing slider value is read and applied.

The Automation button must be engaged if the morphing slider is to be mapped on a control surface.

Default Value: Off
