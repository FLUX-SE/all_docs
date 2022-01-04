# Introduction

Elixir v3 is a novel kind of program limiter carefully designed to accomplish a truly natural sounding result without
changing the nature of the audio material and its timbre, presenting none, or effectively reduced, conventional
limiting “pumping” effects even during heavy processing.

It’s a REAL True Peak Limiter, providing a guaranteed True Peak output level according to the ITU-R-BS 1770 and
EBU R128 norms. The algorithm is using an oversampled representation of the audio sample as a reference when
it defines the gain envelope; still, the processing is only applied to the original none oversampled data in order to
reduce artifacts (like aliasing), and to achieve the most excellent sounding result.

Elixir v3 is incredibly easy to achieve great results with, simply set the input level, then adjust ‘Threshold’ according
to the amount of limiting you want, and enable ‘Make Up’ to compensate the gain and to add loudness - That’s it!
There is no need to care about release time or any other conventional limiter settings!

There’s an additional feature provided to increase the processing quality in Elixir v3 called ‘Stages’. Stages present
the option to set the algorithm to perform the limiting processing in multi-stages.
