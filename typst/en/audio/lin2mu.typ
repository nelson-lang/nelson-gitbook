#import "nelson_help.typ": *

= lin2mu <audio:lin2mu>

Convert audio data from linear signal to mu-law.

== Syntax

- #raw("mu = lin2mu(y)");

== Input argument

/ y: linear signal with -1 ≤ y ≤ 1.

== Output argument

/ mu: mu-law encoded 8-bit audio signals, with 0 ≤ mu ≤ 255.

== Description

#strong[mu \= lin2mu(y)]; converts audio data from linear to mu-law.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/%CE%9C-law\_algorithm

== Example

``````matlab
mu = lin2mu([-1:0.5:1])
``````


== See also

#nlink(<audio:audioplayer>)[audioplayer];, #nlink(<audio:mu2lin>)[mu2lin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
