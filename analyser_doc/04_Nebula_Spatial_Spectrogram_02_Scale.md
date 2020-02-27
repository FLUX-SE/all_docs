# Focus

<link type="document" target="Controls">Controls</link>
the stereo image width X-axis display range, in dB.

A value comprised between ±18 and ±24dB correlates well with our abilities in perceiving the stereo
image.

Default is ±18dB.

>Pixels outside the focus range are clamped to the view boundaries.

# AutoScale
This parameter controls whether the intensity of the particles are modulated by the overall audio
level variations. In essence, when enabled, the color nuances will vary according to the relative
amplitude of a frequency, allowing to monitor the relative amplitude spectrum variations. When
disabled, the color will reflect the absolute audio level. You can also think of this as a kind of
auto-gain setting.

# AutoScale release
This controls whether color variations should be smoothed in time or not. When engaged, color
variations is slowed down a bit, which makes overall level transitions more obvious.

>You should to enable this setting when you want to visualize quick level
variations such as those that frequently occur in movie soundtracks.

# Linear blend range
Adds a constant blend amount to the particle. This ensures some of the particle is always blended
into the image even if its original magnitude is low.

A low value for this setting has the effect of stabilizing the appearance of particles. With large
values more of the spectrum dynamics are taken into account, and only peaks mostly come through.

# Log blending
Toggles between linear and logarithmic blending of the current particle with old particles.

The default is off, ie. linear blending, which tends to favor the display of peaks.

Logarithmic blending on the other hand preserves more of the full dynamic range of the data, and
gives some visibility to lower levels also.
