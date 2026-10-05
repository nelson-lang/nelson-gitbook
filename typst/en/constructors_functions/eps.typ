#import "nelson_help.typ": *

= eps <constructors_functions:eps>

Creates an epsilon (machine precision)

== Syntax

- #raw("eps");
- #raw("eps");
- #raw("eps(n)");
- #raw("eps(n, m)");
- #raw("eps('double')");
- #raw("eps('single')");

== Input argument

/ n: a variable: n-by-n matrix
/ m: a variable: n-by-m matrix

== Description

#strong[eps]; returns the machine precision 2^(-52) for double and 2^(-23) for single.

 eps(Inf), eps(-Inf) and eps(NaN) return NaN.


== Examples

``````matlab
eps
``````

``````matlab
eps('double')
``````

``````matlab
eps('single')
``````


== See also

#nlink(<double:double>)[double];, #nlink(<single:single>)[single];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
