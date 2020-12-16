# Multi-Channel Based Input

Any input module configured to represent a stream of multi channel audio can be
configured as a Speaker Arrangement format which would require that amount of
channels, as a minimum. For example, _DTU 7.1_ needs 8 channels, and _DTU 5.1_
needs 6. _Auro3D 13.1_ needs 14 channels. Unfortunately things can get complicated in practice, as there are a few variations of standardised speaker layouts which
have the same number of channels and seem very similar - but need disambiguation. This is important to get right, and will depend a lot on the context of your
project and on changing standards in the audio industry. For example, at least four
different 7.1 routing standards are to be found 'in the wild' and its important to
know which one you are actually dealing with. Often, for example, the so-called
'Low Frequency Effects' channel in cinema surround formats, is not always on the
same channel.


> ★ Try to stick to industry standard channel naming conventions
throughout a cinematic surround sound project



L | C | R
---|---|---
sL | | sR
surround Left | | surround Right
  | LFE |
  | Low Frequency Effects |
sbL | | sbR
surround back Left | | surround back Right


Some common Speaker Channel naming abbreviations

Please refer to Appendix C for special information about handling LFE and Mono
Sub Woofer routing in Channel Based applications.
