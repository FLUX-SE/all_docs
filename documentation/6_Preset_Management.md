# Preset Management

Syrah, as well as all other Flux:: plug-ins, provides two preset slots referred to as slot A and slot B, which means
that you can have direct access to two sets of parameter settings simultaneously. In addition to just recall (33) the
settings for each of the slots individually and alternate between their settings, a morphing slider (35) is provided
offering the possibility to morph between the slots and their corresponding settings. When clicking on one of the
preset slots (38), the built in preset manager appears.  

The preset manager contains three preset banks, the Factory bank contains factory presets, this bank is not available for saving of presets but any of the presets can be loaded into a preset slot and then saved into, the User bank,
where all user presets are saved. Finally, the Global bank, which is a bit special, here you can save a complete
snapshot with all the settings from both preset slots, as well as the position of the morphing slider. 
 
In the preset manager, any preset can be loaded into a preset slot by double clicking on the name of the desired
preset in the actual preset list, the preset will then be loaded into the preset slot corresponding to the position of
the morphing slider.

## Additional Controls In The Preset Manager Window

- Recall A loads the selected preset into the corresponding slot.
- Recall B loads the selected preset into the corresponding slot.
- Update, saves the current settings into the selected preset.
- New, saves the current settings into a new preset.
- Duplicate creates a copy of the selected preset and saves it to the list.
- Edit allows for changes to the preset meta properties.
- Delete, removes the selected preset.
- Export, creates a file reflecting the content of the current preset bank.
- Import, allows for import of a preset bank file by adding the imported banks content to the content in the current
preset bank.

When saving or editing a preset, an option to protect the preset is presented. The preset protection, if engaged,
only allows the original preset author to uncheck and edit the preset. This means that you can protect your presets
in a multi-user configuration. Protected presets can only be modified using the session used for their creation. If
used in another user session they can only be imported or deleted.

## Preset Management Controls


## Save (32)
To save a new preset using the built in preset manager, simply click Save in the corresponding preset slot (A/B),
and to save changes to your preset, simply click Save again.  
If you want to resave your preset under a new name, open the preset manager by clicking the corresponding (A/B)
preset slot (38), select New, enter a name for your preset, and press Save.

## Recall (33)
Recalls the settings of the corresponding slot.

## Copy A/B (34)
To copy all parameters between the preset slots (A to B or B to A), press the Copy A or Copy B button, and the 
parameters from the corresponding preset slot will be copied into the current preset slot. When copying parameters
from one slot to another, the preset morph slider will automatically slide to the slot the parameters where copied
to.

## Morphing Slider (35)
The morphing slider provides mixing between the settings of slot A and B and allows for some very creative tweaking.  
The result of the morphing can be saved as a global preset containing the actual settings of both preset slots as
well as the morphing slider position.  
To save a Global preset, open the preset manager by clicking the corresponding (A/B) preset slot (38), then click
Global, select New and enter a name for your global preset, then press Save.

## Automation (Morphing Slider) (36)
When enabling the Automation control button, the morphing slider will be exposed and available for both automation 
read and write.  
Though with the button engaged, only the morphing slider value is applied when reading automation.  
The Automation control button must be engaged if the morphing slider needs to be mapped on a control surface.

## Preset Name (37)
Displays the name of the current preset.

## Preset Slot (38)
By pressing the little arrows in the preset slot, the built in preset manager appears
