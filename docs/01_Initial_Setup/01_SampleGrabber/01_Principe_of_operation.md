# Principle of operation

Pure Analyzer System completely separates signal acquisition from analysis for maximum
flexibility.

Source and response signals are first acquired by the SampleGrabber plugin, and subsequently routed
across the network using the ZeroConf/Apple Bonjour protocol. Finally, the Pure Analyzer standalone
applications receives the sample feed(s) and analyzes them.

SampleGrabber is a surround-capable plugin, available in all common formats (VST, AU, RTAS and TDM),
whose channel configuration is set automatically, or by clicking the <image name="Gear"
                                            filename="C:\Sources\Flux\FluxtAnalyzer\Software\FluxTAnalyzer\RES\Gear.png"></image> icon
and setting the desired channel count in the I/O sub-menu.

The Pure Analyzer application displays a list of SampleGrabber instances found on the network in the <link
type="document" target="Audio source">Audio source
</link> menu. Each instance is identified by the associated computer network name it is running on.
Clicking a name in the list selects the corresponding SampleGrabber for input.


>You can insert up to 64 instances of SampleGrabber plugins inside one same DAW,
and up to 64 Pure Analyzer instances can be connected to any SampleGrabber instance over the
network. A SampleGrabber can be connected to up to 64 Pure Analyzer instances over the network.*
We do however recommend to limit the number of instances in order to avoid saturating the network.*