#import "nelson_help.typ": *

= mustBeNegative <validators:mustBeNegative>

Checks that value is negative or raise an error.

== Syntax

- #raw("mustBeNegative(var)");
- #raw("mustBeNegative(var, argPosition)");
- #raw("C++: void mustBeNegative(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and lt methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNegative]; checks that value is negative or raise an error.


== Example

``````matlab
mustBeNegative(-1)
mustBeNegative(1)
``````


== See also

#nlink(<validators:mustBePositive>)[mustBePositive];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
