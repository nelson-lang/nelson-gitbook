#import "nelson_help.typ": *

= mustBeNumericOrLogical <validators:mustBeNumericOrLogical>

Checks that input is numeric or logical.

== Syntax

- #raw("mustBeNumericOrLogical(var)");
- #raw("mustBeNumericOrLogical(var, argPosition)");
- #raw("C++: void mustBeNumericOrLogical(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNumericOrLogical]; checks that value is numeric or logical otherwise raise an error.


== Example

``````matlab
mustBeNumericOrLogical(1)
mustBeNumericOrLogical([])
mustBeNumericOrLogical({1})
``````


== See also

#nlink(<types:isnumeric>)[isnumeric];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
