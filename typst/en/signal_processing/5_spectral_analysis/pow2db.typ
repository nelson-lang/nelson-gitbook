#import "../nelson_help.typ": *

= pow2db <signal_processing:5_spectral_analysis.pow2db>

Convert power to decibel.

== Syntax

- #raw("db = pow2db(pow)");

== Input argument

/ pow: input array: scalar, vector or matrix.

== Output argument

/ db: corresponding values in decibels

== Description

#strong[db \= pow2db(pow)]; returns corresponding values in decibels.


== Example

``````matlab
DB = pow2db([1, 0.01])
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.db2pow>)[db2pow];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
