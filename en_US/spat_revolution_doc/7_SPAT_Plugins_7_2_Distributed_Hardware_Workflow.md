# Distributed Hardware Workflow

Routing via hardware IO means that in principle the audio can arrive at Spat's hardware inputs via MADI or other high channel interconnect from another machine handling the audio playback (and/or recording). 
This is a powerful and reliable combination as it shares audio computational resources.

Furthermore, a single machine setup can be converted to a fully automated distributed using OSC to target the single or dual Spat engine for a real time controllable and interactive distributed hardware setup.

!> _Enable bi-directional OSC communication in Spat preferences to send automation over the network to another machine._ Contact Flux Support if you need to expert support on this kind of advanced distributed setup.