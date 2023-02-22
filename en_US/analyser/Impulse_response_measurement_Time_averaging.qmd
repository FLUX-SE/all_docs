# Time averaging
The time averaging function computes the mean of several IR measurements over time, which is very useful to filter out noise and other artifacts.
It is enabled by default as this gives better display stability and measurement robustness, however averaging also slows down the reactivity of the display to incoming variations, so you can disable it if needed.

<!-- TODO: validate it is default on -->

When IR averaging is enabled, a message is shown giving the number of currently computed impulse responses versus averaging length.
The display switches to show the mean confidence percentage when
ready.
