#import "../nelson_help.typ": *

= rowexch <statistics:9_design_of_experiments.rowexch>

D-optimal design using row exchange.

== Syntax

- #raw("dRE = rowexch(nfactors, nruns)");
- #raw("[dRE, X] = rowexch(nfactors, nruns, modelspec)");

== Description

#strong[rowexch]; generates candidates with candgen and selects a D-optimal subset with candexch.


== Used function(s)

candgen candexch cordexch rng

== Examples

Create a three-run D-optimal design from candidate rows.

``````matlab
rng(5);
[dRE, X] = rowexch(2, 3, 'linear', 'Display', 'off', 'AvoidDuplicates', true);
dRE
X
``````

Use bounded factor levels.

``````matlab
rng(6);
bounds = [0 1; -1 1];
[dRE, X] = rowexch(2, 3, 'linear', 'Bounds', bounds, 'Display', 'off')
``````

