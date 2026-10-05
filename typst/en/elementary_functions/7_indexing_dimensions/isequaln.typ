#import "../nelson_help.typ": *

= isequaln <elementary_functions:7_indexing_dimensions.isequaln>

Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values or NaNs).

== Syntax

- #raw("res = isequaln(x1, x2)");
- #raw("res = isequaln(x1, x2, xn)");

== Input argument

/ x1: a value
/ x2: a value
/ xn: a value

== Output argument

/ res: a logical value

== Description

#strong[isequaln]; returns true if x1 and x2 are the same size and same values; otherwise, it returns false.#strong[isequaln]; compares real and imaginary parts of numeric arrays. NaN (Not a Number) values are considered to be #strong[equal]; to other elements.
== Examples

``````matlab
A = eye(3, 3);
res = isequaln(A, A)
``````

``````matlab
A = eye(3, 3);
B = single(A)
res = isequaln(A, B)
res = isequalto(A, B)
``````

``````matlab
res = isequaln('nel', 'son')
``````

``````matlab
res = isequaln(NaN, NaN)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isequal>)[isequal];, #nlink(<elementary_functions:7_indexing_dimensions.isequalto>)[isequalto];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
