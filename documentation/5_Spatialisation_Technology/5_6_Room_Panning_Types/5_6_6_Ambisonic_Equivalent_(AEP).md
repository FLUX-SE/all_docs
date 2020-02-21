# 5.6.6 Ambisonic Equivalent (AEP)

In common with the channel based panning types we have covered so far, Ambisonics is a technology that also distributes virtual sound sources in space yet it
achieves this in a fundamentally different way. Ambisonics relies on a two step
process.

1. **Encoding**
    Audio sources along with their positional information are wrapped up together using signal mathematics to create encoded Ambisonic audio. Ambisonic scenes are always carried on at least 3 channels of audio. They are
    not intended to be _listened to directly_ they are intended to be _decoded_.
2. **Decoding**
    Ambisonic audio signals are unwrapped and the positional information
    contained within them is decoded _specifically_ for one type of speaker configuration. What we get is an immersive sound field that should accurately
    render the original spatial composition in 2D or 3D on the specified speaker configuration.

Keeping these two steps separate has a number of advantages. Primarily, that of
being able to record the encoded Ambisonic audio signals independently of any
fixed speaker arrangement. On the other hand, it is possible to "fuse" the two
stages of the process together resulting in what appears to be the output of a generalised channel based type of panning. That is the ÆP panning type in a nutshell.


**How does it work?**

ÆP has certain computational and ambisonic mixing advantages and exhibits very
different behavior from the VBAP/VBIP pairwise approaches. It is up to you to decide whether to work with purely Ambisonic rooms (more about that in the later
section) or to use ÆP as a channel based panning law. Both approaches are valid
and could be useful. As we have mentioned a few times already, the choice of
panning type depends on what sounds best in the context of your material, your
compositional goals and the acoustics of the system you are working with.

