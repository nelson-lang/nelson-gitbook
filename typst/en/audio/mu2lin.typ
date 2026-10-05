#import "nelson_help.typ": *

= mu2lin <audio:mu2lin>

Convert audio data from mu-law to linear signal.

== Syntax

- #raw("y = mu2lin(mu)");

== Input argument

/ mu: mu-law encoded 8-bit audio signals, with 0 ≤ mu ≤ 255.

== Output argument

/ y: linear signal.

== Description

#strong[y \= mu2lin(mu)]; converts audio data from mu-law to linear.


== Bibliography

"A New Digital Technique for Implementation of Any Continuous PCM Companding Law," Villeret, Michel, et al. 1973 IEEE Int. Conf. on Communications, Vol 1, 1973, pg. 11.12-11.17.

== Example

``````matlab
l = mu2lin([0:20:255])
``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:lin2mu>)[lin2mu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
