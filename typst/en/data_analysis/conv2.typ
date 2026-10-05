#import "nelson_help.typ": *

= conv2 <data_analysis:conv2>

2-D convolution.

== Syntax

- #raw("C = conv2(A, B)");
- #raw("C = conv2(u, v, A)");
- #raw("C = conv2(A, B, shape)");
- #raw("C = conv2(u, v, A, shape)");

== Input argument

/ A: vector or matrix.
/ B: vector or matrix.
/ u: row or column vector.
/ v: row or column vector.
/ shape: subsection of convolution: 'full' (default: full 2-D convolution), 'same' (central part of the convolution) or 'valid' (parts of the convolution that are computed without zero-padded edges).

== Output argument

/ C: 2-D convolution, returned as a vector or matrix.

== Description

#strong[conv2]; returns the two-dimensional convolution.


== Example

``````matlab
A = magic(3);
B = magic(4);
R = conv2(A, B, 'same')
``````


== See also

#nlink(<data_analysis:conv>)[conv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
