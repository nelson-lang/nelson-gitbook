#import "nelson_help.typ": *

= mustBeInteger <validators:mustBeInteger>

Checks that value is integer or raise an error.

== Syntax

- #raw("mustBeInteger(var)");
- #raw("mustBeInteger(var, argPosition)");
- #raw("C++: void mustBeInteger(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, eq and floor methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeInteger]; checks that value is integer or raise an error.


== Example

``````matlab
mustBeInteger(-1)
mustBeInteger(Inf)
``````


== See also

#nlink(<validators:mustBeNumeric>)[mustBeNumeric];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
