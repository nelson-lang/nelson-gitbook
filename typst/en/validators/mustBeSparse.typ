#import "nelson_help.typ": *

= mustBeSparse <validators:mustBeSparse>

Checks that value is a sparse matrix or raise an error.

== Syntax

- #raw("mustBeSparse(var)");
- #raw("mustBeSparse(var, argPosition)");
- #raw("C++: void mustBeSparse(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement issparse method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeSparse]; checks that value is a sparse matrix or raise an error.


== Example

``````matlab
mustBeSparse(true)
mustBeSparse(eye(3, 4))
mustBeSparse(sparse(eye(3, 4)))
``````


== See also

#nlink(<types:issparse>)[issparse];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.11.0], [initial version],
)

// Author: Allan CORNET
