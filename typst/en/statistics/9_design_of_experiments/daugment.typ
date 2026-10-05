#import "../nelson_help.typ": *

= daugment <statistics:9_design_of_experiments.daugment>

Augment a D-optimal design.

== Syntax

- #raw("dCE2 = daugment(dCE, mruns)");
- #raw("[dCE2, X] = daugment(dCE, mruns, modelspec)");

== Description

#strong[daugment]; augments an existing design by selecting additional rows from generated candidates.


== Used function(s)

candgen candexch rowexch rng

== Examples

Add two runs to an existing design.

``````matlab
rng(8);
dCE = [-1 -1];
[dCE2, X] = daugment(dCE, 2, 'linear', 'Display', 'off', 'AvoidDuplicates', true);
dCE2
X
``````

Augment a design with bounded candidate levels.

``````matlab
dCE = [0 0];
bounds = [0 1; 0 1];
[dCE2, X] = daugment(dCE, 2, 'quadratic', 'Bounds', bounds, 'Display', 'off')
``````

