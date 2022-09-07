# Setup
![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/LiveIO/SetupDelayFinder.png)

> Delay finder setup options.

# Max delay

Sets the maximum delay that can be computed. 
The default is 1 second, which equates to a maximum distance between microphone and speakers of roughly 300 meters, and should be large enough for most practical applications. 
You can decrease this value as this minimizes the possibility of false readings.

# Algorithm
![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/LiveIO/Algorithm.png)

Selects between three different delay finding algorithms:

* Basic: lowest CPU load, less robust to noise and interference.
* Standard: medium CPU load, the default.
* Advanced: heavy CPU load, can help in very noisy environments.

In the rare case where the standard method fails in your particular environment, you should try other methods.

# Search passes
![](https://media.githubusercontent.com/media/FLUX-SE/doc_images/main/Analyzer/LiveIO/SearchPasses.png)

The delay can be set to work in one or two passes:

* Full (default): one search pass covering all possible values.
* Two-stage: first pass to determine a rough delay value, followed by a second to refine the reading.

Two-stage delay finding can improve accuracy in the context of an environment with heavy multiple reflections.
