#import "nelson_help.typ": *

= mustBeMatrix <validators:mustBeMatrix>

Checks that value is a matrix or raise an error.

== Syntax

- #raw("mustBeMatrix(var)");
- #raw("mustBeMatrix(var, argPosition)");
- #raw("C++: void mustBeMatrix(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement ismatrix method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeMatrix]; checks that value is a matrix or raise an error.


== Example

``````matlab
mustBeMatrix(true)
mustBeMatrix([])
mustBeMatrix(ones(3, 2, 4))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.ismatrix>)[ismatrix];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
