#import "../nelson_help.typ": *

= perms <elementary_functions:2_elementary_math.perms>

All possible permutations.

== Syntax

- #raw("P = perms(v)");

== Input argument

/ v: vector.

== Output argument

/ P: matrix containing all permutations of the elements of v, in reverse lexicographic order.

== Description

#strong[perms]; returns a matrix containing all permutations of the elements of vector v. Each row of P is one permutation; there are factorial(numel(v)) rows, listed in reverse lexicographic order.


== Example

``````matlab
perms([1 2 3])
``````


== See also

#nlink(<elementary_functions:2_elementary_math.nchoosek>)[nchoosek];, #nlink(<elementary_functions:2_elementary_math.factorial>)[factorial];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
