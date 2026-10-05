#import "../nelson_help.typ": *

= randsample <statistics:2_probability_distributions.randsample>

Random sample from a population.

== Syntax

- #raw("y = randsample(n, k)");
- #raw("y = randsample(population, k)");
- #raw("y = randsample(..., replacement)");
- #raw("y = randsample(population, k, true, w)");

== Description

#strong[randsample]; samples values using Nelson's random generator. Weighted sampling is supported with replacement.


== Used function(s)

rng bootstrp

== Examples

Draw a reproducible sample without replacement.

``````matlab
rng(10);
y = randsample(10, 4)
``````

Draw a weighted sample with replacement.

``````matlab
population = [10 20 30];
w = [0 0 1];
y = randsample(population, 5, true, w)
``````

