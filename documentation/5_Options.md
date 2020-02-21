# Options

![](../include/trax_08.PNG)

The options panel controls a number of parameters affecting the analysis-re-synthesis engine. The default settings should
prove adequate as a a starting basis.


## (43) Window Size (Music Mode only)
Computed automatically in Voice and Instrument mode, the window size is set manually in Music
mode. The window size determines the time frame base used to extract time-localized data in time
from the incoming material. As general guidance, window size should be small for fast tempos and
larger for slow music.


## (44) Overlap
This determines how much extraction windows overlap during a given time-frame, in other terms,
the update rate of the analysis for a given window size. Increasing this setting usually gives better
results but also leads to more CPU resources being used, as more data has to be analyzed. The
default setting of 4 is a good trade-off, but you can increase provided you have a reasonably fast
machine and hear a noticeable difference.


## (45) Oversampling
Oversampling effects the sampling of the spectral representation of the source material. The quality difference achieved
with oversampling is mostly noticeable with complex material with a broad frequency spectrum such as a full mix or a
instrument such as the piano, but as the performance hit is quite high, you should only enable it if necessary, and if your
hardware is sufficiently fast to handle the extra processing demands.


## (46) Mode
Sets the internal analysis/re-synthesis engine type to use.

* Auto: default setting, selects best setting for lowest CPU utilization and best quality depending on the value of transformation parameters
* Frequency domain: lowest CPU utilization, performs best when pitching up
* Time-domain: highest quality and CPU utilization


## (47) Transient
Toggles transient processing on (default setting) and off. You can disable transient processing if you don’t need to treat
transient separately, which will allow you to gain a little CPU. In this case however you will naturally not be able to control
the transient level independently of other content.

