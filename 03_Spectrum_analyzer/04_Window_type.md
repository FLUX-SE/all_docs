# Window type
As previously mentioned, the first step is to split the incoming signal into overlapping blocks. Each
block is then multiplied with a so-called window signal prior to the spectrum computation. The purpose
of this is to minimize side effects of the block processing, such as introduction of transients at the
block boundaries, etc.

The window type to use is set in the <link type="document" target="Main">Main</link> setup.

>We suggest you leave this setting to the default unless you are quite knowledgeable
with these aspects, or in the case you should need to explicitly recreate a specific measurement such as
a particular method specified in a standard's document.

The <link type="external" target="http://en.wikipedia.org/wiki/Window_function">Wikipedia entry</link> on
window functions in the context of signal processing is a good reference if you want to get a more
thorough understanding of the subject.

> While the windowing process is implemented in the time-domain, it can be also be seen as a
smoothing filter in the frequency domain, and as such the choice of window is a compromise between
frequency resolution and immunity to artifacts.
Skipping the windowing process altogether, which is the same as applying a rectangular window, is not
recommended. Although the rectangular window provides the best frequency resolution, it has very poor
leakage characteristics.

