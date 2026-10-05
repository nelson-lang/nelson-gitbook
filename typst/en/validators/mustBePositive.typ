#import "nelson_help.typ": *

= mustBePositive <validators:mustBePositive>

Checks that value is positive or raise an error.

== Syntax

- #raw("mustBePositive(var)");
- #raw("mustBePositive(var, argPosition)");
- #raw("C++: void mustBePositive(const ArrayOfVector& args, int argPosition)");

== Input argument

/ var: a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and gt methods.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBePositive]; checks that value is positive or raise an error.


== Example

``````matlab
mustBePositive(1)
mustBePositive(-1)
``````


== See also

#nlink(<validators:mustBeNonnegative>)[mustBeNonnegative];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
