#import "nelson_help.typ": *

= mustBeColumn <validators:mustBeColumn>

Checks that value is a column vector or raise an error.

== Syntax

- #raw("mustBeColumn(var)");
- #raw("mustBeColumn(var, argPosition)");
- #raw("C++: void mustBeColumn(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement iscolumn method.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeColumn]; checks that value is a column vector or raise an error.


== Example

``````matlab
mustBeColumn(true)
mustBeColumn([])
mustBeColumn(ones(3, 2, 4))
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.iscolumn>)[iscolumn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
