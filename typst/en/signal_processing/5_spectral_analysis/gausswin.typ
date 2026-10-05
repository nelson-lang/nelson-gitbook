#import "../nelson_help.typ": *

= gausswin <signal_processing:5_spectral_analysis.gausswin>

Gaussian window.

== Syntax

- #raw("W = gausswin(M)");
- #raw("W = gausswin(M, alpha)");

== Input argument

/ M: window length.
/ alpha: shape parameter.

== Output argument

/ W: column vector containing the window.

== Description

#strong[gausswin]; returns an M-point Gaussian window.


== Example

``````matlab

w = gausswin(5, 2.5);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.kaiser>)[kaiser];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
