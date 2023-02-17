# Quick start guide

The Verb is an algorithmic reverberation processor build in a modular way, with an recursive filtering based engine.

![](include/verb_02.png)

This block diagram view explain the basics of this engine, to explain the time structure of the reverberation tail:

- The direct signal is pushed first. It represents the direct sound, aka. the sound that comes first to the listener.
- Then, follow a first generator of early reflexions, called here EARLY. Theses early reflexions are particularly important as 
they describe the immediate spatial environment around the sound source: walls, floor, roof. Theses reflexions are depending on the source position : they are panned in the space.
- A second delay generator follows the early stage, called CLUSTER. Theses early reflexions comes a bit later, and have 
seen their density increased in comparaison to the first early. They can be shown as a transition stage between the early 
and the late tail generator. In a standard configuration, theses reflexions are seen as a common part of all the space : they 
are not localized. You can make it directive using the diffuseness parameter.
- A final LATE TAIL stage, synthetize the reverb tail. Most of the time, acoustical description of this tail shows it as an dense 
and homogeneous material in the reverberated space (you can change that too with the same diffuseness parameter).

Understanding this time structure, and the associated listening feeling is really important for an enhanced approach to any 
reverberation system.

For a first quick approach, you can:

- set the reverberation time with the main decay time
- set the room basics characteristic with the room size meta-parameter
- set some room filters, to adapt the tail to your current needs.
