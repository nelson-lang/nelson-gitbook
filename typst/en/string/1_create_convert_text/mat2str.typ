#import "../nelson_help.typ": *

= mat2str <string:1_create_convert_text.mat2str>

Matrix to String.

== Syntax

- #raw("res = mat2str(M)");
- #raw("res = mat2str(M, 'class')");
- #raw("res = mat2str(M, P, 'class')");

== Input argument

/ M: a numerical 2D matrix or logical.
/ P: an integer value: precision, 15 by default.

== Output argument

/ res: a string

== Description

#strong[mat2str]; converts a matrix to a string.

 This string may be used to reconstruct the original matrix with#strong[execstr]; function.


== Example

``````matlab
R = mat2str(pi)
R = mat2str(pi, 'class')
R = mat2str(pi, 4)
R = mat2str(pi + i, 'class')
execstr(['RB = ', R])

``````


== See also

#nlink(<core:execstr>)[execstr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
