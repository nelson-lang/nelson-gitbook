#import "../nelson_help.typ": *

= db2pow <signal_processing:5_spectral_analysis.db2pow>

Convert a gain in decibels (dB) to power.

== Syntax

- #raw("pow = db2pow(db)");

== Input argument

/ db: input array: scalar, vector or matrix.

== Output argument

/ pow: corresponding power

== Description

#strong[pow \= db2pow(db)]; returns corresponding power.


== Example

``````matlab
pow = db2pow([0, -20])
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.pow2db>)[pow2db];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
