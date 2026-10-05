#import "../nelson_help.typ": *

= candgen <statistics:9_design_of_experiments.candgen>

Generate a candidate set for designs.

== Syntax

- #raw("dC = candgen(nfactors)");
- #raw("[dC, C] = candgen(nfactors, modelspec)");

== Description

#strong[candgen]; generates a full factorial candidate set from factor bounds and its model matrix.


== Used function(s)

x2fx candexch rowexch cordexch

== Examples

Generate a full factorial candidate set and its linear model matrix.

``````matlab
F = candgen(2)
[F, C] = candgen(2, 'linear')
``````

Use explicit factor bounds.

``````matlab
bounds = [0 1 2; -1 1 1];
[F, C] = candgen(2, 'linear', 'Bounds', bounds);
size(F)
size(C)
``````

