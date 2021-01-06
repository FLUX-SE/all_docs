# Spat Revolution Project Environment

![](include/SpatRevolution_UserGuide_-025.jpg)

## An Overview

The Spat Revolution production environment is based around five graphical user
interfaces that you will focus on at different stages of a spatialisation project.

**Environment Setup**

- Signal Routing, Format Transcoding, Panning Algorithms

**Speaker Configuration**

- Sound system modelling

**Virtual Rooms**

- Dynamic control, Spatial positioning, Scene Visualisation, Mixing

**Source Parameters**

- Perceptual sound design

**Reverberation Parameters**

- Perceptual sound design for artificial reverberation

We will go through each of these areas in more details in [Spat environment section](6_Spat_Environment_6_Spat_Environment.md) . 
But first, let us start with a couple of broad workflow concepts involved in the production of digital audio for immersive sound - **rendering and diffusion.**

> **Virtual scenes are rendered as graphics on a monitor screen as sounds in a physical space and as stems to disk.**

Spat Revolution gives you an unprecedented level of control over the position and the characteristics of virtual sound sources placed in virtual spaces. 
This is the main function of the **Virtual Rooms** editor where you can adjust and visualise the position and acoustic characteristics of virtual sound sources and compose virtual scenes with them on screen.

![](include/SpatRevolution_UserGuide_-006.jpg)

## Rendering To Speakers

In order for the virtual scene to translate correctly as an immersive sound experience in a speaker format, SPAT needs to have an accurate model of a _multi-channel speaker arrangement_ which will be used to map the multi channel information to the destination speakers and render the sound field correctly in a real space. 
To this end, you will find a large library of standard and specialised speaker arrangements already built into SPAT which can be used in various places throughout the **Environment Setup**.

Speaker configurations can be used to fit the format of a virtual room to match the actual speaker system being used to diffuse the mix in a real room. 
Channel based speaker configurations can also be used to transcode the format of a virtual source into a virtual room. 
More about this later.

The golden rule when working with multichannel based audio is that you must be sure to choose _exactly_ the right formats, speaker arrangements and channel routing throughout, otherwise the virtual space will not map correctly into a physical space.

## Virtual and Real Diffusion

Successful diffusion of a sound field in space relies on every loudspeaker being assigned correctly to each software rendered output channel.

A diffusion system could range from a simple pair of headphones to a 64-speakers array and anything in-between. 
In some of the more virtualised workflows of Spat Revolution, you may even be thinking about diffusion in a virtual space on configurations of virtual speaker arrangements and channel based formats. 
The same rule for successful diffusion applies here - the diffusion in the virtual room will be compromised and sound off, if the channel assignments to the virtual systems are incorrect.

![](include/SpatRevolution_UserGuide_-029.jpg)

In the above illustration a virtual 5.1 and a virtual Cube arrangement exist together in a High Order Ambisonic Room, which may eventually be rendered to some other channel based end format.
