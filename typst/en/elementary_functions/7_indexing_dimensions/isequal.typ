#import "../nelson_help.typ": *

= isequal <elementary_functions:7_indexing_dimensions.isequal>

Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values).

== Syntax

- #raw("res = isequal(x1, x2)");
- #raw("res = isequal(x1, x2, xn)");

== Input argument

/ x1: a value
/ x2: a value
/ xn: a value

== Output argument

/ res: a logical value

== Description

#strong[isequal]; returns true if x1 and x2 are the same size and their contents are of equal value; otherwise, it returns false.

 #strong[isequal]; compares real and imaginary parts of numeric arrays. NaN (Not a Number) values are considered to be NOT#strong[equal]; to other elements.


== Examples

``````matlab
A = eye(3, 3);
res = isequal(A, A)
``````

``````matlab
A = eye(3, 3);
B = single(A)
res = isequal(A, B)
res = isequalto(A, B)
``````

``````matlab
res = isequal('nel', 'son')
``````

``````matlab
res = isequalnNaN, NaN)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln];, #nlink(<elementary_functions:7_indexing_dimensions.isequalto>)[isequalto];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
