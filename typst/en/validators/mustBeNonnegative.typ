#import "nelson_help.typ": *

= mustBeNonnegative <validators:mustBeNonnegative>

Checks that value is nonnegative or raise an error.

== Syntax

- #raw("mustBeNonnegative(var)");
- #raw("mustBeNonnegative(var, argPosition)");
- #raw("C++: void mustBeNonnegative(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and ge methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeNonnegative]; checks that value is nonnegative or raise an error.


== Example

``````matlab
mustBeNonnegative(1)
mustBeNonnegative(-1)
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
