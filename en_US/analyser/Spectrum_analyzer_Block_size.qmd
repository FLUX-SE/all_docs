# Block size
Keep in mind that the incoming audio needs to be accumulated in a buffer for a certain amount of time before the data can be computed and the display updated. In contrast with the buffers you probably know from soundcards, this block-processing is not just a computer technicality and only a source of undesirable latency, but an integral part of the process related to the mathematical aspects involved (Time-frequency product uncertainty principle).

As such, it determines both the precision of the analysis and the maximum display rate, and should be adjusted depending on the specifics of your application.

>In order to maintain a sufficiently responsive display refresh rate, blocks overlap by 75 %.

>The default setting is 8192 samples, which corresponds to a length of roughly 180ms at 44.1kHz sampling rate. This value constitutes a good compromise between precision and responsiveness for most situations. However, if you need to measure a particular frequency with great precision, you should raise the analysis block size. On the other hand, if you need to follow rapid spectrum variations, this value should be lowered.