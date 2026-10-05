#import "nelson_help.typ": *

= max <data_analysis:max>

Maximum elements of an array.

== Syntax

- #raw("M = max(A)");
- #raw("[M, I] = max(A)");
- #raw("M = max(A, [], dim)");
- #raw("[M, I] = max(A, [], dim)");
- #raw("M = max(A, [], dim, 'omitnan')");
- #raw("[M, I] = max(A, [], dim, 'includenan')");
- #raw("[M, I] = max(A, [], 'all')");
- #raw("[M, I] = max(A, [], 'all', 'omitnan')");
- #raw("[M, I] = max(A, [], 'all', 'includenan')");
- #raw("C = max(A, B)");
- #raw("C = max(A, B, 'omitnan')");
- #raw("C = max(A, B, 'includenan')");

== Input argument

/ A: a variable
/ dim: a positive integer scalar (Dimension to operate along)
/ 'omitnan': ignore all NaN values. default behaviour. max will return the first element, if all elements are NaN.
/ 'includenan': include the NaN values.
/ 'all': it finds the maximum over all elements.

== Output argument

/ M: Maximum values of A.
/ I: Index to maximum values of A.
/ C: Maximum elements from A or B.

== Description

#strong[max]; find maximum values in an array.

 If #strong[A]; is a matrix then #strong[M \= max(A)]; is a row vector containing the maximum value of each column.

 If #strong[A]; is a vector then #strong[M \= max(A)]; will return the maximum of #strong[A];.

 If #strong[A]; If A is complex number then #strong[M \= max(A)]; will return founded complex number with the largest magnitude.


== Example

``````matlab
A = [1 2 3; 4 5 6];
M = max(A)
M = max(A, [], 'all')
``````


== See also

#nlink(<data_analysis:min>)[min];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
