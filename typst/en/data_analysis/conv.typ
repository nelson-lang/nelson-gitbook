#import "nelson_help.typ": *

= conv <data_analysis:conv>

Convolution and polynomial multiplication.

== Syntax

- #raw("C = conv(u, v)");
- #raw("C = conv(u, v, shape)");

== Input argument

/ u: input vectors, specified as either row or column vectors.
/ v: input vectors, specified as either row or column vectors.
/ shape: subsection of convolution: 'full' (default: full 2-D convolution), 'same' (central part of the convolution) or 'valid' (parts of the convolution that are computed without zero-padded edges).

== Output argument

/ C: convolution, returned as a vector or matrix.

== Description

#strong[conv]; returns the convolution of vectors #strong[u]; and #strong[v];.


== Example

``````matlab
U = [-1 2 3 -2 0 1 2];
V = [2 4 -1 1];
R = conv(U, V, 'same')
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
