# Controls
<image name="Snapshots"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\Documents\graphics\New Screenshots\added\Snapshots.png"></image>

Snapshot list and controls

The snapshot area shows a list view, where one or more snapshots can be selected. The selected
snapshot(s) will be highlighted accordingly, both in the list and the corresponding display(s), with
increased curve thickness .

## Selection and navigation
The snapshot list follows standard user interface guidelines, which means you can:

* Use keyboard up and down arrows to change the currently selected snapshot. Note: the
snapshot area must have focus for this to have effect.
* Click on any snapshot to select it.
* Shift-click to define a selection range of multiple snapshots.

## Add new snapshot
Clicking the icon immediately creates a new snapshot, stores it on disk, adds it to the
current project and selects it.

## Acquire sweep
The <image name="Sweep"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Sweep.png"></image> button
launches acquisition of a sweep snapshot. This special type of snapshot automates the
acquisition of transfer function and impulse response curves using a swept sine generator
output.

Please check the following for proper operation:

* <link type="document" target="Output">Generator output</link>(s) should be properly assigned to the corresponding hardware channels
* <link type="document" target="Hardware IO">Hardware IO</link> should be properly configured and set to hardware output(s)
* <link type="document" target="Sweep start/end frequencies">Sweep start/end frequencies</link> should be set as desired

Providing the previous requirements are met, a progress dialog will then be displayed until all
data has been acquired and the snapshot is computed and ready for display.

> Ensure the outputs of the generator and the connected speakers are set to
reasonable levels in order to prevent damage to your equipment and hearing loss.

## Create average
Click the <image name="Average"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Average.png"></image> button
with multiple snapshots selected to create a new snapshot average of these.

The new snapshot curve data is computed from the selected snapshot data as follows:

* Spectrum magnitude: average of magnitude vectors.
* Transfer function magnitude: average of magnitude vectors.
* Transfer function phase is set to zero as there is no mathematically significant meaning
to averaging of potentially unrelated phase spectra.
* Transfer function coherence: average of coherence vectors.
* Impulse response: average of signals.


The averaging can only be performed if the snapshots are compatible with one another, that is
they have identical:

* Sampling rate.
* Number of channels.
* Spectrum type.
* Impulse response length.


A warning message will inform you the averaging cannot be performed if one of the above
conditions are not met.

> The snapshot average stores the average of the snapshots at the moment it was created. If
you change the snapshots in any way, the snapshot average will not change.

## Update current
Clicking the <image name="Update"
filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Update.png"></image> button
will overwrite the last selected snapshot contents with the most current data.

This is especially useful when you are fine-tuning your measurement setup and only want to keep
the latest one, without creating several snapshots and deleting them afterwards.

> This function is destructive: there is no means to revert the original
snapshot data.

## Load project
Opens a dialog box where you can select an existing folder containing a previously saved
project.

To create a new empty project, creating a new folder and name it, then selecting using in this
dialog.

## Curve visibility
For each snapshot, you can control which curve should be displayed. These controls are
intended to select only those curves that you really need to be displayed when there are many
visible snapshots, and still maintain a legible display:

* Transfer function coherence.
* Transfer function magnitude.
* Transfer function phase.
* <link type="document" target="Magnitude">Magnitude</link> spectrum.
* Impulse response.

> The default visibility of newly created curves can be customized in <link
type="document" target="Display defaults">Display defaults</link>.

## Color
Opens up a color selector dialog where you can manually set the color used to identify the
snapshot, both in the list and as a curve.

## Name
By the default, newly created snapshots are given the name <c>unlabeled-x</c>, where <c>x</c> is
the current number of snapshots in the project. You are strongly encouraged to edit this name
for further reference.

## Invert (Iv)
Invert the magnitude curve of the Transfer function
