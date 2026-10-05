#import "nelson_help.typ": *

= mustBeNonNan <validators:mustBeNonNan>

Checks that value is not NaN.

== Syntax

- #raw("mustBeNonNan(var)");
- #raw("mustBeNonNan(var, argPosition)");
- #raw("C++: void mustBeNonNan(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isnan methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonNan]; checks that value is not NaN or raise an error.


== Example

``````matlab
mustBeNonNan(1)
mustBeNonNan([])
mustBeNonNan(NaN)

``````


== See also

#nlink(<types:isempty>)[isempty];, #nlink(<elementary_functions:7_indexing_dimensions.isnan>)[isnan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
