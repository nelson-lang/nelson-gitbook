#import "nelson_help.typ": *

= prod <data_analysis:prod>

Product of array elements.

== Syntax

- #raw("R = prod(M)");
- #raw("R = prod(M, d)");
- #raw("R = prod(M, d)");
- #raw("R = prod(M, d, t)");
- #raw("R = prod(M, d, t, f)");

== Input argument

/ M: an array of double, single, integers, ...
/ d: dimension to operate along: positive integer scalar.
/ t: a string: 'default', 'double' or 'native'.
/ f: a string: 'includenan' or 'omitnan'.

== Output argument

/ R: Product of array elements.

== Description

#strong[R \= prod(M)]; returns the product of the array elements of M.


== Example

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = prod(M, 'native')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:sum>)[sum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
