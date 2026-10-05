#import "../nelson_help.typ": *

= mag2db <signal_processing:5_spectral_analysis.mag2db>

Convert a magnitude to decibels (dB).

== Syntax

- #raw("db = mag2db(mag)");

== Input argument

/ mag: input array: scalar, vector or matrix.

== Output argument

/ db: corresponding values in decibels

== Description

#strong[db \= mag2db(mag)]; converts magnitude values to decibels (dB).

 The conversion formula is:

 #latex("\\text{dB} = 20 \\log_{10}(\\text{magnitude})"); This conversion is commonly used in signal processing, acoustics, and electronics to express ratios on a logarithmic scale.


== Example

``````matlab
DB = mag2db([1, 0.01])
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.db2mag>)[db2mag];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
