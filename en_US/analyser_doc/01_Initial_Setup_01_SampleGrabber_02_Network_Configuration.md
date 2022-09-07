# Network configuration
Network configuration is completely automatic and transparent, thanks to the use of the ZeroConf/Apple Bonjour protocol. Should you encounter any problems with your connection, we advise you to check whether the UDP port range from 46000 to 46064 is opened in your firewall, for both incoming and outgoing connections.

The audio transport requires approximately 1.4Mbps for each channel at a sample rate of 44.1kHz, whereas a 5.1 configuration at 96kHz demands a little less than 20Mbps. A properly functioning standard Ethernet 100Mbps network should therefore be more than sufficient to handle most scenarios.

>The above bandwidth requirements naturally do not apply when using both SampleGrabber and Pure Analyzer on the same machine.
>
>Please check with your network administrator if you have any bandwidth issues and/or special requirements.
