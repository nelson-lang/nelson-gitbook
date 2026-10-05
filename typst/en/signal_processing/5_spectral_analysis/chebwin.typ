#import "../nelson_help.typ": *

= chebwin <signal_processing:5_spectral_analysis.chebwin>

Dolph-Chebyshev window.

== Syntax

- #raw("W = chebwin(M)");
- #raw("W = chebwin(M, ripple)");

== Input argument

/ M: window length.
/ ripple: sidelobe attenuation in decibels.

== Output argument

/ W: column vector containing the window.

== Description

#strong[chebwin]; returns a Dolph-Chebyshev window normalized to unit peak amplitude.


== Example

``````matlab

w = chebwin(5, 40);

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
