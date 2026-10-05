#import "nelson_help.typ": *

= sum <data_analysis:sum>

Sum of array elements.

== Syntax

- #raw("R = sum(M)");
- #raw("R = sum(M, d)");
- #raw("R = sum(M, 'all')");
- #raw("R = sum(M, ___, f)");
- #raw("R = sum(M, d, t)");
- #raw("R = sum(M, 'all', t, f)");

== Input argument

/ M: an array of double, single, integers, ...
/ d: dimension to operate along: positive integer scalar.
/ 'all': sum all elements of M and return a scalar.
/ t: a string: 'default', 'double' or 'native'.
/ f: a string: 'includenan' or 'omitnan'.

== Output argument

/ R: Sum of array elements.

== Description

#strong[R \= sum(M)]; returns the sum along the first non-singleton dimension of M.

 #strong[R \= sum(M, d)]; sums along dimension d. #strong[R \= sum(M, 'all')]; sums all elements of M and returns a scalar.

 Optional text arguments control the output type (#strong['default'];, #strong['double']; or #strong['native'];) and NaN handling (#strong['includenan']; or #strong['omitnan'];).


== Examples

Sum along a dimension.

``````matlab
M = [1 2; 3 4];
R = sum(M, 2)

``````

Sum all elements.

``````matlab
M = [1 2; 3 4];
R = sum(M, 'all')

``````

Keep the native integer output type.

``````matlab
M = uint8([10:30:70;20:30:80;30:30:90]);
R = sum(M, 'native')
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];, #nlink(<data_analysis:prod>)[prod];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
