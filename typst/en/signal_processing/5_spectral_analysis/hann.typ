#import "../nelson_help.typ": *

= hann <signal_processing:5_spectral_analysis.hann>

Hann window.

== Syntax

- #raw("c = hann(m)");
- #raw("c = hann(m, opt)");

== Input argument

/ m: positive integer: window length
/ opt: string: 'symmetric' (default) or 'periodic'

== Output argument

/ c: column vector

== Description

#strong[c \= hann(m)]; computes coefficients of a Hanning window of length#strong[m];.


== Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

== Example

``````matlab
c = hann(8)
c = hann(8, 'periodic')
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming];, #nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
