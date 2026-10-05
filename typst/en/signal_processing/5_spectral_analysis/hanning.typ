#import "../nelson_help.typ": *

= hanning <signal_processing:5_spectral_analysis.hanning>

Hann window compatibility function.

== Syntax

- #raw("w = hanning(n)");
- #raw("w = hanning(n, option)");

== Input argument

/ n: Window length.
/ option: 'symmetric' or 'periodic'.

== Output argument

/ w: Column vector containing the window.

== Description

#strong[hanning]; returns the same window as #strong[hann];.


== Example

``````matlab
w = hanning(6, 'periodic')
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.hann>)[hann];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
