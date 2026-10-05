#import "../nelson_help.typ": *

= triang <signal_processing:5_spectral_analysis.triang>

Triangular window.

== Syntax

- #raw("W = triang(M)");

== Input argument

/ M: window length.

== Output argument

/ W: column vector containing the window.

== Description

#strong[triang]; returns an M-point triangular window.


== Example

``````matlab

w = triang(6);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.bartlett>)[bartlett];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
