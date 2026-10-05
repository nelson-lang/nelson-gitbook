#import "nelson_help.typ": *

= mustBeFinite <validators:mustBeFinite>

Checks that value is finite or raise an error.

== Syntax

- #raw("mustBeFinite(var)");
- #raw("mustBeFinite(var, argPosition)");
- #raw("C++: void mustBeFinite(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isfinite methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeFinite]; checks that value is finite or raise an error.

 Empty values are ignored.


== Example

``````matlab
mustBeFinite(1)
mustBeFinite(Inf)
``````


== See also

#nlink(<elementary_functions:7_indexing_dimensions.isfinite>)[isfinite];, #nlink(<types:isempty>)[isempty];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
