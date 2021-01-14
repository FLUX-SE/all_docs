# Principle of operation

Pure Analyzer System completely separates signal acquisition from analysis for maximum flexibility.

Source and response signals are first acquired by the SampleGrabber plugin and subsequently routed across the network using the ZeroConf/Apple Bonjour protocol. Finally, the Pure Analyzer standalone application receives the sample feed(s) and analyzes them.

SampleGrabber is a surround-capable plugin, available in all common format (VST, AU, RTAS and TDM), whose channel configuration is set automatically, or by clicking the ![](include/Gear.png) icon and setting the desired channel count in the I/O sub-menu.

The Pure Analyzer application displays in the [Audio source](02_User_Interface_02_Audio_source.md) menu a list of SampleGrabber instances found on the network . Each instance is identified by the associated computer network name it is running on. Clicking a name in the list selects the corresponding SampleGrabber for input.

>You can insert up to 64 instances of SampleGrabber plugins inside one same DAW,
and up to 64 Pure Analyzer instances can be connected to any SampleGrabber instance over the
network. A SampleGrabber can be connected to up to 64 Pure Analyzer instances over the network. *We do however recommend to limit the number of instances in order to avoid saturating the network.*