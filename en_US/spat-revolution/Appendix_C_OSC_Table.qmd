# Appendix C - OSC Table

This table lists all the OSC message supported in  _SPAT Revolution_.

The table is divided into different messages' categories :
* Project-related messages
* Sources-related messages
* Rooms-related messages
* Masters-related messages
* Snapshots-related messages

The complete document can be downloaded here: [OSC Commands for  _SPAT Revolution_](https://public.3.basecamp.com/p/fWnQ9D3R2indGgBfHiL2QZZT)

## OSC Grammar

FLUX:: _SPAT Revolution_ supports by default 3 input grammars: FLUX:: OSC grammar, ADM-OSC grammar and IRCAM ADMix positional grammar.

## OSC Output Options

For position / radiation messages such as XYZ and AED, it supports individual messages, abbreviated individual messages, packed messages (XYZ or AED) or partially packed messages (XY or AE or AD).
On OSC Output, various OSC connections options are available to configure a custom OSC output.
1) AED or/and XYZ packing can be forced on output
2) Auto-Bundle features of OSC can be enabled or disabled.
3) Messages can be sent with Index as Argument rather than in the message (aka <code>/source/aed [1, 45, 45, 2]</code> instead of <code>/source/1/aed [45, 45, 2]</code> )
4) The ping-pong feature will force send messages coming from an OSC source back to it (by default, we send all message incoming to all output destination except destinations that are the source of the message. The destination which is defined as the source is the output with same IP address and a port number in the range of [input OSC port / input OSC port +10]. Example : for input <code>127.0.0.1</code> Port <code>8000</code>, Output <code>127.0.0.1</code> port <code>8009</code> is considered as the same device, port <code>8011</code> as another device).
5) Touch/Release messages are used to nicely integrate with DAW Automation features, this can be disabled on output if required or if messages are not supported by destination
6) Alternatively, ADM-OSC grammar can be used on output rather the standard FLUX:: OSC grammar
