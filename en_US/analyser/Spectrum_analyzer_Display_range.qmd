# Display range

Display range can be switched from a fixed reference interval to one that automatically adjusts to the current range of spectrum magnitude values. The latter is useful as a set and forget setting and works well to display the most vertical detail, at the expense of losing the ability to visually compare the current values to a reference level.

## dB Min / dB Max

Sets the minimum and maximum magnitude to display, in decibels.
This is visible the range of the display that is taken into account when auto-range is off.

Default range is -18dB (min) to -114dB (max).

## Range mode

Default is _Manual_.

### Manual

Uses a fixed range as specified by the above settings.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Spectrum/ManualRange.png)

### Auto

When engaged, auto-range continuously adjusts the display to the current range of the data.

> A slight envelope is applied to the auto-range values in order to improve legibility, avoiding the display to follow every minor change. Peaks are always registered however, as these provide valuable information that should not be missed.

### Compressed

The range is defined by dB Min/Max values, and the Y-axis is also compressed in the lower range.
This can bring out peaks and valleys in the spectrum to better visualize resonant frequencies and such.

![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/Spectrum/CompressedRange.png)

### Compressed &vert; Auto

Combines _Compressed_ and _Auto_ modes.
