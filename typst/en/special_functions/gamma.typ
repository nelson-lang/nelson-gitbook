#import "nelson_help.typ": *

= gamma <special_functions:gamma>

Gamma special function

== Syntax

- #raw("R = gamma(M)");

== Input argument

/ M: a real single or real double matrix.

== Output argument

/ R: result of gamma function.

== Description

#strong[gamma]; computes the gamma function.

 The gamma function is defined by the integral:

 #latex("\\Gamma(z) = \\int_0^{\\infty} t^{z-1} e^{-t} \\, dt"); for

 #latex("\\text{Re}(z) >0"); The gamma function extends the factorial function to real and complex numbers:

 #latex("\\Gamma(n) = (n-1)!"); for positive integers

 #latex("n"); Key properties include:

 

- #latex("\\Gamma(z+1) = z\\Gamma(z)");(recurrence relation)
- #latex("\\Gamma(1/2) = \\sqrt{\\pi}");
== Example

``````matlab
R = gamma([-pi:0.1:pi])
``````


== See also

#nlink(<special_functions:gammaln>)[gammaln];, #nlink(<elementary_functions:2_elementary_math.factorial>)[factorial];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
