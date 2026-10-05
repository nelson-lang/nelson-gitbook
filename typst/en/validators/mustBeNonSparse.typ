#import "nelson_help.typ": *

= mustBeNonSparse <validators:mustBeNonSparse>

Checks that value is not sparse.

== Syntax

- #raw("mustBeNonSparse(var)");
- #raw("mustBeNonSparse(var, argPosition)");
- #raw("C++: void mustBeNonSparse(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement issparse method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonSparse]; checks that value is not sparse or raise an error.


== Example

``````matlab
mustBeNonSparse(1)
mustBeNonSparse([])
mustBeNonSparse(sparse(3))

``````


== See also

#nlink(<types:issparse>)[issparse];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
