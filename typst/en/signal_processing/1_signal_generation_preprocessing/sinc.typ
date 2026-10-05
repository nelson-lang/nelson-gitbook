#import "../nelson_help.typ": *

= sinc <signal_processing:1_signal_generation_preprocessing.sinc>

Sinc function.

== Syntax

- #raw("c = sinc(m)");

== Input argument

/ m: input array: scalar, vector or matrix.

== Output argument

/ c: sinc of input

== Description

#strong[c \= sinc(m)]; returns an array#strong[c]; whose elements are the sinc of the elements of the input: #strong[m];.

 The sinc function (normalized) is defined as:

 #latex("\\text{sinc}(x) = \\begin{cases} \\frac{\\sin(\\pi x)}{\\pi x} & \\text{if } x \\neq 0 \\\\ 1 & \\text{if } x = 0 \\end{cases}"); The sinc function is the Fourier transform of the rectangular pulse function and appears frequently in signal processing and communications.


== Example

``````matlab
c = sinc(pi)
``````


== See also

#nlink(<trigonometric_functions:sin>)[sin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
