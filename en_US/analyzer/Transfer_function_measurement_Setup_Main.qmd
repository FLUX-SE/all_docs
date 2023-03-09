# Main

## TF/Sweep Block size
Block size used for the transfer function and the snapshot done with sweep.
The default is 32768, which is appropriate for most cases.

Increasing this value gives better frequency resolution, at the expense of CPU load.
Lower values can be employed if you're only interested in the overall response of the analyzed system.

![Transfer function block size](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/TransferFunction/BlockSize.png)

## Time averaging
Toggles time averaging on and off.
Default is on, which in most cases is necessary to provide a stable display readout.

## Length
This setting determines the number of blocks taken into account to compute the averaged transfer function.
Increasing this value will give a smoother readout, but the display will react more slowly to any input variations, and CPU load will be higher.

The default is 32.
