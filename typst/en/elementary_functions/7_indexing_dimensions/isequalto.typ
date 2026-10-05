#import "../nelson_help.typ": *

= isequalto <elementary_functions:7_indexing_dimensions.isequalto>

Return true if all arguments x1, x2, ... , xn are equal (same type, same dimensions, same values or NaNs).

== Syntax

- #raw("res = isequalto(x1, x2)");
- #raw("res = isequalto(x1, x2, xn)");

== Input argument

/ x1: a value
/ x2: a value
/ xn: a value

== Output argument

/ res: a logical value

== Description

#strong[isequalto]; returns true if x1 and x2 are the same type, same size and same values; otherwise, it returns false.
== Example

``````matlab
A = eye(3, 3);
res = isequal(A, single(A))
res = isequalto(A, single(A))

``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isequal>)[isequal];, #nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
