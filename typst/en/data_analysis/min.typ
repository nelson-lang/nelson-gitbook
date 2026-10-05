#import "nelson_help.typ": *

= min <data_analysis:min>

Minimum elements of an array.

== Syntax

- #raw("M = min(A)");
- #raw("[M, I] = min(A)");
- #raw("M = min(A, [], dim)");
- #raw("[M, I] = min(A, [], dim)");
- #raw("M = min(A, [], dim, 'omitnan')");
- #raw("[M, I] = min(A, [], dim, 'includenan')");
- #raw("[M, I] = min(A, [], 'all')");
- #raw("[M, I] = min(A, [], 'all', 'omitnan')");
- #raw("[M, I] = min(A, [], 'all', 'includenan')");
- #raw("C = min(A, B)");
- #raw("C = min(A, B, 'omitnan')");
- #raw("C = min(A, B, 'includenan')");

== Input argument

/ A: a variable
/ dim: a positive integer scalar (Dimension to operate along)
/ 'omitnan': ignore all NaN values. default behaviour. min will return the first element, if all elements are NaN.
/ 'includenan': include the NaN values.
/ 'all': it finds the minimum over all elements.

== Output argument

/ M: minimum values of A.
/ I: Index to minimum values of A.
/ C: minimum elements from A or B.

== Description

#strong[min]; find minimum values in an array.

 If #strong[A]; is a matrix then #strong[M \= min(A)]; is a row vector containing the minimum value of each column.

 If #strong[A]; is a vector then #strong[M \= min(A)]; will return the minimum of #strong[A];.

 If #strong[A]; If A is complex number then #strong[M \= min(A)]; will return founded complex number with the largest magnitude.


== Example

``````matlab
A = [1 2 3; 4 5 6];
M = min(A)
M = min(A, [], 'all')
``````


== See also

#nlink(<data_analysis:max>)[max];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
