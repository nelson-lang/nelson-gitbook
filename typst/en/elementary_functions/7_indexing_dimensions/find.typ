#import "../nelson_help.typ": *

= find <elementary_functions:7_indexing_dimensions.find>

Find Non-zero Elements

== Syntax

- #raw("K = find(M)");
- #raw("[R, C] = find(M)");
- #raw("[R, C, V] = find(M)");
- #raw("K = find(M, N)");
- #raw("[R, C] = find(M, N)");
- #raw("[R, C, V] = find(M, N)");
- #raw("K = find(M, N, D)");
- #raw("[R, C] = find(M, N, D)");
- #raw("[R, C, V] = find(M, N, D)");

== Input argument

/ M: a scalar, vector, matrix, multidimensional array, or sparse matrix.
/ N: positive integer scalar value, or #strong[Inf];, indicating the number of nonzeros to find.
/ D: direction: 'first' (default) or 'last'. The value is case-insensitive.

== Output argument

/ K: indices to nonzero elements (vector).
/ R: row subscripts (vector).
/ C: column subscripts (vector).
/ V: nonzero elements of M (vector).

== Description

#strong[K \= find(M)]; returns a vector with the linear indices of each nonzero element of #strong[M];.

 #strong[find(M, Inf)]; returns all nonzero indices and can be combined with the direction argument.

 For sparse input, #strong[find]; accepts double, single, logical, complex double, and complex single sparse matrices. Stored zero values are ignored; only entries whose value is actually nonzero are returned.

 With three outputs, #strong[V]; keeps the value class of the input sparse matrix, including single and logical values.


== Examples

``````matlab
M = rand(4, 3, 5);
[R, C, V] = find(M > 0.9)
M(R(1),C(1),V(1))
``````

``````matlab
K = find([0 2 0 3], Inf, 'LAST')
``````

``````matlab
S = sparse([1 2 1 2], [1 1 2 2], single([0 -0 complex(0, 0) complex(0, 2)]), 2, 2, 4);
[R, C, V] = find(S)
``````


== See also

#nlink(<string:3_find_replace.strfind>)[strfind];, #nlink(<sparse:sparse>)[sparse];, #nlink(<sparse:nonzeros>)[nonzeros];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [extended sparse single and complex single support],
  [1.0.0], [initial version],
)

// Author: Allan CORNET
