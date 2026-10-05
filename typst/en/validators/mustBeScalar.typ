#import "nelson_help.typ": *

= mustBeScalar <validators:mustBeScalar>

Checks that value is a scalar or raise an error.

== Syntax

- #raw("mustBeScalar(var)");
- #raw("mustBeScalar(var, argPosition)");
- #raw("C++: void mustBeScalar(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isscalar method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeScalar]; checks that value is a scalar or raise an error.


== Example

``````matlab
mustBeScalar(true)
mustBeScalar(zeros(0, 1))
mustBeScalar([true false])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isscalar>)[isscalar];, #nlink(<validators:mustBeScalarOrEmpty>)[mustBeScalarOrEmpty];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
