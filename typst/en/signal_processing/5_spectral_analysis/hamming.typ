#import "../nelson_help.typ": *

= hamming <signal_processing:5_spectral_analysis.hamming>

Hamming window.

== Syntax

- #raw("c = hamming(m)");
- #raw("c = hamming(m, opt)");

== Input argument

/ m: positive integer: window length
/ opt: string: 'symmetric' (default) or 'periodic'

== Output argument

/ c: column vector

== Description

#strong[c \= hamming(m)]; computes coefficients of a Hamming window of length#strong[m];.


== Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999.

== Example

``````matlab
c = hamming(8)
c = hamming(8, 'periodic')
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.hann>)[hann];, #nlink(<signal_processing:5_spectral_analysis.blackman>)[blackman];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
