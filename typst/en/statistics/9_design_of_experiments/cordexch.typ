#import "../nelson_help.typ": *

= cordexch <statistics:9_design_of_experiments.cordexch>

D-optimal design using coordinate-style interface.

== Syntax

- #raw("dCE = cordexch(nfactors, nruns)");
- #raw("[dCE, X] = cordexch(nfactors, nruns, modelspec)");

== Description

#strong[cordexch]; provides a coordinate-exchange compatible interface backed by the row-exchange implementation.


== Used function(s)

rowexch candgen candexch rng

== Example

Create a three-run linear design for two factors.

``````matlab
rng(7);
[dCE, X] = cordexch(2, 3, 'linear', 'Display', 'off', 'AvoidDuplicates', true);
dCE
X
``````

