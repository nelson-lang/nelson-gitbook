#import "../nelson_help.typ": *

= bsxfun <elementary_functions:2_elementary_math.bsxfun>

Apply element-wise function with implicit expansion.

== Syntax

- #raw("C = bsxfun(fun, A, B)");

== Input argument

/ fun: handle to a binary element-wise function (or a character vector with the function name). Common built-in operations that can be used are: \@plus, \@minus, \@times, \@rdivide, \@ldivide, \@power, \@max, \@min, \@rem, \@mod, \@hypot, \@atan2, \@eq, \@ne, \@lt, \@le, \@gt, \@ge, \@and, \@or and \@xor. Any user-defined binary element-wise function handle is also accepted.
/ A: array (numeric or logical).
/ B: array (numeric or logical).

== Output argument

/ C: result of applying fun to A and B with singleton expansion.

== Description

#strong[bsxfun]; applies the element-wise binary function fun to arrays A and B, with implicit expansion (singleton dimensions are virtually replicated) so that A and B need not have the same size.

 For each dimension, the sizes of A and B must either be equal, or one of them must be 1. A dimension of size 1 is expanded to match the size of the other array. If two corresponding dimensions differ and neither is 1, an error is raised.

 The result C has, along each dimension, the larger of the two input sizes. For example, combining an #strong[m];-by-#strong[1]; column with a #strong[1];-by-#strong[n]; row yields an #strong[m];-by-#strong[n]; result.

 Element-wise operators in Nelson already broadcast singleton dimensions, so #strong[A + B]; is equivalent to #strong[bsxfun(\@plus, A, B)]; and is usually the preferred form.


== Examples

Add a column vector to a row vector

``````matlab
bsxfun(@plus, (1:3)', 1:4)
``````

Subtract the column mean from each column

``````matlab
A = magic(4);
bsxfun(@minus, A, mean(A))
``````

Element-wise comparison with implicit expansion

``````matlab
bsxfun(@gt, (1:3)', 1:4)
``````

Anonymous binary function

``````matlab
bsxfun(@(x, y) sqrt(x.^2 + y.^2), (1:3)', 1:4)
``````

Function name given as a character vector

``````matlab
bsxfun('times', (1:3)', 1:4)
``````


== See also

#nlink(<data_structures:arrayfun>)[arrayfun];, #nlink(<data_structures:cellfun>)[cellfun];, #nlink(<elementary_functions:1_array_creation_shape.repmat>)[repmat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
