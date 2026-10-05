#import "nelson_help.typ": *

= mustBeRow <validators:mustBeRow>

Checks that value is a row vector or raise an error.

== Syntax

- #raw("mustBeRow(var)");
- #raw("mustBeRow(var, argPosition)");
- #raw("C++: void mustBeRow(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isrow method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeRow]; checks that value is a row vector or raise an error.


== Example

``````matlab
mustBeRow([1, 1])
mustBeRow([])
mustBeRow([1; 1])
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isrow>)[isrow];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
