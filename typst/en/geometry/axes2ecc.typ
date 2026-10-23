#import "nelson_help.typ": *

= axes2ecc <geometry:axes2ecc>

Eccentricity of an ellipse from its semi-axes.

== Syntax

- #raw("eccentricity = axes2ecc(semimajor, semiminor)");
- #raw("eccentricity = axes2ecc(axesVector)");

== Input argument

/ semimajor: the semimajor axis length.
/ semiminor: the semiminor axis length.
/ axesVector: a single input: a two-element vector \[semimajor, semiminor\] or a two-column matrix (one ellipse per row).

== Output argument

/ eccentricity: the eccentricity of the ellipse.

== Description

#strong[axes2ecc]; returns the eccentricity of an ellipse from its semimajor and semiminor axes, as #strong[sqrt(1 - (semiminor \/ semimajor)^2)];. A circle (equal axes) has a zero eccentricity. The computation is vectorised over the inputs.


== Example

``````matlab
e = axes2ecc(10, 6)
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
