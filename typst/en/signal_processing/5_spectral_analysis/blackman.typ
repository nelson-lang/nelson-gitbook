#import "../nelson_help.typ": *

= blackman <signal_processing:5_spectral_analysis.blackman>

Blackman window.

== Syntax

- #raw("c = blackman(m)");
- #raw("c = blackman(m, opt)");

== Input argument

/ m: positive integer: window length
/ opt: string: 'symmetric' (default) or 'periodic'

== Output argument

/ c: column vector

== Description

#strong[c \= blackman(m)]; computes coefficients of a Blackman window of length#strong[m];.


== Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

== Example

``````matlab
c = blackman(8)
c = blackman(8, 'periodic')
``````


== See also

#nlink(<signal_processing:5_spectral_analysis.hamming>)[hamming];, #nlink(<signal_processing:5_spectral_analysis.hann>)[hann];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
