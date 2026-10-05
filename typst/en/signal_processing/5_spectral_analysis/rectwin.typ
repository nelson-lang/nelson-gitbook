#import "../nelson_help.typ": *

= rectwin <signal_processing:5_spectral_analysis.rectwin>

Rectangular window.

== Syntax

- #raw("W = rectwin(M)");

== Input argument

/ M: window length.

== Output argument

/ W: column vector containing the window.

== Description

#strong[rectwin]; returns an M-point rectangular window.


== Example

``````matlab

w = rectwin(4);

``````


== See also

#nlink(<signal_processing:5_spectral_analysis.hann>)[hann];, #nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
