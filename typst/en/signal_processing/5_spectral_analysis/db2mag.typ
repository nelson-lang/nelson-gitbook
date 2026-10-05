#import "../nelson_help.typ": *

= db2mag <signal_processing:5_spectral_analysis.db2mag>

Convert a gain in decibels (dB) to a magnitude.

== Syntax

- #raw("mag = db2mag(db)");

== Input argument

/ db: input array: scalar, vector or matrix.

== Output argument

/ mag: corresponding magnitude

== Description

#strong[mag \= db2mag(db)]; returns corresponding magnitude.


== Example

``````matlab
mag = db2mag([0, -20])
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.mag2db>)[mag2db];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
