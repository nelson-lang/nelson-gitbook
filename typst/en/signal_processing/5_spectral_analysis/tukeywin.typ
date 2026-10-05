#import "../nelson_help.typ": *

= tukeywin <signal_processing:5_spectral_analysis.tukeywin>

Tukey window.

== Syntax

- #raw("W = tukeywin(M)");
- #raw("W = tukeywin(M, r)");

== Input argument

/ M: window length.
/ r: taper ratio.

== Output argument

/ W: column vector containing the window.

== Description

#strong[tukeywin]; returns a tapered cosine window.


== Example

``````matlab

w = tukeywin(6, 0.5);

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
