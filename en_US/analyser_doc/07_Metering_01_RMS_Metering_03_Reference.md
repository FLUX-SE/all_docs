# Reference
![](include/RMSMeterSetup.png)

> RMS metering setup options


## Zero reference
Adjusts the reference point. 
Default is -18dB (DVD standard). 
Do not change this unless you specifically want to divert from the standard, as this will otherwise compromise meter readings.

Standard values are -18dB for DVD authoring and -20dB for film.


## Weighting
![](include/RMSWeighting.png)

Applies an optional weighting filter conforming to various standard curves:

* None (default).
* ITU 1770: K-weighting filter, comprising of a shelving and a high-pass (RLB-weighting) filter in series, as specified in ITU-R BS.1170-2 and employed by EBU R128 (PLOUD).
* ANSI A, which is roughly the inverse of the Fletcher-Munson curve.
* ANSI B.
* ANSI C.
* ANSI D.



