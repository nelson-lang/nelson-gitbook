#import "../nelson_help.typ": *

= filtic <signal_processing:4_digital_filters.filtic>

Initial conditions for digital filtering.

== Syntax

- #raw("ZI = filtic(B, A, Y)");
- #raw("ZI = filtic(B, A, Y, X)");

== Input argument

/ B, A: filter coefficients.
/ Y: past output values.
/ X: past input values.

== Output argument

/ ZI: initial conditions vector.

== Description

#strong[filtic]; computes initial conditions compatible with direct-form filtering.


== Example

``````matlab

zi = filtic([1 1], 1, 3);

``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
