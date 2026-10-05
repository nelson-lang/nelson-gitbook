#import "../nelson_help.typ": *

= bartlett <signal_processing:5_spectral_analysis.bartlett>

Bartlett window.

== Syntax

- #raw("c = bartlett(m)");

== Input argument

/ m: positive integer: window length

== Output argument

/ c: column vector

== Description

#strong[c \= bartlett(m)]; an L-point symmetric Bartlett window.


== Bibliography

Oppenheim, Alan V., Ronald W. Schafer, and John R. Buck. Discrete-Time Signal Processing. Upper Saddle River, NJ: Prentice Hall, 1999, pp. 468–471.

== Example

``````matlab
c = bartlett(8)
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
