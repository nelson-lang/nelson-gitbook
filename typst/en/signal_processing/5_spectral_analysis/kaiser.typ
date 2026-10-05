#import "../nelson_help.typ": *

= kaiser <signal_processing:5_spectral_analysis.kaiser>

Kaiser window.

== Syntax

- #raw("W = kaiser(M)");
- #raw("W = kaiser(M, beta)");

== Input argument

/ M: window length.
/ beta: shape parameter.

== Output argument

/ W: column vector containing the window.

== Description

#strong[kaiser]; returns an M-point Kaiser window.


== Example

``````matlab

w = kaiser(5, 2);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.kaiserord>)[kaiserord];, #nlink(<signal_processing:4_digital_filters.fir1>)[fir1];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
