# Max length
Sets the maximum length of the impulse response in seconds. 
If the reverberation time in your room exceeds this value, time-aliasing will occur, meaning that the impulse response computation will be incorrect and some of the reverberation tail might end up at the start of the display. 
The default value is 0.3s.

Increasing this value not only requires more processing power, it also increases the time needed to wait for the display to be updated, as the calculations involved need a greater amount of incoming audio samples to be processed.

Combining time averaging and a long length setting mean you'll have to wait 30 seconds or so for the display to stabilize, so you should really do this if you need to or do not mind waiting.

# Time averaging
Accumulates several impulse response measurements and averages them before display. 
This allows for more precise measurements and lessens the effect of spurious acoustic noise interfering with the measurement, but it also means having to wait longer for the measurement to be ready.



